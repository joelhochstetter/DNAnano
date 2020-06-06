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
	<23.950947, 34.690441, 35.054440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.309786, 34.853596, 34.986500>,  <24.525089, 34.951488, 34.945736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.309786, 34.853596, 34.986500>,  <23.950947, 34.690441, 35.054440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.309786, 34.853596, 34.986500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394996, -0.568125, 0.721950,
		0.197976, -0.714748, -0.670776,
		0.897097, 0.407883, -0.169848,
		24.578915, 34.975960, 34.935547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.478073, 34.230679, 34.794434>,  <23.950947, 34.690441, 35.054440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.478073, 34.230679, 34.794434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644520, 34.522964, 35.010918>,  <24.744387, 34.698338, 35.140808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644520, 34.522964, 35.010918>,  <24.478073, 34.230679, 34.794434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.644520, 34.522964, 35.010918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336367, -0.676659, 0.654973,
		0.844811, -0.090500, -0.527356,
		0.416116, 0.730713, 0.541208,
		24.769354, 34.742180, 35.173279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.230568, 34.470757, 34.810856>,  <24.478073, 34.230679, 34.794434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.230568, 34.470757, 34.810856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622477, 34.514599, 34.743877>,  <25.857622, 34.540905, 34.703690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622477, 34.514599, 34.743877>,  <25.230568, 34.470757, 34.810856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.622477, 34.514599, 34.743877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171148, -0.892551, 0.417207,
		-0.103722, -0.437425, -0.893253,
		0.979770, 0.109605, -0.167442,
		25.916409, 34.547482, 34.693645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450188, 33.810619, 34.621861>,  <25.230568, 34.470757, 34.810856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450188, 33.810619, 34.621861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787724, 33.997272, 34.727833>,  <25.990244, 34.109264, 34.791416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787724, 33.997272, 34.727833>,  <25.450188, 33.810619, 34.621861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787724, 33.997272, 34.727833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331574, -0.841630, 0.426284,
		0.421896, -0.271869, -0.864922,
		0.843838, 0.466633, 0.264935,
		26.040874, 34.137264, 34.807312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.885914, 33.536999, 34.273438>,  <25.450188, 33.810619, 34.621861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.885914, 33.536999, 34.273438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060099, 33.686615, 34.600967>,  <26.164610, 33.776386, 34.797485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060099, 33.686615, 34.600967>,  <25.885914, 33.536999, 34.273438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060099, 33.686615, 34.600967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399891, -0.895294, 0.196307,
		0.806512, 0.241955, -0.539441,
		0.435461, 0.374041, 0.818821,
		26.190737, 33.798828, 34.846615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634150, 33.366425, 34.404362>,  <25.885914, 33.536999, 34.273438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634150, 33.366425, 34.404362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539034, 33.433498, 34.787056>,  <26.481964, 33.473743, 35.016670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539034, 33.433498, 34.787056>,  <26.634150, 33.366425, 34.404362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.539034, 33.433498, 34.787056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559622, -0.781422, 0.276049,
		0.793902, 0.601050, 0.091973,
		-0.237789, 0.167685, 0.956733,
		26.467697, 33.483803, 35.074078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197630, 33.396236, 34.808319>,  <26.634150, 33.366425, 34.404362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197630, 33.396236, 34.808319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899975, 33.315556, 35.063057>,  <26.721382, 33.267147, 35.215900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899975, 33.315556, 35.063057>,  <27.197630, 33.396236, 34.808319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899975, 33.315556, 35.063057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481413, -0.822860, 0.301900,
		0.463142, 0.531242, 0.709423,
		-0.744138, -0.201703, 0.636848,
		26.676733, 33.255043, 35.254112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378471, 33.487511, 35.521217>,  <27.197630, 33.396236, 34.808319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378471, 33.487511, 35.521217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088320, 33.213215, 35.497269>,  <26.914228, 33.048637, 35.482899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088320, 33.213215, 35.497269>,  <27.378471, 33.487511, 35.521217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088320, 33.213215, 35.497269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620801, -0.689293, 0.373471,
		-0.297376, 0.233737, 0.925707,
		-0.725378, -0.685742, -0.059875,
		26.870707, 33.007492, 35.479305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415178, 33.152046, 36.103886>,  <27.378471, 33.487511, 35.521217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415178, 33.152046, 36.103886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180658, 32.889397, 35.914104>,  <27.039948, 32.731808, 35.800236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180658, 32.889397, 35.914104>,  <27.415178, 33.152046, 36.103886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180658, 32.889397, 35.914104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527740, -0.753930, 0.391255,
		-0.614609, -0.020995, 0.788552,
		-0.586299, -0.656619, -0.474452,
		27.004768, 32.692410, 35.771770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212879, 32.557934, 36.651207>,  <27.415178, 33.152046, 36.103886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212879, 32.557934, 36.651207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179955, 32.416458, 36.278515>,  <27.160200, 32.331573, 36.054897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179955, 32.416458, 36.278515>,  <27.212879, 32.557934, 36.651207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179955, 32.416458, 36.278515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494137, -0.826381, 0.270042,
		-0.865479, -0.438176, 0.242791,
		-0.082312, -0.353688, -0.931735,
		27.155260, 32.310352, 35.998993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871023, 31.852072, 36.533485>,  <27.212879, 32.557934, 36.651207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871023, 31.852072, 36.533485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133009, 31.913225, 36.237473>,  <27.290201, 31.949917, 36.059864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133009, 31.913225, 36.237473>,  <26.871023, 31.852072, 36.533485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133009, 31.913225, 36.237473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507727, -0.814360, 0.281126,
		-0.559674, -0.559862, -0.610999,
		0.654965, 0.152882, -0.740032,
		27.329498, 31.959089, 36.015461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015759, 31.241690, 36.417751>,  <26.871023, 31.852072, 36.533485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015759, 31.241690, 36.417751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319084, 31.455677, 36.268745>,  <27.501080, 31.584070, 36.179340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319084, 31.455677, 36.268745>,  <27.015759, 31.241690, 36.417751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319084, 31.455677, 36.268745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632962, -0.740940, 0.224428,
		-0.155950, -0.405975, -0.900480,
		0.758313, 0.534970, -0.372516,
		27.546577, 31.616169, 36.156990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385313, 30.893251, 35.892532>,  <27.015759, 31.241690, 36.417751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385313, 30.893251, 35.892532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644035, 31.128345, 36.086937>,  <27.799269, 31.269402, 36.203579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644035, 31.128345, 36.086937>,  <27.385313, 30.893251, 35.892532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644035, 31.128345, 36.086937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555806, -0.799631, 0.227309,
		0.522229, 0.123105, -0.843873,
		0.646804, 0.587737, 0.486013,
		27.838078, 31.304667, 36.232742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026949, 30.609074, 35.626308>,  <27.385313, 30.893251, 35.892532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026949, 30.609074, 35.626308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070154, 30.773939, 35.988182>,  <28.096077, 30.872858, 36.205307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070154, 30.773939, 35.988182>,  <28.026949, 30.609074, 35.626308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070154, 30.773939, 35.988182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733680, -0.647125, 0.207227,
		0.670855, 0.641366, -0.372294,
		0.108012, 0.412164, 0.904684,
		28.102558, 30.897589, 36.259586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624489, 31.038651, 35.843422>,  <28.026949, 30.609074, 35.626308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624489, 31.038651, 35.843422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477245, 30.834656, 36.154396>,  <28.388899, 30.712259, 36.340981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477245, 30.834656, 36.154396>,  <28.624489, 31.038651, 35.843422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477245, 30.834656, 36.154396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788741, -0.614026, -0.029333,
		0.492327, 0.602400, 0.628274,
		-0.368107, -0.509987, 0.777439,
		28.366814, 30.681660, 36.387627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243986, 31.402710, 35.446636>,  <28.624489, 31.038651, 35.843422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243986, 31.402710, 35.446636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880821, 31.393082, 35.614025>,  <27.662922, 31.387304, 35.714458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880821, 31.393082, 35.614025>,  <28.243986, 31.402710, 35.446636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880821, 31.393082, 35.614025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162483, 0.940503, -0.298419,
		-0.386389, -0.338932, -0.857804,
		-0.907911, -0.024073, 0.418471,
		27.608448, 31.385860, 35.739567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771837, 31.785583, 34.961388>,  <28.243986, 31.402710, 35.446636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771837, 31.785583, 34.961388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567738, 31.768869, 35.304993>,  <27.445278, 31.758841, 35.511154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567738, 31.768869, 35.304993>,  <27.771837, 31.785583, 34.961388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567738, 31.768869, 35.304993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429355, 0.877820, -0.212337,
		-0.745184, -0.477166, -0.465848,
		-0.510250, -0.041784, 0.859010,
		27.414663, 31.756334, 35.562695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049725, 31.691090, 34.850723>,  <27.771837, 31.785583, 34.961388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049725, 31.691090, 34.850723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079926, 31.892303, 35.195110>,  <27.098045, 32.013031, 35.401741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079926, 31.892303, 35.195110>,  <27.049725, 31.691090, 34.850723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079926, 31.892303, 35.195110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606354, 0.708608, -0.360845,
		-0.791602, -0.494805, 0.358517,
		0.075500, 0.503033, 0.860963,
		27.102575, 32.043213, 35.453400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461271, 31.944824, 34.894604>,  <27.049725, 31.691090, 34.850723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461271, 31.944824, 34.894604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.624340, 32.154644, 35.193577>,  <26.722181, 32.280537, 35.372959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.624340, 32.154644, 35.193577>,  <26.461271, 31.944824, 34.894604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.624340, 32.154644, 35.193577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691115, 0.712222, -0.122883,
		-0.596795, -0.466466, 0.652875,
		0.407671, 0.524547, 0.747432,
		26.746641, 32.312008, 35.417805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.902349, 32.119495, 35.331654>,  <26.461271, 31.944824, 34.894604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.902349, 32.119495, 35.331654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202171, 32.383396, 35.353165>,  <26.382065, 32.541737, 35.366070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202171, 32.383396, 35.353165>,  <25.902349, 32.119495, 35.331654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202171, 32.383396, 35.353165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647922, 0.747885, -0.144450,
		-0.135521, 0.073429, 0.988050,
		0.749554, 0.659755, 0.053778,
		26.427038, 32.581322, 35.369297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536413, 32.677002, 35.641930>,  <25.902349, 32.119495, 35.331654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536413, 32.677002, 35.641930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877804, 32.852951, 35.530151>,  <26.082638, 32.958519, 35.463085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877804, 32.852951, 35.530151>,  <25.536413, 32.677002, 35.641930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877804, 32.852951, 35.530151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478881, 0.873495, -0.087629,
		0.205550, 0.208611, 0.956154,
		0.853477, 0.439872, -0.279447,
		26.133846, 32.984913, 35.446316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650669, 33.465981, 35.947098>,  <25.536413, 32.677002, 35.641930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650669, 33.465981, 35.947098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834789, 33.404518, 35.597351>,  <25.945261, 33.367641, 35.387505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834789, 33.404518, 35.597351>,  <25.650669, 33.465981, 35.947098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834789, 33.404518, 35.597351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469901, 0.793455, -0.386810,
		0.753204, 0.588914, 0.293027,
		0.460302, -0.153653, -0.874364,
		25.972879, 33.358421, 35.335041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630423, 34.101997, 35.611717>,  <25.650669, 33.465981, 35.947098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630423, 34.101997, 35.611717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742018, 33.848492, 35.323135>,  <25.808975, 33.696388, 35.149986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742018, 33.848492, 35.323135>,  <25.630423, 34.101997, 35.611717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.742018, 33.848492, 35.323135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613131, 0.460657, -0.641766,
		0.739077, 0.621395, -0.260065,
		0.278990, -0.633769, -0.721458,
		25.825714, 33.658360, 35.106697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.122618, 33.956406, 36.242867>,  <25.630423, 34.101997, 35.611717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.122618, 33.956406, 36.242867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254179, 33.820293, 35.890495>,  <26.333115, 33.738625, 35.679073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254179, 33.820293, 35.890495>,  <26.122618, 33.956406, 36.242867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254179, 33.820293, 35.890495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157986, 0.899852, -0.406579,
		0.931055, 0.272899, 0.242204,
		0.328902, -0.340283, -0.880926,
		26.352850, 33.718208, 35.626217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663145, 34.391010, 35.964844>,  <26.122618, 33.956406, 36.242867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663145, 34.391010, 35.964844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523634, 34.212460, 35.635212>,  <26.439928, 34.105328, 35.437435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523634, 34.212460, 35.635212>,  <26.663145, 34.391010, 35.964844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.523634, 34.212460, 35.635212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142385, 0.894321, -0.424166,
		0.926327, -0.030602, -0.375475,
		-0.348776, -0.446378, -0.824076,
		26.419001, 34.078545, 35.387989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088047, 34.701202, 35.411736>,  <26.663145, 34.391010, 35.964844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088047, 34.701202, 35.411736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776253, 34.542213, 35.218071>,  <26.589176, 34.446819, 35.101871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776253, 34.542213, 35.218071>,  <27.088047, 34.701202, 35.411736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776253, 34.542213, 35.218071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005312, 0.777075, -0.629386,
		0.626399, -0.488024, -0.607829,
		-0.779484, -0.397476, -0.484166,
		26.542408, 34.422970, 35.072823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179285, 34.827057, 34.725449>,  <27.088047, 34.701202, 35.411736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179285, 34.827057, 34.725449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788790, 34.747150, 34.759041>,  <26.554493, 34.699207, 34.779198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788790, 34.747150, 34.759041>,  <27.179285, 34.827057, 34.725449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788790, 34.747150, 34.759041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197228, 0.658515, -0.726264,
		0.089783, -0.725570, -0.682267,
		-0.976238, -0.199769, 0.083979,
		26.495918, 34.687222, 34.784233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844744, 34.621582, 34.148743>,  <27.179285, 34.827057, 34.725449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844744, 34.621582, 34.148743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589603, 34.828648, 34.376839>,  <26.436520, 34.952888, 34.513695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589603, 34.828648, 34.376839>,  <26.844744, 34.621582, 34.148743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589603, 34.828648, 34.376839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240051, 0.569898, -0.785870,
		-0.731794, -0.638154, -0.239245,
		-0.637851, 0.517664, 0.570237,
		26.398249, 34.983948, 34.547909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092333, 34.776955, 33.871601>,  <26.844744, 34.621582, 34.148743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092333, 34.776955, 33.871601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262047, 35.058632, 34.099316>,  <26.363876, 35.227638, 34.235947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262047, 35.058632, 34.099316>,  <26.092333, 34.776955, 33.871601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262047, 35.058632, 34.099316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058758, 0.648768, -0.758715,
		-0.903620, 0.288462, 0.316640,
		0.424287, 0.704195, 0.569290,
		26.389334, 35.269890, 34.270103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.718061, 35.326527, 33.746891>,  <26.092333, 34.776955, 33.871601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.718061, 35.326527, 33.746891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063753, 35.485447, 33.870354>,  <26.271168, 35.580799, 33.944431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063753, 35.485447, 33.870354>,  <25.718061, 35.326527, 33.746891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063753, 35.485447, 33.870354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122287, 0.760989, -0.637135,
		-0.488014, 0.512885, 0.706251,
		0.864227, 0.397296, 0.308654,
		26.323021, 35.604637, 33.962952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.528221, 36.095318, 33.853214>,  <25.718061, 35.326527, 33.746891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.528221, 36.095318, 33.853214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912182, 36.008156, 33.782669>,  <26.142559, 35.955860, 33.740341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912182, 36.008156, 33.782669>,  <25.528221, 36.095318, 33.853214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912182, 36.008156, 33.782669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031107, 0.708030, -0.705496,
		0.278603, 0.671722, 0.686419,
		0.959903, -0.217905, -0.176364,
		26.200153, 35.942783, 33.729759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781616, 36.778065, 33.698345>,  <25.528221, 36.095318, 33.853214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781616, 36.778065, 33.698345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980888, 36.496151, 33.496315>,  <26.100451, 36.327003, 33.375095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980888, 36.496151, 33.496315>,  <25.781616, 36.778065, 33.698345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.980888, 36.496151, 33.496315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174988, 0.652242, -0.737536,
		0.849234, 0.279042, 0.448261,
		0.498178, -0.704781, -0.505077,
		26.130342, 36.284718, 33.344791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365503, 37.080051, 33.272892>,  <25.781616, 36.778065, 33.698345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365503, 37.080051, 33.272892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279564, 36.722424, 33.115681>,  <26.228001, 36.507847, 33.021355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279564, 36.722424, 33.115681>,  <26.365503, 37.080051, 33.272892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279564, 36.722424, 33.115681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272190, 0.441299, -0.855084,
		0.937952, -0.076732, -0.338170,
		-0.214846, -0.894074, -0.393031,
		26.215111, 36.454201, 32.997772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741318, 36.991962, 32.637356>,  <26.365503, 37.080051, 33.272892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741318, 36.991962, 32.637356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407402, 36.771957, 32.647278>,  <26.207052, 36.639954, 32.653229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407402, 36.771957, 32.647278>,  <26.741318, 36.991962, 32.637356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407402, 36.771957, 32.647278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232852, 0.311875, -0.921148,
		0.498910, -0.774738, -0.388421,
		-0.834787, -0.550014, 0.024801,
		26.156965, 36.606953, 32.654716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.705811, 36.602577, 32.073769>,  <26.741318, 36.991962, 32.637356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.705811, 36.602577, 32.073769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325087, 36.635860, 32.191845>,  <26.096653, 36.655830, 32.262691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325087, 36.635860, 32.191845>,  <26.705811, 36.602577, 32.073769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325087, 36.635860, 32.191845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246497, 0.365128, -0.897731,
		-0.182481, -0.927231, -0.327022,
		-0.951808, 0.083209, 0.295189,
		26.039543, 36.660824, 32.280403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843361, 36.488842, 31.268127>,  <26.705811, 36.602577, 32.073769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843361, 36.488842, 31.268127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623932, 36.772972, 31.444538>,  <26.492273, 36.943451, 31.550385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623932, 36.772972, 31.444538>,  <26.843361, 36.488842, 31.268127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623932, 36.772972, 31.444538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652099, 0.693619, -0.306039,
		-0.523291, 0.119707, -0.843704,
		-0.548575, 0.710326, 0.441025,
		26.459360, 36.986069, 31.576845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916975, 37.031479, 30.925335>,  <26.843361, 36.488842, 31.268127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916975, 37.031479, 30.925335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774912, 37.205891, 31.256090>,  <26.689674, 37.310535, 31.454544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774912, 37.205891, 31.256090>,  <26.916975, 37.031479, 30.925335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774912, 37.205891, 31.256090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609556, 0.778656, -0.148784,
		-0.708735, 0.451193, -0.542328,
		-0.355156, 0.436028, 0.826888,
		26.668365, 37.336700, 31.504156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512127, 37.635231, 30.851572>,  <26.916975, 37.031479, 30.925335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512127, 37.635231, 30.851572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727919, 37.674747, 31.186045>,  <26.857393, 37.698456, 31.386728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727919, 37.674747, 31.186045>,  <26.512127, 37.635231, 30.851572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727919, 37.674747, 31.186045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414187, 0.833499, -0.365690,
		-0.733084, 0.543618, 0.408739,
		0.539479, 0.098787, 0.836184,
		26.889763, 37.704384, 31.436899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487223, 38.211987, 31.179419>,  <26.512127, 37.635231, 30.851572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487223, 38.211987, 31.179419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847298, 38.060009, 31.264559>,  <27.063343, 37.968822, 31.315643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847298, 38.060009, 31.264559>,  <26.487223, 38.211987, 31.179419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847298, 38.060009, 31.264559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431415, 0.711122, -0.555146,
		0.059563, 0.591562, 0.804056,
		0.900185, -0.379948, 0.212852,
		27.117353, 37.946026, 31.328415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.927471, 38.730568, 31.262705>,  <26.487223, 38.211987, 31.179419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.927471, 38.730568, 31.262705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871586, 38.507378, 31.589909>,  <25.838055, 38.373463, 31.786232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871586, 38.507378, 31.589909>,  <25.927471, 38.730568, 31.262705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871586, 38.507378, 31.589909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987909, 0.022478, -0.153397,
		0.067205, -0.829551, -0.554372,
		-0.139712, -0.557978, 0.818010,
		25.829672, 38.339985, 31.835312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618370, 38.001827, 31.187300>,  <25.927471, 38.730568, 31.262705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618370, 38.001827, 31.187300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476648, 38.182713, 31.514706>,  <25.391615, 38.291245, 31.711149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476648, 38.182713, 31.514706>,  <25.618370, 38.001827, 31.187300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476648, 38.182713, 31.514706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926744, -0.052846, -0.371958,
		-0.124951, -0.890341, 0.437814,
		-0.354306, 0.452218, 0.818515,
		25.370356, 38.318378, 31.760260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.178570, 37.664413, 31.593828>,  <25.618370, 38.001827, 31.187300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.178570, 37.664413, 31.593828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073910, 38.050453, 31.589291>,  <25.011114, 38.282078, 31.586567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073910, 38.050453, 31.589291>,  <25.178570, 37.664413, 31.593828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.073910, 38.050453, 31.589291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815142, -0.227260, -0.532819,
		-0.516800, -0.130164, 0.846153,
		-0.261651, 0.965096, -0.011346,
		24.995415, 38.339981, 31.585888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.955870, 38.001347, 32.326363>,  <25.178570, 37.664413, 31.593828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.955870, 38.001347, 32.326363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268522, 38.207664, 32.466652>,  <25.456114, 38.331455, 32.550827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268522, 38.207664, 32.466652>,  <24.955870, 38.001347, 32.326363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.268522, 38.207664, 32.466652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623738, -0.644940, -0.441592,
		-0.001575, 0.563923, -0.825826,
		0.781632, 0.515794, 0.350724,
		25.503012, 38.362404, 32.571869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.625351, 37.280602, 32.403526>,  <24.955870, 38.001347, 32.326363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.625351, 37.280602, 32.403526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732615, 36.951626, 32.202850>,  <24.796972, 36.754242, 32.082447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732615, 36.951626, 32.202850>,  <24.625351, 37.280602, 32.403526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.732615, 36.951626, 32.202850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693216, -0.196896, 0.693314,
		-0.668986, -0.533696, 0.517326,
		0.268160, -0.822436, -0.501687,
		24.813063, 36.704895, 32.052345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.070490, 36.949490, 32.898567>,  <24.625351, 37.280602, 32.403526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.070490, 36.949490, 32.898567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108664, 36.753788, 32.551807>,  <25.131569, 36.636368, 32.343750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108664, 36.753788, 32.551807>,  <25.070490, 36.949490, 32.898567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.108664, 36.753788, 32.551807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604624, -0.663333, 0.440931,
		-0.790773, -0.566230, 0.232512,
		0.095436, -0.489259, -0.866901,
		25.137295, 36.607010, 32.291737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864349, 36.303165, 33.025135>,  <25.070490, 36.949490, 32.898567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864349, 36.303165, 33.025135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143715, 36.345192, 32.741959>,  <25.311335, 36.370407, 32.572052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143715, 36.345192, 32.741959>,  <24.864349, 36.303165, 33.025135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143715, 36.345192, 32.741959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628401, -0.563445, 0.536323,
		-0.342534, -0.819445, -0.459543,
		0.698415, 0.105069, -0.707939,
		25.353239, 36.376713, 32.529575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.196686, 35.676815, 32.683582>,  <24.864349, 36.303165, 33.025135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.196686, 35.676815, 32.683582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480419, 35.958618, 32.674500>,  <25.650660, 36.127701, 32.669048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480419, 35.958618, 32.674500>,  <25.196686, 35.676815, 32.683582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.480419, 35.958618, 32.674500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582410, -0.567640, 0.581880,
		0.397048, -0.425973, -0.812958,
		0.709332, 0.704508, -0.022711,
		25.693218, 36.169971, 32.667686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860527, 35.267864, 32.660034>,  <25.196686, 35.676815, 32.683582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.860527, 35.267864, 32.660034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977234, 35.635471, 32.766071>,  <26.047258, 35.856037, 32.829693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977234, 35.635471, 32.766071>,  <25.860527, 35.267864, 32.660034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977234, 35.635471, 32.766071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576060, -0.390088, 0.718322,
		0.763562, -0.056873, -0.643226,
		0.291768, 0.919019, 0.265094,
		26.064764, 35.911179, 32.845600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559511, 35.328846, 32.574455>,  <25.860527, 35.267864, 32.660034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559511, 35.328846, 32.574455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463507, 35.622921, 32.828037>,  <26.405905, 35.799366, 32.980186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463507, 35.622921, 32.828037>,  <26.559511, 35.328846, 32.574455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.463507, 35.622921, 32.828037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628518, -0.380009, 0.678644,
		0.739838, 0.561333, -0.370872,
		-0.240010, 0.735186, 0.633953,
		26.391504, 35.843475, 33.018223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122528, 35.789768, 32.898243>,  <26.559511, 35.328846, 32.574455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122528, 35.789768, 32.898243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860756, 35.751667, 33.198284>,  <26.703693, 35.728806, 33.378307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860756, 35.751667, 33.198284>,  <27.122528, 35.789768, 32.898243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860756, 35.751667, 33.198284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746076, -0.242537, 0.620118,
		0.122858, 0.965455, 0.229790,
		-0.654429, -0.095254, 0.750100,
		26.664427, 35.723091, 33.423313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054388, 36.227028, 33.503925>,  <27.122528, 35.789768, 32.898243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054388, 36.227028, 33.503925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929817, 35.871937, 33.639549>,  <26.855076, 35.658882, 33.720924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929817, 35.871937, 33.639549>,  <27.054388, 36.227028, 33.503925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929817, 35.871937, 33.639549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709179, 0.020378, 0.704734,
		-0.632519, 0.459926, 0.623208,
		-0.311426, -0.887724, 0.339059,
		26.836390, 35.605621, 33.741268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932165, 36.283485, 34.223381>,  <27.054388, 36.227028, 33.503925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932165, 36.283485, 34.223381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049196, 35.906551, 34.158394>,  <27.119415, 35.680389, 34.119400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049196, 35.906551, 34.158394>,  <26.932165, 36.283485, 34.223381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049196, 35.906551, 34.158394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753333, 0.122492, 0.646130,
		-0.588972, -0.311437, 0.745734,
		0.292575, -0.942339, -0.162471,
		27.136969, 35.623848, 34.109653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372477, 36.005699, 34.946911>,  <26.932165, 36.283485, 34.223381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372477, 36.005699, 34.946911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438862, 35.767010, 34.632870>,  <27.478693, 35.623798, 34.444447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438862, 35.767010, 34.632870>,  <27.372477, 36.005699, 34.946911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438862, 35.767010, 34.632870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887511, -0.256658, 0.382688,
		-0.429859, -0.760298, 0.486999,
		0.165964, -0.596719, -0.785100,
		27.488651, 35.587994, 34.397339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732565, 35.251930, 35.028717>,  <27.372477, 36.005699, 34.946911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732565, 35.251930, 35.028717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857536, 35.407372, 34.681988>,  <27.932520, 35.500637, 34.473949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857536, 35.407372, 34.681988>,  <27.732565, 35.251930, 35.028717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857536, 35.407372, 34.681988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922494, 0.093651, 0.374478,
		0.226701, -0.916635, -0.329223,
		0.312428, 0.388601, -0.866821,
		27.951265, 35.523952, 34.421940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318415, 34.900867, 34.859600>,  <27.732565, 35.251930, 35.028717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318415, 34.900867, 34.859600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303768, 35.252769, 34.669998>,  <28.294981, 35.463913, 34.556236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303768, 35.252769, 34.669998>,  <28.318415, 34.900867, 34.859600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303768, 35.252769, 34.669998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909866, 0.225512, 0.348264,
		0.413283, -0.418533, -0.808720,
		-0.036616, 0.879758, -0.474009,
		28.292784, 35.516697, 34.527794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947668, 34.994114, 34.443222>,  <28.318415, 34.900867, 34.859600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947668, 34.994114, 34.443222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789883, 35.360481, 34.472862>,  <28.695211, 35.580303, 34.490646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789883, 35.360481, 34.472862>,  <28.947668, 34.994114, 34.443222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789883, 35.360481, 34.472862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898799, 0.367798, 0.238504,
		0.191198, 0.160680, -0.968311,
		-0.394466, 0.915918, 0.074096,
		28.671543, 35.635258, 34.495090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544178, 35.358364, 34.253284>,  <28.947668, 34.994114, 34.443222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544178, 35.358364, 34.253284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287317, 35.639534, 34.375622>,  <29.133200, 35.808235, 34.449024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287317, 35.639534, 34.375622>,  <29.544178, 35.358364, 34.253284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287317, 35.639534, 34.375622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765266, 0.564512, 0.309344,
		0.044793, 0.432698, -0.900426,
		-0.642154, 0.702922, 0.305843,
		29.094671, 35.850410, 34.467373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899164, 36.056061, 34.020260>,  <29.544178, 35.358364, 34.253284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899164, 36.056061, 34.020260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632917, 36.072815, 34.318306>,  <29.473169, 36.082867, 34.497135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632917, 36.072815, 34.318306>,  <29.899164, 36.056061, 34.020260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632917, 36.072815, 34.318306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584086, 0.650720, 0.485187,
		-0.464541, 0.758162, -0.457595,
		-0.665617, 0.041886, 0.745118,
		29.433233, 36.085381, 34.541840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466005, 36.699078, 34.135036>,  <29.899164, 36.056061, 34.020260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466005, 36.699078, 34.135036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553217, 36.481739, 34.459316>,  <29.605545, 36.351334, 34.653885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.553217, 36.481739, 34.459316>,  <29.466005, 36.699078, 34.135036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553217, 36.481739, 34.459316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772420, 0.603804, 0.196947,
		-0.596515, 0.583261, 0.551341,
		0.218030, -0.543349, 0.810700,
		29.618626, 36.318733, 34.702526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497572, 37.139908, 34.801868>,  <29.466005, 36.699078, 34.135036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497572, 37.139908, 34.801868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742275, 36.824993, 34.771046>,  <29.889097, 36.636044, 34.752552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742275, 36.824993, 34.771046>,  <29.497572, 37.139908, 34.801868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742275, 36.824993, 34.771046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791022, 0.608094, 0.067120,
		-0.005988, -0.102011, 0.994765,
		0.611758, -0.787284, -0.077052,
		29.925802, 36.588810, 34.747929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842518, 37.224712, 35.423000>,  <29.497572, 37.139908, 34.801868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842518, 37.224712, 35.423000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040861, 37.033859, 35.132767>,  <30.159868, 36.919350, 34.958626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040861, 37.033859, 35.132767>,  <29.842518, 37.224712, 35.423000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040861, 37.033859, 35.132767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786850, 0.600362, 0.142944,
		0.367410, -0.641805, 0.673124,
		0.495860, -0.477128, -0.725583,
		30.189619, 36.890720, 34.915092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141861, 37.100739, 36.045189>,  <29.842518, 37.224712, 35.423000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141861, 37.100739, 36.045189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367275, 37.310627, 35.789974>,  <30.502523, 37.436562, 35.636845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367275, 37.310627, 35.789974>,  <30.141861, 37.100739, 36.045189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367275, 37.310627, 35.789974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610556, 0.255704, 0.749558,
		0.556461, -0.811960, -0.176276,
		0.563536, 0.524726, -0.638036,
		30.536337, 37.468044, 35.598564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858610, 36.821774, 35.970337>,  <30.141861, 37.100739, 36.045189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858610, 36.821774, 35.970337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825283, 37.213451, 35.896328>,  <30.805286, 37.448460, 35.851921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825283, 37.213451, 35.896328>,  <30.858610, 36.821774, 35.970337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825283, 37.213451, 35.896328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565964, 0.199315, 0.799974,
		0.820209, -0.038064, -0.570796,
		-0.083319, 0.979196, -0.185023,
		30.800287, 37.507210, 35.840820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470398, 37.303116, 35.740585>,  <30.858610, 36.821774, 35.970337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470398, 37.303116, 35.740585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197365, 37.476158, 35.976189>,  <31.033545, 37.579987, 36.117550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197365, 37.476158, 35.976189>,  <31.470398, 37.303116, 35.740585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197365, 37.476158, 35.976189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669666, 0.047550, 0.741139,
		0.292617, 0.900326, -0.322161,
		-0.682585, 0.432610, 0.589004,
		30.992590, 37.605942, 36.152889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819759, 37.949989, 35.970947>,  <31.470398, 37.303116, 35.740585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819759, 37.949989, 35.970947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559376, 37.789692, 36.228832>,  <31.403147, 37.693512, 36.383564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559376, 37.789692, 36.228832>,  <31.819759, 37.949989, 35.970947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559376, 37.789692, 36.228832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642420, 0.161639, 0.749112,
		-0.404414, 0.901818, 0.152227,
		-0.650957, -0.400745, 0.644716,
		31.364088, 37.669468, 36.422249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240944, 37.674953, 36.532890>,  <31.819759, 37.949989, 35.970947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240944, 37.674953, 36.532890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238453, 37.811951, 36.908691>,  <32.236958, 37.894150, 37.134171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238453, 37.811951, 36.908691>,  <32.240944, 37.674953, 36.532890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238453, 37.811951, 36.908691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582354, -0.762516, 0.281839,
		0.812911, 0.548877, -0.194704,
		-0.006230, 0.342497, 0.939498,
		32.236584, 37.914700, 37.190540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796066, 37.134331, 36.535519>,  <32.240944, 37.674953, 36.532890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796066, 37.134331, 36.535519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989723, 37.484299, 36.539913>,  <33.105915, 37.694279, 36.542549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989723, 37.484299, 36.539913>,  <32.796066, 37.134331, 36.535519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989723, 37.484299, 36.539913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352923, -0.183773, -0.917427,
		-0.800660, 0.448038, -0.397752,
		0.484138, 0.874923, 0.010984,
		33.134964, 37.746777, 36.543209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627010, 37.474728, 35.930237>,  <32.796066, 37.134331, 36.535519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627010, 37.474728, 35.930237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984680, 37.553886, 36.090878>,  <33.199284, 37.601383, 36.187263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984680, 37.553886, 36.090878>,  <32.627010, 37.474728, 35.930237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984680, 37.553886, 36.090878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411992, -0.012588, -0.911101,
		-0.175251, 0.980141, -0.092789,
		0.894176, 0.197899, 0.401604,
		33.252934, 37.613255, 36.211357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836571, 38.053623, 35.497200>,  <32.627010, 37.474728, 35.930237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836571, 38.053623, 35.497200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158661, 37.892921, 35.671650>,  <33.351913, 37.796501, 35.776321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158661, 37.892921, 35.671650>,  <32.836571, 38.053623, 35.497200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158661, 37.892921, 35.671650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447328, -0.071245, -0.891528,
		0.389248, 0.912972, 0.122348,
		0.805223, -0.401755, 0.436130,
		33.400227, 37.772396, 35.802490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300892, 38.328957, 35.186630>,  <32.836571, 38.053623, 35.497200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300892, 38.328957, 35.186630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507378, 38.032986, 35.359154>,  <33.631268, 37.855404, 35.462669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507378, 38.032986, 35.359154>,  <33.300892, 38.328957, 35.186630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507378, 38.032986, 35.359154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526405, -0.123134, -0.841270,
		0.675590, 0.661318, 0.325939,
		0.516213, -0.739930, 0.431309,
		33.662243, 37.811008, 35.488548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959480, 38.421585, 35.022465>,  <33.300892, 38.328957, 35.186630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959480, 38.421585, 35.022465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964622, 38.034073, 35.121506>,  <33.967709, 37.801567, 35.180931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964622, 38.034073, 35.121506>,  <33.959480, 38.421585, 35.022465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964622, 38.034073, 35.121506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615513, -0.187482, -0.765503,
		0.788022, 0.162243, 0.593884,
		0.012854, -0.968776, 0.247602,
		33.968479, 37.743439, 35.195786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716347, 38.211426, 34.973778>,  <33.959480, 38.421585, 35.022465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716347, 38.211426, 34.973778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502331, 37.876480, 34.928955>,  <34.373920, 37.675514, 34.902061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502331, 37.876480, 34.928955>,  <34.716347, 38.211426, 34.973778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502331, 37.876480, 34.928955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553838, -0.247498, -0.794989,
		0.637961, -0.487410, 0.596185,
		-0.535041, -0.837362, -0.112052,
		34.341820, 37.625271, 34.895340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174847, 37.740276, 34.806000>,  <34.716347, 38.211426, 34.973778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174847, 37.740276, 34.806000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824642, 37.580997, 34.696514>,  <34.614521, 37.485428, 34.630821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824642, 37.580997, 34.696514>,  <35.174847, 37.740276, 34.806000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824642, 37.580997, 34.696514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383011, -0.226536, -0.895535,
		0.294597, -0.888885, 0.350850,
		-0.875508, -0.398201, -0.273716,
		34.561989, 37.461536, 34.614399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331192, 37.082836, 34.512157>,  <35.174847, 37.740276, 34.806000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331192, 37.082836, 34.512157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958725, 37.168392, 34.394054>,  <34.735245, 37.219727, 34.323193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958725, 37.168392, 34.394054>,  <35.331192, 37.082836, 34.512157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958725, 37.168392, 34.394054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232536, -0.275344, -0.932798,
		-0.280838, -0.937244, 0.206647,
		-0.931159, 0.213912, -0.295270,
		34.679375, 37.232559, 34.305477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249798, 36.574188, 34.011215>,  <35.331192, 37.082836, 34.512157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249798, 36.574188, 34.011215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983189, 36.862396, 33.934696>,  <34.823223, 37.035320, 33.888783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983189, 36.862396, 33.934696>,  <35.249798, 36.574188, 34.011215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983189, 36.862396, 33.934696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225629, -0.049603, -0.972950,
		-0.710523, -0.691653, -0.129510,
		-0.666520, 0.720524, -0.191302,
		34.783234, 37.078552, 33.877304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980343, 36.395718, 33.453777>,  <35.249798, 36.574188, 34.011215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980343, 36.395718, 33.453777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863029, 36.777748, 33.436783>,  <34.792641, 37.006966, 33.426586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863029, 36.777748, 33.436783>,  <34.980343, 36.395718, 33.453777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863029, 36.777748, 33.436783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253613, 0.034881, -0.966676,
		-0.921771, -0.294288, -0.252451,
		-0.293287, 0.955080, -0.042483,
		34.775043, 37.064274, 33.424038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470505, 36.399487, 32.935459>,  <34.980343, 36.395718, 33.453777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470505, 36.399487, 32.935459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615082, 36.770046, 32.977684>,  <34.701828, 36.992382, 33.003017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615082, 36.770046, 32.977684>,  <34.470505, 36.399487, 32.935459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615082, 36.770046, 32.977684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331513, -0.021869, -0.943197,
		-0.871471, 0.375902, -0.315018,
		0.361439, 0.926401, 0.105558,
		34.723515, 37.047966, 33.009350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295452, 36.867218, 32.402092>,  <34.470505, 36.399487, 32.935459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295452, 36.867218, 32.402092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623116, 37.037838, 32.555470>,  <34.819714, 37.140209, 32.647495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623116, 37.037838, 32.555470>,  <34.295452, 36.867218, 32.402092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623116, 37.037838, 32.555470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354678, 0.148676, -0.923092,
		-0.450757, 0.892159, -0.029500,
		0.819159, 0.426553, 0.383446,
		34.868862, 37.165802, 32.670502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486946, 37.214954, 31.855787>,  <34.295452, 36.867218, 32.402092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486946, 37.214954, 31.855787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813339, 37.242012, 32.085430>,  <35.009174, 37.258247, 32.223217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813339, 37.242012, 32.085430>,  <34.486946, 37.214954, 31.855787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813339, 37.242012, 32.085430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541293, 0.259205, -0.799884,
		-0.202917, 0.963451, 0.174893,
		0.815982, 0.067641, 0.574107,
		35.058132, 37.262306, 32.257664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955235, 37.831635, 31.637943>,  <34.486946, 37.214954, 31.855787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955235, 37.831635, 31.637943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209660, 37.611294, 31.854090>,  <35.362312, 37.479092, 31.983778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209660, 37.611294, 31.854090>,  <34.955235, 37.831635, 31.637943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209660, 37.611294, 31.854090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712719, 0.150999, -0.685004,
		0.295738, 0.820832, 0.488644,
		0.636058, -0.550848, 0.540367,
		35.400478, 37.446041, 32.016201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648521, 38.094177, 31.616032>,  <34.955235, 37.831635, 31.637943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648521, 38.094177, 31.616032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713177, 37.708794, 31.701473>,  <35.751968, 37.477566, 31.752739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713177, 37.708794, 31.701473>,  <35.648521, 38.094177, 31.616032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713177, 37.708794, 31.701473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719234, -0.033194, -0.693974,
		0.675704, 0.265802, 0.687585,
		0.161636, -0.963456, 0.213604,
		35.761669, 37.419758, 31.765554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209881, 38.037380, 31.185017>,  <35.648521, 38.094177, 31.616032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209881, 38.037380, 31.185017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105736, 37.652920, 31.221682>,  <36.043247, 37.422245, 31.243681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105736, 37.652920, 31.221682>,  <36.209881, 38.037380, 31.185017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105736, 37.652920, 31.221682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504771, -0.216433, -0.835681,
		0.823053, -0.171316, 0.541512,
		-0.260366, -0.961149, 0.091660,
		36.027626, 37.364574, 31.249180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799896, 37.678635, 31.006784>,  <36.209881, 38.037380, 31.185017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799896, 37.678635, 31.006784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493580, 37.425907, 30.958824>,  <36.309792, 37.274269, 30.930048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493580, 37.425907, 30.958824>,  <36.799896, 37.678635, 31.006784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493580, 37.425907, 30.958824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346632, -0.248484, -0.904490,
		0.541678, -0.734209, 0.409294,
		-0.765787, -0.631817, -0.119902,
		36.263844, 37.236362, 30.922853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087463, 37.126373, 30.608845>,  <36.799896, 37.678635, 31.006784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087463, 37.126373, 30.608845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696075, 37.065441, 30.553141>,  <36.461243, 37.028881, 30.519718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696075, 37.065441, 30.553141>,  <37.087463, 37.126373, 30.608845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696075, 37.065441, 30.553141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164804, -0.170445, -0.971487,
		0.124255, -0.973521, 0.191881,
		-0.978469, -0.152335, -0.139262,
		36.402534, 37.019741, 30.511362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185036, 36.530254, 30.408812>,  <37.087463, 37.126373, 30.608845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185036, 36.530254, 30.408812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842712, 36.702038, 30.293459>,  <36.637318, 36.805107, 30.224247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842712, 36.702038, 30.293459>,  <37.185036, 36.530254, 30.408812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842712, 36.702038, 30.293459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263856, -0.117112, -0.957426,
		-0.444944, -0.895463, -0.013089,
		-0.855806, 0.429455, -0.288381,
		36.585972, 36.830875, 30.206945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788406, 36.074089, 29.833429>,  <37.185036, 36.530254, 30.408812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788406, 36.074089, 29.833429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618263, 36.432182, 29.780323>,  <36.516178, 36.647038, 29.748459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618263, 36.432182, 29.780323>,  <36.788406, 36.074089, 29.833429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618263, 36.432182, 29.780323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242767, -0.028456, -0.969667,
		-0.871857, -0.444685, -0.205230,
		-0.425357, 0.895235, -0.132764,
		36.490658, 36.700752, 29.740494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444260, 35.955318, 29.215040>,  <36.788406, 36.074089, 29.833429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444260, 35.955318, 29.215040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492523, 36.350430, 29.254519>,  <36.521481, 36.587494, 29.278206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492523, 36.350430, 29.254519>,  <36.444260, 35.955318, 29.215040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492523, 36.350430, 29.254519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008459, 0.098397, -0.995111,
		-0.992657, 0.120909, 0.003518,
		0.120664, 0.987775, 0.098697,
		36.528721, 36.646763, 29.284128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283569, 36.174984, 28.534660>,  <36.444260, 35.955318, 29.215040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283569, 36.174984, 28.534660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438889, 36.522423, 28.657797>,  <36.532082, 36.730885, 28.731680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438889, 36.522423, 28.657797>,  <36.283569, 36.174984, 28.534660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438889, 36.522423, 28.657797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135847, 0.276453, -0.951377,
		-0.911465, 0.411240, -0.010649,
		0.388300, 0.868594, 0.307844,
		36.555378, 36.783001, 28.750151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975754, 36.745041, 28.105885>,  <36.283569, 36.174984, 28.534660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975754, 36.745041, 28.105885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319359, 36.880768, 28.259226>,  <36.525520, 36.962204, 28.351231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319359, 36.880768, 28.259226>,  <35.975754, 36.745041, 28.105885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319359, 36.880768, 28.259226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312825, 0.244863, -0.917705,
		-0.405264, 0.908243, 0.104192,
		0.859012, 0.339319, 0.383355,
		36.577061, 36.982563, 28.374233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042976, 37.350632, 27.796909>,  <35.975754, 36.745041, 28.105885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042976, 37.350632, 27.796909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405296, 37.266987, 27.944311>,  <36.622688, 37.216801, 28.032751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405296, 37.266987, 27.944311>,  <36.042976, 37.350632, 27.796909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405296, 37.266987, 27.944311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421477, 0.533654, -0.733192,
		-0.043337, 0.819444, 0.571519,
		0.905803, -0.209108, 0.368503,
		36.677036, 37.204254, 28.054863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451824, 38.016457, 27.837614>,  <36.042976, 37.350632, 27.796909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451824, 38.016457, 27.837614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679596, 37.689289, 27.804707>,  <36.816257, 37.492989, 27.784962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679596, 37.689289, 27.804707>,  <36.451824, 38.016457, 27.837614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679596, 37.689289, 27.804707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495983, 0.421652, -0.759086,
		0.655555, 0.391441, 0.645772,
		0.569428, -0.817914, -0.082268,
		36.850426, 37.443916, 27.780025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058487, 38.204632, 27.608335>,  <36.451824, 38.016457, 27.837614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058487, 38.204632, 27.608335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153675, 37.823250, 27.534264>,  <37.210789, 37.594421, 27.489820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153675, 37.823250, 27.534264>,  <37.058487, 38.204632, 27.608335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153675, 37.823250, 27.534264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766742, 0.301444, -0.566779,
		0.596221, -0.007111, 0.802789,
		0.237966, -0.953457, -0.185180,
		37.225063, 37.537212, 27.478710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838028, 38.147598, 27.540487>,  <37.058487, 38.204632, 27.608335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838028, 38.147598, 27.540487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708881, 37.809723, 27.369720>,  <37.631393, 37.606998, 27.267260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708881, 37.809723, 27.369720>,  <37.838028, 38.147598, 27.540487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708881, 37.809723, 27.369720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763060, 0.034535, -0.645404,
		0.559910, -0.534141, 0.633399,
		-0.322863, -0.844690, -0.426918,
		37.612022, 37.556316, 27.241646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446781, 37.959213, 27.387512>,  <37.838028, 38.147598, 27.540487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446781, 37.959213, 27.387512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203587, 37.716831, 27.182310>,  <38.057671, 37.571404, 27.059189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203587, 37.716831, 27.182310>,  <38.446781, 37.959213, 27.387512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203587, 37.716831, 27.182310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669172, -0.043365, -0.741841,
		0.427275, -0.794317, 0.431852,
		-0.607984, -0.605954, -0.513006,
		38.021191, 37.535046, 27.028408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890396, 37.490578, 27.007664>,  <38.446781, 37.959213, 27.387512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890396, 37.490578, 27.007664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546867, 37.485703, 26.802809>,  <38.340752, 37.482777, 26.679895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546867, 37.485703, 26.802809>,  <38.890396, 37.490578, 27.007664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546867, 37.485703, 26.802809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508187, -0.146397, -0.848713,
		-0.064631, -0.989151, 0.131922,
		-0.858818, -0.012188, -0.512135,
		38.289223, 37.482048, 26.649168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891537, 36.896523, 26.662025>,  <38.890396, 37.490578, 27.007664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891537, 36.896523, 26.662025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643322, 37.140450, 26.464823>,  <38.494392, 37.286808, 26.346500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643322, 37.140450, 26.464823>,  <38.891537, 36.896523, 26.662025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643322, 37.140450, 26.464823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568545, -0.083134, -0.818441,
		-0.540089, -0.788166, -0.295123,
		-0.620533, 0.609822, -0.493008,
		38.457161, 37.323395, 26.316921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920025, 36.762135, 25.957443>,  <38.891537, 36.896523, 26.662025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920025, 36.762135, 25.957443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712261, 37.102425, 25.925215>,  <38.587605, 37.306599, 25.905878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712261, 37.102425, 25.925215>,  <38.920025, 36.762135, 25.957443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712261, 37.102425, 25.925215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396991, 0.156733, -0.904341,
		-0.756715, -0.501704, -0.419137,
		-0.519404, 0.850722, -0.080570,
		38.556438, 37.357639, 25.901043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601448, 36.709518, 25.335499>,  <38.920025, 36.762135, 25.957443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601448, 36.709518, 25.335499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622471, 37.097538, 25.430353>,  <38.635086, 37.330349, 25.487267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622471, 37.097538, 25.430353>,  <38.601448, 36.709518, 25.335499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622471, 37.097538, 25.430353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541839, 0.171766, -0.822744,
		-0.838837, 0.171734, -0.516585,
		0.052561, 0.970054, 0.237136,
		38.638241, 37.388554, 25.501493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404232, 37.133568, 24.721182>,  <38.601448, 36.709518, 25.335499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404232, 37.133568, 24.721182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624363, 37.379208, 24.947464>,  <38.756443, 37.526592, 25.083233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624363, 37.379208, 24.947464>,  <38.404232, 37.133568, 24.721182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624363, 37.379208, 24.947464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532399, 0.263834, -0.804328,
		-0.643187, 0.743827, -0.181748,
		0.550329, 0.614095, 0.565707,
		38.789463, 37.563435, 25.117176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553200, 37.716179, 24.363054>,  <38.404232, 37.133568, 24.721182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553200, 37.716179, 24.363054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839172, 37.717331, 24.642731>,  <39.010757, 37.718021, 24.810535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839172, 37.717331, 24.642731>,  <38.553200, 37.716179, 24.363054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839172, 37.717331, 24.642731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663321, 0.313405, -0.679546,
		-0.221087, 0.949615, 0.222151,
		0.714931, 0.002881, 0.699189,
		39.053650, 37.718197, 24.852488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848763, 38.316662, 24.287592>,  <38.553200, 37.716179, 24.363054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848763, 38.316662, 24.287592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119576, 38.137032, 24.520819>,  <39.282063, 38.029255, 24.660755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119576, 38.137032, 24.520819>,  <38.848763, 38.316662, 24.287592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119576, 38.137032, 24.520819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718853, 0.233707, -0.654699,
		0.157741, 0.862389, 0.481044,
		0.677029, -0.449072, 0.583066,
		39.322685, 38.002312, 24.695738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423660, 38.795254, 24.218626>,  <38.848763, 38.316662, 24.287592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423660, 38.795254, 24.218626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558006, 38.460083, 24.390711>,  <39.638615, 38.258980, 24.493961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558006, 38.460083, 24.390711>,  <39.423660, 38.795254, 24.218626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558006, 38.460083, 24.390711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871098, 0.102575, -0.480277,
		0.358306, 0.536064, 0.764364,
		0.335864, -0.837923, 0.430211,
		39.658764, 38.208706, 24.519773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136246, 38.968147, 24.548698>,  <39.423660, 38.795254, 24.218626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136246, 38.968147, 24.548698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105011, 38.579712, 24.458458>,  <40.086269, 38.346653, 24.404314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105011, 38.579712, 24.458458>,  <40.136246, 38.968147, 24.548698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105011, 38.579712, 24.458458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860287, 0.048722, -0.507477,
		0.503795, -0.233708, 0.831608,
		-0.078084, -0.971085, -0.225602,
		40.081585, 38.288387, 24.390778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704166, 38.654617, 24.787214>,  <40.136246, 38.968147, 24.548698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704166, 38.654617, 24.787214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572079, 38.385902, 24.521990>,  <40.492825, 38.224674, 24.362854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572079, 38.385902, 24.521990>,  <40.704166, 38.654617, 24.787214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572079, 38.385902, 24.521990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885015, 0.023877, -0.464949,
		0.328180, -0.740357, 0.586659,
		-0.330221, -0.671789, -0.663063,
		40.473011, 38.184364, 24.323071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173901, 38.069542, 24.788881>,  <40.704166, 38.654617, 24.787214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173901, 38.069542, 24.788881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984512, 38.070984, 24.436560>,  <40.870880, 38.071850, 24.225166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984512, 38.070984, 24.436560>,  <41.173901, 38.069542, 24.788881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984512, 38.070984, 24.436560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877666, 0.086354, -0.471428,
		0.074359, -0.996258, -0.044054,
		-0.473468, 0.003610, -0.880803,
		40.842472, 38.072067, 24.172319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585342, 37.563408, 24.321918>,  <41.173901, 38.069542, 24.788881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585342, 37.563408, 24.321918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359936, 37.753532, 24.051649>,  <41.224693, 37.867607, 23.889486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359936, 37.753532, 24.051649>,  <41.585342, 37.563408, 24.321918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359936, 37.753532, 24.051649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810919, 0.162143, -0.562246,
		-0.157684, -0.864750, -0.476806,
		-0.563513, 0.475308, -0.675674,
		41.190884, 37.896126, 23.848948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861759, 37.351234, 23.762615>,  <41.585342, 37.563408, 24.321918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861759, 37.351234, 23.762615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683952, 37.696968, 23.668524>,  <41.577267, 37.904408, 23.612070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683952, 37.696968, 23.668524>,  <41.861759, 37.351234, 23.762615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683952, 37.696968, 23.668524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734745, 0.201602, -0.647693,
		-0.512401, -0.460742, -0.724680,
		-0.444516, 0.864334, -0.235227,
		41.550598, 37.956268, 23.597956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736298, 37.389286, 23.003384>,  <41.861759, 37.351234, 23.762615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736298, 37.389286, 23.003384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733444, 37.771889, 23.120037>,  <41.731731, 38.001450, 23.190029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733444, 37.771889, 23.120037>,  <41.736298, 37.389286, 23.003384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733444, 37.771889, 23.120037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674936, 0.219796, -0.704380,
		-0.737842, 0.191810, -0.647146,
		-0.007133, 0.956503, 0.291634,
		41.731304, 38.058838, 23.207527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745293, 37.771152, 22.350584>,  <41.736298, 37.389286, 23.003384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745293, 37.771152, 22.350584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862461, 38.007065, 22.651609>,  <41.932762, 38.148613, 22.832224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862461, 38.007065, 22.651609>,  <41.745293, 37.771152, 22.350584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862461, 38.007065, 22.651609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793071, 0.289779, -0.535787,
		-0.534076, 0.753779, -0.382858,
		0.292920, 0.589784, 0.752564,
		41.950336, 38.184002, 22.877378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983593, 38.259892, 21.948990>,  <41.745293, 37.771152, 22.350584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983593, 38.259892, 21.948990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136093, 38.287720, 22.317730>,  <42.227592, 38.304417, 22.538975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136093, 38.287720, 22.317730>,  <41.983593, 38.259892, 21.948990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136093, 38.287720, 22.317730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906034, 0.170041, -0.387540,
		-0.183714, 0.982978, 0.001794,
		0.381249, 0.069571, 0.921851,
		42.250469, 38.308590, 22.594286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337708, 38.880047, 22.082590>,  <41.983593, 38.259892, 21.948990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337708, 38.880047, 22.082590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494316, 38.581196, 22.297441>,  <42.588280, 38.401886, 22.426353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494316, 38.581196, 22.297441>,  <42.337708, 38.880047, 22.082590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494316, 38.581196, 22.297441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903288, 0.200765, -0.379162,
		0.175446, 0.633633, 0.753477,
		0.391521, -0.747130, 0.537130,
		42.611771, 38.357056, 22.458580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901863, 39.114914, 22.464437>,  <42.337708, 38.880047, 22.082590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901863, 39.114914, 22.464437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228130, 39.253910, 22.649446>,  <43.423893, 39.337307, 22.760452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228130, 39.253910, 22.649446>,  <42.901863, 39.114914, 22.464437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.228130, 39.253910, 22.649446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382707, 0.275443, -0.881854,
		-0.433836, 0.896315, 0.091684,
		0.815673, 0.347492, 0.462523,
		43.472832, 39.358158, 22.788204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986191, 39.717487, 22.100763>,  <42.901863, 39.114914, 22.464437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986191, 39.717487, 22.100763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334705, 39.651474, 22.285641>,  <43.543816, 39.611866, 22.396566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334705, 39.651474, 22.285641>,  <42.986191, 39.717487, 22.100763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334705, 39.651474, 22.285641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490587, 0.266832, -0.829533,
		0.013576, 0.949507, 0.313452,
		0.871286, -0.165038, 0.462193,
		43.596092, 39.601963, 22.424299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412849, 40.232735, 21.948696>,  <42.986191, 39.717487, 22.100763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412849, 40.232735, 21.948696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570854, 39.870296, 22.009295>,  <43.665657, 39.652832, 22.045654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570854, 39.870296, 22.009295>,  <43.412849, 40.232735, 21.948696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570854, 39.870296, 22.009295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444717, 0.044302, -0.894575,
		0.803862, 0.420740, 0.420458,
		0.395010, -0.906099, 0.151497,
		43.689358, 39.598465, 22.054743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025101, 40.240559, 21.615911>,  <43.412849, 40.232735, 21.948696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025101, 40.240559, 21.615911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.913429, 39.856823, 21.632519>,  <43.846428, 39.626579, 21.642483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.913429, 39.856823, 21.632519>,  <44.025101, 40.240559, 21.615911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.913429, 39.856823, 21.632519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286824, -0.124577, -0.949849,
		0.916402, -0.253267, 0.309942,
		-0.279177, -0.959341, 0.041519,
		43.829678, 39.569019, 21.644974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467960, 39.805660, 21.381966>,  <44.025101, 40.240559, 21.615911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467960, 39.805660, 21.381966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145477, 39.577900, 21.317701>,  <43.951988, 39.441242, 21.279142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145477, 39.577900, 21.317701>,  <44.467960, 39.805660, 21.381966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145477, 39.577900, 21.317701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241523, -0.068852, -0.967950,
		0.540091, -0.819170, 0.193033,
		-0.806206, -0.569403, -0.160662,
		43.903614, 39.407078, 21.269503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.505360, 39.205372, 21.793283>,  <44.467960, 39.805660, 21.381966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.505360, 39.205372, 21.793283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.512348, 39.584404, 21.920895>,  <44.516541, 39.811825, 21.997461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.512348, 39.584404, 21.920895>,  <44.505360, 39.205372, 21.793283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.512348, 39.584404, 21.920895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531175, -0.261530, 0.805888,
		0.847082, -0.183538, 0.498764,
		0.017469, 0.947584, 0.319029,
		44.517590, 39.868679, 22.016603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591084, 39.079567, 22.452742>,  <44.505360, 39.205372, 21.793283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591084, 39.079567, 22.452742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422169, 39.440277, 22.415916>,  <44.320820, 39.656704, 22.393822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422169, 39.440277, 22.415916>,  <44.591084, 39.079567, 22.452742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422169, 39.440277, 22.415916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542073, -0.169825, 0.822993,
		0.726518, 0.397447, 0.560542,
		-0.422290, 0.901774, -0.092064,
		44.295483, 39.710808, 22.388298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701511, 39.445290, 23.092201>,  <44.591084, 39.079567, 22.452742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701511, 39.445290, 23.092201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373455, 39.515949, 22.874519>,  <44.176620, 39.558346, 22.743910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373455, 39.515949, 22.874519>,  <44.701511, 39.445290, 23.092201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373455, 39.515949, 22.874519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536577, 0.092704, 0.838744,
		0.198611, 0.979899, 0.018753,
		-0.820145, 0.176646, -0.544204,
		44.127411, 39.568943, 22.711258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384899, 39.998390, 23.403482>,  <44.701511, 39.445290, 23.092201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384899, 39.998390, 23.403482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098785, 39.791626, 23.215368>,  <43.927116, 39.667568, 23.102501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098785, 39.791626, 23.215368>,  <44.384899, 39.998390, 23.403482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098785, 39.791626, 23.215368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588645, 0.082958, 0.804124,
		-0.376649, 0.852008, -0.363618,
		-0.715285, -0.516915, -0.470284,
		43.884201, 39.636551, 23.074284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769646, 40.386082, 23.427479>,  <44.384899, 39.998390, 23.403482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769646, 40.386082, 23.427479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656757, 40.006073, 23.374088>,  <43.589024, 39.778069, 23.342054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656757, 40.006073, 23.374088>,  <43.769646, 40.386082, 23.427479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656757, 40.006073, 23.374088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669334, 0.095313, 0.736823,
		-0.687274, 0.297286, -0.662779,
		-0.282219, -0.950019, -0.133478,
		43.572090, 39.721066, 23.334045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003490, 40.400082, 23.448004>,  <43.769646, 40.386082, 23.427479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003490, 40.400082, 23.448004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098846, 40.021328, 23.534338>,  <43.156059, 39.794075, 23.586138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098846, 40.021328, 23.534338>,  <43.003490, 40.400082, 23.448004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098846, 40.021328, 23.534338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562216, 0.046661, 0.825673,
		-0.791886, -0.318177, -0.521229,
		0.238389, -0.946882, 0.215835,
		43.170364, 39.737263, 23.599089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394318, 40.157967, 23.670082>,  <43.003490, 40.400082, 23.448004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394318, 40.157967, 23.670082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653816, 39.903961, 23.837839>,  <42.809517, 39.751560, 23.938494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653816, 39.903961, 23.837839>,  <42.394318, 40.157967, 23.670082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653816, 39.903961, 23.837839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634200, -0.146537, 0.759156,
		-0.420616, -0.758477, -0.497790,
		0.648747, -0.635011, 0.419390,
		42.848442, 39.713459, 23.963655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066978, 39.626282, 24.077391>,  <42.394318, 40.157967, 23.670082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066978, 39.626282, 24.077391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421692, 39.599724, 24.260345>,  <42.634521, 39.583790, 24.370119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421692, 39.599724, 24.260345>,  <42.066978, 39.626282, 24.077391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421692, 39.599724, 24.260345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458937, -0.009407, 0.888419,
		-0.054689, -0.997749, -0.038816,
		0.886784, -0.066400, 0.457389,
		42.687729, 39.579807, 24.397562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077187, 39.071342, 24.550009>,  <42.066978, 39.626282, 24.077391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077187, 39.071342, 24.550009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378963, 39.269489, 24.722254>,  <42.560028, 39.388378, 24.825600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378963, 39.269489, 24.722254>,  <42.077187, 39.071342, 24.550009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378963, 39.269489, 24.722254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364182, -0.229883, 0.902511,
		0.546068, -0.837712, 0.006972,
		0.754441, 0.495371, 0.430611,
		42.605297, 39.418102, 24.851437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263893, 38.652897, 25.042789>,  <42.077187, 39.071342, 24.550009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263893, 38.652897, 25.042789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404308, 39.007851, 25.162334>,  <42.488556, 39.220821, 25.234062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404308, 39.007851, 25.162334>,  <42.263893, 38.652897, 25.042789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404308, 39.007851, 25.162334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226231, -0.229342, 0.946690,
		0.908621, -0.399936, 0.120246,
		0.351038, 0.887386, 0.298862,
		42.509621, 39.274067, 25.251993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737011, 38.588028, 25.645716>,  <42.263893, 38.652897, 25.042789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737011, 38.588028, 25.645716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653404, 38.974346, 25.707094>,  <42.603241, 39.206139, 25.743921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653404, 38.974346, 25.707094>,  <42.737011, 38.588028, 25.645716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653404, 38.974346, 25.707094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222749, -0.199805, 0.954180,
		0.952206, 0.165257, 0.256893,
		-0.209013, 0.965799, 0.153445,
		42.590702, 39.264088, 25.753128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090885, 38.812958, 26.245996>,  <42.737011, 38.588028, 25.645716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090885, 38.812958, 26.245996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801891, 39.083298, 26.187708>,  <42.628494, 39.245502, 26.152735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801891, 39.083298, 26.187708>,  <43.090885, 38.812958, 26.245996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801891, 39.083298, 26.187708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138113, 0.065433, 0.988253,
		0.677447, 0.734128, 0.046069,
		-0.722489, 0.675851, -0.145720,
		42.585144, 39.286053, 26.143991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123875, 39.129242, 26.831739>,  <43.090885, 38.812958, 26.245996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123875, 39.129242, 26.831739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764626, 39.213684, 26.677433>,  <42.549076, 39.264347, 26.584848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764626, 39.213684, 26.677433>,  <43.123875, 39.129242, 26.831739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764626, 39.213684, 26.677433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405419, -0.057688, 0.912309,
		0.170337, 0.975760, 0.137396,
		-0.898121, 0.211103, -0.385766,
		42.495190, 39.277016, 26.561703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724049, 39.588860, 27.376925>,  <43.123875, 39.129242, 26.831739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724049, 39.588860, 27.376925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424141, 39.461250, 27.145039>,  <42.244194, 39.384686, 27.005907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424141, 39.461250, 27.145039>,  <42.724049, 39.588860, 27.376925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424141, 39.461250, 27.145039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616183, 0.017311, 0.787413,
		-0.241165, 0.947590, -0.209555,
		-0.749772, -0.319021, -0.579714,
		42.199211, 39.365543, 26.971125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148827, 40.093876, 27.569942>,  <42.724049, 39.588860, 27.376925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148827, 40.093876, 27.569942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988110, 39.764915, 27.408840>,  <41.891678, 39.567539, 27.312180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988110, 39.764915, 27.408840>,  <42.148827, 40.093876, 27.569942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988110, 39.764915, 27.408840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656086, -0.048296, 0.753139,
		-0.638837, 0.566849, -0.520163,
		-0.401794, -0.822405, -0.402755,
		41.867573, 39.518192, 27.288013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377224, 40.111458, 27.558701>,  <42.148827, 40.093876, 27.569942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377224, 40.111458, 27.558701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441879, 39.717102, 27.541262>,  <41.480671, 39.480488, 27.530798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441879, 39.717102, 27.541262>,  <41.377224, 40.111458, 27.558701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441879, 39.717102, 27.541262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848990, -0.161444, 0.503141,
		-0.503079, -0.044315, -0.863104,
		0.161639, -0.985886, -0.043596,
		41.490372, 39.421337, 27.528183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685154, 39.873901, 27.542259>,  <41.377224, 40.111458, 27.558701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685154, 39.873901, 27.542259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920292, 39.568241, 27.648474>,  <41.061375, 39.384846, 27.712202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920292, 39.568241, 27.648474>,  <40.685154, 39.873901, 27.542259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920292, 39.568241, 27.648474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653411, -0.254975, 0.712770,
		-0.476959, -0.592504, -0.649191,
		0.587847, -0.764151, 0.265536,
		41.096645, 39.338997, 27.728134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228184, 39.360863, 27.633595>,  <40.685154, 39.873901, 27.542259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228184, 39.360863, 27.633595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552399, 39.261078, 27.845558>,  <40.746925, 39.201206, 27.972736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552399, 39.261078, 27.845558>,  <40.228184, 39.360863, 27.633595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552399, 39.261078, 27.845558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584118, -0.278042, 0.762561,
		-0.042891, -0.927611, -0.371076,
		0.810535, -0.249459, 0.529909,
		40.795559, 39.186241, 28.004530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155891, 38.651680, 27.940201>,  <40.228184, 39.360863, 27.633595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155891, 38.651680, 27.940201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403969, 38.844402, 28.187822>,  <40.552814, 38.960037, 28.336395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403969, 38.844402, 28.187822>,  <40.155891, 38.651680, 27.940201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403969, 38.844402, 28.187822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584980, -0.241723, 0.774189,
		0.522649, -0.842277, 0.131934,
		0.620191, 0.481808, 0.619052,
		40.590027, 38.988945, 28.373537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286545, 38.229042, 28.511068>,  <40.155891, 38.651680, 27.940201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286545, 38.229042, 28.511068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378613, 38.604687, 28.613121>,  <40.433853, 38.830074, 28.674353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378613, 38.604687, 28.613121>,  <40.286545, 38.229042, 28.511068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378613, 38.604687, 28.613121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626549, -0.057594, 0.777251,
		0.744618, -0.338756, 0.575142,
		0.230174, 0.939109, 0.255133,
		40.447666, 38.886421, 28.689661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179592, 38.284779, 29.188915>,  <40.286545, 38.229042, 28.511068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179592, 38.284779, 29.188915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231476, 38.680584, 29.163502>,  <40.262604, 38.918068, 29.148252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231476, 38.680584, 29.163502>,  <40.179592, 38.284779, 29.188915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231476, 38.680584, 29.163502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587979, 0.128351, 0.798628,
		0.798409, -0.066229, 0.598462,
		0.129706, 0.989515, -0.063535,
		40.270386, 38.977440, 29.144442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124825, 38.390587, 29.891201>,  <40.179592, 38.284779, 29.188915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124825, 38.390587, 29.891201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081161, 38.739265, 29.700106>,  <40.054962, 38.948471, 29.585447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081161, 38.739265, 29.700106>,  <40.124825, 38.390587, 29.891201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081161, 38.739265, 29.700106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553344, 0.345972, 0.757703,
		0.825769, 0.347065, 0.444580,
		-0.109159, 0.871693, -0.477739,
		40.048412, 39.000774, 29.556784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335705, 38.888664, 30.343752>,  <40.124825, 38.390587, 29.891201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335705, 38.888664, 30.343752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097206, 39.076805, 30.083521>,  <39.954105, 39.189690, 29.927382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097206, 39.076805, 30.083521>,  <40.335705, 38.888664, 30.343752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097206, 39.076805, 30.083521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572561, 0.318895, 0.755302,
		0.562725, 0.822845, 0.079165,
		-0.596251, 0.470354, -0.650579,
		39.918331, 39.217911, 29.888348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165951, 39.580967, 30.658943>,  <40.335705, 38.888664, 30.343752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165951, 39.580967, 30.658943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884789, 39.498436, 30.386663>,  <39.716091, 39.448917, 30.223295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884789, 39.498436, 30.386663>,  <40.165951, 39.580967, 30.658943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884789, 39.498436, 30.386663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709586, 0.269434, 0.651070,
		0.049072, 0.940657, -0.335792,
		-0.702907, -0.206324, -0.680699,
		39.673916, 39.436539, 30.182453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834023, 40.199135, 30.596996>,  <40.165951, 39.580967, 30.658943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834023, 40.199135, 30.596996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573540, 39.911896, 30.498810>,  <39.417248, 39.739552, 30.439898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573540, 39.911896, 30.498810>,  <39.834023, 40.199135, 30.596996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573540, 39.911896, 30.498810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667620, 0.388295, 0.635224,
		-0.360841, 0.577544, -0.732281,
		-0.651212, -0.718101, -0.245467,
		39.378178, 39.696465, 30.425169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160038, 40.542370, 30.542124>,  <39.834023, 40.199135, 30.596996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160038, 40.542370, 30.542124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063538, 40.156116, 30.580812>,  <39.005638, 39.924366, 30.604025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063538, 40.156116, 30.580812>,  <39.160038, 40.542370, 30.542124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063538, 40.156116, 30.580812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637285, 0.232799, 0.734624,
		-0.731893, 0.115588, -0.671545,
		-0.241249, -0.965631, 0.096722,
		38.991161, 39.866428, 30.609829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423580, 40.580482, 30.721853>,  <39.160038, 40.542370, 30.542124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423580, 40.580482, 30.721853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557133, 40.216900, 30.821711>,  <38.637264, 39.998749, 30.881624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557133, 40.216900, 30.821711>,  <38.423580, 40.580482, 30.721853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557133, 40.216900, 30.821711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567387, 0.017691, 0.823261,
		-0.752724, -0.416518, -0.509823,
		0.333884, -0.908955, 0.249643,
		38.657299, 39.944214, 30.896603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831585, 40.258148, 30.847445>,  <38.423580, 40.580482, 30.721853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831585, 40.258148, 30.847445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128120, 40.064529, 31.033394>,  <38.306042, 39.948357, 31.144964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128120, 40.064529, 31.033394>,  <37.831585, 40.258148, 30.847445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128120, 40.064529, 31.033394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505564, 0.052769, 0.861174,
		-0.441383, -0.873447, -0.205599,
		0.741341, -0.484051, 0.464875,
		38.350521, 39.919315, 31.172857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538742, 39.688198, 31.348318>,  <37.831585, 40.258148, 30.847445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538742, 39.688198, 31.348318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905243, 39.775890, 31.482439>,  <38.125141, 39.828506, 31.562912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905243, 39.775890, 31.482439>,  <37.538742, 39.688198, 31.348318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905243, 39.775890, 31.482439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362739, 0.098771, 0.926642,
		0.170037, -0.970659, 0.170025,
		0.916247, 0.219238, 0.335301,
		38.180119, 39.841660, 31.583031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577583, 39.229504, 31.973314>,  <37.538742, 39.688198, 31.348318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577583, 39.229504, 31.973314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865517, 39.504208, 32.013729>,  <38.038277, 39.669029, 32.037979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865517, 39.504208, 32.013729>,  <37.577583, 39.229504, 31.973314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865517, 39.504208, 32.013729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264399, 0.136678, 0.954679,
		0.641822, -0.713923, 0.279963,
		0.719831, 0.686756, 0.101038,
		38.081467, 39.710236, 32.044041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029678, 38.976913, 32.493927>,  <37.577583, 39.229504, 31.973314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029678, 38.976913, 32.493927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102077, 39.370193, 32.484421>,  <38.145519, 39.606159, 32.478718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102077, 39.370193, 32.484421>,  <38.029678, 38.976913, 32.493927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102077, 39.370193, 32.484421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225186, 0.064955, 0.972148,
		0.957355, -0.170609, 0.233159,
		0.181002, 0.983196, -0.023766,
		38.156380, 39.665154, 32.477291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356342, 39.076794, 33.129230>,  <38.029678, 38.976913, 32.493927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356342, 39.076794, 33.129230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251633, 39.446285, 33.017376>,  <38.188808, 39.667980, 32.950264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251633, 39.446285, 33.017376>,  <38.356342, 39.076794, 33.129230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251633, 39.446285, 33.017376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283722, 0.203287, 0.937111,
		0.922485, 0.324648, 0.208869,
		-0.261771, 0.923731, -0.279639,
		38.173103, 39.723404, 32.933483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684429, 39.541996, 33.514256>,  <38.356342, 39.076794, 33.129230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684429, 39.541996, 33.514256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349644, 39.719265, 33.385822>,  <38.148773, 39.825626, 33.308762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349644, 39.719265, 33.385822>,  <38.684429, 39.541996, 33.514256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349644, 39.719265, 33.385822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276253, 0.164340, 0.946930,
		0.472418, 0.881245, -0.015119,
		-0.836962, 0.443170, -0.321084,
		38.098557, 39.852215, 33.289497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603485, 40.126507, 33.926311>,  <38.684429, 39.541996, 33.514256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603485, 40.126507, 33.926311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250118, 40.071487, 33.747131>,  <38.038097, 40.038475, 33.639626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250118, 40.071487, 33.747131>,  <38.603485, 40.126507, 33.926311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250118, 40.071487, 33.747131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463970, 0.122870, 0.877288,
		-0.065629, 0.982845, -0.172363,
		-0.883417, -0.137547, -0.447946,
		37.985092, 40.030224, 33.612747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102203, 40.565170, 34.255630>,  <38.603485, 40.126507, 33.926311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102203, 40.565170, 34.255630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879257, 40.290173, 34.069431>,  <37.745487, 40.125175, 33.957710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879257, 40.290173, 34.069431>,  <38.102203, 40.565170, 34.255630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879257, 40.290173, 34.069431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669056, 0.039923, 0.742139,
		-0.491633, 0.725091, -0.482225,
		-0.557370, -0.687495, -0.465499,
		37.712048, 40.083923, 33.929783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428154, 40.736000, 34.479843>,  <38.102203, 40.565170, 34.255630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428154, 40.736000, 34.479843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410233, 40.361706, 34.339909>,  <37.399479, 40.137127, 34.255947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410233, 40.361706, 34.339909>,  <37.428154, 40.736000, 34.479843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410233, 40.361706, 34.339909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729806, -0.208476, 0.651092,
		-0.682184, 0.284486, -0.673567,
		-0.044804, -0.935738, -0.349839,
		37.396790, 40.080986, 34.234959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725700, 40.626019, 34.346149>,  <37.428154, 40.736000, 34.479843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725700, 40.626019, 34.346149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887272, 40.261936, 34.382736>,  <36.984215, 40.043488, 34.404686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887272, 40.261936, 34.382736>,  <36.725700, 40.626019, 34.346149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887272, 40.261936, 34.382736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795831, -0.300336, 0.525787,
		-0.451106, -0.285168, -0.845685,
		0.403927, -0.910208, 0.091462,
		37.008450, 39.988873, 34.410175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178669, 40.106670, 34.131023>,  <36.725700, 40.626019, 34.346149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178669, 40.106670, 34.131023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438103, 39.898708, 34.353390>,  <36.593761, 39.773933, 34.486809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438103, 39.898708, 34.353390>,  <36.178669, 40.106670, 34.131023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438103, 39.898708, 34.353390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761134, -0.439729, 0.476774,
		-0.003425, -0.732352, -0.680918,
		0.648585, -0.519903, 0.555912,
		36.632679, 39.742737, 34.520164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780163, 39.525112, 34.342487>,  <36.178669, 40.106670, 34.131023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780163, 39.525112, 34.342487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092594, 39.523052, 34.592251>,  <36.280052, 39.521816, 34.742111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092594, 39.523052, 34.592251>,  <35.780163, 39.525112, 34.342487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092594, 39.523052, 34.592251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557021, -0.457682, 0.693004,
		0.282211, -0.889101, -0.360355,
		0.781079, -0.005152, 0.624411,
		36.326920, 39.521507, 34.779575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808052, 38.841415, 34.660717>,  <35.780163, 39.525112, 34.342487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808052, 38.841415, 34.660717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012875, 39.077694, 34.910160>,  <36.135769, 39.219460, 35.059826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012875, 39.077694, 34.910160>,  <35.808052, 38.841415, 34.660717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012875, 39.077694, 34.910160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443898, -0.439562, 0.780858,
		0.735360, -0.676658, 0.037128,
		0.512054, 0.590693, 0.623604,
		36.166492, 39.254902, 35.097240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264755, 38.371288, 35.097244>,  <35.808052, 38.841415, 34.660717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264755, 38.371288, 35.097244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223480, 38.716583, 35.294895>,  <36.198715, 38.923759, 35.413486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223480, 38.716583, 35.294895>,  <36.264755, 38.371288, 35.097244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223480, 38.716583, 35.294895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381467, -0.493142, 0.781853,
		0.918605, -0.107817, 0.380185,
		-0.103188, 0.863242, 0.494132,
		36.192524, 38.975555, 35.443134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455700, 38.166904, 35.806641>,  <36.264755, 38.371288, 35.097244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455700, 38.166904, 35.806641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294598, 38.530132, 35.852604>,  <36.197937, 38.748070, 35.880180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294598, 38.530132, 35.852604>,  <36.455700, 38.166904, 35.806641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294598, 38.530132, 35.852604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424638, -0.296585, 0.855406,
		0.810845, 0.295726, 0.505051,
		-0.402756, 0.908066, 0.114908,
		36.173771, 38.802551, 35.887077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599976, 38.569118, 36.543388>,  <36.455700, 38.166904, 35.806641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599976, 38.569118, 36.543388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260471, 38.728676, 36.404545>,  <36.056767, 38.824409, 36.321239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260471, 38.728676, 36.404545>,  <36.599976, 38.569118, 36.543388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260471, 38.728676, 36.404545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424789, -0.123452, 0.896835,
		0.314891, 0.908649, 0.274227,
		-0.848762, 0.398895, -0.347110,
		36.005844, 38.848343, 36.300411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860786, 37.850056, 36.361538>,  <36.599976, 38.569118, 36.543388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860786, 37.850056, 36.361538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124336, 37.631084, 36.567917>,  <37.282467, 37.499702, 36.691746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124336, 37.631084, 36.567917>,  <36.860786, 37.850056, 36.361538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124336, 37.631084, 36.567917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743520, 0.369708, -0.557220,
		0.114289, 0.750757, 0.650617,
		0.658875, -0.547430, 0.515949,
		37.321999, 37.466854, 36.722702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470253, 38.270115, 36.453224>,  <36.860786, 37.850056, 36.361538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470253, 38.270115, 36.453224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597492, 37.898548, 36.529037>,  <37.673836, 37.675606, 36.574528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597492, 37.898548, 36.529037>,  <37.470253, 38.270115, 36.453224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597492, 37.898548, 36.529037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879126, 0.214173, -0.425755,
		0.354898, 0.302059, 0.884764,
		0.318096, -0.928919, 0.189538,
		37.692921, 37.619873, 36.585899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182671, 38.330757, 36.749668>,  <37.470253, 38.270115, 36.453224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182671, 38.330757, 36.749668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153065, 37.955200, 36.615208>,  <38.135300, 37.729866, 36.534531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153065, 37.955200, 36.615208>,  <38.182671, 38.330757, 36.749668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153065, 37.955200, 36.615208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919419, 0.066308, -0.387650,
		0.386252, -0.337757, 0.858330,
		-0.074017, -0.938895, -0.336152,
		38.130859, 37.673531, 36.514362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881199, 38.102383, 36.834007>,  <38.182671, 38.330757, 36.749668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881199, 38.102383, 36.834007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705368, 37.847244, 36.581047>,  <38.599869, 37.694160, 36.429272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705368, 37.847244, 36.581047>,  <38.881199, 38.102383, 36.834007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705368, 37.847244, 36.581047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855063, -0.081573, -0.512067,
		0.275032, -0.765833, 0.581255,
		-0.439573, -0.637845, -0.632400,
		38.573498, 37.655891, 36.391327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274780, 37.457340, 36.791412>,  <38.881199, 38.102383, 36.834007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274780, 37.457340, 36.791412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077652, 37.475094, 36.443813>,  <38.959377, 37.485744, 36.235252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077652, 37.475094, 36.443813>,  <39.274780, 37.457340, 36.791412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077652, 37.475094, 36.443813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837268, -0.247696, -0.487472,
		-0.236881, -0.967821, 0.084913,
		-0.492818, 0.044378, -0.869000,
		38.929806, 37.488407, 36.183113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471130, 36.840450, 36.423779>,  <39.274780, 37.457340, 36.791412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471130, 36.840450, 36.423779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327503, 37.091309, 36.147297>,  <39.241329, 37.241821, 35.981407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327503, 37.091309, 36.147297>,  <39.471130, 36.840450, 36.423779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327503, 37.091309, 36.147297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781465, -0.202892, -0.590039,
		-0.510279, -0.752015, -0.417240,
		-0.359064, 0.627143, -0.691205,
		39.219784, 37.279453, 35.939934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579716, 36.484715, 35.811237>,  <39.471130, 36.840450, 36.423779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579716, 36.484715, 35.811237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528030, 36.871620, 35.723869>,  <39.497017, 37.103764, 35.671448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528030, 36.871620, 35.723869>,  <39.579716, 36.484715, 35.811237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528030, 36.871620, 35.723869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706770, -0.064663, -0.704482,
		-0.695542, -0.245403, -0.675276,
		-0.129216, 0.967262, -0.218420,
		39.489265, 37.161800, 35.658344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653069, 36.525021, 35.176392>,  <39.579716, 36.484715, 35.811237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653069, 36.525021, 35.176392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687157, 36.917416, 35.246143>,  <39.707611, 37.152851, 35.287994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687157, 36.917416, 35.246143>,  <39.653069, 36.525021, 35.176392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687157, 36.917416, 35.246143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493175, 0.110545, -0.862878,
		-0.865746, 0.159537, -0.474375,
		0.085221, 0.980983, 0.174384,
		39.712723, 37.211712, 35.298458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479576, 36.950867, 34.542824>,  <39.653069, 36.525021, 35.176392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479576, 36.950867, 34.542824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685753, 37.189198, 34.789177>,  <39.809460, 37.332195, 34.936989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685753, 37.189198, 34.789177>,  <39.479576, 36.950867, 34.542824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685753, 37.189198, 34.789177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531259, 0.341746, -0.775225,
		-0.672375, 0.726776, -0.140388,
		0.515438, 0.595824, 0.615888,
		39.840385, 37.367947, 34.973942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737164, 37.438236, 34.104172>,  <39.479576, 36.950867, 34.542824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737164, 37.438236, 34.104172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976555, 37.548065, 34.405220>,  <40.120190, 37.613964, 34.585850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976555, 37.548065, 34.405220>,  <39.737164, 37.438236, 34.104172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976555, 37.548065, 34.405220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584153, 0.493339, -0.644501,
		-0.548259, 0.825364, 0.134858,
		0.598478, 0.274576, 0.752617,
		40.156097, 37.630440, 34.631004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921928, 38.133228, 34.005600>,  <39.737164, 37.438236, 34.104172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921928, 38.133228, 34.005600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219929, 38.002518, 34.238216>,  <40.398727, 37.924091, 34.377785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219929, 38.002518, 34.238216>,  <39.921928, 38.133228, 34.005600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219929, 38.002518, 34.238216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655239, 0.521908, -0.546144,
		-0.125042, 0.787926, 0.602940,
		0.745001, -0.326779, 0.581541,
		40.443428, 37.904484, 34.412678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333122, 38.702435, 34.067249>,  <39.921928, 38.133228, 34.005600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333122, 38.702435, 34.067249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573715, 38.396748, 34.160358>,  <40.718071, 38.213333, 34.216225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573715, 38.396748, 34.160358>,  <40.333122, 38.702435, 34.067249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573715, 38.396748, 34.160358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686832, 0.345871, -0.639245,
		0.408015, 0.544372, 0.732928,
		0.601486, -0.764220, 0.232772,
		40.754162, 38.167480, 34.230190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060772, 38.964569, 34.167759>,  <40.333122, 38.702435, 34.067249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060772, 38.964569, 34.167759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090286, 38.584251, 34.047390>,  <41.107994, 38.356060, 33.975170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090286, 38.584251, 34.047390>,  <41.060772, 38.964569, 34.167759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090286, 38.584251, 34.047390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703235, 0.263557, -0.660301,
		0.707117, -0.162894, 0.688077,
		0.073789, -0.950791, -0.300918,
		41.112423, 38.299015, 33.957115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755848, 38.906761, 33.969070>,  <41.060772, 38.964569, 34.167759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755848, 38.906761, 33.969070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577961, 38.595512, 33.791645>,  <41.471230, 38.408764, 33.685188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577961, 38.595512, 33.791645>,  <41.755848, 38.906761, 33.969070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577961, 38.595512, 33.791645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732709, -0.031237, -0.679824,
		0.515131, -0.627335, 0.584029,
		-0.444721, -0.778123, -0.443563,
		41.444546, 38.362076, 33.658577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303455, 38.518585, 33.690441>,  <41.755848, 38.906761, 33.969070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303455, 38.518585, 33.690441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983192, 38.401817, 33.481167>,  <41.791035, 38.331757, 33.355602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983192, 38.401817, 33.481167>,  <42.303455, 38.518585, 33.690441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983192, 38.401817, 33.481167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566236, -0.083378, -0.820015,
		0.195756, -0.952801, 0.232053,
		-0.800660, -0.291920, -0.523189,
		41.742996, 38.314243, 33.324211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380520, 37.823021, 33.310356>,  <42.303455, 38.518585, 33.690441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380520, 37.823021, 33.310356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114269, 38.050800, 33.117413>,  <41.954517, 38.187469, 33.001648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114269, 38.050800, 33.117413>,  <42.380520, 37.823021, 33.310356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114269, 38.050800, 33.117413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474048, -0.176568, -0.862614,
		-0.576385, -0.802838, -0.152419,
		-0.665627, 0.569452, -0.482355,
		41.914581, 38.221634, 32.972706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238342, 37.396427, 32.818886>,  <42.380520, 37.823021, 33.310356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238342, 37.396427, 32.818886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099232, 37.746258, 32.683727>,  <42.015766, 37.956154, 32.602631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099232, 37.746258, 32.683727>,  <42.238342, 37.396427, 32.818886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099232, 37.746258, 32.683727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374747, -0.200691, -0.905145,
		-0.859428, -0.441414, -0.257948,
		-0.347776, 0.874572, -0.337898,
		41.994900, 38.008629, 32.582359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922379, 37.229034, 32.328331>,  <42.238342, 37.396427, 32.818886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922379, 37.229034, 32.328331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974686, 37.615654, 32.240070>,  <42.006069, 37.847626, 32.187115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974686, 37.615654, 32.240070>,  <41.922379, 37.229034, 32.328331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974686, 37.615654, 32.240070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211093, -0.244603, -0.946366,
		-0.968679, 0.077177, -0.236018,
		0.130769, 0.966547, -0.220650,
		42.013916, 37.905617, 32.173874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737190, 37.319893, 31.542372>,  <41.922379, 37.229034, 32.328331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737190, 37.319893, 31.542372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889797, 37.678841, 31.631069>,  <41.981361, 37.894211, 31.684288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889797, 37.678841, 31.631069>,  <41.737190, 37.319893, 31.542372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889797, 37.678841, 31.631069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272481, 0.120049, -0.954642,
		-0.883290, 0.424629, -0.198717,
		0.381513, 0.897373, 0.221741,
		42.004250, 37.948051, 31.697592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499428, 37.815025, 30.999746>,  <41.737190, 37.319893, 31.542372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499428, 37.815025, 30.999746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832615, 37.979317, 31.148050>,  <42.032528, 38.077892, 31.237032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832615, 37.979317, 31.148050>,  <41.499428, 37.815025, 30.999746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832615, 37.979317, 31.148050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322775, 0.183553, -0.928507,
		-0.449420, 0.893089, 0.020320,
		0.832969, 0.410731, 0.370760,
		42.082504, 38.102535, 31.259277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696590, 38.537258, 30.604277>,  <41.499428, 37.815025, 30.999746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696590, 38.537258, 30.604277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028996, 38.383629, 30.765224>,  <42.228439, 38.291451, 30.861794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028996, 38.383629, 30.765224>,  <41.696590, 38.537258, 30.604277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028996, 38.383629, 30.765224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439849, 0.010904, -0.898006,
		0.340516, 0.923237, 0.177997,
		0.831013, -0.384077, 0.402371,
		42.278301, 38.268406, 30.885937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191818, 38.848679, 30.207159>,  <41.696590, 38.537258, 30.604277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191818, 38.848679, 30.207159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375664, 38.535927, 30.375643>,  <42.485970, 38.348274, 30.476732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375664, 38.535927, 30.375643>,  <42.191818, 38.848679, 30.207159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375664, 38.535927, 30.375643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628225, -0.049014, -0.776486,
		0.627765, 0.621498, 0.468670,
		0.459613, -0.781881, 0.421209,
		42.513546, 38.301361, 30.502007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932613, 39.001099, 30.127703>,  <42.191818, 38.848679, 30.207159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932613, 39.001099, 30.127703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881306, 38.608337, 30.183424>,  <42.850521, 38.372681, 30.216858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881306, 38.608337, 30.183424>,  <42.932613, 39.001099, 30.127703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881306, 38.608337, 30.183424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425341, -0.181356, -0.886677,
		0.895898, -0.054478, 0.440907,
		-0.128265, -0.981907, 0.139305,
		42.842827, 38.313766, 30.225216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480278, 38.700283, 29.859236>,  <42.932613, 39.001099, 30.127703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480278, 38.700283, 29.859236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219086, 38.398914, 29.890133>,  <43.062370, 38.218094, 29.908672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219086, 38.398914, 29.890133>,  <43.480278, 38.700283, 29.859236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219086, 38.398914, 29.890133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314723, -0.362697, -0.877155,
		0.688884, -0.548458, 0.473954,
		-0.652984, -0.753422, 0.077244,
		43.023190, 38.172886, 29.913305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799881, 38.231339, 29.388260>,  <43.480278, 38.700283, 29.859236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799881, 38.231339, 29.388260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428288, 38.111271, 29.474878>,  <43.205334, 38.039230, 29.526850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428288, 38.111271, 29.474878>,  <43.799881, 38.231339, 29.388260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428288, 38.111271, 29.474878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014035, -0.556066, -0.831020,
		0.369862, -0.775041, 0.512362,
		-0.928981, -0.300171, 0.216545,
		43.149593, 38.021221, 29.539843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873081, 37.568062, 29.221981>,  <43.799881, 38.231339, 29.388260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873081, 37.568062, 29.221981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480045, 37.640949, 29.207438>,  <43.244225, 37.684681, 29.198711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480045, 37.640949, 29.207438>,  <43.873081, 37.568062, 29.221981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480045, 37.640949, 29.207438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055655, -0.475313, -0.878055,
		-0.177278, -0.860741, 0.477177,
		-0.982586, 0.182217, -0.036359,
		43.185268, 37.695614, 29.196529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466377, 36.989712, 29.252653>,  <43.873081, 37.568062, 29.221981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466377, 36.989712, 29.252653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207378, 37.230389, 29.065582>,  <43.051979, 37.374794, 28.953341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207378, 37.230389, 29.065582>,  <43.466377, 36.989712, 29.252653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207378, 37.230389, 29.065582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012879, -0.622244, -0.782717,
		-0.761961, -0.500782, 0.410649,
		-0.647495, 0.601689, -0.467676,
		43.013130, 37.410896, 28.925280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859978, 36.572025, 28.890495>,  <43.466377, 36.989712, 29.252653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859978, 36.572025, 28.890495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.908886, 36.930149, 28.719162>,  <42.938229, 37.145023, 28.616362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.908886, 36.930149, 28.719162>,  <42.859978, 36.572025, 28.890495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.908886, 36.930149, 28.719162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330100, -0.443686, -0.833172,
		-0.935994, -0.039524, -0.349790,
		0.122267, 0.895310, -0.428335,
		42.945564, 37.198742, 28.590662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623741, 36.430599, 28.212406>,  <42.859978, 36.572025, 28.890495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623741, 36.430599, 28.212406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833031, 36.768280, 28.165827>,  <42.958603, 36.970890, 28.137878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833031, 36.768280, 28.165827>,  <42.623741, 36.430599, 28.212406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833031, 36.768280, 28.165827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343515, -0.333981, -0.877755,
		-0.779896, 0.419258, -0.464742,
		0.523221, 0.844203, -0.116449,
		42.989998, 37.021542, 28.130892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574669, 36.567097, 27.541929>,  <42.623741, 36.430599, 28.212406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574669, 36.567097, 27.541929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886257, 36.786629, 27.663252>,  <43.073208, 36.918346, 27.736046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886257, 36.786629, 27.663252>,  <42.574669, 36.567097, 27.541929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886257, 36.786629, 27.663252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498378, -0.248319, -0.830636,
		-0.380562, 0.798200, -0.466958,
		0.778968, 0.548830, 0.303304,
		43.119949, 36.951279, 27.754244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806168, 36.852123, 26.957415>,  <42.574669, 36.567097, 27.541929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806168, 36.852123, 26.957415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126389, 36.844917, 27.197012>,  <43.318520, 36.840595, 27.340771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126389, 36.844917, 27.197012>,  <42.806168, 36.852123, 26.957415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126389, 36.844917, 27.197012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561019, -0.328839, -0.759686,
		0.210659, 0.944214, -0.253145,
		0.800550, -0.018015, 0.598995,
		43.366554, 36.839512, 27.376711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333317, 37.361111, 26.715305>,  <42.806168, 36.852123, 26.957415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333317, 37.361111, 26.715305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482864, 37.061974, 26.934742>,  <43.572594, 36.882492, 27.066404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482864, 37.061974, 26.934742>,  <43.333317, 37.361111, 26.715305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482864, 37.061974, 26.934742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661654, -0.199440, -0.722799,
		0.649950, 0.633211, 0.420248,
		0.373870, -0.747842, 0.548593,
		43.595024, 36.837620, 27.099319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040108, 37.488586, 26.679333>,  <43.333317, 37.361111, 26.715305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040108, 37.488586, 26.679333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023182, 37.103626, 26.786661>,  <44.013027, 36.872650, 26.851057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023182, 37.103626, 26.786661>,  <44.040108, 37.488586, 26.679333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023182, 37.103626, 26.786661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711053, -0.217667, -0.668599,
		0.701864, 0.162501, 0.693528,
		-0.042310, -0.962401, 0.268319,
		44.010490, 36.814907, 26.867157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657906, 37.266186, 26.410347>,  <44.040108, 37.488586, 26.679333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657906, 37.266186, 26.410347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523205, 36.905582, 26.519070>,  <44.442383, 36.689220, 26.584303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523205, 36.905582, 26.519070>,  <44.657906, 37.266186, 26.410347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523205, 36.905582, 26.519070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630195, -0.430268, -0.646316,
		0.699609, -0.046358, 0.713020,
		-0.336751, -0.901510, 0.271805,
		44.422180, 36.635128, 26.600611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.227478, 36.834351, 26.682537>,  <44.657906, 37.266186, 26.410347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.227478, 36.834351, 26.682537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.927116, 36.606308, 26.549196>,  <44.746899, 36.469482, 26.469191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.927116, 36.606308, 26.549196>,  <45.227478, 36.834351, 26.682537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.927116, 36.606308, 26.549196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596991, -0.370134, -0.711761,
		0.282393, -0.733472, 0.618282,
		-0.750904, -0.570105, -0.333353,
		44.701847, 36.435276, 26.449190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585495, 36.268970, 26.526314>,  <45.227478, 36.834351, 26.682537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585495, 36.268970, 26.526314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249226, 36.228107, 26.313587>,  <45.047462, 36.203590, 26.185951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249226, 36.228107, 26.313587>,  <45.585495, 36.268970, 26.526314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249226, 36.228107, 26.313587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518501, -0.435222, -0.736029,
		-0.156270, -0.894509, 0.418848,
		-0.840676, -0.102154, -0.531816,
		44.997025, 36.197460, 26.154043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616356, 35.630653, 26.265902>,  <45.585495, 36.268970, 26.526314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616356, 35.630653, 26.265902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.364048, 35.836479, 26.033575>,  <45.212662, 35.959976, 25.894178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.364048, 35.836479, 26.033575>,  <45.616356, 35.630653, 26.265902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.364048, 35.836479, 26.033575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475303, -0.335447, -0.813365,
		-0.613363, -0.789112, -0.032984,
		-0.630772, 0.514565, -0.580818,
		45.174816, 35.990849, 25.859329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.427155, 35.172131, 25.714512>,  <45.616356, 35.630653, 26.265902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.427155, 35.172131, 25.714512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.307846, 35.524399, 25.567299>,  <45.236259, 35.735760, 25.478971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.307846, 35.524399, 25.567299>,  <45.427155, 35.172131, 25.714512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.307846, 35.524399, 25.567299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307126, -0.276521, -0.910609,
		-0.903718, -0.384643, -0.187999,
		-0.298273, 0.880674, -0.368031,
		45.218365, 35.788601, 25.456890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.796913, 34.650005, 25.379063>,  <45.427155, 35.172131, 25.714512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.796913, 34.650005, 25.379063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800961, 34.257389, 25.302677>,  <45.803391, 34.021820, 25.256845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800961, 34.257389, 25.302677>,  <45.796913, 34.650005, 25.379063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.800961, 34.257389, 25.302677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608714, -0.157560, 0.777587,
		-0.793325, 0.108375, -0.599074,
		0.010119, -0.981544, -0.190966,
		45.803997, 33.962925, 25.245388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.163956, 34.485916, 25.522842>,  <45.796913, 34.650005, 25.379063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.163956, 34.485916, 25.522842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378933, 34.150452, 25.558182>,  <45.507919, 33.949173, 25.579386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378933, 34.150452, 25.558182>,  <45.163956, 34.485916, 25.522842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.378933, 34.150452, 25.558182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457761, -0.202141, 0.865791,
		-0.708245, -0.505755, -0.492545,
		0.537442, -0.838660, 0.088350,
		45.540165, 33.898853, 25.584686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646912, 33.879402, 25.632668>,  <45.163956, 34.485916, 25.522842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646912, 33.879402, 25.632668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003288, 33.802551, 25.797256>,  <45.217113, 33.756443, 25.896009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003288, 33.802551, 25.797256>,  <44.646912, 33.879402, 25.632668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003288, 33.802551, 25.797256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454110, -0.381156, 0.805298,
		0.002119, -0.904328, -0.426833,
		0.890943, -0.192123, 0.411472,
		45.270573, 33.744915, 25.920698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.481041, 33.251457, 26.036081>,  <44.646912, 33.879402, 25.632668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.481041, 33.251457, 26.036081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834770, 33.380024, 26.171526>,  <45.047009, 33.457165, 26.252792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834770, 33.380024, 26.171526>,  <44.481041, 33.251457, 26.036081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834770, 33.380024, 26.171526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226932, -0.337916, 0.913408,
		0.408004, -0.884594, -0.225890,
		0.884327, 0.321413, 0.338614,
		45.100067, 33.476448, 26.273109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822422, 32.757946, 26.407623>,  <44.481041, 33.251457, 26.036081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822422, 32.757946, 26.407623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.955910, 33.103931, 26.557541>,  <45.036003, 33.311523, 26.647491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.955910, 33.103931, 26.557541>,  <44.822422, 32.757946, 26.407623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.955910, 33.103931, 26.557541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292216, -0.283081, 0.913496,
		0.896239, -0.414367, 0.158288,
		0.333715, 0.864965, 0.374793,
		45.056023, 33.363422, 26.669979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.844414, 32.649529, 27.152906>,  <44.822422, 32.757946, 26.407623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.844414, 32.649529, 27.152906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.954475, 33.034088, 27.153904>,  <45.020512, 33.264824, 27.154503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.954475, 33.034088, 27.153904>,  <44.844414, 32.649529, 27.152906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954475, 33.034088, 27.153904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308058, 0.085709, 0.947499,
		0.910709, -0.261475, 0.319749,
		0.275153, 0.961397, 0.002494,
		45.037022, 33.322506, 27.154652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.227890, 32.806892, 27.783543>,  <44.844414, 32.649529, 27.152906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.227890, 32.806892, 27.783543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075245, 33.149612, 27.644829>,  <44.983658, 33.355244, 27.561600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075245, 33.149612, 27.644829>,  <45.227890, 32.806892, 27.783543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075245, 33.149612, 27.644829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479335, 0.137348, 0.866818,
		0.790324, 0.497013, 0.358283,
		-0.381611, 0.856804, -0.346785,
		44.960762, 33.406654, 27.540792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417950, 33.370869, 28.212877>,  <45.227890, 32.806892, 27.783543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417950, 33.370869, 28.212877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088402, 33.506866, 28.031487>,  <44.890675, 33.588463, 27.922651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088402, 33.506866, 28.031487>,  <45.417950, 33.370869, 28.212877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088402, 33.506866, 28.031487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467386, 0.045042, 0.882905,
		0.320606, 0.939349, 0.121799,
		-0.823870, 0.339992, -0.453479,
		44.841240, 33.608864, 27.895443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.185200, 33.837074, 28.727772>,  <45.417950, 33.370869, 28.212877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.185200, 33.837074, 28.727772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877708, 33.803356, 28.474174>,  <44.693214, 33.783127, 28.322016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877708, 33.803356, 28.474174>,  <45.185200, 33.837074, 28.727772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.877708, 33.803356, 28.474174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623736, 0.318020, 0.714014,
		0.141436, 0.944329, -0.297048,
		-0.768732, -0.084292, -0.633992,
		44.647087, 33.778069, 28.283978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816269, 34.528065, 28.620653>,  <45.185200, 33.837074, 28.727772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816269, 34.528065, 28.620653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567120, 34.226074, 28.538643>,  <44.417629, 34.044880, 28.489437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567120, 34.226074, 28.538643>,  <44.816269, 34.528065, 28.620653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567120, 34.226074, 28.538643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670197, 0.379758, 0.637668,
		-0.403566, 0.534592, -0.742526,
		-0.622872, -0.754980, -0.205025,
		44.380257, 33.999580, 28.477135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.235012, 34.859673, 28.537306>,  <44.816269, 34.528065, 28.620653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.235012, 34.859673, 28.537306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123398, 34.484482, 28.619608>,  <44.056427, 34.259369, 28.668989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123398, 34.484482, 28.619608>,  <44.235012, 34.859673, 28.537306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123398, 34.484482, 28.619608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618219, 0.339427, 0.708939,
		-0.734808, 0.070619, -0.674589,
		-0.279038, -0.937978, 0.205756,
		44.039688, 34.203087, 28.681335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566849, 34.880173, 28.550407>,  <44.235012, 34.859673, 28.537306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566849, 34.880173, 28.550407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656914, 34.547516, 28.753452>,  <43.710953, 34.347923, 28.875280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656914, 34.547516, 28.753452>,  <43.566849, 34.880173, 28.550407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656914, 34.547516, 28.753452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634783, 0.270028, 0.723972,
		-0.739156, -0.485238, -0.467111,
		0.225166, -0.831642, 0.507614,
		43.724464, 34.298023, 28.905737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873196, 34.492947, 28.688374>,  <43.566849, 34.880173, 28.550407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873196, 34.492947, 28.688374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.160957, 34.369152, 28.937107>,  <43.333614, 34.294876, 29.086348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.160957, 34.369152, 28.937107>,  <42.873196, 34.492947, 28.688374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160957, 34.369152, 28.937107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526005, 0.341928, 0.778719,
		-0.453628, -0.887300, 0.083190,
		0.719402, -0.309491, 0.621833,
		43.376778, 34.276306, 29.123657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456848, 34.130783, 29.115450>,  <42.873196, 34.492947, 28.688374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456848, 34.130783, 29.115450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806492, 34.195885, 29.298508>,  <43.016277, 34.234947, 29.408342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806492, 34.195885, 29.298508>,  <42.456848, 34.130783, 29.115450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806492, 34.195885, 29.298508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458513, -0.034437, 0.888020,
		0.160290, -0.986065, 0.044523,
		0.874113, 0.162755, 0.457643,
		43.068726, 34.244709, 29.435801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477016, 33.671497, 29.558262>,  <42.456848, 34.130783, 29.115450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477016, 33.671497, 29.558262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716942, 33.954460, 29.707825>,  <42.860897, 34.124237, 29.797562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716942, 33.954460, 29.707825>,  <42.477016, 33.671497, 29.558262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716942, 33.954460, 29.707825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633925, 0.135000, 0.761521,
		0.488226, -0.693797, 0.529416,
		0.599812, 0.707404, 0.373905,
		42.896885, 34.166679, 29.819996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706017, 33.594769, 30.298260>,  <42.477016, 33.671497, 29.558262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706017, 33.594769, 30.298260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735199, 33.989025, 30.237350>,  <42.752708, 34.225578, 30.200806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735199, 33.989025, 30.237350>,  <42.706017, 33.594769, 30.298260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735199, 33.989025, 30.237350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381996, 0.168653, 0.908645,
		0.921280, -0.008125, 0.388816,
		0.072958, 0.985642, -0.152273,
		42.757088, 34.284718, 30.191669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937637, 33.910275, 30.876976>,  <42.706017, 33.594769, 30.298260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937637, 33.910275, 30.876976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786274, 34.231079, 30.692120>,  <42.695454, 34.423561, 30.581205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786274, 34.231079, 30.692120>,  <42.937637, 33.910275, 30.876976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786274, 34.231079, 30.692120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297474, 0.367414, 0.881202,
		0.876535, 0.470932, 0.099545,
		-0.378412, 0.802016, -0.462141,
		42.672749, 34.471684, 30.553476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025173, 34.494774, 31.313599>,  <42.937637, 33.910275, 30.876976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025173, 34.494774, 31.313599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726170, 34.626995, 31.083132>,  <42.546768, 34.706329, 30.944851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726170, 34.626995, 31.083132>,  <43.025173, 34.494774, 31.313599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726170, 34.626995, 31.083132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397391, 0.472505, 0.786650,
		0.532275, 0.816989, -0.221839,
		-0.747505, 0.330558, -0.576167,
		42.501919, 34.726162, 30.910282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840363, 35.148964, 31.519714>,  <43.025173, 34.494774, 31.313599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840363, 35.148964, 31.519714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494205, 35.145821, 31.319302>,  <42.286510, 35.143936, 31.199055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494205, 35.145821, 31.319302>,  <42.840363, 35.148964, 31.519714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494205, 35.145821, 31.319302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484837, 0.265747, 0.833253,
		0.126601, 0.964011, -0.233785,
		-0.865393, -0.007857, -0.501032,
		42.234589, 35.143463, 31.168991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517624, 35.794655, 31.618793>,  <42.840363, 35.148964, 31.519714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517624, 35.794655, 31.618793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225697, 35.543106, 31.511551>,  <42.050541, 35.392178, 31.447205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225697, 35.543106, 31.511551>,  <42.517624, 35.794655, 31.618793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225697, 35.543106, 31.511551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488271, 0.205008, 0.848271,
		-0.478491, 0.749994, -0.456679,
		-0.729820, -0.628873, -0.268106,
		42.006752, 35.354443, 31.431120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920452, 36.161938, 31.525330>,  <42.517624, 35.794655, 31.618793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920452, 36.161938, 31.525330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811989, 35.783787, 31.597698>,  <41.746910, 35.556896, 31.641119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811989, 35.783787, 31.597698>,  <41.920452, 36.161938, 31.525330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811989, 35.783787, 31.597698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488262, 0.297083, 0.820574,
		-0.829502, 0.134167, -0.542149,
		-0.271157, -0.945379, 0.180923,
		41.730640, 35.500172, 31.651976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128487, 36.208721, 31.823402>,  <41.920452, 36.161938, 31.525330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128487, 36.208721, 31.823402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267185, 35.844501, 31.913445>,  <41.350403, 35.625969, 31.967470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267185, 35.844501, 31.913445>,  <41.128487, 36.208721, 31.823402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267185, 35.844501, 31.913445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277982, 0.129452, 0.951824,
		-0.895821, -0.392614, -0.208229,
		0.346744, -0.910547, 0.225105,
		41.371208, 35.571339, 31.980976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712730, 35.923771, 32.296562>,  <41.128487, 36.208721, 31.823402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712730, 35.923771, 32.296562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026474, 35.679871, 32.342133>,  <41.214722, 35.533531, 32.369476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026474, 35.679871, 32.342133>,  <40.712730, 35.923771, 32.296562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026474, 35.679871, 32.342133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062431, 0.105127, 0.992497,
		-0.617152, -0.785591, 0.044390,
		0.784363, -0.609750, 0.113925,
		41.261784, 35.496944, 32.376308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420841, 35.392780, 32.671974>,  <40.712730, 35.923771, 32.296562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420841, 35.392780, 32.671974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817478, 35.394650, 32.723713>,  <41.055458, 35.395771, 32.754757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817478, 35.394650, 32.723713>,  <40.420841, 35.392780, 32.671974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817478, 35.394650, 32.723713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129362, 0.004103, 0.991589,
		0.004103, -0.999981, 0.004673,
		-0.991589, -0.004673, -0.129343,
		41.114956, 35.396049, 32.762516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538414, 34.939949, 33.189686>,  <40.420841, 35.392780, 32.671974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538414, 34.939949, 33.189686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846386, 35.195148, 33.184444>,  <41.031170, 35.348267, 33.181301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846386, 35.195148, 33.184444>,  <40.538414, 34.939949, 33.189686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846386, 35.195148, 33.184444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051023, -0.041084, 0.997852,
		0.636088, -0.768942, -0.064185,
		0.769928, 0.637997, -0.013101,
		41.077366, 35.386547, 33.180515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804012, 34.661678, 33.724037>,  <40.538414, 34.939949, 33.189686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804012, 34.661678, 33.724037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992489, 35.008591, 33.659779>,  <41.105576, 35.216736, 33.621223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992489, 35.008591, 33.659779>,  <40.804012, 34.661678, 33.724037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992489, 35.008591, 33.659779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172401, 0.088064, 0.981082,
		0.865018, -0.489973, -0.108025,
		0.471191, 0.867278, -0.160649,
		41.133846, 35.268776, 33.611584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477077, 34.588520, 33.982437>,  <40.804012, 34.661678, 33.724037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477077, 34.588520, 33.982437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398926, 34.980778, 33.987598>,  <41.352036, 35.216133, 33.990696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398926, 34.980778, 33.987598>,  <41.477077, 34.588520, 33.982437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398926, 34.980778, 33.987598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252189, 0.037522, 0.966950,
		0.947748, 0.192180, -0.254639,
		-0.195383, 0.980642, 0.012904,
		41.340309, 35.274971, 33.991470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011158, 34.727383, 34.494152>,  <41.477077, 34.588520, 33.982437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011158, 34.727383, 34.494152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756477, 35.033310, 34.454834>,  <41.603668, 35.216866, 34.431244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756477, 35.033310, 34.454834>,  <42.011158, 34.727383, 34.494152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756477, 35.033310, 34.454834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008892, 0.120186, 0.992712,
		0.771062, 0.632931, -0.069721,
		-0.636698, 0.764822, -0.098299,
		41.565468, 35.262756, 34.425343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267384, 35.212234, 34.909088>,  <42.011158, 34.727383, 34.494152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267384, 35.212234, 34.909088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879631, 35.303074, 34.871742>,  <41.646980, 35.357578, 34.849335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879631, 35.303074, 34.871742>,  <42.267384, 35.212234, 34.909088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879631, 35.303074, 34.871742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108304, -0.054230, 0.992638,
		0.220366, 0.972360, 0.077165,
		-0.969386, 0.227101, -0.093360,
		41.588814, 35.371204, 34.843735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056122, 35.747330, 35.499905>,  <42.267384, 35.212234, 34.909088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056122, 35.747330, 35.499905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703510, 35.598560, 35.383572>,  <41.491943, 35.509300, 35.313774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703510, 35.598560, 35.383572>,  <42.056122, 35.747330, 35.499905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703510, 35.598560, 35.383572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315241, 0.005100, 0.948998,
		-0.351472, 0.928249, -0.121742,
		-0.881528, -0.371924, -0.290830,
		41.439053, 35.486984, 35.296322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502686, 36.123829, 35.815353>,  <42.056122, 35.747330, 35.499905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502686, 36.123829, 35.815353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331158, 35.772751, 35.729782>,  <41.228241, 35.562103, 35.678440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331158, 35.772751, 35.729782>,  <41.502686, 36.123829, 35.815353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331158, 35.772751, 35.729782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365825, -0.047813, 0.929455,
		-0.826006, 0.476828, -0.300580,
		-0.428819, -0.877695, -0.213930,
		41.202511, 35.509441, 35.665604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898228, 36.153748, 36.037235>,  <41.502686, 36.123829, 35.815353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898228, 36.153748, 36.037235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933590, 35.755428, 36.027599>,  <40.954807, 35.516438, 36.021820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933590, 35.755428, 36.027599>,  <40.898228, 36.153748, 36.037235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933590, 35.755428, 36.027599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461009, -0.062338, 0.885203,
		-0.882981, -0.067152, -0.464581,
		0.088404, -0.995793, -0.024085,
		40.960110, 35.456692, 36.020374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306129, 35.855476, 36.352478>,  <40.898228, 36.153748, 36.037235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306129, 35.855476, 36.352478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541935, 35.532600, 36.340313>,  <40.683418, 35.338875, 36.333012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541935, 35.532600, 36.340313>,  <40.306129, 35.855476, 36.352478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541935, 35.532600, 36.340313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188331, -0.173965, 0.966575,
		-0.785497, -0.564081, -0.254573,
		0.589513, -0.807186, -0.030415,
		40.718788, 35.290443, 36.331188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975353, 35.343140, 36.682159>,  <40.306129, 35.855476, 36.352478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975353, 35.343140, 36.682159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351055, 35.207626, 36.704170>,  <40.576477, 35.126320, 36.717377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351055, 35.207626, 36.704170>,  <39.975353, 35.343140, 36.682159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351055, 35.207626, 36.704170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195408, -0.396035, 0.897203,
		-0.282162, -0.853454, -0.438178,
		0.939255, -0.338780, 0.055025,
		40.632832, 35.105991, 36.720676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897804, 34.743637, 36.924385>,  <39.975353, 35.343140, 36.682159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897804, 34.743637, 36.924385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283875, 34.807537, 37.007256>,  <40.515514, 34.845879, 37.056980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283875, 34.807537, 37.007256>,  <39.897804, 34.743637, 36.924385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283875, 34.807537, 37.007256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112759, -0.460565, 0.880435,
		0.236074, -0.873131, -0.426510,
		0.965171, 0.159755, 0.207181,
		40.573425, 34.855465, 37.069408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208813, 34.185745, 37.082825>,  <39.897804, 34.743637, 36.924385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208813, 34.185745, 37.082825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389130, 34.479290, 37.286091>,  <40.497318, 34.655418, 37.408051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389130, 34.479290, 37.286091>,  <40.208813, 34.185745, 37.082825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389130, 34.479290, 37.286091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319037, -0.399225, 0.859555,
		0.833669, -0.549602, 0.054164,
		0.450789, 0.733865, 0.508165,
		40.524368, 34.699448, 37.438541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407722, 33.905132, 37.683632>,  <40.208813, 34.185745, 37.082825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407722, 33.905132, 37.683632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473507, 34.290020, 37.770435>,  <40.512978, 34.520950, 37.822517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473507, 34.290020, 37.770435>,  <40.407722, 33.905132, 37.683632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473507, 34.290020, 37.770435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071162, -0.207856, 0.975567,
		0.983814, -0.175882, 0.034289,
		0.164458, 0.962217, 0.217008,
		40.522842, 34.578686, 37.835537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085701, 33.929855, 37.996120>,  <40.407722, 33.905132, 37.683632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085701, 33.929855, 37.996120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911293, 34.259045, 38.141781>,  <40.806648, 34.456558, 38.229176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911293, 34.259045, 38.141781>,  <41.085701, 33.929855, 37.996120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911293, 34.259045, 38.141781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146219, -0.334475, 0.930992,
		0.887981, 0.459173, 0.025502,
		-0.436016, 0.822974, 0.364147,
		40.780487, 34.505936, 38.251026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476749, 34.100319, 38.681355>,  <41.085701, 33.929855, 37.996120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476749, 34.100319, 38.681355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110561, 34.261269, 38.682358>,  <40.890846, 34.357838, 38.682961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110561, 34.261269, 38.682358>,  <41.476749, 34.100319, 38.681355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110561, 34.261269, 38.682358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182185, -0.420048, 0.889027,
		0.358775, 0.813422, 0.457849,
		-0.915472, 0.402374, 0.002509,
		40.835918, 34.381981, 38.683109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342915, 34.434906, 39.351280>,  <41.476749, 34.100319, 38.681355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342915, 34.434906, 39.351280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990818, 34.344448, 39.184410>,  <40.779560, 34.290173, 39.084290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990818, 34.344448, 39.184410>,  <41.342915, 34.434906, 39.351280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990818, 34.344448, 39.184410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243534, -0.539237, 0.806173,
		-0.407266, 0.811223, 0.419586,
		-0.880242, -0.226143, -0.417173,
		40.726746, 34.276604, 39.059258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943420, 34.209328, 39.682167>,  <41.342915, 34.434906, 39.351280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943420, 34.209328, 39.682167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310608, 34.150925, 39.829685>,  <42.530922, 34.115883, 39.918198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310608, 34.150925, 39.829685>,  <41.943420, 34.209328, 39.682167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310608, 34.150925, 39.829685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396644, -0.342722, 0.851596,
		0.002055, -0.928021, -0.372522,
		0.917970, -0.146009, 0.368799,
		42.585999, 34.107121, 39.940323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067284, 33.495022, 39.832436>,  <41.943420, 34.209328, 39.682167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067284, 33.495022, 39.832436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226738, 33.760342, 40.085770>,  <42.322411, 33.919533, 40.237770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226738, 33.760342, 40.085770>,  <42.067284, 33.495022, 39.832436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226738, 33.760342, 40.085770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646063, -0.287029, 0.707260,
		0.650914, -0.691118, 0.314115,
		0.398640, 0.663303, 0.633336,
		42.346329, 33.959332, 40.275772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179127, 33.140221, 40.499401>,  <42.067284, 33.495022, 39.832436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179127, 33.140221, 40.499401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171486, 33.532261, 40.578423>,  <42.166901, 33.767487, 40.625835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171486, 33.532261, 40.578423>,  <42.179127, 33.140221, 40.499401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171486, 33.532261, 40.578423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501523, -0.180328, 0.846142,
		0.864934, -0.082918, 0.494989,
		-0.019100, 0.980105, 0.197557,
		42.165756, 33.826294, 40.637691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398457, 33.276062, 41.206383>,  <42.179127, 33.140221, 40.499401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398457, 33.276062, 41.206383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149055, 33.557499, 41.070030>,  <41.999413, 33.726360, 40.988220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149055, 33.557499, 41.070030>,  <42.398457, 33.276062, 41.206383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149055, 33.557499, 41.070030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503670, -0.028015, 0.863442,
		0.597962, 0.710050, 0.371847,
		-0.623504, 0.703593, -0.340879,
		41.962006, 33.768578, 40.967766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274120, 33.654793, 41.797352>,  <42.398457, 33.276062, 41.206383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274120, 33.654793, 41.797352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996170, 33.813801, 41.557644>,  <41.829399, 33.909206, 41.413818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996170, 33.813801, 41.557644>,  <42.274120, 33.654793, 41.797352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996170, 33.813801, 41.557644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578037, 0.187000, 0.794295,
		0.427814, 0.898336, 0.099842,
		-0.694873, 0.397523, -0.599273,
		41.787708, 33.933056, 41.377861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024876, 34.254238, 42.180202>,  <42.274120, 33.654793, 41.797352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024876, 34.254238, 42.180202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724987, 34.148388, 41.937588>,  <41.545055, 34.084877, 41.792019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724987, 34.148388, 41.937588>,  <42.024876, 34.254238, 42.180202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724987, 34.148388, 41.937588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656025, 0.176852, 0.733726,
		-0.086897, 0.947995, -0.306193,
		-0.749720, -0.264629, -0.606541,
		41.500072, 34.069000, 41.755627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404953, 34.719791, 42.195911>,  <42.024876, 34.254238, 42.180202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404953, 34.719791, 42.195911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252754, 34.365772, 42.088650>,  <41.161434, 34.153362, 42.024292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252754, 34.365772, 42.088650>,  <41.404953, 34.719791, 42.195911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252754, 34.365772, 42.088650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649624, 0.049427, 0.758647,
		-0.658185, 0.462869, -0.593755,
		-0.380502, -0.885048, -0.268158,
		41.138603, 34.100258, 42.008202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707760, 34.788147, 42.215439>,  <41.404953, 34.719791, 42.195911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707760, 34.788147, 42.215439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734013, 34.389187, 42.203484>,  <40.749763, 34.149811, 42.196312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734013, 34.389187, 42.203484>,  <40.707760, 34.788147, 42.215439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734013, 34.389187, 42.203484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570437, -0.062076, 0.818992,
		-0.818715, -0.036701, -0.573026,
		0.065629, -0.997397, -0.029887,
		40.753700, 34.089970, 42.194519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026127, 34.595757, 42.437477>,  <40.707760, 34.788147, 42.215439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026127, 34.595757, 42.437477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284176, 34.295094, 42.492355>,  <40.439007, 34.114697, 42.525284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284176, 34.295094, 42.492355>,  <40.026127, 34.595757, 42.437477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284176, 34.295094, 42.492355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429553, -0.208290, 0.878692,
		-0.631900, -0.625799, -0.457251,
		0.645125, -0.751659, 0.137195,
		40.477715, 34.069595, 42.533512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658405, 33.940121, 42.400974>,  <40.026127, 34.595757, 42.437477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658405, 33.940121, 42.400974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992710, 33.905231, 42.617825>,  <40.193291, 33.884296, 42.747936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992710, 33.905231, 42.617825>,  <39.658405, 33.940121, 42.400974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992710, 33.905231, 42.617825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520012, -0.442786, 0.730430,
		0.176334, -0.892375, -0.415420,
		0.835759, -0.087224, 0.542124,
		40.243439, 33.879063, 42.780460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320442, 33.471256, 42.910049>,  <39.658405, 33.940121, 42.400974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320442, 33.471256, 42.910049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686810, 33.520290, 43.062920>,  <39.906631, 33.549713, 43.154640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686810, 33.520290, 43.062920>,  <39.320442, 33.471256, 42.910049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686810, 33.520290, 43.062920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310914, -0.385442, 0.868774,
		0.253809, -0.914553, -0.314920,
		0.915922, 0.122590, 0.382176,
		39.961586, 33.557068, 43.177570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406334, 32.877403, 43.301483>,  <39.320442, 33.471256, 42.910049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406334, 32.877403, 43.301483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671810, 33.140938, 43.443161>,  <39.831097, 33.299057, 43.528168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671810, 33.140938, 43.443161>,  <39.406334, 32.877403, 43.301483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671810, 33.140938, 43.443161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139427, -0.356257, 0.923927,
		0.734899, -0.662585, -0.144585,
		0.663690, 0.658834, 0.354195,
		39.870918, 33.338589, 43.549419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959694, 32.531685, 43.615616>,  <39.406334, 32.877403, 43.301483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959694, 32.531685, 43.615616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958359, 32.902912, 43.764572>,  <39.957558, 33.125648, 43.853947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958359, 32.902912, 43.764572>,  <39.959694, 32.531685, 43.615616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958359, 32.902912, 43.764572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126272, -0.369808, 0.920488,
		0.991990, -0.043947, 0.118425,
		-0.003342, 0.928068, 0.372395,
		39.957355, 33.181332, 43.876289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346443, 32.465706, 44.306839>,  <39.959694, 32.531685, 43.615616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346443, 32.465706, 44.306839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137871, 32.806244, 44.283791>,  <40.012730, 33.010567, 44.269962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137871, 32.806244, 44.283791>,  <40.346443, 32.465706, 44.306839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137871, 32.806244, 44.283791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589014, -0.310251, 0.746195,
		0.617396, 0.423024, 0.663229,
		-0.521426, 0.851349, -0.057620,
		39.981441, 33.061649, 44.266506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159779, 32.843315, 45.032951>,  <40.346443, 32.465706, 44.306839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159779, 32.843315, 45.032951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877544, 32.930267, 44.763168>,  <39.708202, 32.982437, 44.601299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877544, 32.930267, 44.763168>,  <40.159779, 32.843315, 45.032951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877544, 32.930267, 44.763168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707920, -0.173825, 0.684569,
		0.031572, 0.960485, 0.276534,
		-0.705587, 0.217377, -0.674459,
		39.665867, 32.995480, 44.560829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696758, 33.308281, 45.473740>,  <40.159779, 32.843315, 45.032951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696758, 33.308281, 45.473740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492275, 33.158871, 45.164124>,  <39.369583, 33.069225, 44.978355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492275, 33.158871, 45.164124>,  <39.696758, 33.308281, 45.473740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492275, 33.158871, 45.164124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779548, -0.177707, 0.600604,
		-0.361896, 0.910437, -0.200338,
		-0.511211, -0.373530, -0.774041,
		39.338913, 33.046810, 44.931911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114857, 33.673309, 45.448818>,  <39.696758, 33.308281, 45.473740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114857, 33.673309, 45.448818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024364, 33.325523, 45.273159>,  <38.970070, 33.116852, 45.167763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024364, 33.325523, 45.273159>,  <39.114857, 33.673309, 45.448818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024364, 33.325523, 45.273159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653971, -0.198549, 0.730000,
		-0.721901, 0.452342, -0.523685,
		-0.226232, -0.869463, -0.439152,
		38.956493, 33.064686, 45.141415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391968, 33.653576, 45.442478>,  <39.114857, 33.673309, 45.448818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391968, 33.653576, 45.442478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464836, 33.269173, 45.359264>,  <38.508556, 33.038532, 45.309338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464836, 33.269173, 45.359264>,  <38.391968, 33.653576, 45.442478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464836, 33.269173, 45.359264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760012, -0.271860, 0.590317,
		-0.623855, 0.050569, -0.779902,
		0.182173, -0.961007, -0.208034,
		38.519489, 32.980869, 45.296856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672043, 33.277294, 45.223896>,  <38.391968, 33.653576, 45.442478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672043, 33.277294, 45.223896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963703, 33.058628, 45.388573>,  <38.138699, 32.927429, 45.487377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963703, 33.058628, 45.388573>,  <37.672043, 33.277294, 45.223896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963703, 33.058628, 45.388573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636862, -0.321853, 0.700584,
		-0.250481, -0.773024, -0.582832,
		0.729154, -0.546666, 0.411692,
		38.182449, 32.894627, 45.512081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055309, 33.633808, 44.891674>,  <37.672043, 33.277294, 45.223896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055309, 33.633808, 44.891674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848267, 33.332062, 45.053173>,  <36.724041, 33.151012, 45.150074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848267, 33.332062, 45.053173>,  <37.055309, 33.633808, 44.891674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848267, 33.332062, 45.053173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688395, -0.086924, 0.720109,
		-0.508132, 0.650672, 0.564295,
		-0.517605, -0.754368, 0.403750,
		36.692986, 33.105751, 45.174297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898438, 33.842510, 45.562702>,  <37.055309, 33.633808, 44.891674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898438, 33.842510, 45.562702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849434, 33.445534, 45.560059>,  <36.820030, 33.207348, 45.558472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849434, 33.445534, 45.560059>,  <36.898438, 33.842510, 45.562702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849434, 33.445534, 45.560059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822587, -0.105261, 0.558811,
		-0.555285, 0.063026, 0.829269,
		-0.122509, -0.992445, -0.006605,
		36.812679, 33.147800, 45.558079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864964, 33.592361, 46.222416>,  <36.898438, 33.842510, 45.562702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864964, 33.592361, 46.222416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016785, 33.307041, 45.986740>,  <37.107880, 33.135849, 45.845337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016785, 33.307041, 45.986740>,  <36.864964, 33.592361, 46.222416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016785, 33.307041, 45.986740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909492, 0.170940, 0.378951,
		-0.169590, -0.679693, 0.713622,
		0.379558, -0.713300, -0.589186,
		37.130653, 33.093052, 45.809986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122921, 33.189281, 46.773605>,  <36.864964, 33.592361, 46.222416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122921, 33.189281, 46.773605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303783, 33.197754, 46.416931>,  <37.412300, 33.202835, 46.202927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303783, 33.197754, 46.416931>,  <37.122921, 33.189281, 46.773605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303783, 33.197754, 46.416931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798842, 0.435073, 0.415407,
		0.396746, -0.900146, 0.179803,
		0.452154, 0.021177, -0.891689,
		37.439430, 33.204105, 46.149426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881203, 33.073509, 46.506771>,  <37.122921, 33.189281, 46.773605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881203, 33.073509, 46.506771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020416, 32.734955, 46.668015>,  <38.103943, 32.531822, 46.764763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020416, 32.734955, 46.668015>,  <37.881203, 33.073509, 46.506771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020416, 32.734955, 46.668015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382534, -0.264355, -0.885316,
		0.855887, 0.462320, 0.231770,
		0.348029, -0.846390, 0.403111,
		38.124825, 32.481037, 46.788948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616951, 33.114464, 46.692158>,  <37.881203, 33.073509, 46.506771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616951, 33.114464, 46.692158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423447, 32.787117, 46.568062>,  <38.307343, 32.590710, 46.493603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423447, 32.787117, 46.568062>,  <38.616951, 33.114464, 46.692158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423447, 32.787117, 46.568062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497176, 0.034766, -0.866953,
		0.720270, -0.573646, 0.390053,
		-0.483763, -0.818365, -0.310244,
		38.278316, 32.541607, 46.474987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047939, 32.693405, 46.428383>,  <38.616951, 33.114464, 46.692158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047939, 32.693405, 46.428383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713657, 32.570915, 46.246029>,  <38.513088, 32.497421, 46.136616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713657, 32.570915, 46.246029>,  <39.047939, 32.693405, 46.428383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713657, 32.570915, 46.246029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459801, 0.063778, -0.885729,
		0.300304, -0.949822, 0.087501,
		-0.835704, -0.306221, -0.455882,
		38.462948, 32.479050, 46.109264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087059, 32.031685, 45.947399>,  <39.047939, 32.693405, 46.428383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087059, 32.031685, 45.947399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798264, 32.266987, 45.801697>,  <38.624985, 32.408169, 45.714275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798264, 32.266987, 45.801697>,  <39.087059, 32.031685, 45.947399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798264, 32.266987, 45.801697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491915, 0.066189, -0.868123,
		-0.486569, -0.805962, -0.337159,
		-0.721991, 0.588255, -0.364260,
		38.581665, 32.443462, 45.692417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857006, 31.761011, 45.257877>,  <39.087059, 32.031685, 45.947399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857006, 31.761011, 45.257877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773136, 32.152111, 45.260426>,  <38.722813, 32.386772, 45.261955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773136, 32.152111, 45.260426>,  <38.857006, 31.761011, 45.257877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773136, 32.152111, 45.260426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574451, 0.128456, -0.808397,
		-0.791228, -0.165846, -0.588603,
		-0.209679, 0.977750, 0.006367,
		38.710232, 32.445435, 45.262337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792881, 31.885885, 44.487514>,  <38.857006, 31.761011, 45.257877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792881, 31.885885, 44.487514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828266, 32.248249, 44.653168>,  <38.849499, 32.465668, 44.752560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828266, 32.248249, 44.653168>,  <38.792881, 31.885885, 44.487514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828266, 32.248249, 44.653168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637508, 0.267961, -0.722343,
		-0.765348, 0.327911, -0.553820,
		0.088462, 0.905909, 0.414129,
		38.854805, 32.520023, 44.777405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625397, 32.392124, 43.923008>,  <38.792881, 31.885885, 44.487514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625397, 32.392124, 43.923008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845413, 32.592579, 44.190235>,  <38.977425, 32.712852, 44.350571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845413, 32.592579, 44.190235>,  <38.625397, 32.392124, 43.923008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845413, 32.592579, 44.190235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551633, 0.382586, -0.741168,
		-0.627021, 0.776201, -0.066006,
		0.550043, 0.501138, 0.668067,
		39.010426, 32.742920, 44.390656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721283, 33.106625, 43.685680>,  <38.625397, 32.392124, 43.923008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721283, 33.106625, 43.685680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022747, 33.055489, 43.943565>,  <39.203625, 33.024807, 44.098297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022747, 33.055489, 43.943565>,  <38.721283, 33.106625, 43.685680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022747, 33.055489, 43.943565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626325, 0.437090, -0.645500,
		-0.199277, 0.890287, 0.409486,
		0.753662, -0.127838, 0.644710,
		39.248844, 33.017136, 44.136978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904282, 33.816273, 43.821041>,  <38.721283, 33.106625, 43.685680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904282, 33.816273, 43.821041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192631, 33.542156, 43.862457>,  <39.365639, 33.377686, 43.887306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192631, 33.542156, 43.862457>,  <38.904282, 33.816273, 43.821041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192631, 33.542156, 43.862457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547981, 0.472101, -0.690534,
		0.424333, 0.554527, 0.715850,
		0.720874, -0.685288, 0.103543,
		39.408894, 33.336571, 43.893520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335087, 34.246380, 44.243893>,  <38.904282, 33.816273, 43.821041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335087, 34.246380, 44.243893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559761, 33.918289, 44.287243>,  <39.694565, 33.721436, 44.313255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559761, 33.918289, 44.287243>,  <39.335087, 34.246380, 44.243893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559761, 33.918289, 44.287243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600002, 0.313631, -0.735958,
		0.569659, 0.478402, 0.668297,
		0.561682, -0.820224, 0.108379,
		39.728264, 33.672222, 44.319756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989956, 34.394474, 44.309864>,  <39.335087, 34.246380, 44.243893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989956, 34.394474, 44.309864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990311, 34.023113, 44.161236>,  <39.990524, 33.800297, 44.072060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990311, 34.023113, 44.161236>,  <39.989956, 34.394474, 44.309864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990311, 34.023113, 44.161236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620002, 0.292045, -0.728222,
		0.784600, -0.229724, 0.575873,
		0.000891, -0.928405, -0.371568,
		39.990578, 33.744591, 44.049767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743187, 34.143787, 44.215549>,  <39.989956, 34.394474, 44.309864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743187, 34.143787, 44.215549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502182, 33.953831, 43.958969>,  <40.357578, 33.839859, 43.805019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502182, 33.953831, 43.958969>,  <40.743187, 34.143787, 44.215549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502182, 33.953831, 43.958969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669095, 0.137583, -0.730331,
		0.435080, -0.869224, 0.234851,
		-0.602510, -0.474890, -0.641453,
		40.321430, 33.811363, 43.766533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146347, 33.760025, 43.782463>,  <40.743187, 34.143787, 44.215549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146347, 33.760025, 43.782463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825714, 33.642899, 43.573956>,  <40.633335, 33.572624, 43.448853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825714, 33.642899, 43.573956>,  <41.146347, 33.760025, 43.782463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825714, 33.642899, 43.573956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456107, 0.264202, -0.849802,
		0.386556, -0.918942, -0.078224,
		-0.801586, -0.292818, -0.521265,
		40.585239, 33.555054, 43.417576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314465, 33.266720, 43.205563>,  <41.146347, 33.760025, 43.782463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314465, 33.266720, 43.205563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966984, 33.415195, 43.074368>,  <40.758495, 33.504280, 42.995651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966984, 33.415195, 43.074368>,  <41.314465, 33.266720, 43.205563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966984, 33.415195, 43.074368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392580, 0.112166, -0.912852,
		-0.302057, -0.921756, -0.243162,
		-0.868701, 0.371193, -0.327983,
		40.706375, 33.526554, 42.975971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159615, 32.987671, 42.616051>,  <41.314465, 33.266720, 43.205563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159615, 32.987671, 42.616051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929173, 33.312286, 42.577061>,  <40.790909, 33.507057, 42.553665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929173, 33.312286, 42.577061>,  <41.159615, 32.987671, 42.616051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929173, 33.312286, 42.577061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277195, 0.081790, -0.957326,
		-0.768937, -0.578542, -0.272075,
		-0.576106, 0.811542, -0.097477,
		40.756340, 33.555748, 42.547817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681030, 32.781303, 42.151001>,  <41.159615, 32.987671, 42.616051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681030, 32.781303, 42.151001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704674, 33.180561, 42.145206>,  <40.718861, 33.420116, 42.141731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704674, 33.180561, 42.145206>,  <40.681030, 32.781303, 42.151001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704674, 33.180561, 42.145206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341045, -0.033833, -0.939438,
		-0.938187, 0.050592, -0.342413,
		0.059113, 0.998146, -0.014488,
		40.722408, 33.480003, 42.140862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497337, 33.110092, 41.491798>,  <40.681030, 32.781303, 42.151001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497337, 33.110092, 41.491798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703056, 33.417774, 41.643490>,  <40.826488, 33.602383, 41.734505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703056, 33.417774, 41.643490>,  <40.497337, 33.110092, 41.491798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703056, 33.417774, 41.643490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499224, 0.091034, -0.861678,
		-0.697333, 0.632480, -0.337188,
		0.514299, 0.769208, 0.379230,
		40.857346, 33.648537, 41.757259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492813, 33.706718, 40.982841>,  <40.497337, 33.110092, 41.491798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492813, 33.706718, 40.982841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808723, 33.770653, 41.219723>,  <40.998272, 33.809013, 41.361851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808723, 33.770653, 41.219723>,  <40.492813, 33.706718, 40.982841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808723, 33.770653, 41.219723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539536, 0.278271, -0.794648,
		-0.291806, 0.947110, 0.133536,
		0.789779, 0.159836, 0.592201,
		41.045658, 33.818604, 41.397385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829597, 34.293423, 40.576920>,  <40.492813, 33.706718, 40.982841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829597, 34.293423, 40.576920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124493, 34.206108, 40.832680>,  <41.301430, 34.153717, 40.986134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124493, 34.206108, 40.832680>,  <40.829597, 34.293423, 40.576920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124493, 34.206108, 40.832680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675610, 0.230586, -0.700272,
		0.005425, 0.948251, 0.317475,
		0.737239, -0.218288, 0.639398,
		41.345665, 34.140621, 41.024498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421284, 34.859516, 40.573883>,  <40.829597, 34.293423, 40.576920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421284, 34.859516, 40.573883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620224, 34.568623, 40.763100>,  <41.739590, 34.394085, 40.876629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620224, 34.568623, 40.763100>,  <41.421284, 34.859516, 40.573883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620224, 34.568623, 40.763100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774033, 0.125718, -0.620538,
		0.391807, 0.674778, 0.625430,
		0.497353, -0.727235, 0.473043,
		41.769428, 34.350452, 40.905014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090195, 35.094604, 40.840874>,  <41.421284, 34.859516, 40.573883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090195, 35.094604, 40.840874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109451, 34.702057, 40.766468>,  <42.121006, 34.466530, 40.721825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109451, 34.702057, 40.766468>,  <42.090195, 35.094604, 40.840874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109451, 34.702057, 40.766468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797541, 0.149881, -0.584349,
		0.601341, -0.120225, 0.789896,
		0.048137, -0.981367, -0.186014,
		42.123894, 34.407646, 40.710663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845036, 34.969830, 41.000919>,  <42.090195, 35.094604, 40.840874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845036, 34.969830, 41.000919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661674, 34.694855, 40.775600>,  <42.551659, 34.529869, 40.640411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661674, 34.694855, 40.775600>,  <42.845036, 34.969830, 41.000919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661674, 34.694855, 40.775600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702578, 0.107864, -0.703385,
		0.544289, -0.718193, 0.433530,
		-0.458404, -0.687433, -0.563295,
		42.524155, 34.488625, 40.606613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321415, 34.545868, 40.780548>,  <42.845036, 34.969830, 41.000919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321415, 34.545868, 40.780548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020374, 34.553623, 40.517273>,  <42.839748, 34.558277, 40.359306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020374, 34.553623, 40.517273>,  <43.321415, 34.545868, 40.780548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020374, 34.553623, 40.517273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639610, 0.259070, -0.723728,
		0.156485, -0.965664, -0.207377,
		-0.752603, 0.019388, -0.658189,
		42.794594, 34.559441, 40.319817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.734581, 34.366600, 40.243874>,  <43.321415, 34.545868, 40.780548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.734581, 34.366600, 40.243874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382389, 34.534592, 40.155907>,  <43.171074, 34.635387, 40.103127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382389, 34.534592, 40.155907>,  <43.734581, 34.366600, 40.243874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382389, 34.534592, 40.155907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418530, 0.470729, -0.776690,
		-0.222674, -0.775905, -0.590244,
		-0.880482, 0.419984, -0.219920,
		43.118244, 34.660587, 40.089931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611576, 34.300739, 39.604561>,  <43.734581, 34.366600, 40.243874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611576, 34.300739, 39.604561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379440, 34.616974, 39.682716>,  <43.240158, 34.806713, 39.729610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379440, 34.616974, 39.682716>,  <43.611576, 34.300739, 39.604561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379440, 34.616974, 39.682716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388213, 0.479480, -0.787014,
		-0.715887, -0.380885, -0.585178,
		-0.580343, 0.790586, 0.195388,
		43.205338, 34.854149, 39.741333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209412, 34.533722, 39.017403>,  <43.611576, 34.300739, 39.604561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209412, 34.533722, 39.017403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271225, 34.854607, 39.248081>,  <43.308311, 35.047138, 39.386490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271225, 34.854607, 39.248081>,  <43.209412, 34.533722, 39.017403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271225, 34.854607, 39.248081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155925, 0.556594, -0.816021,
		-0.975606, 0.216021, -0.039074,
		0.154530, 0.802208, 0.576700,
		43.317585, 35.095268, 39.421093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841614, 35.200325, 38.875793>,  <43.209412, 34.533722, 39.017403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841614, 35.200325, 38.875793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211704, 35.234421, 39.023682>,  <43.433758, 35.254879, 39.112415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211704, 35.234421, 39.023682>,  <42.841614, 35.200325, 38.875793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211704, 35.234421, 39.023682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275376, 0.519479, -0.808894,
		-0.261014, 0.850221, 0.457161,
		0.925224, 0.085242, 0.369722,
		43.489273, 35.259995, 39.134598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146423, 35.937668, 38.781128>,  <42.841614, 35.200325, 38.875793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146423, 35.937668, 38.781128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441040, 35.672112, 38.832905>,  <43.617809, 35.512779, 38.863972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441040, 35.672112, 38.832905>,  <43.146423, 35.937668, 38.781128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441040, 35.672112, 38.832905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333795, 0.190322, -0.923233,
		0.588288, 0.723208, 0.361783,
		0.736545, -0.663888, 0.129439,
		43.662003, 35.472946, 38.871735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938171, 36.267544, 38.852684>,  <43.146423, 35.937668, 38.781128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938171, 36.267544, 38.852684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888809, 35.919628, 38.661583>,  <43.859192, 35.710880, 38.546925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888809, 35.919628, 38.661583>,  <43.938171, 36.267544, 38.852684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888809, 35.919628, 38.661583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464154, 0.374933, -0.802488,
		0.877116, -0.320778, 0.357447,
		-0.123402, -0.869786, -0.477750,
		43.851788, 35.658691, 38.518257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419182, 36.253910, 38.285580>,  <43.938171, 36.267544, 38.852684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419182, 36.253910, 38.285580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155777, 35.963741, 38.205452>,  <43.997734, 35.789642, 38.157375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155777, 35.963741, 38.205452>,  <44.419182, 36.253910, 38.285580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.155777, 35.963741, 38.205452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211778, 0.076806, -0.974295,
		0.722158, -0.684009, 0.103050,
		-0.658512, -0.725419, -0.200324,
		43.958225, 35.746117, 38.145355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.075607, 35.915615, 38.190651>,  <44.419182, 36.253910, 38.285580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.075607, 35.915615, 38.190651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.018925, 35.953667, 37.796520>,  <44.984917, 35.976498, 37.560043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.018925, 35.953667, 37.796520>,  <45.075607, 35.915615, 38.190651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.018925, 35.953667, 37.796520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205045, -0.976605, -0.064800,
		-0.968440, 0.192854, 0.157898,
		-0.141707, 0.095131, -0.985327,
		44.976414, 35.982204, 37.500923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220425, 36.633167, 37.988834>,  <45.075607, 35.915615, 38.190651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220425, 36.633167, 37.988834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572144, 36.544716, 38.157566>,  <45.783173, 36.491646, 38.258804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572144, 36.544716, 38.157566>,  <45.220425, 36.633167, 37.988834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572144, 36.544716, 38.157566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467233, 0.572273, -0.673941,
		-0.092373, 0.789687, 0.606516,
		0.879295, -0.221130, 0.421831,
		45.835934, 36.478378, 38.284115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602783, 37.251255, 38.087715>,  <45.220425, 36.633167, 37.988834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602783, 37.251255, 38.087715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875755, 36.959064, 38.077236>,  <46.039539, 36.783749, 38.070950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875755, 36.959064, 38.077236>,  <45.602783, 37.251255, 38.087715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875755, 36.959064, 38.077236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430508, 0.430637, -0.793230,
		0.590716, 0.530052, 0.608358,
		0.682435, -0.730477, -0.026193,
		46.080486, 36.739922, 38.069378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046696, 37.582558, 37.599834>,  <45.602783, 37.251255, 38.087715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046696, 37.582558, 37.599834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182438, 37.206306, 37.597080>,  <46.263882, 36.980553, 37.595428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182438, 37.206306, 37.597080>,  <46.046696, 37.582558, 37.599834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.182438, 37.206306, 37.597080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595205, 0.220390, -0.772761,
		0.728401, 0.258144, 0.634660,
		0.339356, -0.940633, -0.006883,
		46.284245, 36.924118, 37.595016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.787399, 37.616135, 37.810421>,  <46.046696, 37.582558, 37.599834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.787399, 37.616135, 37.810421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.703079, 37.319565, 37.555595>,  <46.652485, 37.141624, 37.402699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.703079, 37.319565, 37.555595>,  <46.787399, 37.616135, 37.810421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.703079, 37.319565, 37.555595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544350, 0.452279, -0.706490,
		0.811939, -0.495716, 0.308252,
		-0.210802, -0.741424, -0.637066,
		46.639839, 37.097137, 37.364475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.310505, 37.199535, 37.611713>,  <46.787399, 37.616135, 37.810421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.310505, 37.199535, 37.611713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.041599, 37.240196, 37.318394>,  <46.880257, 37.264591, 37.142403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.041599, 37.240196, 37.318394>,  <47.310505, 37.199535, 37.611713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.041599, 37.240196, 37.318394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697837, 0.417689, -0.581858,
		0.247142, -0.902886, -0.351735,
		-0.672268, 0.101652, -0.733296,
		46.839920, 37.270691, 37.098404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.853497, 36.595436, 37.579208>,  <47.310505, 37.199535, 37.611713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.853497, 36.595436, 37.579208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708172, 36.259262, 37.418377>,  <47.620979, 36.057556, 37.321877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708172, 36.259262, 37.418377>,  <47.853497, 36.595436, 37.579208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.708172, 36.259262, 37.418377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172974, 0.484914, -0.857285,
		0.915471, -0.241909, -0.321548,
		-0.363308, -0.840439, -0.402081,
		47.599178, 36.007130, 37.297752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.324902, 36.582848, 37.007614>,  <47.853497, 36.595436, 37.579208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.324902, 36.582848, 37.007614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.217930, 36.506893, 36.629742>,  <47.153748, 36.461319, 36.403019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.217930, 36.506893, 36.629742>,  <47.324902, 36.582848, 37.007614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.217930, 36.506893, 36.629742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258946, -0.930163, 0.260276,
		-0.928133, 0.314226, 0.199579,
		-0.267426, -0.189890, -0.944682,
		47.137703, 36.449924, 36.346336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936329, 36.148388, 37.217857>,  <47.324902, 36.582848, 37.007614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936329, 36.148388, 37.217857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.113327, 36.053818, 36.871841>,  <47.219528, 35.997074, 36.664230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.113327, 36.053818, 36.871841>,  <46.936329, 36.148388, 37.217857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.113327, 36.053818, 36.871841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086984, -0.948756, 0.303803,
		-0.892540, -0.209677, -0.399258,
		0.442499, -0.236427, -0.865041,
		47.246078, 35.982891, 36.612328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.673496, 35.474216, 36.908676>,  <46.936329, 36.148388, 37.217857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.673496, 35.474216, 36.908676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.056145, 35.546951, 36.817627>,  <47.285732, 35.590591, 36.762997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.056145, 35.546951, 36.817627>,  <46.673496, 35.474216, 36.908676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.056145, 35.546951, 36.817627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248112, -0.917993, 0.309403,
		-0.152693, -0.352457, -0.923287,
		0.956622, 0.181835, -0.227620,
		47.343132, 35.601501, 36.749340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.984886, 34.904465, 36.513599>,  <46.673496, 35.474216, 36.908676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.984886, 34.904465, 36.513599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.287109, 35.106915, 36.679958>,  <47.468445, 35.228382, 36.779774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.287109, 35.106915, 36.679958>,  <46.984886, 34.904465, 36.513599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.287109, 35.106915, 36.679958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283958, -0.825175, 0.488318,
		0.590336, -0.250857, -0.767186,
		0.755561, 0.506120, 0.415897,
		47.513779, 35.258751, 36.804729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.560741, 34.618626, 36.359989>,  <46.984886, 34.904465, 36.513599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.560741, 34.618626, 36.359989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587940, 34.805199, 36.712765>,  <47.604259, 34.917145, 36.924431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587940, 34.805199, 36.712765>,  <47.560741, 34.618626, 36.359989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.587940, 34.805199, 36.712765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145822, -0.879137, 0.453712,
		0.986971, 0.097754, -0.127797,
		0.067999, 0.466436, 0.881937,
		47.608341, 34.945129, 36.977345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.892437, 34.963234, 35.771530>,  <47.560741, 34.618626, 36.359989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.892437, 34.963234, 35.771530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.578476, 34.912144, 35.529003>,  <47.390099, 34.881489, 35.383488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.578476, 34.912144, 35.529003>,  <47.892437, 34.963234, 35.771530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.578476, 34.912144, 35.529003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050902, 0.961924, -0.268537,
		0.617527, -0.241637, -0.748513,
		-0.784901, -0.127728, -0.606313,
		47.343006, 34.873825, 35.347111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.132084, 35.346088, 35.205368>,  <47.892437, 34.963234, 35.771530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.132084, 35.346088, 35.205368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.736324, 35.303284, 35.166080>,  <47.498871, 35.277599, 35.142509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.736324, 35.303284, 35.166080>,  <48.132084, 35.346088, 35.205368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.736324, 35.303284, 35.166080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056470, 0.906373, -0.418688,
		0.133828, -0.408701, -0.902803,
		-0.989394, -0.107013, -0.098218,
		47.439507, 35.271179, 35.136616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.695263, 34.557861, 29.137644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.394222, 34.690105, 28.909861>,  <39.213596, 34.769451, 28.773191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.394222, 34.690105, 28.909861>,  <39.695263, 34.557861, 29.137644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394222, 34.690105, 28.909861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470908, 0.334240, 0.816413,
		0.460251, 0.882598, -0.095863,
		-0.752606, 0.330612, -0.569456,
		39.168442, 34.789288, 28.739023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483292, 35.175617, 29.462614>,  <39.695263, 34.557861, 29.137644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483292, 35.175617, 29.462614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.168594, 35.065277, 29.241730>,  <38.979774, 34.999073, 29.109200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.168594, 35.065277, 29.241730>,  <39.483292, 35.175617, 29.462614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168594, 35.065277, 29.241730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615380, 0.280450, 0.736652,
		-0.048337, 0.919378, -0.390395,
		-0.786747, -0.275849, -0.552210,
		38.932571, 34.982521, 29.076067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046017, 35.753906, 29.414721>,  <39.483292, 35.175617, 29.462614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046017, 35.753906, 29.414721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.828625, 35.422714, 29.359476>,  <38.698189, 35.223999, 29.326330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.828625, 35.422714, 29.359476>,  <39.046017, 35.753906, 29.414721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828625, 35.422714, 29.359476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624877, 0.289197, 0.725185,
		-0.560500, 0.480425, -0.674560,
		-0.543478, -0.827983, -0.138112,
		38.665581, 35.174320, 29.318043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408539, 35.964909, 29.406214>,  <39.046017, 35.753906, 29.414721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408539, 35.964909, 29.406214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359505, 35.577862, 29.494478>,  <38.330082, 35.345634, 29.547438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359505, 35.577862, 29.494478>,  <38.408539, 35.964909, 29.406214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359505, 35.577862, 29.494478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505868, 0.252209, 0.824917,
		-0.853856, -0.010501, -0.520403,
		-0.122588, -0.967616, 0.220662,
		38.322727, 35.287579, 29.560677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660652, 35.831272, 29.663000>,  <38.408539, 35.964909, 29.406214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660652, 35.831272, 29.663000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863266, 35.511242, 29.791559>,  <37.984837, 35.319225, 29.868694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863266, 35.511242, 29.791559>,  <37.660652, 35.831272, 29.663000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863266, 35.511242, 29.791559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475680, 0.051583, 0.878105,
		-0.719129, -0.597677, -0.354451,
		0.506539, -0.800076, 0.321397,
		38.015228, 35.271217, 29.887978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123905, 35.395473, 29.983284>,  <37.660652, 35.831272, 29.663000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123905, 35.395473, 29.983284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.476631, 35.284233, 30.135630>,  <37.688267, 35.217487, 30.227037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.476631, 35.284233, 30.135630>,  <37.123905, 35.395473, 29.983284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476631, 35.284233, 30.135630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417739, -0.085857, 0.904501,
		-0.218845, -0.956706, -0.191885,
		0.881817, -0.278104, 0.380864,
		37.741177, 35.200802, 30.249889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960430, 34.750237, 30.294621>,  <37.123905, 35.395473, 29.983284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960430, 34.750237, 30.294621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.301105, 34.876801, 30.461721>,  <37.505508, 34.952740, 30.561981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.301105, 34.876801, 30.461721>,  <36.960430, 34.750237, 30.294621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301105, 34.876801, 30.461721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375513, -0.187568, 0.907639,
		0.365546, -0.929893, -0.040931,
		0.851684, 0.316413, 0.417752,
		37.556610, 34.971725, 30.587048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235607, 34.207703, 30.793282>,  <36.960430, 34.750237, 30.294621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235607, 34.207703, 30.793282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.388062, 34.557293, 30.913879>,  <37.479534, 34.767048, 30.986238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.388062, 34.557293, 30.913879>,  <37.235607, 34.207703, 30.793282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388062, 34.557293, 30.913879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463649, -0.101441, 0.880193,
		0.799852, -0.475261, 0.366556,
		0.381137, 0.873977, 0.301492,
		37.502403, 34.819485, 31.004328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484734, 34.090672, 31.495741>,  <37.235607, 34.207703, 30.793282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484734, 34.090672, 31.495741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.429798, 34.484814, 31.455311>,  <37.396835, 34.721298, 31.431053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.429798, 34.484814, 31.455311>,  <37.484734, 34.090672, 31.495741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429798, 34.484814, 31.455311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346516, 0.047797, 0.936825,
		0.927935, 0.163688, 0.334876,
		-0.137341, 0.985353, -0.101073,
		37.388596, 34.780418, 31.424990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438450, 34.278690, 32.118095>,  <37.484734, 34.090672, 31.495741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438450, 34.278690, 32.118095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.316189, 34.632545, 31.977243>,  <37.242832, 34.844856, 31.892731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.316189, 34.632545, 31.977243>,  <37.438450, 34.278690, 32.118095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316189, 34.632545, 31.977243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393099, 0.219597, 0.892889,
		0.867206, 0.411340, 0.280628,
		-0.305656, 0.884633, -0.352133,
		37.224491, 34.897934, 31.871603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805489, 34.936905, 32.354389>,  <37.438450, 34.278690, 32.118095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805489, 34.936905, 32.354389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.432625, 35.040230, 32.252911>,  <37.208908, 35.102226, 32.192024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.432625, 35.040230, 32.252911>,  <37.805489, 34.936905, 32.354389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432625, 35.040230, 32.252911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141696, 0.384529, 0.912173,
		0.333176, 0.886235, -0.321840,
		-0.932157, 0.258311, -0.253692,
		37.152977, 35.117722, 32.176804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744915, 35.567139, 32.575821>,  <37.805489, 34.936905, 32.354389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744915, 35.567139, 32.575821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.366478, 35.439255, 32.555019>,  <37.139416, 35.362526, 32.542538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.366478, 35.439255, 32.555019>,  <37.744915, 35.567139, 32.575821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366478, 35.439255, 32.555019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150752, 0.292502, 0.944307,
		-0.286688, 0.901239, -0.324929,
		-0.946089, -0.319705, -0.052007,
		37.082653, 35.343342, 32.539417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342590, 36.155373, 32.792645>,  <37.744915, 35.567139, 32.575821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342590, 36.155373, 32.792645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.128010, 35.825150, 32.862698>,  <36.999260, 35.627014, 32.904732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.128010, 35.825150, 32.862698>,  <37.342590, 36.155373, 32.792645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128010, 35.825150, 32.862698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032895, 0.186912, 0.981826,
		-0.843289, 0.532464, -0.073113,
		-0.536453, -0.825558, 0.175136,
		36.967075, 35.577480, 32.915237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760429, 36.367092, 33.322708>,  <37.342590, 36.155373, 32.792645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760429, 36.367092, 33.322708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834435, 35.975552, 33.357613>,  <36.878838, 35.740627, 33.378555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834435, 35.975552, 33.357613>,  <36.760429, 36.367092, 33.322708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834435, 35.975552, 33.357613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056060, 0.078141, 0.995365,
		-0.981136, -0.189047, -0.040418,
		0.185013, -0.978854, 0.087265,
		36.889938, 35.681896, 33.383793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276741, 36.251354, 33.785686>,  <36.760429, 36.367092, 33.322708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276741, 36.251354, 33.785686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490818, 35.913540, 33.792980>,  <36.619263, 35.710854, 33.797356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490818, 35.913540, 33.792980>,  <36.276741, 36.251354, 33.785686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490818, 35.913540, 33.792980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182763, -0.094691, 0.978586,
		-0.824723, -0.527064, -0.205028,
		0.535192, -0.844534, 0.018234,
		36.651375, 35.660179, 33.798450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830219, 35.793629, 34.048641>,  <36.276741, 36.251354, 33.785686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830219, 35.793629, 34.048641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.198639, 35.649235, 34.107113>,  <36.419689, 35.562599, 34.142197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.198639, 35.649235, 34.107113>,  <35.830219, 35.793629, 34.048641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198639, 35.649235, 34.107113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235123, -0.216192, 0.947617,
		-0.310474, -0.907166, -0.283998,
		0.921044, -0.360985, 0.146174,
		36.474953, 35.540939, 34.150967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763798, 35.394608, 34.502617>,  <35.830219, 35.793629, 34.048641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763798, 35.394608, 34.502617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.160759, 35.428391, 34.538383>,  <36.398937, 35.448662, 34.559845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.160759, 35.428391, 34.538383>,  <35.763798, 35.394608, 34.502617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160759, 35.428391, 34.538383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082750, -0.079412, 0.993401,
		0.091003, -0.993258, -0.071820,
		0.992407, 0.084460, 0.089418,
		36.458481, 35.453728, 34.565208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825935, 34.931679, 34.912418>,  <35.763798, 35.394608, 34.502617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825935, 34.931679, 34.912418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.143047, 35.174492, 34.934387>,  <36.333313, 35.320179, 34.947567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.143047, 35.174492, 34.934387>,  <35.825935, 34.931679, 34.912418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143047, 35.174492, 34.934387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075756, 0.008726, 0.997088,
		0.604788, -0.794627, 0.052905,
		0.792775, 0.607035, 0.054920,
		36.380878, 35.356602, 34.950863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950573, 34.802456, 35.600605>,  <35.825935, 34.931679, 34.912418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950573, 34.802456, 35.600605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170387, 35.118637, 35.492390>,  <36.302277, 35.308346, 35.427460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170387, 35.118637, 35.492390>,  <35.950573, 34.802456, 35.600605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170387, 35.118637, 35.492390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206565, 0.185214, 0.960743,
		0.809534, -0.583843, -0.061500,
		0.549533, 0.790457, -0.270539,
		36.335247, 35.355774, 35.411228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568729, 34.615582, 35.825405>,  <35.950573, 34.802456, 35.600605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568729, 34.615582, 35.825405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576771, 35.014656, 35.799427>,  <36.581596, 35.254101, 35.783840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576771, 35.014656, 35.799427>,  <36.568729, 34.615582, 35.825405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576771, 35.014656, 35.799427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533423, 0.044237, 0.844691,
		0.845609, -0.051620, -0.531300,
		0.020099, 0.997686, -0.064943,
		36.582802, 35.313961, 35.779945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273613, 34.862534, 36.045586>,  <36.568729, 34.615582, 35.825405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273613, 34.862534, 36.045586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.053127, 35.192932, 36.092712>,  <36.920834, 35.391171, 36.120987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.053127, 35.192932, 36.092712>,  <37.273613, 34.862534, 36.045586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053127, 35.192932, 36.092712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455603, 0.179684, 0.871860,
		0.698987, 0.534263, -0.475374,
		-0.551219, 0.826001, 0.117815,
		36.887760, 35.440731, 36.128056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745842, 35.320435, 36.297173>,  <37.273613, 34.862534, 36.045586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745842, 35.320435, 36.297173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.384892, 35.477066, 36.369156>,  <37.168324, 35.571045, 36.412346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.384892, 35.477066, 36.369156>,  <37.745842, 35.320435, 36.297173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384892, 35.477066, 36.369156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294072, 0.254239, 0.921349,
		0.315027, 0.884324, -0.344572,
		-0.902374, 0.391579, 0.179962,
		37.114178, 35.594540, 36.423145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299343, 34.788036, 36.296085>,  <37.745842, 35.320435, 36.297173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299343, 34.788036, 36.296085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.363747, 34.540131, 36.603321>,  <38.402390, 34.391388, 36.787663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.363747, 34.540131, 36.603321>,  <38.299343, 34.788036, 36.296085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363747, 34.540131, 36.603321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349950, -0.691833, -0.631587,
		0.922828, 0.370486, 0.105495,
		0.161009, -0.619764, 0.768094,
		38.412048, 34.354202, 36.833748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960625, 34.614815, 36.211025>,  <38.299343, 34.788036, 36.296085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960625, 34.614815, 36.211025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.789749, 34.334911, 36.440056>,  <38.687225, 34.166969, 36.577477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.789749, 34.334911, 36.440056>,  <38.960625, 34.614815, 36.211025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789749, 34.334911, 36.440056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435336, -0.714218, -0.548064,
		0.792460, 0.015138, 0.609736,
		-0.427189, -0.699759, 0.572579,
		38.661594, 34.124985, 36.611828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470844, 34.276142, 36.332207>,  <38.960625, 34.614815, 36.211025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470844, 34.276142, 36.332207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138046, 34.056473, 36.363674>,  <38.938366, 33.924671, 36.382557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138046, 34.056473, 36.363674>,  <39.470844, 34.276142, 36.332207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138046, 34.056473, 36.363674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274495, -0.530726, -0.801861,
		0.482118, -0.645549, 0.592308,
		-0.831994, -0.549177, 0.078672,
		38.888447, 33.891720, 36.387276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729832, 33.719810, 36.045185>,  <39.470844, 34.276142, 36.332207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729832, 33.719810, 36.045185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.339451, 33.636223, 36.069981>,  <39.105221, 33.586071, 36.084858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.339451, 33.636223, 36.069981>,  <39.729832, 33.719810, 36.045185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339451, 33.636223, 36.069981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086776, -0.633372, -0.768967,
		0.199953, -0.745098, 0.636276,
		-0.975955, -0.208971, 0.061988,
		39.046665, 33.573532, 36.088577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688866, 32.980583, 36.086521>,  <39.729832, 33.719810, 36.045185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688866, 32.980583, 36.086521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.330097, 33.091415, 35.948677>,  <39.114838, 33.157913, 35.865971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.330097, 33.091415, 35.948677>,  <39.688866, 32.980583, 36.086521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330097, 33.091415, 35.948677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084423, -0.657699, -0.748536,
		-0.434054, -0.700472, 0.566513,
		-0.896922, 0.277078, -0.344613,
		39.061020, 33.174538, 35.845295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343689, 32.345520, 36.015694>,  <39.688866, 32.980583, 36.086521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343689, 32.345520, 36.015694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.156475, 32.627777, 35.802898>,  <39.044147, 32.797131, 35.675220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.156475, 32.627777, 35.802898>,  <39.343689, 32.345520, 36.015694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156475, 32.627777, 35.802898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048977, -0.580353, -0.812891,
		-0.882353, -0.406515, 0.237064,
		-0.468033, 0.705646, -0.531986,
		39.016064, 32.839470, 35.643303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902294, 31.940983, 35.520985>,  <39.343689, 32.345520, 36.015694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902294, 31.940983, 35.520985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.927456, 32.311752, 35.373009>,  <38.942554, 32.534214, 35.284222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.927456, 32.311752, 35.373009>,  <38.902294, 31.940983, 35.520985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927456, 32.311752, 35.373009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105888, -0.374782, -0.921046,
		-0.992386, 0.018765, -0.121726,
		0.062905, 0.926923, -0.369942,
		38.946327, 32.589828, 35.262028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603329, 31.910952, 34.881302>,  <38.902294, 31.940983, 35.520985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603329, 31.910952, 34.881302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.791870, 32.262650, 34.853737>,  <38.904995, 32.473667, 34.837196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.791870, 32.262650, 34.853737>,  <38.603329, 31.910952, 34.881302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791870, 32.262650, 34.853737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005160, -0.080887, -0.996710,
		-0.881927, 0.469451, -0.042664,
		0.471357, 0.879246, -0.068914,
		38.933277, 32.526424, 34.833061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319706, 32.269714, 34.399464>,  <38.603329, 31.910952, 34.881302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319706, 32.269714, 34.399464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.679680, 32.441685, 34.428520>,  <38.895664, 32.544865, 34.445953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.679680, 32.441685, 34.428520>,  <38.319706, 32.269714, 34.399464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679680, 32.441685, 34.428520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157806, -0.165843, -0.973444,
		-0.406459, 0.887503, -0.217093,
		0.899938, 0.429924, 0.072645,
		38.949661, 32.570663, 34.450314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373306, 32.788254, 33.970005>,  <38.319706, 32.269714, 34.399464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373306, 32.788254, 33.970005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756390, 32.682518, 34.015453>,  <38.986240, 32.619076, 34.042721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756390, 32.682518, 34.015453>,  <38.373306, 32.788254, 33.970005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756390, 32.682518, 34.015453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152498, 0.131479, -0.979519,
		0.243988, 0.955425, 0.166231,
		0.957713, -0.264341, 0.113621,
		39.043705, 32.603214, 34.049541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667984, 33.245152, 33.551445>,  <38.373306, 32.788254, 33.970005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667984, 33.245152, 33.551445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932343, 32.945335, 33.566422>,  <39.090958, 32.765446, 33.575409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932343, 32.945335, 33.566422>,  <38.667984, 33.245152, 33.551445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932343, 32.945335, 33.566422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233674, 0.158117, -0.959372,
		0.713169, 0.642796, 0.279648,
		0.660898, -0.749541, 0.037441,
		39.130611, 32.720474, 33.577652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292374, 33.536282, 33.250858>,  <38.667984, 33.245152, 33.551445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292374, 33.536282, 33.250858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.326492, 33.138020, 33.235954>,  <39.346962, 32.899063, 33.227013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.326492, 33.138020, 33.235954>,  <39.292374, 33.536282, 33.250858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326492, 33.138020, 33.235954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597619, 0.081045, -0.797673,
		0.797230, 0.045772, 0.601938,
		0.085295, -0.995659, -0.037257,
		39.352081, 32.839321, 33.224777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004009, 33.359768, 33.124725>,  <39.292374, 33.536282, 33.250858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004009, 33.359768, 33.124725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.769485, 33.062828, 32.995010>,  <39.628769, 32.884666, 32.917183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.769485, 33.062828, 32.995010>,  <40.004009, 33.359768, 33.124725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769485, 33.062828, 32.995010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444479, 0.039874, -0.894901,
		0.677256, -0.668830, 0.306578,
		-0.586312, -0.742345, -0.324286,
		39.593594, 32.840126, 32.897724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447083, 32.929375, 32.707043>,  <40.004009, 33.359768, 33.124725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447083, 32.929375, 32.707043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078609, 32.837559, 32.581356>,  <39.857525, 32.782467, 32.505943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078609, 32.837559, 32.581356>,  <40.447083, 32.929375, 32.707043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078609, 32.837559, 32.581356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365379, -0.232415, -0.901377,
		0.133876, -0.945142, 0.297966,
		-0.921181, -0.229543, -0.314220,
		39.802254, 32.768696, 32.487091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508205, 32.212727, 32.269409>,  <40.447083, 32.929375, 32.707043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508205, 32.212727, 32.269409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.168228, 32.374985, 32.134918>,  <39.964241, 32.472340, 32.054222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.168228, 32.374985, 32.134918>,  <40.508205, 32.212727, 32.269409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168228, 32.374985, 32.134918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382403, 0.035941, -0.923296,
		-0.362448, -0.913323, -0.185669,
		-0.849940, 0.405647, -0.336231,
		39.913246, 32.496677, 32.034050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337151, 31.870680, 31.558678>,  <40.508205, 32.212727, 32.269409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337151, 31.870680, 31.558678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.139278, 32.218300, 31.561346>,  <40.020554, 32.426872, 31.562946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.139278, 32.218300, 31.561346>,  <40.337151, 31.870680, 31.558678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139278, 32.218300, 31.561346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326167, 0.192765, -0.925449,
		-0.805548, -0.455625, -0.378812,
		-0.494680, 0.869050, 0.006671,
		39.990875, 32.479015, 31.563347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030880, 31.860800, 30.922714>,  <40.337151, 31.870680, 31.558678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030880, 31.860800, 30.922714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.015385, 32.247917, 31.022215>,  <40.006088, 32.480186, 31.081915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.015385, 32.247917, 31.022215>,  <40.030880, 31.860800, 30.922714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015385, 32.247917, 31.022215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094863, 0.251376, -0.963230,
		-0.994736, -0.013720, -0.101547,
		-0.038742, 0.967792, 0.248751,
		40.003761, 32.538254, 31.096840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611217, 32.159149, 30.368217>,  <40.030880, 31.860800, 30.922714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611217, 32.159149, 30.368217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.793896, 32.477253, 30.527708>,  <39.903503, 32.668118, 30.623402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.793896, 32.477253, 30.527708>,  <39.611217, 32.159149, 30.368217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793896, 32.477253, 30.527708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357850, 0.246117, -0.900761,
		-0.814475, 0.554061, -0.172183,
		0.456700, 0.795263, 0.398727,
		39.930904, 32.715832, 30.647326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.212711, 32.934414, 30.131584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.590836, 33.010967, 30.237228>,  <39.817711, 33.056900, 30.300615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.590836, 33.010967, 30.237228>,  <39.212711, 32.934414, 30.131584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590836, 33.010967, 30.237228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162974, 0.424254, -0.890757,
		-0.282527, 0.885088, 0.369862,
		0.945314, 0.191385, 0.264109,
		39.874428, 33.068382, 30.316462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332218, 33.439911, 29.795448>,  <39.212711, 32.934414, 30.131584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332218, 33.439911, 29.795448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.704914, 33.337479, 29.898426>,  <39.928532, 33.276020, 29.960213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.704914, 33.337479, 29.898426>,  <39.332218, 33.439911, 29.795448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704914, 33.337479, 29.898426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357439, 0.521896, -0.774508,
		0.063981, 0.813662, 0.577807,
		0.931742, -0.256084, 0.257443,
		39.984436, 33.260654, 29.975658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754269, 34.109329, 29.816969>,  <39.332218, 33.439911, 29.795448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754269, 34.109329, 29.816969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999615, 33.796730, 29.771297>,  <40.146824, 33.609169, 29.743895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999615, 33.796730, 29.771297>,  <39.754269, 34.109329, 29.816969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999615, 33.796730, 29.771297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477034, 0.481798, -0.735057,
		0.629459, 0.396393, 0.668322,
		0.613368, -0.781501, -0.114179,
		40.183624, 33.562279, 29.737043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350250, 34.474846, 29.620068>,  <39.754269, 34.109329, 29.816969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350250, 34.474846, 29.620068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.403851, 34.091225, 29.520252>,  <40.436012, 33.861053, 29.460363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.403851, 34.091225, 29.520252>,  <40.350250, 34.474846, 29.620068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403851, 34.091225, 29.520252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575939, 0.280285, -0.767942,
		0.806435, -0.040812, 0.589912,
		0.134002, -0.959049, -0.249537,
		40.444050, 33.803509, 29.445391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093761, 34.353561, 29.432003>,  <40.350250, 34.474846, 29.620068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093761, 34.353561, 29.432003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.881031, 34.064972, 29.254627>,  <40.753391, 33.891819, 29.148201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.881031, 34.064972, 29.254627>,  <41.093761, 34.353561, 29.432003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881031, 34.064972, 29.254627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430680, 0.220434, -0.875170,
		0.729158, -0.656423, 0.193489,
		-0.531830, -0.721469, -0.443440,
		40.721481, 33.848530, 29.121595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607620, 33.969257, 28.991549>,  <41.093761, 34.353561, 29.432003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607620, 33.969257, 28.991549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.248547, 33.893730, 28.832291>,  <41.033104, 33.848415, 28.736736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.248547, 33.893730, 28.832291>,  <41.607620, 33.969257, 28.991549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248547, 33.893730, 28.832291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401998, 0.019126, -0.915441,
		0.180468, -0.981826, 0.058737,
		-0.897680, -0.188820, -0.398143,
		40.979244, 33.837086, 28.712847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687332, 33.342548, 28.606552>,  <41.607620, 33.969257, 28.991549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687332, 33.342548, 28.606552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.356602, 33.518238, 28.466019>,  <41.158161, 33.623653, 28.381699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.356602, 33.518238, 28.466019>,  <41.687332, 33.342548, 28.606552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356602, 33.518238, 28.466019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364415, -0.057471, -0.929461,
		-0.428433, -0.896537, -0.112541,
		-0.826829, 0.439224, -0.351335,
		41.108551, 33.650005, 28.360619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479588, 32.926861, 28.035976>,  <41.687332, 33.342548, 28.606552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479588, 32.926861, 28.035976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.335327, 33.296776, 27.987488>,  <41.248772, 33.518726, 27.958395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.335327, 33.296776, 27.987488>,  <41.479588, 32.926861, 28.035976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335327, 33.296776, 27.987488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398735, 0.035378, -0.916383,
		-0.843174, -0.378830, -0.381505,
		-0.360650, 0.924790, -0.121223,
		41.227131, 33.574211, 27.951120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189499, 32.890091, 27.375587>,  <41.479588, 32.926861, 28.035976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189499, 32.890091, 27.375587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.244610, 33.281181, 27.438910>,  <41.277676, 33.515835, 27.476902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.244610, 33.281181, 27.438910>,  <41.189499, 32.890091, 27.375587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244610, 33.281181, 27.438910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366869, 0.098085, -0.925088,
		-0.920014, 0.185533, -0.345185,
		0.137777, 0.977731, 0.158306,
		41.285942, 33.574501, 27.486401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929222, 33.147900, 26.820538>,  <41.189499, 32.890091, 27.375587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929222, 33.147900, 26.820538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.155365, 33.437656, 26.978338>,  <41.291050, 33.611511, 27.073019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.155365, 33.437656, 26.978338>,  <40.929222, 33.147900, 26.820538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155365, 33.437656, 26.978338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418450, 0.160281, -0.893985,
		-0.710824, 0.670501, -0.212504,
		0.565358, 0.724388, 0.394503,
		41.324974, 33.654972, 27.096689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834072, 33.786636, 26.388977>,  <40.929222, 33.147900, 26.820538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834072, 33.786636, 26.388977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.185326, 33.810825, 26.578806>,  <41.396080, 33.825336, 26.692703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.185326, 33.810825, 26.578806>,  <40.834072, 33.786636, 26.388977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185326, 33.810825, 26.578806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465185, 0.123691, -0.876529,
		-0.111704, 0.990477, 0.080488,
		0.878137, 0.060469, 0.474572,
		41.448769, 33.828968, 26.721178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187908, 34.303768, 25.937572>,  <40.834072, 33.786636, 26.388977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187908, 34.303768, 25.937572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.480515, 34.158630, 26.168478>,  <41.656078, 34.071548, 26.307020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.480515, 34.158630, 26.168478>,  <41.187908, 34.303768, 25.937572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480515, 34.158630, 26.168478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680902, 0.344697, -0.646186,
		0.035483, 0.865753, 0.499211,
		0.731514, -0.362843, 0.577263,
		41.699970, 34.049778, 26.341658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744343, 34.803440, 26.135937>,  <41.187908, 34.303768, 25.937572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744343, 34.803440, 26.135937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.943592, 34.457123, 26.155025>,  <42.063141, 34.249332, 26.166479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.943592, 34.457123, 26.155025>,  <41.744343, 34.803440, 26.135937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943592, 34.457123, 26.155025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699810, 0.368906, -0.611698,
		0.512000, 0.338095, 0.789651,
		0.498119, -0.865795, 0.047722,
		42.093029, 34.197384, 26.169342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475315, 34.999516, 26.236904>,  <41.744343, 34.803440, 26.135937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475315, 34.999516, 26.236904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.460869, 34.623096, 26.102364>,  <42.452202, 34.397247, 26.021639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.460869, 34.623096, 26.102364>,  <42.475315, 34.999516, 26.236904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460869, 34.623096, 26.102364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810698, 0.169213, -0.560477,
		0.584349, -0.292920, 0.756792,
		-0.036116, -0.941044, -0.336350,
		42.450035, 34.340782, 26.001459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176781, 34.733421, 26.247881>,  <42.475315, 34.999516, 26.236904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176781, 34.733421, 26.247881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.985390, 34.471653, 26.013689>,  <42.870556, 34.314590, 25.873175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.985390, 34.471653, 26.013689>,  <43.176781, 34.733421, 26.247881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985390, 34.471653, 26.013689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802890, -0.056070, -0.593485,
		0.355563, -0.754046, 0.552259,
		-0.478479, -0.654425, -0.585479,
		42.841846, 34.275326, 25.838045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716396, 34.331760, 25.997126>,  <43.176781, 34.733421, 26.247881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716396, 34.331760, 25.997126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.423164, 34.258453, 25.735132>,  <43.247223, 34.214470, 25.577936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.423164, 34.258453, 25.735132>,  <43.716396, 34.331760, 25.997126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423164, 34.258453, 25.735132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679902, -0.172084, -0.712825,
		0.017928, -0.967884, 0.250758,
		-0.733083, -0.183270, -0.654981,
		43.203239, 34.203472, 25.538637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862183, 33.680229, 25.645481>,  <43.716396, 34.331760, 25.997126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862183, 33.680229, 25.645481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.600185, 33.868877, 25.409327>,  <43.442986, 33.982067, 25.267633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.600185, 33.868877, 25.409327>,  <43.862183, 33.680229, 25.645481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.600185, 33.868877, 25.409327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568759, -0.206691, -0.796110,
		-0.497493, -0.857233, -0.132860,
		-0.654991, 0.471625, -0.590387,
		43.403687, 34.010365, 25.232210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956570, 33.303589, 25.071396>,  <43.862183, 33.680229, 25.645481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956570, 33.303589, 25.071396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.757900, 33.619091, 24.926517>,  <43.638699, 33.808392, 24.839590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.757900, 33.619091, 24.926517>,  <43.956570, 33.303589, 25.071396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757900, 33.619091, 24.926517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434759, -0.135089, -0.890357,
		-0.751202, -0.599682, -0.275823,
		-0.496670, 0.788754, -0.362196,
		43.608898, 33.855717, 24.817858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613167, 33.130798, 24.396406>,  <43.956570, 33.303589, 25.071396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613167, 33.130798, 24.396406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.667900, 33.526478, 24.417454>,  <43.700741, 33.763885, 24.430082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.667900, 33.526478, 24.417454>,  <43.613167, 33.130798, 24.396406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.667900, 33.526478, 24.417454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390193, -0.005001, -0.920720,
		-0.910508, 0.146518, -0.386661,
		0.136836, 0.989195, 0.052617,
		43.708950, 33.823235, 24.433239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400074, 33.222473, 23.771040>,  <43.613167, 33.130798, 24.396406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400074, 33.222473, 23.771040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.615372, 33.545704, 23.866793>,  <43.744549, 33.739643, 23.924244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.615372, 33.545704, 23.866793>,  <43.400074, 33.222473, 23.771040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615372, 33.545704, 23.866793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394141, 0.009712, -0.918999,
		-0.744948, 0.588994, -0.313270,
		0.538242, 0.808079, 0.239382,
		43.776844, 33.788128, 23.938606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233109, 33.815155, 23.208132>,  <43.400074, 33.222473, 23.771040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233109, 33.815155, 23.208132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.582485, 33.880329, 23.391676>,  <43.792110, 33.919434, 23.501802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.582485, 33.880329, 23.391676>,  <43.233109, 33.815155, 23.208132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582485, 33.880329, 23.391676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438808, 0.145089, -0.886790,
		-0.211069, 0.975910, 0.055228,
		0.873440, 0.162939, 0.458861,
		43.844517, 33.929211, 23.529335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481197, 34.402378, 22.914471>,  <43.233109, 33.815155, 23.208132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481197, 34.402378, 22.914471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.809334, 34.256245, 23.090460>,  <44.006214, 34.168564, 23.196053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.809334, 34.256245, 23.090460>,  <43.481197, 34.402378, 22.914471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809334, 34.256245, 23.090460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512096, 0.126816, -0.849515,
		0.254558, 0.922199, 0.291116,
		0.820340, -0.365330, 0.439973,
		44.055435, 34.146645, 23.222452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079399, 34.886189, 22.890362>,  <43.481197, 34.402378, 22.914471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079399, 34.886189, 22.890362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.243519, 34.522205, 22.914471>,  <44.341991, 34.303818, 22.928936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.243519, 34.522205, 22.914471>,  <44.079399, 34.886189, 22.890362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243519, 34.522205, 22.914471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648275, 0.244548, -0.721065,
		0.641397, 0.334929, 0.690241,
		0.410303, -0.909955, 0.060273,
		44.366611, 34.249218, 22.932552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893444, 35.291592, 22.281258>,  <44.079399, 34.886189, 22.890362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893444, 35.291592, 22.281258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.798931, 35.642162, 22.113422>,  <43.742226, 35.852505, 22.012722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.798931, 35.642162, 22.113422>,  <43.893444, 35.291592, 22.281258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798931, 35.642162, 22.113422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852559, 0.020178, 0.522241,
		0.466171, 0.481118, 0.742435,
		-0.236279, 0.876424, -0.419588,
		43.728046, 35.905090, 21.987547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903416, 35.805229, 22.805504>,  <43.893444, 35.291592, 22.281258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903416, 35.805229, 22.805504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.665619, 35.875935, 22.491732>,  <43.522942, 35.918358, 22.303469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.665619, 35.875935, 22.491732>,  <43.903416, 35.805229, 22.805504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665619, 35.875935, 22.491732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757650, 0.203628, 0.620082,
		0.269340, 0.962959, 0.012869,
		-0.594493, 0.176763, -0.784431,
		43.487270, 35.928963, 22.256403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568874, 36.344501, 22.961500>,  <43.903416, 35.805229, 22.805504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568874, 36.344501, 22.961500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.329407, 36.170830, 22.692251>,  <43.185726, 36.066628, 22.530703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.329407, 36.170830, 22.692251>,  <43.568874, 36.344501, 22.961500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329407, 36.170830, 22.692251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788115, 0.169158, 0.591828,
		-0.143094, 0.884803, -0.443449,
		-0.598664, -0.434175, -0.673121,
		43.149807, 36.040577, 22.490314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964054, 36.795280, 22.874371>,  <43.568874, 36.344501, 22.961500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964054, 36.795280, 22.874371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.848320, 36.431347, 22.755384>,  <42.778881, 36.212986, 22.683992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.848320, 36.431347, 22.755384>,  <42.964054, 36.795280, 22.874371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848320, 36.431347, 22.755384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716328, -0.000337, 0.697763,
		-0.634950, 0.414969, -0.651643,
		-0.289331, -0.909835, -0.297468,
		42.761520, 36.158398, 22.666143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231853, 36.861843, 22.493801>,  <42.964054, 36.795280, 22.874371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231853, 36.861843, 22.493801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.294399, 36.487923, 22.621365>,  <42.331928, 36.263573, 22.697903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.294399, 36.487923, 22.621365>,  <42.231853, 36.861843, 22.493801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294399, 36.487923, 22.621365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828053, 0.051933, 0.558239,
		-0.538402, -0.351363, -0.765942,
		0.156367, -0.934798, 0.318908,
		42.341309, 36.207481, 22.717037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560658, 36.610561, 22.461239>,  <42.231853, 36.861843, 22.493801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560658, 36.610561, 22.461239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.772003, 36.358665, 22.689014>,  <41.898811, 36.207527, 22.825680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.772003, 36.358665, 22.689014>,  <41.560658, 36.610561, 22.461239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772003, 36.358665, 22.689014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784960, -0.106758, 0.610279,
		-0.323525, -0.769435, -0.550728,
		0.528364, -0.629740, 0.569437,
		41.930511, 36.169743, 22.859846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241753, 35.991665, 22.523136>,  <41.560658, 36.610561, 22.461239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241753, 35.991665, 22.523136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.476761, 36.009380, 22.846334>,  <41.617767, 36.020008, 23.040255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.476761, 36.009380, 22.846334>,  <41.241753, 35.991665, 22.523136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476761, 36.009380, 22.846334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757371, -0.321541, 0.568332,
		0.284973, -0.945859, -0.155371,
		0.587520, 0.044286, 0.807997,
		41.653015, 36.022667, 23.088734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020821, 35.439320, 23.017910>,  <41.241753, 35.991665, 22.523136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020821, 35.439320, 23.017910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.256664, 35.644779, 23.267239>,  <41.398170, 35.768055, 23.416836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.256664, 35.644779, 23.267239>,  <41.020821, 35.439320, 23.017910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256664, 35.644779, 23.267239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518363, -0.351190, 0.779721,
		0.619407, -0.782835, 0.059193,
		0.589606, 0.513648, 0.623323,
		41.433544, 35.798874, 23.454235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148441, 35.004326, 23.652624>,  <41.020821, 35.439320, 23.017910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148441, 35.004326, 23.652624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.226654, 35.368195, 23.799191>,  <41.273582, 35.586517, 23.887131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.226654, 35.368195, 23.799191>,  <41.148441, 35.004326, 23.652624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226654, 35.368195, 23.799191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476311, -0.238512, 0.846310,
		0.857260, -0.340012, 0.386649,
		0.195535, 0.909672, 0.366418,
		41.285316, 35.641098, 23.909117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431087, 34.874535, 24.330931>,  <41.148441, 35.004326, 23.652624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431087, 34.874535, 24.330931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.299942, 35.252220, 24.343378>,  <41.221252, 35.478832, 24.350845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.299942, 35.252220, 24.343378>,  <41.431087, 34.874535, 24.330931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299942, 35.252220, 24.343378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334534, -0.146841, 0.930873,
		0.883511, 0.294792, 0.364014,
		-0.327866, 0.944212, 0.031117,
		41.201584, 35.535484, 24.352713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697636, 35.154842, 24.884558>,  <41.431087, 34.874535, 24.330931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697636, 35.154842, 24.884558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.386078, 35.394192, 24.809443>,  <41.199142, 35.537804, 24.764374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.386078, 35.394192, 24.809443>,  <41.697636, 35.154842, 24.884558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386078, 35.394192, 24.809443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273470, -0.054596, 0.960330,
		0.564387, 0.799352, 0.206163,
		-0.778898, 0.598377, -0.187786,
		41.152409, 35.573704, 24.753107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628376, 35.501770, 25.447067>,  <41.697636, 35.154842, 24.884558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628376, 35.501770, 25.447067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.278942, 35.569141, 25.264429>,  <41.069283, 35.609562, 25.154846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.278942, 35.569141, 25.264429>,  <41.628376, 35.501770, 25.447067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278942, 35.569141, 25.264429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457559, 0.035359, 0.888476,
		0.165786, 0.985080, 0.046176,
		-0.873587, 0.168425, -0.456595,
		41.016865, 35.619671, 25.127451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309292, 36.067265, 25.919445>,  <41.628376, 35.501770, 25.447067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309292, 36.067265, 25.919445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.001904, 35.938679, 25.698139>,  <40.817471, 35.861526, 25.565355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.001904, 35.938679, 25.698139>,  <41.309292, 36.067265, 25.919445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001904, 35.938679, 25.698139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606572, 0.090652, 0.789843,
		-0.203755, 0.942571, -0.264658,
		-0.768475, -0.321469, -0.553266,
		40.771362, 35.842239, 25.532160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776154, 36.425159, 26.116701>,  <41.309292, 36.067265, 25.919445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776154, 36.425159, 26.116701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.614601, 36.086582, 25.977900>,  <40.517670, 35.883434, 25.894619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.614601, 36.086582, 25.977900>,  <40.776154, 36.425159, 26.116701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614601, 36.086582, 25.977900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575021, -0.060120, 0.815927,
		-0.711499, 0.529070, -0.462443,
		-0.403880, -0.846446, -0.347002,
		40.493439, 35.832649, 25.873798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158974, 36.443130, 26.428314>,  <40.776154, 36.425159, 26.116701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158974, 36.443130, 26.428314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.181458, 36.061451, 26.310781>,  <40.194946, 35.832443, 26.240261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.181458, 36.061451, 26.310781>,  <40.158974, 36.443130, 26.428314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181458, 36.061451, 26.310781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505176, -0.281026, 0.815979,
		-0.861184, 0.102571, -0.497837,
		0.056210, -0.954203, -0.293832,
		40.198322, 35.775188, 26.222631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432964, 36.203476, 26.483347>,  <40.158974, 36.443130, 26.428314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432964, 36.203476, 26.483347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.695290, 35.902355, 26.505947>,  <39.852684, 35.721684, 26.519508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.695290, 35.902355, 26.505947>,  <39.432964, 36.203476, 26.483347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695290, 35.902355, 26.505947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428281, -0.309379, 0.849035,
		-0.621677, -0.581008, -0.525307,
		0.655816, -0.752804, 0.056501,
		39.892033, 35.676514, 26.522898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042820, 35.510021, 26.552820>,  <39.432964, 36.203476, 26.483347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042820, 35.510021, 26.552820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.414467, 35.454674, 26.689989>,  <39.637455, 35.421467, 26.772291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.414467, 35.454674, 26.689989>,  <39.042820, 35.510021, 26.552820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414467, 35.454674, 26.689989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365094, -0.490520, 0.791263,
		0.058724, -0.860375, -0.506268,
		0.929117, -0.138369, 0.342923,
		39.693203, 35.413162, 26.792866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991791, 34.714329, 26.662434>,  <39.042820, 35.510021, 26.552820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991791, 34.714329, 26.662434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.285686, 34.888863, 26.870192>,  <39.462025, 34.993584, 26.994846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.285686, 34.888863, 26.870192>,  <38.991791, 34.714329, 26.662434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285686, 34.888863, 26.870192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260264, -0.525753, 0.809843,
		0.626437, -0.730203, -0.272728,
		0.734738, 0.436334, 0.519397,
		39.506107, 35.019764, 27.026011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137989, 34.186264, 27.160669>,  <38.991791, 34.714329, 26.662434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137989, 34.186264, 27.160669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.287746, 34.528439, 27.303806>,  <39.377602, 34.733746, 27.389688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.287746, 34.528439, 27.303806>,  <39.137989, 34.186264, 27.160669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287746, 34.528439, 27.303806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409155, -0.193909, 0.891623,
		0.832119, -0.480230, 0.277410,
		0.374392, 0.855440, 0.357845,
		39.400063, 34.785072, 27.411160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378948, 33.907837, 27.852160>,  <39.137989, 34.186264, 27.160669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378948, 33.907837, 27.852160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.369629, 34.306824, 27.879042>,  <39.364037, 34.546215, 27.895170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.369629, 34.306824, 27.879042>,  <39.378948, 33.907837, 27.852160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369629, 34.306824, 27.879042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280260, -0.071042, 0.957292,
		0.959642, 0.003467, 0.281205,
		-0.023297, 0.997468, 0.067203,
		39.362640, 34.606064, 27.899202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643345, 34.113895, 28.510628>,  <39.378948, 33.907837, 27.852160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643345, 34.113895, 28.510628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.419453, 34.420017, 28.383503>,  <39.285118, 34.603691, 28.307228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.419453, 34.420017, 28.383503>,  <39.643345, 34.113895, 28.510628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419453, 34.420017, 28.383503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393005, 0.092485, 0.914874,
		0.729552, 0.636987, 0.249002,
		-0.559734, 0.765307, -0.317811,
		39.251534, 34.649609, 28.288160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.714039, 31.488417, 33.329899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.666046, 31.884838, 33.306534>,  <39.637249, 32.122692, 33.292515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.666046, 31.884838, 33.306534>,  <39.714039, 31.488417, 33.329899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666046, 31.884838, 33.306534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032403, 0.062720, 0.997505,
		0.992247, 0.117790, -0.039639,
		-0.119982, 0.991056, -0.058417,
		39.630051, 32.182156, 33.289009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011429, 31.857771, 33.841690>,  <39.714039, 31.488417, 33.329899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011429, 31.857771, 33.841690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.751057, 32.143600, 33.739185>,  <39.594833, 32.315098, 33.677681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.751057, 32.143600, 33.739185>,  <40.011429, 31.857771, 33.841690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751057, 32.143600, 33.739185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060077, 0.288023, 0.955737,
		0.756754, 0.637516, -0.144554,
		-0.650933, 0.714574, -0.256263,
		39.555779, 32.357971, 33.662308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265152, 32.418419, 34.267609>,  <40.011429, 31.857771, 33.841690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265152, 32.418419, 34.267609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.883530, 32.501610, 34.181328>,  <39.654556, 32.551525, 34.129559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.883530, 32.501610, 34.181328>,  <40.265152, 32.418419, 34.267609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883530, 32.501610, 34.181328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153548, 0.278841, 0.947983,
		0.257308, 0.937546, -0.234094,
		-0.954052, 0.207979, -0.215707,
		39.597313, 32.564003, 34.116615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137135, 33.071575, 34.617908>,  <40.265152, 32.418419, 34.267609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137135, 33.071575, 34.617908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.767349, 32.934261, 34.551552>,  <39.545479, 32.851875, 34.511738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.767349, 32.934261, 34.551552>,  <40.137135, 33.071575, 34.617908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767349, 32.934261, 34.551552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294416, 0.366306, 0.882689,
		-0.242242, 0.864858, -0.439705,
		-0.924466, -0.343280, -0.165893,
		39.490009, 32.831276, 34.501785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710220, 33.581947, 34.759850>,  <40.137135, 33.071575, 34.617908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710220, 33.581947, 34.759850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.460213, 33.270081, 34.775169>,  <39.310207, 33.082962, 34.784363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.460213, 33.270081, 34.775169>,  <39.710220, 33.581947, 34.759850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460213, 33.270081, 34.775169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388874, 0.353536, 0.850758,
		-0.676848, 0.516849, -0.524160,
		-0.625023, -0.779666, 0.038301,
		39.272705, 33.036182, 34.786659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079662, 33.757290, 34.800346>,  <39.710220, 33.581947, 34.759850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079662, 33.757290, 34.800346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.009876, 33.384731, 34.928131>,  <38.968006, 33.161194, 35.004803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.009876, 33.384731, 34.928131>,  <39.079662, 33.757290, 34.800346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009876, 33.384731, 34.928131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641037, 0.353702, 0.681151,
		-0.747418, -0.085949, -0.658771,
		-0.174464, -0.931401, 0.319459,
		38.957539, 33.105312, 35.023968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297092, 33.564873, 34.861912>,  <39.079662, 33.757290, 34.800346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297092, 33.564873, 34.861912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.529118, 33.345329, 35.102673>,  <38.668331, 33.213604, 35.247128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.529118, 33.345329, 35.102673>,  <38.297092, 33.564873, 34.861912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529118, 33.345329, 35.102673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474692, 0.372718, 0.797339,
		-0.661964, -0.748223, -0.044338,
		0.580062, -0.548856, 0.601901,
		38.703136, 33.180672, 35.283241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871017, 33.290642, 35.407101>,  <38.297092, 33.564873, 34.861912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871017, 33.290642, 35.407101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.243690, 33.293758, 35.552376>,  <38.467297, 33.295628, 35.639542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.243690, 33.293758, 35.552376>,  <37.871017, 33.290642, 35.407101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243690, 33.293758, 35.552376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322912, 0.475738, 0.818169,
		-0.166406, -0.879552, 0.445754,
		0.931685, 0.007791, 0.363184,
		38.523197, 33.296097, 35.661331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698738, 33.198238, 36.088245>,  <37.871017, 33.290642, 35.407101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698738, 33.198238, 36.088245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.082783, 33.308952, 36.104103>,  <38.313210, 33.375381, 36.113617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.082783, 33.308952, 36.104103>,  <37.698738, 33.198238, 36.088245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082783, 33.308952, 36.104103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194244, 0.558253, 0.806612,
		0.201126, -0.782140, 0.589750,
		0.960113, 0.276786, 0.039647,
		38.370815, 33.391987, 36.115997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918594, 33.106960, 36.723427>,  <37.698738, 33.198238, 36.088245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918594, 33.106960, 36.723427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.209820, 33.344028, 36.585629>,  <38.384556, 33.486267, 36.502949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.209820, 33.344028, 36.585629>,  <37.918594, 33.106960, 36.723427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209820, 33.344028, 36.585629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119010, 0.604181, 0.787910,
		0.675107, -0.532645, 0.510412,
		0.728058, 0.592668, -0.344496,
		38.428238, 33.521828, 36.482281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293022, 33.150028, 37.339527>,  <37.918594, 33.106960, 36.723427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293022, 33.150028, 37.339527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.414177, 33.467827, 37.128994>,  <38.486870, 33.658508, 37.002674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.414177, 33.467827, 37.128994>,  <38.293022, 33.150028, 37.339527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414177, 33.467827, 37.128994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186421, 0.591002, 0.784833,
		0.934615, -0.139596, 0.327119,
		0.302888, 0.794499, -0.526336,
		38.505043, 33.706177, 36.971092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709156, 33.510185, 37.778393>,  <38.293022, 33.150028, 37.339527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709156, 33.510185, 37.778393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.595642, 33.778282, 37.504093>,  <38.527534, 33.939140, 37.339516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.595642, 33.778282, 37.504093>,  <38.709156, 33.510185, 37.778393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595642, 33.778282, 37.504093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212633, 0.653357, 0.726575,
		0.935016, 0.352002, -0.042898,
		-0.283784, 0.670238, -0.685746,
		38.510506, 33.979355, 37.298370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127136, 32.987305, 38.215897>,  <38.709156, 33.510185, 37.778393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127136, 32.987305, 38.215897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.520912, 32.948948, 38.274807>,  <39.757175, 32.925934, 38.310154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.520912, 32.948948, 38.274807>,  <39.127136, 32.987305, 38.215897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520912, 32.948948, 38.274807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107212, 0.336356, 0.935612,
		-0.139252, -0.936840, 0.320841,
		0.984436, -0.095888, 0.147279,
		39.816242, 32.920181, 38.318989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612366, 33.464222, 38.643097>,  <39.127136, 32.987305, 38.215897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612366, 33.464222, 38.643097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.930584, 33.655228, 38.792274>,  <40.121513, 33.769833, 38.881783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.930584, 33.655228, 38.792274>,  <39.612366, 33.464222, 38.643097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930584, 33.655228, 38.792274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231187, 0.808192, -0.541644,
		-0.560052, 0.344684, 0.753349,
		0.795547, 0.477513, 0.372943,
		40.169247, 33.798481, 38.904156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596710, 34.200310, 38.440300>,  <39.612366, 33.464222, 38.643097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596710, 34.200310, 38.440300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.927792, 34.243568, 38.660557>,  <40.126442, 34.269524, 38.792709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.927792, 34.243568, 38.660557>,  <39.596710, 34.200310, 38.440300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927792, 34.243568, 38.660557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221581, 0.838529, -0.497765,
		-0.515564, 0.534015, 0.670091,
		0.827705, 0.108150, 0.550643,
		40.176102, 34.276012, 38.825748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636166, 34.980083, 38.692318>,  <39.596710, 34.200310, 38.440300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636166, 34.980083, 38.692318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.987991, 34.790539, 38.709400>,  <40.199085, 34.676811, 38.719650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.987991, 34.790539, 38.709400>,  <39.636166, 34.980083, 38.692318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987991, 34.790539, 38.709400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389374, 0.665336, -0.636958,
		0.273416, 0.576873, 0.769715,
		0.879563, -0.473862, 0.042706,
		40.251862, 34.648380, 38.722214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086189, 35.558590, 38.614662>,  <39.636166, 34.980083, 38.692318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086189, 35.558590, 38.614662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.293140, 35.228977, 38.522320>,  <40.417313, 35.031212, 38.466915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.293140, 35.228977, 38.522320>,  <40.086189, 35.558590, 38.614662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293140, 35.228977, 38.522320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268531, 0.412478, -0.870490,
		0.812533, 0.388381, 0.434684,
		0.517379, -0.824028, -0.230860,
		40.448353, 34.981770, 38.453060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628414, 35.800480, 38.231190>,  <40.086189, 35.558590, 38.614662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628414, 35.800480, 38.231190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.649208, 35.412533, 38.135979>,  <40.661686, 35.179764, 38.078850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.649208, 35.412533, 38.135979>,  <40.628414, 35.800480, 38.231190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649208, 35.412533, 38.135979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420003, 0.237482, -0.875900,
		0.906033, -0.054442, 0.419692,
		0.051984, -0.969865, -0.238032,
		40.664803, 35.121574, 38.064568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330681, 35.612144, 37.837261>,  <40.628414, 35.800480, 38.231190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330681, 35.612144, 37.837261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.095963, 35.308254, 37.725201>,  <40.955132, 35.125919, 37.657963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.095963, 35.308254, 37.725201>,  <41.330681, 35.612144, 37.837261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095963, 35.308254, 37.725201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299511, 0.117801, -0.946793,
		0.752305, -0.639484, 0.158421,
		-0.586796, -0.759726, -0.280154,
		40.919922, 35.080338, 37.641155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733482, 35.315308, 37.310081>,  <41.330681, 35.612144, 37.837261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733482, 35.315308, 37.310081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.370644, 35.155216, 37.257946>,  <41.152939, 35.059162, 37.226665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.370644, 35.155216, 37.257946>,  <41.733482, 35.315308, 37.310081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370644, 35.155216, 37.257946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118920, 0.053351, -0.991469,
		0.403771, -0.914860, -0.000799,
		-0.907098, -0.400232, -0.130336,
		41.098515, 35.035149, 37.218845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865761, 34.666443, 36.811718>,  <41.733482, 35.315308, 37.310081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865761, 34.666443, 36.811718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.490910, 34.802994, 36.782703>,  <41.265999, 34.884926, 36.765297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.490910, 34.802994, 36.782703>,  <41.865761, 34.666443, 36.811718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490910, 34.802994, 36.782703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057082, -0.055110, -0.996847,
		-0.344299, -0.938309, 0.032158,
		-0.937123, 0.341378, -0.072534,
		41.209774, 34.905407, 36.760944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538498, 34.239773, 36.315701>,  <41.865761, 34.666443, 36.811718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538498, 34.239773, 36.315701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.297321, 34.558876, 36.318336>,  <41.152615, 34.750336, 36.319920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.297321, 34.558876, 36.318336>,  <41.538498, 34.239773, 36.315701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297321, 34.558876, 36.318336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058993, -0.036342, -0.997597,
		-0.795598, -0.601886, 0.068974,
		-0.602946, 0.797755, 0.006593,
		41.116436, 34.798203, 36.320312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151867, 34.201515, 35.688423>,  <41.538498, 34.239773, 36.315701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151867, 34.201515, 35.688423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070797, 34.581539, 35.783337>,  <41.022156, 34.809555, 35.840286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070797, 34.581539, 35.783337>,  <41.151867, 34.201515, 35.688423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070797, 34.581539, 35.783337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046155, 0.251314, -0.966805,
		-0.978158, -0.184996, -0.094786,
		-0.202676, 0.950062, 0.237286,
		41.009995, 34.866558, 35.854523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681396, 34.391548, 35.233143>,  <41.151867, 34.201515, 35.688423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681396, 34.391548, 35.233143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.846657, 34.725964, 35.377560>,  <40.945812, 34.926613, 35.464211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.846657, 34.725964, 35.377560>,  <40.681396, 34.391548, 35.233143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846657, 34.725964, 35.377560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007356, 0.399507, -0.916701,
		-0.910635, 0.376076, 0.171205,
		0.413147, 0.836039, 0.361038,
		40.970600, 34.976776, 35.485870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294537, 34.859238, 34.992638>,  <40.681396, 34.391548, 35.233143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294537, 34.859238, 34.992638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.636036, 35.057064, 35.057785>,  <40.840935, 35.175758, 35.096874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.636036, 35.057064, 35.057785>,  <40.294537, 34.859238, 34.992638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636036, 35.057064, 35.057785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000964, 0.314292, -0.949326,
		-0.520690, 0.810326, 0.268802,
		0.853745, 0.494564, 0.162867,
		40.892159, 35.205433, 35.106644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300903, 35.511581, 34.669296>,  <40.294537, 34.859238, 34.992638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300903, 35.511581, 34.669296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.693649, 35.454788, 34.719536>,  <40.929298, 35.420712, 34.749680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.693649, 35.454788, 34.719536>,  <40.300903, 35.511581, 34.669296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693649, 35.454788, 34.719536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169295, 0.358728, -0.917962,
		0.085276, 0.922581, 0.376260,
		0.981869, -0.141979, 0.125597,
		40.988209, 35.412193, 34.757214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563534, 36.050945, 34.365231>,  <40.300903, 35.511581, 34.669296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563534, 36.050945, 34.365231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.888535, 35.817764, 34.364273>,  <41.083534, 35.677856, 34.363697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.888535, 35.817764, 34.364273>,  <40.563534, 36.050945, 34.365231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888535, 35.817764, 34.364273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223927, 0.315893, -0.921991,
		0.538233, 0.748584, 0.387203,
		0.812503, -0.582952, -0.002396,
		41.132286, 35.642879, 34.363556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088501, 36.527931, 34.006924>,  <40.563534, 36.050945, 34.365231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088501, 36.527931, 34.006924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.170864, 36.136501, 34.006721>,  <41.220284, 35.901646, 34.006599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.170864, 36.136501, 34.006721>,  <41.088501, 36.527931, 34.006924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170864, 36.136501, 34.006721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284800, 0.060423, -0.956681,
		0.936211, 0.196843, 0.291139,
		0.205908, -0.978571, -0.000508,
		41.232635, 35.842930, 34.006569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388523, 37.078159, 34.453758>,  <41.088501, 36.527931, 34.006924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388523, 37.078159, 34.453758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.239067, 37.447376, 34.417114>,  <41.149395, 37.668907, 34.395130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.239067, 37.447376, 34.417114>,  <41.388523, 37.078159, 34.453758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239067, 37.447376, 34.417114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678334, -0.204548, 0.705708,
		0.632657, 0.325822, 0.702556,
		-0.373641, 0.923039, -0.091607,
		41.126976, 37.724289, 34.389633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350544, 37.395878, 35.134933>,  <41.388523, 37.078159, 34.453758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350544, 37.395878, 35.134933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070873, 37.544510, 34.890614>,  <40.903069, 37.633690, 34.744022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070873, 37.544510, 34.890614>,  <41.350544, 37.395878, 35.134933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070873, 37.544510, 34.890614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701407, -0.191023, 0.686686,
		0.138481, 0.908537, 0.394187,
		-0.699179, 0.371579, -0.610801,
		40.861118, 37.655983, 34.707375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885014, 37.778233, 35.644890>,  <41.350544, 37.395878, 35.134933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885014, 37.778233, 35.644890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.655666, 37.744194, 35.318943>,  <40.518059, 37.723770, 35.123375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.655666, 37.744194, 35.318943>,  <40.885014, 37.778233, 35.644890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655666, 37.744194, 35.318943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817391, -0.008456, 0.576021,
		-0.055905, 0.996337, -0.064705,
		-0.573364, -0.085092, -0.814870,
		40.483658, 37.718666, 35.074482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434990, 38.166939, 35.836048>,  <40.885014, 37.778233, 35.644890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434990, 38.166939, 35.836048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.263844, 37.936195, 35.557720>,  <40.161156, 37.797749, 35.390724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.263844, 37.936195, 35.557720>,  <40.434990, 38.166939, 35.836048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263844, 37.936195, 35.557720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863151, 0.032388, 0.503906,
		-0.268145, 0.816203, -0.511772,
		-0.427865, -0.576856, -0.695822,
		40.135483, 37.763138, 35.348972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750160, 38.413101, 35.807629>,  <40.434990, 38.166939, 35.836048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750160, 38.413101, 35.807629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.738815, 38.056450, 35.626881>,  <39.732010, 37.842457, 35.518433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.738815, 38.056450, 35.626881>,  <39.750160, 38.413101, 35.807629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738815, 38.056450, 35.626881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909998, -0.164031, 0.380785,
		-0.413641, 0.422004, -0.806731,
		-0.028364, -0.891631, -0.451872,
		39.730305, 37.788960, 35.491318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212933, 38.426235, 35.291359>,  <39.750160, 38.413101, 35.807629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212933, 38.426235, 35.291359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.287830, 38.055561, 35.421707>,  <39.332771, 37.833157, 35.499916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.287830, 38.055561, 35.421707>,  <39.212933, 38.426235, 35.291359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287830, 38.055561, 35.421707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937516, -0.069549, 0.340920,
		-0.293261, -0.369350, -0.881804,
		0.187247, -0.926684, 0.325875,
		39.344006, 37.777557, 35.519470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657379, 37.989765, 35.033661>,  <39.212933, 38.426235, 35.291359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657379, 37.989765, 35.033661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.842712, 37.771584, 35.313030>,  <38.953911, 37.640675, 35.480652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.842712, 37.771584, 35.313030>,  <38.657379, 37.989765, 35.033661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842712, 37.771584, 35.313030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877286, -0.170919, 0.448505,
		-0.125262, -0.820530, -0.557709,
		0.463334, -0.545451, 0.698430,
		38.981712, 37.607948, 35.522560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225975, 37.444195, 35.120926>,  <38.657379, 37.989765, 35.033661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225975, 37.444195, 35.120926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.442795, 37.442001, 35.457058>,  <38.572887, 37.440685, 35.658737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.442795, 37.442001, 35.457058>,  <38.225975, 37.444195, 35.120926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442795, 37.442001, 35.457058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821079, -0.216380, 0.528213,
		0.178933, -0.976294, -0.121792,
		0.542045, -0.005485, 0.840332,
		38.605408, 37.440357, 35.709156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860107, 37.048206, 35.498520>,  <38.225975, 37.444195, 35.120926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860107, 37.048206, 35.498520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.096764, 37.202274, 35.781818>,  <38.238758, 37.294716, 35.951797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.096764, 37.202274, 35.781818>,  <37.860107, 37.048206, 35.498520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096764, 37.202274, 35.781818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694355, -0.202969, 0.690417,
		0.409680, -0.900248, 0.147362,
		0.591637, 0.385171, 0.708244,
		38.274254, 37.317825, 35.994293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040874, 36.521446, 35.975552>,  <37.860107, 37.048206, 35.498520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040874, 36.521446, 35.975552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.062031, 36.873127, 36.164951>,  <38.074726, 37.084137, 36.278591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.062031, 36.873127, 36.164951>,  <38.040874, 36.521446, 35.975552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062031, 36.873127, 36.164951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680050, -0.315508, 0.661806,
		0.731255, -0.357010, 0.581214,
		0.052894, 0.879203, 0.473501,
		38.077900, 37.136887, 36.307003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025215, 36.364582, 36.765556>,  <38.040874, 36.521446, 35.975552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025215, 36.364582, 36.765556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.955349, 36.755863, 36.720623>,  <37.913429, 36.990631, 36.693661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.955349, 36.755863, 36.720623>,  <38.025215, 36.364582, 36.765556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955349, 36.755863, 36.720623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753642, -0.059398, 0.654596,
		0.633652, 0.198998, 0.747587,
		-0.174668, 0.978198, -0.112336,
		37.902950, 37.049324, 36.686924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041538, 36.693787, 37.420929>,  <38.025215, 36.364582, 36.765556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041538, 36.693787, 37.420929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.828693, 36.920109, 37.168983>,  <37.700985, 37.055901, 37.017818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.828693, 36.920109, 37.168983>,  <38.041538, 36.693787, 37.420929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828693, 36.920109, 37.168983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830802, -0.205555, 0.517219,
		0.163173, 0.798508, 0.579448,
		-0.532111, 0.565803, -0.629861,
		37.669060, 37.089851, 36.980026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.395504, 37.868053, 31.483242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049873, 37.975887, 31.313206>,  <42.842495, 38.040588, 31.211184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049873, 37.975887, 31.313206>,  <43.395504, 37.868053, 31.483242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049873, 37.975887, 31.313206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322548, 0.351805, 0.878747,
		0.386441, 0.896415, -0.217033,
		-0.864075, 0.269580, -0.425089,
		42.790649, 38.056763, 31.185678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194393, 38.564724, 31.833168>,  <43.395504, 37.868053, 31.483242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194393, 38.564724, 31.833168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861595, 38.428062, 31.658329>,  <42.661915, 38.346066, 31.553425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861595, 38.428062, 31.658329>,  <43.194393, 38.564724, 31.833168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861595, 38.428062, 31.658329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537915, 0.303993, 0.786280,
		-0.135765, 0.889302, -0.436703,
		-0.831995, -0.341658, -0.437097,
		42.611996, 38.325565, 31.527201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687393, 39.025112, 31.855289>,  <43.194393, 38.564724, 31.833168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687393, 39.025112, 31.855289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460758, 38.700169, 31.800064>,  <42.324780, 38.505203, 31.766928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460758, 38.700169, 31.800064>,  <42.687393, 39.025112, 31.855289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460758, 38.700169, 31.800064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506524, 0.211203, 0.835959,
		-0.649935, 0.543575, -0.531141,
		-0.566585, -0.812354, -0.138065,
		42.290783, 38.456463, 31.758644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979748, 39.234684, 31.991709>,  <42.687393, 39.025112, 31.855289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979748, 39.234684, 31.991709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989044, 38.837727, 32.040066>,  <41.994621, 38.599552, 32.069080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989044, 38.837727, 32.040066>,  <41.979748, 39.234684, 31.991709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989044, 38.837727, 32.040066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508375, 0.092392, 0.856165,
		-0.860822, -0.081359, -0.502360,
		0.023243, -0.992393, 0.120894,
		41.996017, 38.540009, 32.076336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326847, 39.041039, 32.067814>,  <41.979748, 39.234684, 31.991709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326847, 39.041039, 32.067814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514565, 38.729893, 32.234997>,  <41.627197, 38.543205, 32.335308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514565, 38.729893, 32.234997>,  <41.326847, 39.041039, 32.067814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514565, 38.729893, 32.234997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684455, -0.021378, 0.728742,
		-0.557927, -0.628070, -0.542445,
		0.469297, -0.777863, 0.417958,
		41.655354, 38.496532, 32.360386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880642, 38.791420, 32.511841>,  <41.326847, 39.041039, 32.067814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880642, 38.791420, 32.511841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201813, 38.584023, 32.629467>,  <41.394516, 38.459583, 32.700043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201813, 38.584023, 32.629467>,  <40.880642, 38.791420, 32.511841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201813, 38.584023, 32.629467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467137, -0.240899, 0.850736,
		-0.370259, -0.820448, -0.435630,
		0.802927, -0.518491, 0.294066,
		41.442692, 38.428474, 32.717686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637497, 38.121243, 32.708542>,  <40.880642, 38.791420, 32.511841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637497, 38.121243, 32.708542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982605, 38.163116, 32.906395>,  <41.189671, 38.188240, 33.025108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982605, 38.163116, 32.906395>,  <40.637497, 38.121243, 32.708542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982605, 38.163116, 32.906395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423605, -0.384410, 0.820236,
		0.276012, -0.917207, -0.287312,
		0.862772, 0.104688, 0.494636,
		41.241436, 38.194523, 33.054787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806099, 37.458645, 32.939526>,  <40.637497, 38.121243, 32.708542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806099, 37.458645, 32.939526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001709, 37.709206, 33.182335>,  <41.119076, 37.859543, 33.328018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001709, 37.709206, 33.182335>,  <40.806099, 37.458645, 32.939526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001709, 37.709206, 33.182335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399393, -0.457873, 0.794253,
		0.775461, -0.630848, 0.026271,
		0.489024, 0.626405, 0.607019,
		41.148415, 37.897125, 33.364441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242802, 37.091473, 33.403488>,  <40.806099, 37.458645, 32.939526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242802, 37.091473, 33.403488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163204, 37.442188, 33.578594>,  <41.115444, 37.652618, 33.683659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163204, 37.442188, 33.578594>,  <41.242802, 37.091473, 33.403488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163204, 37.442188, 33.578594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478213, -0.476782, 0.737558,
		0.855403, -0.062576, 0.514170,
		-0.198994, 0.876792, 0.437765,
		41.103508, 37.705227, 33.709923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681129, 36.431408, 33.492405>,  <41.242802, 37.091473, 33.403488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681129, 36.431408, 33.492405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552139, 36.055435, 33.537197>,  <41.474747, 35.829853, 33.564072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552139, 36.055435, 33.537197>,  <41.681129, 36.431408, 33.492405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552139, 36.055435, 33.537197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116723, -0.156884, -0.980695,
		0.939353, -0.303181, 0.160302,
		-0.322476, -0.939930, 0.111981,
		41.455395, 35.773457, 33.570793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231773, 35.959602, 33.180340>,  <41.681129, 36.431408, 33.492405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231773, 35.959602, 33.180340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865944, 35.798016, 33.188030>,  <41.646446, 35.701065, 33.192646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865944, 35.798016, 33.188030>,  <42.231773, 35.959602, 33.180340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865944, 35.798016, 33.188030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196037, -0.484405, -0.852597,
		0.353733, -0.775992, 0.522216,
		-0.914572, -0.403965, 0.019227,
		41.591572, 35.676826, 33.193798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346958, 35.279423, 33.038425>,  <42.231773, 35.959602, 33.180340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346958, 35.279423, 33.038425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959702, 35.332024, 32.953190>,  <41.727348, 35.363586, 32.902050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959702, 35.332024, 32.953190>,  <42.346958, 35.279423, 33.038425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959702, 35.332024, 32.953190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156024, -0.348772, -0.924129,
		-0.195845, -0.927936, 0.317143,
		-0.968144, 0.131505, -0.213085,
		41.669258, 35.371475, 32.889263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246395, 34.705627, 32.705257>,  <42.346958, 35.279423, 33.038425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246395, 34.705627, 32.705257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963146, 34.961895, 32.586529>,  <41.793198, 35.115654, 32.515289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963146, 34.961895, 32.586529>,  <42.246395, 34.705627, 32.705257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963146, 34.961895, 32.586529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008391, -0.427987, -0.903746,
		-0.706038, -0.637474, 0.308444,
		-0.708124, 0.640667, -0.296825,
		41.750710, 35.154095, 32.497482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723438, 34.329353, 32.282715>,  <42.246395, 34.705627, 32.705257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723438, 34.329353, 32.282715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652336, 34.716103, 32.209446>,  <41.609676, 34.948154, 32.165485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652336, 34.716103, 32.209446>,  <41.723438, 34.329353, 32.282715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652336, 34.716103, 32.209446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151358, -0.210780, -0.965744,
		-0.972365, -0.143940, 0.183812,
		-0.177753, 0.966878, -0.183169,
		41.599010, 35.006165, 32.154495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282108, 34.309883, 31.715460>,  <41.723438, 34.329353, 32.282715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282108, 34.309883, 31.715460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415298, 34.686878, 31.703920>,  <41.495213, 34.913078, 31.696997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415298, 34.686878, 31.703920>,  <41.282108, 34.309883, 31.715460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415298, 34.686878, 31.703920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175722, -0.092082, -0.980124,
		-0.926416, 0.321292, -0.196278,
		0.332980, 0.942492, -0.028847,
		41.515194, 34.969627, 31.695267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040047, 34.549236, 31.074120>,  <41.282108, 34.309883, 31.715460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040047, 34.549236, 31.074120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335571, 34.806076, 31.155962>,  <41.512886, 34.960182, 31.205067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335571, 34.806076, 31.155962>,  <41.040047, 34.549236, 31.074120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335571, 34.806076, 31.155962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404145, -0.179193, -0.896971,
		-0.539284, 0.745381, -0.391892,
		0.738810, 0.642103, 0.204606,
		41.557213, 34.998707, 31.217344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181675, 34.884766, 30.490591>,  <41.040047, 34.549236, 31.074120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181675, 34.884766, 30.490591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516567, 34.960411, 30.695837>,  <41.717503, 35.005798, 30.818985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516567, 34.960411, 30.695837>,  <41.181675, 34.884766, 30.490591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516567, 34.960411, 30.695837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542919, -0.175054, -0.821337,
		-0.065503, 0.966226, -0.249233,
		0.837226, 0.189113, 0.513116,
		41.767735, 35.017143, 30.849771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628197, 35.236248, 30.093390>,  <41.181675, 34.884766, 30.490591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628197, 35.236248, 30.093390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872101, 35.064304, 30.359745>,  <42.018444, 34.961136, 30.519558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872101, 35.064304, 30.359745>,  <41.628197, 35.236248, 30.093390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872101, 35.064304, 30.359745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593890, -0.308561, -0.743024,
		0.524866, 0.848532, 0.067143,
		0.609762, -0.429864, 0.665888,
		42.055031, 34.935345, 30.559511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264248, 35.450943, 29.837107>,  <41.628197, 35.236248, 30.093390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264248, 35.450943, 29.837107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371376, 35.145615, 30.072262>,  <42.435654, 34.962418, 30.213354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371376, 35.145615, 30.072262>,  <42.264248, 35.450943, 29.837107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371376, 35.145615, 30.072262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743622, -0.224213, -0.629885,
		0.612618, 0.605859, 0.507576,
		0.267816, -0.763324, 0.587887,
		42.451721, 34.916618, 30.248629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951759, 35.514946, 29.955032>,  <42.264248, 35.450943, 29.837107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951759, 35.514946, 29.955032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888920, 35.130600, 30.046297>,  <42.851215, 34.899994, 30.101055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888920, 35.130600, 30.046297>,  <42.951759, 35.514946, 29.955032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888920, 35.130600, 30.046297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875001, -0.242548, -0.418980,
		0.457924, 0.133819, 0.878862,
		-0.157098, -0.960866, 0.228160,
		42.841789, 34.842339, 30.114744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.643494, 35.093227, 30.281284>,  <42.951759, 35.514946, 29.955032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.643494, 35.093227, 30.281284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398392, 34.851280, 30.077845>,  <43.251331, 34.706112, 29.955780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398392, 34.851280, 30.077845>,  <43.643494, 35.093227, 30.281284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398392, 34.851280, 30.077845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775803, -0.337803, -0.532935,
		0.150547, -0.721130, 0.676245,
		-0.612752, -0.604864, -0.508599,
		43.214565, 34.669823, 29.925264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197350, 34.593006, 30.043926>,  <43.643494, 35.093227, 30.281284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197350, 34.593006, 30.043926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856327, 34.468105, 29.876286>,  <43.651714, 34.393166, 29.775702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856327, 34.468105, 29.876286>,  <44.197350, 34.593006, 30.043926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856327, 34.468105, 29.876286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522100, -0.472401, -0.710105,
		0.023750, -0.824217, 0.565776,
		-0.852554, -0.312257, -0.419104,
		43.600559, 34.374428, 29.750555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291187, 33.896339, 30.026371>,  <44.197350, 34.593006, 30.043926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291187, 33.896339, 30.026371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016037, 34.007755, 29.758270>,  <43.850948, 34.074604, 29.597410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016037, 34.007755, 29.758270>,  <44.291187, 33.896339, 30.026371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016037, 34.007755, 29.758270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449922, -0.560984, -0.694887,
		-0.569568, -0.779553, 0.260555,
		-0.687868, 0.278556, -0.670256,
		43.809673, 34.091320, 29.557194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.331940, 37.428059, 25.791851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.607948, 37.486263, 26.075455>,  <37.773552, 37.521187, 26.245617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.607948, 37.486263, 26.075455>,  <37.331940, 37.428059, 25.791851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607948, 37.486263, 26.075455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618616, -0.389972, 0.682082,
		0.375746, -0.909257, -0.179072,
		0.690021, 0.145513, 0.709012,
		37.814953, 37.529919, 26.288158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116249, 36.926632, 26.283323>,  <37.331940, 37.428059, 25.791851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116249, 36.926632, 26.283323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.388508, 37.113804, 26.508806>,  <37.551865, 37.226105, 26.644096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.388508, 37.113804, 26.508806>,  <37.116249, 36.926632, 26.283323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388508, 37.113804, 26.508806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389046, -0.421127, 0.819326,
		0.620778, -0.776978, -0.104593,
		0.680646, 0.467928, 0.563707,
		37.592701, 37.254181, 26.677917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261223, 36.444046, 26.739410>,  <37.116249, 36.926632, 26.283323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261223, 36.444046, 26.739410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.359154, 36.797550, 26.898926>,  <37.417912, 37.009651, 26.994635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.359154, 36.797550, 26.898926>,  <37.261223, 36.444046, 26.739410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359154, 36.797550, 26.898926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434989, -0.267469, 0.859794,
		0.866513, -0.383967, 0.318942,
		0.244825, 0.883759, 0.398786,
		37.432602, 37.062679, 27.018562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379765, 36.229790, 27.391537>,  <37.261223, 36.444046, 26.739410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379765, 36.229790, 27.391537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.332344, 36.626835, 27.401829>,  <37.303890, 36.865063, 27.408005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.332344, 36.626835, 27.401829>,  <37.379765, 36.229790, 27.391537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332344, 36.626835, 27.401829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440702, -0.075822, 0.894446,
		0.889790, 0.094701, 0.446436,
		-0.118554, 0.992614, 0.025731,
		37.296780, 36.924618, 27.409548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571465, 36.389530, 27.991161>,  <37.379765, 36.229790, 27.391537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571465, 36.389530, 27.991161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382183, 36.733913, 27.916512>,  <37.268616, 36.940544, 27.871721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382183, 36.733913, 27.916512>,  <37.571465, 36.389530, 27.991161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382183, 36.733913, 27.916512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379474, -0.008025, 0.925167,
		0.795035, 0.508609, 0.330510,
		-0.473201, 0.860960, -0.186623,
		37.240223, 36.992203, 27.860525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832806, 36.799603, 28.538464>,  <37.571465, 36.389530, 27.991161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832806, 36.799603, 28.538464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.486065, 36.941818, 28.398663>,  <37.278019, 37.027149, 28.314781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.486065, 36.941818, 28.398663>,  <37.832806, 36.799603, 28.538464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486065, 36.941818, 28.398663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409784, -0.108815, 0.905669,
		0.283969, 0.928306, 0.240021,
		-0.866856, 0.355538, -0.349505,
		37.226009, 37.048481, 28.293812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603931, 37.383881, 29.016460>,  <37.832806, 36.799603, 28.538464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603931, 37.383881, 29.016460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.287514, 37.270767, 28.799471>,  <37.097664, 37.202900, 28.669277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.287514, 37.270767, 28.799471>,  <37.603931, 37.383881, 29.016460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287514, 37.270767, 28.799471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566362, 0.003327, 0.824150,
		-0.231254, 0.959177, -0.162791,
		-0.791047, -0.282787, -0.542472,
		37.050201, 37.185932, 28.636730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183586, 37.797428, 29.237007>,  <37.603931, 37.383881, 29.016460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183586, 37.797428, 29.237007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.985256, 37.481049, 29.093582>,  <36.866261, 37.291222, 29.007528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.985256, 37.481049, 29.093582>,  <37.183586, 37.797428, 29.237007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985256, 37.481049, 29.093582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516334, -0.063484, 0.854031,
		-0.698254, 0.608586, -0.376914,
		-0.495823, -0.790945, -0.358562,
		36.836510, 37.243767, 28.986013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555027, 37.987507, 29.413654>,  <37.183586, 37.797428, 29.237007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555027, 37.987507, 29.413654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.555748, 37.589520, 29.373581>,  <36.556183, 37.350727, 29.349537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.555748, 37.589520, 29.373581>,  <36.555027, 37.987507, 29.413654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555748, 37.589520, 29.373581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539988, -0.085292, 0.837340,
		-0.841671, 0.052587, -0.537425,
		0.001805, -0.994967, -0.100184,
		36.556290, 37.291031, 29.343525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889931, 37.824547, 29.605013>,  <36.555027, 37.987507, 29.413654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889931, 37.824547, 29.605013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.103374, 37.489040, 29.648346>,  <36.231441, 37.287735, 29.674345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.103374, 37.489040, 29.648346>,  <35.889931, 37.824547, 29.605013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103374, 37.489040, 29.648346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498193, -0.208230, 0.841691,
		-0.683425, -0.503100, -0.528981,
		0.533605, -0.838767, 0.108331,
		36.263454, 37.237411, 29.680845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357773, 37.388126, 29.848978>,  <35.889931, 37.824547, 29.605013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357773, 37.388126, 29.848978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.700134, 37.212440, 29.958174>,  <35.905552, 37.107029, 30.023691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.700134, 37.212440, 29.958174>,  <35.357773, 37.388126, 29.848978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700134, 37.212440, 29.958174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331039, -0.059776, 0.941722,
		-0.397303, -0.896389, -0.196561,
		0.855899, -0.439219, 0.272991,
		35.956905, 37.080673, 30.040071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178150, 36.742653, 30.334574>,  <35.357773, 37.388126, 29.848978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178150, 36.742653, 30.334574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.560307, 36.854618, 30.372265>,  <35.789600, 36.921795, 30.394880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.560307, 36.854618, 30.372265>,  <35.178150, 36.742653, 30.334574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560307, 36.854618, 30.372265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080884, -0.058875, 0.994983,
		0.284053, -0.958219, -0.033608,
		0.955391, 0.279910, 0.094228,
		35.846924, 36.938591, 30.400534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343563, 36.396374, 30.951969>,  <35.178150, 36.742653, 30.334574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343563, 36.396374, 30.951969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.610924, 36.691982, 30.918297>,  <35.771339, 36.869347, 30.898094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.610924, 36.691982, 30.918297>,  <35.343563, 36.396374, 30.951969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610924, 36.691982, 30.918297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050906, 0.067459, 0.996423,
		0.742055, -0.670297, 0.007469,
		0.668403, 0.739020, -0.084180,
		35.811443, 36.913689, 30.893044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867718, 36.110325, 31.466759>,  <35.343563, 36.396374, 30.951969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867718, 36.110325, 31.466759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.934628, 36.499294, 31.401754>,  <35.974773, 36.732677, 31.362751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.934628, 36.499294, 31.401754>,  <35.867718, 36.110325, 31.466759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934628, 36.499294, 31.401754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016576, 0.162036, 0.986646,
		0.985770, -0.167738, 0.010987,
		0.167278, 0.972424, -0.162511,
		35.984810, 36.791023, 31.353001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661751, 35.892914, 31.344881>,  <35.867718, 36.110325, 31.466759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661751, 35.892914, 31.344881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.858452, 35.585121, 31.507887>,  <36.976475, 35.400444, 31.605690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.858452, 35.585121, 31.507887>,  <36.661751, 35.892914, 31.344881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858452, 35.585121, 31.507887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640461, 0.002581, -0.767986,
		0.589902, 0.638660, 0.494094,
		0.491757, -0.769485, 0.407515,
		37.005978, 35.354275, 31.630142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400784, 36.074509, 31.460911>,  <36.661751, 35.892914, 31.344881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400784, 36.074509, 31.460911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.393730, 35.674599, 31.456171>,  <37.389500, 35.434654, 31.453327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.393730, 35.674599, 31.456171>,  <37.400784, 36.074509, 31.460911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393730, 35.674599, 31.456171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669525, -0.003001, -0.742784,
		0.742581, -0.021030, 0.669426,
		-0.017629, -0.999775, -0.011851,
		37.388443, 35.374668, 31.452616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129410, 35.840233, 31.398333>,  <37.400784, 36.074509, 31.460911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129410, 35.840233, 31.398333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.933178, 35.505688, 31.300493>,  <37.815437, 35.304962, 31.241789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.933178, 35.505688, 31.300493>,  <38.129410, 35.840233, 31.398333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933178, 35.505688, 31.300493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634094, -0.150097, -0.758548,
		0.597707, -0.527228, 0.603968,
		-0.490582, -0.836362, -0.244598,
		37.786003, 35.254780, 31.227114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650620, 35.261639, 31.253172>,  <38.129410, 35.840233, 31.398333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650620, 35.261639, 31.253172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.314621, 35.180534, 31.051861>,  <38.113022, 35.131870, 30.931074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.314621, 35.180534, 31.051861>,  <38.650620, 35.261639, 31.253172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314621, 35.180534, 31.051861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537521, -0.184485, -0.822822,
		0.073988, -0.961693, 0.263955,
		-0.839998, -0.202761, -0.503280,
		38.062622, 35.119705, 30.900877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878647, 34.760948, 30.708374>,  <38.650620, 35.261639, 31.253172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878647, 34.760948, 30.708374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.533634, 34.886475, 30.549603>,  <38.326626, 34.961792, 30.454340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.533634, 34.886475, 30.549603>,  <38.878647, 34.760948, 30.708374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533634, 34.886475, 30.549603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298605, -0.317609, -0.899978,
		-0.408502, -0.894785, 0.180238,
		-0.862532, 0.313822, -0.396931,
		38.274876, 34.980621, 30.430523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724548, 34.258434, 30.231905>,  <38.878647, 34.760948, 30.708374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724548, 34.258434, 30.231905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.474682, 34.551506, 30.123848>,  <38.324764, 34.727348, 30.059013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.474682, 34.551506, 30.123848>,  <38.724548, 34.258434, 30.231905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474682, 34.551506, 30.123848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199181, -0.185005, -0.962341,
		-0.755066, -0.654946, -0.030371,
		-0.624662, 0.732680, -0.270144,
		38.287285, 34.771309, 30.042805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281597, 33.995251, 29.698408>,  <38.724548, 34.258434, 30.231905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281597, 33.995251, 29.698408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.263721, 34.393337, 29.663660>,  <38.252995, 34.632191, 29.642811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.263721, 34.393337, 29.663660>,  <38.281597, 33.995251, 29.698408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263721, 34.393337, 29.663660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270079, -0.071681, -0.960166,
		-0.961800, -0.066374, -0.265583,
		-0.044693, 0.995217, -0.086869,
		38.250313, 34.691902, 29.637600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818111, 34.127838, 29.109703>,  <38.281597, 33.995251, 29.698408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818111, 34.127838, 29.109703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077621, 34.426037, 29.170784>,  <38.233330, 34.604958, 29.207432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077621, 34.426037, 29.170784>,  <37.818111, 34.127838, 29.109703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077621, 34.426037, 29.170784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421436, -0.184908, -0.887807,
		-0.633622, 0.640345, -0.434144,
		0.648780, 0.745498, 0.152702,
		38.272255, 34.649685, 29.216595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905781, 34.364967, 28.476486>,  <37.818111, 34.127838, 29.109703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905781, 34.364967, 28.476486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.204552, 34.548130, 28.669327>,  <38.383812, 34.658028, 28.785032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.204552, 34.548130, 28.669327>,  <37.905781, 34.364967, 28.476486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204552, 34.548130, 28.669327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516598, 0.056824, -0.854340,
		-0.418605, 0.887182, -0.194111,
		0.746925, 0.457908, 0.482103,
		38.428631, 34.685501, 28.813957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076241, 35.117805, 28.257607>,  <37.905781, 34.364967, 28.476486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076241, 35.117805, 28.257607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.424419, 35.000923, 28.416067>,  <38.633327, 34.930794, 28.511143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.424419, 35.000923, 28.416067>,  <38.076241, 35.117805, 28.257607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424419, 35.000923, 28.416067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455830, 0.174639, -0.872766,
		0.185841, 0.940276, 0.285209,
		0.870450, -0.292202, 0.396151,
		38.685555, 34.913261, 28.534912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588051, 35.695229, 27.972137>,  <38.076241, 35.117805, 28.257607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588051, 35.695229, 27.972137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.786339, 35.361275, 28.067822>,  <38.905312, 35.160900, 28.125233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.786339, 35.361275, 28.067822>,  <38.588051, 35.695229, 27.972137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786339, 35.361275, 28.067822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591997, 0.123302, -0.796452,
		0.635454, 0.536429, 0.555376,
		0.495719, -0.834889, 0.239212,
		38.935055, 35.110809, 28.139585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295364, 35.932232, 27.928205>,  <38.588051, 35.695229, 27.972137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295364, 35.932232, 27.928205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.323582, 35.533749, 27.907829>,  <39.340511, 35.294659, 27.895603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.323582, 35.533749, 27.907829>,  <39.295364, 35.932232, 27.928205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323582, 35.533749, 27.907829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704553, 0.085913, -0.704432,
		0.706136, 0.013805, 0.707942,
		0.070546, -0.996207, -0.050940,
		39.344746, 35.234886, 27.892548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959026, 35.843353, 28.007494>,  <39.295364, 35.932232, 27.928205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959026, 35.843353, 28.007494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.793961, 35.532177, 27.817961>,  <39.694920, 35.345470, 27.704241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.793961, 35.532177, 27.817961>,  <39.959026, 35.843353, 28.007494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793961, 35.532177, 27.817961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730941, 0.027592, -0.681883,
		0.543539, -0.627731, 0.557243,
		-0.412663, -0.777941, -0.473832,
		39.670162, 35.298794, 27.675812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556160, 35.539238, 27.675869>,  <39.959026, 35.843353, 28.007494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556160, 35.539238, 27.675869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.248505, 35.375610, 27.479467>,  <40.063911, 35.277431, 27.361626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.248505, 35.375610, 27.479467>,  <40.556160, 35.539238, 27.675869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248505, 35.375610, 27.479467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493295, 0.108447, -0.863076,
		0.406309, -0.906035, 0.118383,
		-0.769138, -0.409073, -0.491005,
		40.017761, 35.252888, 27.332167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617897, 34.688988, 27.828173>,  <40.556160, 35.539238, 27.675869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617897, 34.688988, 27.828173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.787235, 34.326740, 27.838221>,  <40.888840, 34.109390, 27.844250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.787235, 34.326740, 27.838221>,  <40.617897, 34.688988, 27.828173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787235, 34.326740, 27.838221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629882, -0.274294, 0.726644,
		-0.651172, -0.323447, -0.686555,
		0.423349, -0.905618, 0.025121,
		40.914242, 34.055054, 27.845757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080570, 34.209793, 27.830933>,  <40.617897, 34.688988, 27.828173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080570, 34.209793, 27.830933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.404922, 34.049179, 28.001219>,  <40.599533, 33.952808, 28.103390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.404922, 34.049179, 28.001219>,  <40.080570, 34.209793, 27.830933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404922, 34.049179, 28.001219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563658, -0.340307, 0.752649,
		-0.157345, -0.850269, -0.502281,
		0.810883, -0.401540, 0.425715,
		40.648186, 33.928719, 28.128933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893436, 33.472210, 28.081179>,  <40.080570, 34.209793, 27.830933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893436, 33.472210, 28.081179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.205627, 33.606075, 28.292408>,  <40.392941, 33.686394, 28.419146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.205627, 33.606075, 28.292408>,  <39.893436, 33.472210, 28.081179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205627, 33.606075, 28.292408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380236, -0.416388, 0.825859,
		0.496264, -0.845355, -0.197731,
		0.780476, 0.334659, 0.528072,
		40.439770, 33.706474, 28.450830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016220, 32.901455, 28.563164>,  <39.893436, 33.472210, 28.081179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016220, 32.901455, 28.563164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.239117, 33.189384, 28.728737>,  <40.372856, 33.362141, 28.828081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.239117, 33.189384, 28.728737>,  <40.016220, 32.901455, 28.563164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239117, 33.189384, 28.728737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187700, -0.376405, 0.907242,
		0.808858, -0.583248, -0.074638,
		0.557241, 0.719820, 0.413934,
		40.406288, 33.405331, 28.852917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515244, 32.549122, 29.002558>,  <40.016220, 32.901455, 28.563164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515244, 32.549122, 29.002558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.483326, 32.929436, 29.122320>,  <40.464176, 33.157623, 29.194178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.483326, 32.929436, 29.122320>,  <40.515244, 32.549122, 29.002558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483326, 32.929436, 29.122320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029608, -0.297970, 0.954116,
		0.996372, 0.084993, -0.004376,
		-0.079789, 0.950784, 0.299406,
		40.459389, 33.214672, 29.212141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880325, 32.561981, 29.461103>,  <40.515244, 32.549122, 29.002558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880325, 32.561981, 29.461103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.668549, 32.889801, 29.548773>,  <40.541485, 33.086491, 29.601376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.668549, 32.889801, 29.548773>,  <40.880325, 32.561981, 29.461103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668549, 32.889801, 29.548773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035022, -0.279249, 0.959580,
		0.847625, 0.500362, 0.176548,
		-0.529438, 0.819547, 0.219175,
		40.509716, 33.135666, 29.614525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181049, 32.871162, 30.131573>,  <40.880325, 32.561981, 29.461103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181049, 32.871162, 30.131573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.811871, 33.021667, 30.099070>,  <40.590363, 33.111969, 30.079567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.811871, 33.021667, 30.099070>,  <41.181049, 32.871162, 30.131573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811871, 33.021667, 30.099070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210957, -0.317834, 0.924380,
		0.321982, 0.870293, 0.372717,
		-0.922943, 0.376261, -0.081257,
		40.534988, 33.134544, 30.074692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973515, 33.142063, 30.867487>,  <41.181049, 32.871162, 30.131573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973515, 33.142063, 30.867487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.636822, 33.118782, 30.652786>,  <40.434807, 33.104813, 30.523966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.636822, 33.118782, 30.652786>,  <40.973515, 33.142063, 30.867487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636822, 33.118782, 30.652786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539180, 0.039330, 0.841272,
		-0.027855, 0.997530, -0.064487,
		-0.841730, -0.058203, -0.536752,
		40.384304, 33.101322, 30.491760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633636, 33.678623, 31.135574>,  <40.973515, 33.142063, 30.867487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633636, 33.678623, 31.135574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.399628, 33.387024, 30.993414>,  <40.259224, 33.212063, 30.908117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.399628, 33.387024, 30.993414>,  <40.633636, 33.678623, 31.135574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399628, 33.387024, 30.993414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433547, -0.089235, 0.896702,
		-0.685409, 0.678673, -0.263851,
		-0.585022, -0.729000, -0.355399,
		40.224121, 33.168324, 30.886795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970768, 33.807648, 31.424311>,  <40.633636, 33.678623, 31.135574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970768, 33.807648, 31.424311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.958843, 33.423656, 31.312920>,  <39.951687, 33.193260, 31.246086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.958843, 33.423656, 31.312920>,  <39.970768, 33.807648, 31.424311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958843, 33.423656, 31.312920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423703, -0.240195, 0.873374,
		-0.905310, 0.144028, -0.399586,
		-0.029812, -0.959981, -0.278476,
		39.949902, 33.135662, 31.229378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347473, 33.583031, 31.592096>,  <39.970768, 33.807648, 31.424311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347473, 33.583031, 31.592096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.536686, 33.232010, 31.560720>,  <39.650211, 33.021397, 31.541895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.536686, 33.232010, 31.560720>,  <39.347473, 33.583031, 31.592096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536686, 33.232010, 31.560720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555753, -0.366277, 0.746311,
		-0.683655, -0.309433, -0.660959,
		0.473027, -0.877549, -0.078439,
		39.678593, 32.968746, 31.537189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813625, 33.143723, 31.756760>,  <39.347473, 33.583031, 31.592096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813625, 33.143723, 31.756760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.157768, 32.952480, 31.827406>,  <39.364254, 32.837734, 31.869793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.157768, 32.952480, 31.827406>,  <38.813625, 33.143723, 31.756760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157768, 32.952480, 31.827406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308933, -0.213569, 0.926795,
		-0.405387, -0.851940, -0.331450,
		0.860362, -0.478106, 0.176614,
		39.415878, 32.809048, 31.880390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597084, 32.475517, 31.973034>,  <38.813625, 33.143723, 31.756760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597084, 32.475517, 31.973034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.953712, 32.567471, 32.129108>,  <39.167690, 32.622643, 32.222752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.953712, 32.567471, 32.129108>,  <38.597084, 32.475517, 31.973034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953712, 32.567471, 32.129108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377976, -0.096850, 0.920736,
		0.249454, -0.968386, 0.000542,
		0.891575, 0.229886, 0.390186,
		39.221184, 32.636436, 32.246162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792252, 31.943159, 32.367645>,  <38.597084, 32.475517, 31.973034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792252, 31.943159, 32.367645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.016251, 32.230095, 32.533455>,  <39.150650, 32.402256, 32.632942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.016251, 32.230095, 32.533455>,  <38.792252, 31.943159, 32.367645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016251, 32.230095, 32.533455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385980, -0.216831, 0.896663,
		0.733092, -0.662125, 0.155454,
		0.559996, 0.717339, 0.414524,
		39.184250, 32.445297, 32.657810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.272472, 33.325832, 29.544897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.081276, 33.626244, 29.362700>,  <43.966557, 33.806492, 29.253380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.081276, 33.626244, 29.362700>,  <44.272472, 33.325832, 29.544897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081276, 33.626244, 29.362700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327464, -0.328818, -0.885802,
		-0.815040, -0.572566, -0.088763,
		-0.477993, 0.751031, -0.455495,
		43.937878, 33.851551, 29.226051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842010, 32.998985, 28.960028>,  <44.272472, 33.325832, 29.544897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842010, 32.998985, 28.960028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.925827, 33.383354, 28.887667>,  <43.976116, 33.613976, 28.844250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.925827, 33.383354, 28.887667>,  <43.842010, 32.998985, 28.960028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925827, 33.383354, 28.887667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308312, -0.240505, -0.920381,
		-0.927920, 0.137086, -0.346659,
		0.209544, 0.960919, -0.180904,
		43.988689, 33.671631, 28.833395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686020, 32.953796, 28.285622>,  <43.842010, 32.998985, 28.960028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686020, 32.953796, 28.285622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.911983, 33.280571, 28.332087>,  <44.047562, 33.476635, 28.359966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.911983, 33.280571, 28.332087>,  <43.686020, 32.953796, 28.285622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911983, 33.280571, 28.332087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385680, -0.136958, -0.912410,
		-0.729472, 0.560230, -0.392445,
		0.564909, 0.816936, 0.116163,
		44.081455, 33.525650, 28.366936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598011, 33.361305, 27.659157>,  <43.686020, 32.953796, 28.285622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598011, 33.361305, 27.659157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.927094, 33.493629, 27.844074>,  <44.124542, 33.573025, 27.955025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.927094, 33.493629, 27.844074>,  <43.598011, 33.361305, 27.659157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.927094, 33.493629, 27.844074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505704, -0.054462, -0.860986,
		-0.259647, 0.942124, -0.212099,
		0.822707, 0.330812, 0.462295,
		44.173904, 33.592873, 27.982763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781921, 33.966591, 27.301577>,  <43.598011, 33.361305, 27.659157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781921, 33.966591, 27.301577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.118626, 33.850002, 27.483339>,  <44.320648, 33.780048, 27.592398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.118626, 33.850002, 27.483339>,  <43.781921, 33.966591, 27.301577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118626, 33.850002, 27.483339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456671, -0.064462, -0.887297,
		0.287917, 0.954404, 0.078847,
		0.841757, -0.291475, 0.454408,
		44.371151, 33.762558, 27.619661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296364, 34.445332, 27.122225>,  <43.781921, 33.966591, 27.301577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296364, 34.445332, 27.122225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.509239, 34.131973, 27.250645>,  <44.636963, 33.943958, 27.327698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.509239, 34.131973, 27.250645>,  <44.296364, 34.445332, 27.122225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509239, 34.131973, 27.250645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620410, 0.102828, -0.777507,
		0.576079, 0.612963, 0.540748,
		0.532188, -0.783392, 0.321051,
		44.668896, 33.896957, 27.346960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.032177, 34.632988, 26.954159>,  <44.296364, 34.445332, 27.122225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.032177, 34.632988, 26.954159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.044258, 34.240204, 27.028831>,  <45.051506, 34.004536, 27.073635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.044258, 34.240204, 27.028831>,  <45.032177, 34.632988, 26.954159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044258, 34.240204, 27.028831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593993, -0.132574, -0.793471,
		0.803903, 0.134856, 0.579271,
		0.030208, -0.981956, 0.186680,
		45.053322, 33.945618, 27.084835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.752628, 34.367550, 27.022865>,  <45.032177, 34.632988, 26.954159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.752628, 34.367550, 27.022865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.525127, 34.058708, 26.909468>,  <45.388626, 33.873402, 26.841429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.525127, 34.058708, 26.909468>,  <45.752628, 34.367550, 27.022865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525127, 34.058708, 26.909468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597293, -0.150748, -0.787728,
		0.565475, -0.617352, 0.546914,
		-0.568752, -0.772108, -0.283496,
		45.354504, 33.827076, 26.824419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.211063, 33.867844, 26.713192>,  <45.752628, 34.367550, 27.022865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.211063, 33.867844, 26.713192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.846680, 33.778702, 26.574343>,  <45.628052, 33.725216, 26.491034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.846680, 33.778702, 26.574343>,  <46.211063, 33.867844, 26.713192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846680, 33.778702, 26.574343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371787, -0.079016, -0.924949,
		0.178702, -0.971644, 0.154835,
		-0.910956, -0.222856, -0.347125,
		45.573395, 33.711845, 26.470205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.380051, 33.238831, 26.368732>,  <46.211063, 33.867844, 26.713192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.380051, 33.238831, 26.368732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.049984, 33.404530, 26.215111>,  <45.851944, 33.503948, 26.122938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.049984, 33.404530, 26.215111>,  <46.380051, 33.238831, 26.368732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049984, 33.404530, 26.215111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314064, -0.228678, -0.921450,
		-0.469534, -0.880968, 0.058597,
		-0.825168, 0.414249, -0.384052,
		45.802433, 33.528805, 26.099895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243145, 32.837742, 25.728939>,  <46.380051, 33.238831, 26.368732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243145, 32.837742, 25.728939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.029327, 33.169125, 25.662102>,  <45.901039, 33.367954, 25.622000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.029327, 33.169125, 25.662102>,  <46.243145, 32.837742, 25.728939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.029327, 33.169125, 25.662102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242183, -0.039267, -0.969436,
		-0.809700, -0.558670, -0.179649,
		-0.534540, 0.828460, -0.167095,
		45.868965, 33.417664, 25.611973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.050846, 32.717567, 25.086628>,  <46.243145, 32.837742, 25.728939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.050846, 32.717567, 25.086628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.960857, 33.103981, 25.137493>,  <45.906864, 33.335831, 25.168013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.960857, 33.103981, 25.137493>,  <46.050846, 32.717567, 25.086628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960857, 33.103981, 25.137493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357206, 0.203191, -0.911656,
		-0.906528, -0.159670, -0.390784,
		-0.224968, 0.966033, 0.127163,
		45.893368, 33.393791, 25.175642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.543045, 33.060276, 24.590628>,  <46.050846, 32.717567, 25.086628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.543045, 33.060276, 24.590628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.852383, 33.277458, 24.721561>,  <46.037983, 33.407768, 24.800121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.852383, 33.277458, 24.721561>,  <45.543045, 33.060276, 24.590628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.852383, 33.277458, 24.721561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452582, -0.111223, -0.884759,
		-0.443975, 0.832366, -0.331744,
		0.773341, 0.542952, 0.327334,
		46.084385, 33.440342, 24.819761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743675, 33.434753, 23.977650>,  <45.543045, 33.060276, 24.590628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743675, 33.434753, 23.977650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.047630, 33.415070, 24.236923>,  <46.230003, 33.403259, 24.392488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.047630, 33.415070, 24.236923>,  <45.743675, 33.434753, 23.977650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.047630, 33.415070, 24.236923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619394, -0.247790, -0.744950,
		0.197271, 0.967563, -0.157814,
		0.759891, -0.049208, 0.648185,
		46.275597, 33.400307, 24.431379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.158920, 33.654247, 23.693701>,  <45.743675, 33.434753, 23.977650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.158920, 33.654247, 23.693701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.827259, 33.830635, 23.556263>,  <44.628262, 33.936466, 23.473801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.827259, 33.830635, 23.556263>,  <45.158920, 33.654247, 23.693701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827259, 33.830635, 23.556263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347340, 0.075210, 0.934718,
		0.438023, 0.894366, 0.090806,
		-0.829151, 0.440969, -0.343593,
		44.578514, 33.962925, 23.453186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.053490, 34.297672, 24.045252>,  <45.158920, 33.654247, 23.693701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.053490, 34.297672, 24.045252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.693493, 34.185028, 23.912155>,  <44.477497, 34.117443, 23.832296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.693493, 34.185028, 23.912155>,  <45.053490, 34.297672, 24.045252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693493, 34.185028, 23.912155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416027, 0.326960, 0.848539,
		-0.130162, 0.902105, -0.411417,
		-0.899988, -0.281608, -0.332743,
		44.423496, 34.100544, 23.812332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.466019, 34.873486, 24.253481>,  <45.053490, 34.297672, 24.045252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.466019, 34.873486, 24.253481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.264027, 34.539909, 24.164452>,  <44.142834, 34.339764, 24.111034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.264027, 34.539909, 24.164452>,  <44.466019, 34.873486, 24.253481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264027, 34.539909, 24.164452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597259, 0.151446, 0.787620,
		-0.623122, 0.530665, -0.574556,
		-0.504976, -0.833942, -0.222575,
		44.112534, 34.289726, 24.097679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830902, 35.112885, 24.463617>,  <44.466019, 34.873486, 24.253481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830902, 35.112885, 24.463617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.771145, 34.718513, 24.433622>,  <43.735291, 34.481892, 24.415625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.771145, 34.718513, 24.433622>,  <43.830902, 35.112885, 24.463617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771145, 34.718513, 24.433622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618619, 0.034036, 0.784953,
		-0.771357, 0.163659, -0.615000,
		-0.149396, -0.985930, -0.074989,
		43.726326, 34.422733, 24.411125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137032, 34.985775, 24.352678>,  <43.830902, 35.112885, 24.463617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137032, 34.985775, 24.352678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.271294, 34.638920, 24.499868>,  <43.351852, 34.430805, 24.588182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.271294, 34.638920, 24.499868>,  <43.137032, 34.985775, 24.352678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271294, 34.638920, 24.499868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686853, 0.042034, 0.725580,
		-0.644645, -0.496293, -0.581486,
		0.335658, -0.867137, 0.367977,
		43.371990, 34.378780, 24.610262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567398, 34.622860, 24.427010>,  <43.137032, 34.985775, 24.352678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567398, 34.622860, 24.427010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.821014, 34.443104, 24.678736>,  <42.973183, 34.335251, 24.829771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.821014, 34.443104, 24.678736>,  <42.567398, 34.622860, 24.427010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821014, 34.443104, 24.678736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731338, -0.084034, 0.676819,
		-0.251276, -0.889371, -0.381941,
		0.634039, -0.449397, 0.629315,
		43.011227, 34.308285, 24.867531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175217, 34.085114, 24.651108>,  <42.567398, 34.622860, 24.427010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175217, 34.085114, 24.651108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.488720, 34.114388, 24.897800>,  <42.676823, 34.131950, 25.045816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.488720, 34.114388, 24.897800>,  <42.175217, 34.085114, 24.651108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488720, 34.114388, 24.897800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594209, -0.200474, 0.778926,
		0.180643, -0.976962, -0.113638,
		0.783762, 0.073183, 0.616734,
		42.723850, 34.136341, 25.082821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266518, 33.424427, 25.045956>,  <42.175217, 34.085114, 24.651108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266518, 33.424427, 25.045956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.429771, 33.713528, 25.269047>,  <42.527725, 33.886986, 25.402901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.429771, 33.713528, 25.269047>,  <42.266518, 33.424427, 25.045956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429771, 33.713528, 25.269047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576529, -0.269633, 0.771306,
		0.707842, -0.636344, 0.306638,
		0.408136, 0.722748, 0.557728,
		42.552212, 33.930351, 25.436365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441818, 33.091251, 25.663717>,  <42.266518, 33.424427, 25.045956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441818, 33.091251, 25.663717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.459553, 33.478241, 25.763334>,  <42.470192, 33.710434, 25.823105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.459553, 33.478241, 25.763334>,  <42.441818, 33.091251, 25.663717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459553, 33.478241, 25.763334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455696, -0.202256, 0.866853,
		0.889031, -0.151919, 0.431909,
		0.044335, 0.967478, 0.249040,
		42.472855, 33.768486, 25.838047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614220, 33.029297, 26.433041>,  <42.441818, 33.091251, 25.663717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614220, 33.029297, 26.433041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.461151, 33.388210, 26.345005>,  <42.369308, 33.603558, 26.292183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.461151, 33.388210, 26.345005>,  <42.614220, 33.029297, 26.433041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461151, 33.388210, 26.345005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389959, 0.059089, 0.918935,
		0.837551, 0.437480, 0.327292,
		-0.382676, 0.897285, -0.220089,
		42.346348, 33.657394, 26.278978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657684, 33.480408, 26.975126>,  <42.614220, 33.029297, 26.433041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657684, 33.480408, 26.975126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.351936, 33.648579, 26.779583>,  <42.168488, 33.749481, 26.662258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.351936, 33.648579, 26.779583>,  <42.657684, 33.480408, 26.975126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351936, 33.648579, 26.779583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505627, 0.079623, 0.859070,
		0.400098, 0.903828, 0.151716,
		-0.764371, 0.420424, -0.488856,
		42.122623, 33.774704, 26.632927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560795, 33.987606, 27.289230>,  <42.657684, 33.480408, 26.975126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560795, 33.987606, 27.289230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.206543, 33.915733, 27.117943>,  <41.993992, 33.872608, 27.015171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.206543, 33.915733, 27.117943>,  <42.560795, 33.987606, 27.289230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206543, 33.915733, 27.117943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407413, -0.141904, 0.902152,
		-0.222865, 0.973436, 0.052471,
		-0.885633, -0.179680, -0.428216,
		41.940853, 33.861828, 26.989477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194031, 34.546360, 27.605377>,  <42.560795, 33.987606, 27.289230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194031, 34.546360, 27.605377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.942242, 34.267250, 27.468624>,  <41.791168, 34.099785, 27.386572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.942242, 34.267250, 27.468624>,  <42.194031, 34.546360, 27.605377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942242, 34.267250, 27.468624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516464, 0.046982, 0.855019,
		-0.580547, 0.714777, -0.389947,
		-0.629469, -0.697772, -0.341882,
		41.753403, 34.057919, 27.366060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486496, 34.810673, 27.756413>,  <42.194031, 34.546360, 27.605377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486496, 34.810673, 27.756413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.437004, 34.418762, 27.693501>,  <41.407310, 34.183617, 27.655754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.437004, 34.418762, 27.693501>,  <41.486496, 34.810673, 27.756413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437004, 34.418762, 27.693501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667718, -0.035044, 0.743589,
		-0.734059, 0.197024, -0.649876,
		-0.123731, -0.979772, -0.157281,
		41.399883, 34.124832, 27.646317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901699, 35.053246, 27.143204>,  <41.486496, 34.810673, 27.756413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901699, 35.053246, 27.143204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.544186, 35.203316, 27.044901>,  <40.329678, 35.293358, 26.985918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.544186, 35.203316, 27.044901>,  <40.901699, 35.053246, 27.143204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544186, 35.203316, 27.044901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351723, 0.246322, -0.903115,
		-0.278292, -0.893626, -0.352116,
		-0.893781, 0.375177, -0.245759,
		40.276051, 35.315868, 26.971172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749699, 34.636978, 26.601583>,  <40.901699, 35.053246, 27.143204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749699, 34.636978, 26.601583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.515415, 34.958904, 26.563181>,  <40.374847, 35.152061, 26.540140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.515415, 34.958904, 26.563181>,  <40.749699, 34.636978, 26.601583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515415, 34.958904, 26.563181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242162, 0.060723, -0.968334,
		-0.773502, -0.590408, -0.230462,
		-0.585706, 0.804817, -0.096005,
		40.339703, 35.200348, 26.534380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416744, 34.554607, 25.968462>,  <40.749699, 34.636978, 26.601583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416744, 34.554607, 25.968462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.323795, 34.939453, 26.025497>,  <40.268024, 35.170361, 26.059719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.323795, 34.939453, 26.025497>,  <40.416744, 34.554607, 25.968462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323795, 34.939453, 26.025497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121959, 0.174270, -0.977116,
		-0.964951, -0.209664, -0.157835,
		-0.232371, 0.962118, 0.142591,
		40.254086, 35.228088, 26.068275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979118, 34.765198, 25.425373>,  <40.416744, 34.554607, 25.968462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979118, 34.765198, 25.425373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.157440, 35.093582, 25.568079>,  <40.264431, 35.290611, 25.653702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.157440, 35.093582, 25.568079>,  <39.979118, 34.765198, 25.425373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157440, 35.093582, 25.568079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258766, 0.263350, -0.929348,
		-0.856913, 0.506624, -0.095035,
		0.445802, 0.820962, 0.356765,
		40.291180, 35.339870, 25.675108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779968, 35.311203, 24.972778>,  <39.979118, 34.765198, 25.425373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779968, 35.311203, 24.972778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.107162, 35.450771, 25.155710>,  <40.303478, 35.534512, 25.265471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.107162, 35.450771, 25.155710>,  <39.779968, 35.311203, 24.972778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107162, 35.450771, 25.155710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420914, 0.178841, -0.889296,
		-0.392082, 0.919930, -0.000575,
		0.817987, 0.348919, 0.457332,
		40.352558, 35.555447, 25.292910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890289, 35.824421, 24.564945>,  <39.779968, 35.311203, 24.972778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890289, 35.824421, 24.564945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.246204, 35.754829, 24.733709>,  <40.459755, 35.713074, 24.834969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.246204, 35.754829, 24.733709>,  <39.890289, 35.824421, 24.564945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246204, 35.754829, 24.733709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452992, 0.224353, -0.862823,
		0.055452, 0.958853, 0.278436,
		0.889788, -0.173975, 0.421912,
		40.513142, 35.702637, 24.860283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196270, 36.351692, 24.340628>,  <39.890289, 35.824421, 24.564945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196270, 36.351692, 24.340628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.473854, 36.096081, 24.473331>,  <40.640404, 35.942715, 24.552954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.473854, 36.096081, 24.473331>,  <40.196270, 36.351692, 24.340628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473854, 36.096081, 24.473331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623621, 0.303144, -0.720556,
		0.359884, 0.706929, 0.608880,
		0.693960, -0.639027, 0.331760,
		40.682041, 35.904373, 24.572859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142010, 37.007999, 24.802601>,  <40.196270, 36.351692, 24.340628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142010, 37.007999, 24.802601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.995667, 37.363121, 24.690916>,  <39.907860, 37.576195, 24.623905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.995667, 37.363121, 24.690916>,  <40.142010, 37.007999, 24.802601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995667, 37.363121, 24.690916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802704, -0.149190, 0.577415,
		0.470974, 0.435376, 0.767224,
		-0.365854, 0.887801, -0.279213,
		39.885910, 37.629463, 24.607153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054974, 37.282619, 25.486967>,  <40.142010, 37.007999, 24.802601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054974, 37.282619, 25.486967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.854042, 37.521202, 25.236559>,  <39.733482, 37.664352, 25.086313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.854042, 37.521202, 25.236559>,  <40.054974, 37.282619, 25.486967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854042, 37.521202, 25.236559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754025, 0.052191, 0.654769,
		0.423212, 0.800948, 0.423525,
		-0.502332, 0.596455, -0.626023,
		39.703342, 37.700138, 25.048752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886749, 37.857471, 25.843752>,  <40.054974, 37.282619, 25.486967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886749, 37.857471, 25.843752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.629940, 37.848129, 25.537220>,  <39.475857, 37.842522, 25.353300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.629940, 37.848129, 25.537220>,  <39.886749, 37.857471, 25.843752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629940, 37.848129, 25.537220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766109, 0.058377, 0.640055,
		0.029785, 0.998021, -0.055374,
		-0.642021, -0.023358, -0.766331,
		39.437332, 37.841122, 25.307320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414169, 38.415016, 25.868406>,  <39.886749, 37.857471, 25.843752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414169, 38.415016, 25.868406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.230732, 38.135387, 25.648958>,  <39.120670, 37.967609, 25.517290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.230732, 38.135387, 25.648958>,  <39.414169, 38.415016, 25.868406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230732, 38.135387, 25.648958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758705, -0.013413, 0.651296,
		-0.462664, 0.714923, -0.524240,
		-0.458595, -0.699075, -0.548621,
		39.093155, 37.925667, 25.484371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756939, 38.711342, 25.747486>,  <39.414169, 38.415016, 25.868406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756939, 38.711342, 25.747486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.731457, 38.313999, 25.709145>,  <38.716167, 38.075596, 25.686140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.731457, 38.313999, 25.709145>,  <38.756939, 38.711342, 25.747486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731457, 38.313999, 25.709145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808224, -0.004988, 0.588853,
		-0.585418, 0.114987, -0.802536,
		-0.063707, -0.993354, -0.095856,
		38.712345, 38.015991, 25.680387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045914, 38.508053, 25.711519>,  <38.756939, 38.711342, 25.747486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045914, 38.508053, 25.711519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.219654, 38.155472, 25.785690>,  <38.323898, 37.943924, 25.830193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.219654, 38.155472, 25.785690>,  <38.045914, 38.508053, 25.711519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219654, 38.155472, 25.785690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736113, -0.228720, 0.637044,
		-0.519112, -0.413195, -0.748193,
		0.434350, -0.881451, 0.185427,
		38.349960, 37.891037, 25.841318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501076, 38.115894, 25.838226>,  <38.045914, 38.508053, 25.711519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501076, 38.115894, 25.838226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.807930, 37.892490, 25.964447>,  <37.992043, 37.758446, 26.040178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.807930, 37.892490, 25.964447>,  <37.501076, 38.115894, 25.838226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807930, 37.892490, 25.964447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585072, -0.407446, 0.701198,
		-0.263058, -0.722531, -0.639335,
		0.767132, -0.558512, 0.315551,
		38.038071, 37.724937, 26.059113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.861088, 36.889984, 24.934208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.967556, 36.552784, 25.121181>,  <45.031437, 36.350464, 25.233366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.967556, 36.552784, 25.121181>,  <44.861088, 36.889984, 24.934208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967556, 36.552784, 25.121181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581999, 0.246011, 0.775084,
		-0.768393, -0.478355, -0.425145,
		0.266175, -0.843004, 0.467435,
		45.047409, 36.299881, 25.261412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262615, 36.659149, 25.274328>,  <44.861088, 36.889984, 24.934208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262615, 36.659149, 25.274328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.553783, 36.463165, 25.466194>,  <44.728485, 36.345573, 25.581314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.553783, 36.463165, 25.466194>,  <44.262615, 36.659149, 25.274328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553783, 36.463165, 25.466194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482979, 0.130162, 0.865903,
		-0.486692, -0.861973, -0.141894,
		0.727916, -0.489960, 0.479664,
		44.772160, 36.316177, 25.610094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832794, 36.138508, 25.587023>,  <44.262615, 36.659149, 25.274328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832794, 36.138508, 25.587023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.190132, 36.147095, 25.766565>,  <44.404533, 36.152245, 25.874290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.190132, 36.147095, 25.766565>,  <43.832794, 36.138508, 25.587023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.190132, 36.147095, 25.766565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447720, -0.043002, 0.893139,
		0.038473, -0.998845, -0.028805,
		0.893346, 0.021465, 0.448857,
		44.458138, 36.153534, 25.901222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792534, 35.639442, 26.077852>,  <43.832794, 36.138508, 25.587023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792534, 35.639442, 26.077852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.080681, 35.896210, 26.182930>,  <44.253571, 36.050270, 26.245975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.080681, 35.896210, 26.182930>,  <43.792534, 35.639442, 26.077852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080681, 35.896210, 26.182930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390383, 0.062196, 0.918549,
		0.573295, -0.764246, 0.295398,
		0.720371, 0.641918, 0.262693,
		44.296791, 36.088783, 26.261738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727673, 35.551575, 26.811876>,  <43.792534, 35.639442, 26.077852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727673, 35.551575, 26.811876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.928829, 35.892826, 26.756363>,  <44.049522, 36.097576, 26.723055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.928829, 35.892826, 26.756363>,  <43.727673, 35.551575, 26.811876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928829, 35.892826, 26.756363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285675, 0.315599, 0.904869,
		0.815774, -0.415406, 0.402432,
		0.502895, 0.853133, -0.138786,
		44.079697, 36.148766, 26.714727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009811, 35.702457, 27.447035>,  <43.727673, 35.551575, 26.811876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009811, 35.702457, 27.447035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.013706, 36.052963, 27.254341>,  <44.016041, 36.263268, 27.138725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.013706, 36.052963, 27.254341>,  <44.009811, 35.702457, 27.447035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013706, 36.052963, 27.254341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287272, 0.463899, 0.838017,
		0.957800, 0.130232, 0.256241,
		0.009734, 0.876263, -0.481734,
		44.016624, 36.315842, 27.109821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361259, 36.173100, 27.929886>,  <44.009811, 35.702457, 27.447035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361259, 36.173100, 27.929886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.135925, 36.389503, 27.680099>,  <44.000725, 36.519348, 27.530228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.135925, 36.389503, 27.680099>,  <44.361259, 36.173100, 27.929886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135925, 36.389503, 27.680099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369312, 0.511219, 0.776056,
		0.739097, 0.667802, -0.088184,
		-0.563333, 0.541013, -0.624468,
		43.966927, 36.551807, 27.492760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311634, 36.771820, 28.245562>,  <44.361259, 36.173100, 27.929886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311634, 36.771820, 28.245562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.013802, 36.786293, 27.978941>,  <43.835102, 36.794975, 27.818968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.013802, 36.786293, 27.978941>,  <44.311634, 36.771820, 28.245562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013802, 36.786293, 27.978941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576735, 0.467917, 0.669650,
		0.336121, 0.883031, -0.327533,
		-0.744580, 0.036184, -0.666552,
		43.790428, 36.797150, 27.778975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194832, 37.505123, 28.243164>,  <44.311634, 36.771820, 28.245562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194832, 37.505123, 28.243164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.873814, 37.333057, 28.077810>,  <43.681202, 37.229816, 27.978598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.873814, 37.333057, 28.077810>,  <44.194832, 37.505123, 28.243164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873814, 37.333057, 28.077810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596512, 0.566918, 0.568135,
		-0.010036, 0.702541, -0.711573,
		-0.802542, -0.430163, -0.413384,
		43.633053, 37.204010, 27.953794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665806, 38.132988, 27.970886>,  <44.194832, 37.505123, 28.243164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665806, 38.132988, 27.970886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.463120, 37.793400, 28.030878>,  <43.341507, 37.589649, 28.066874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.463120, 37.793400, 28.030878>,  <43.665806, 38.132988, 27.970886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463120, 37.793400, 28.030878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624340, 0.481331, 0.615239,
		-0.594507, 0.218114, -0.773943,
		-0.506715, -0.848968, 0.149978,
		43.311104, 37.538708, 28.075871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898178, 38.271389, 27.880348>,  <43.665806, 38.132988, 27.970886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898178, 38.271389, 27.880348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.927891, 37.952709, 28.120264>,  <42.945721, 37.761501, 28.264214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.927891, 37.952709, 28.120264>,  <42.898178, 38.271389, 27.880348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927891, 37.952709, 28.120264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473961, 0.500975, 0.724145,
		-0.877407, -0.338069, -0.340391,
		0.074284, -0.796702, 0.599790,
		42.950176, 37.713699, 28.300201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325817, 38.311302, 28.265877>,  <42.898178, 38.271389, 27.880348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325817, 38.311302, 28.265877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.533146, 38.039066, 28.473005>,  <42.657543, 37.875725, 28.597282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.533146, 38.039066, 28.473005>,  <42.325817, 38.311302, 28.265877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533146, 38.039066, 28.473005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274571, 0.441011, 0.854470,
		-0.809909, -0.585070, 0.041716,
		0.518322, -0.680589, 0.517823,
		42.688644, 37.834888, 28.628351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650940, 38.222393, 27.983150>,  <42.325817, 38.311302, 28.265877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650940, 38.222393, 27.983150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.484303, 38.579765, 27.915953>,  <41.384319, 38.794189, 27.875633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.484303, 38.579765, 27.915953>,  <41.650940, 38.222393, 27.983150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484303, 38.579765, 27.915953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675746, 0.180718, -0.714639,
		-0.608123, -0.411238, -0.679021,
		-0.416598, 0.893434, -0.167994,
		41.359322, 38.847794, 27.865555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695404, 38.155819, 27.381706>,  <41.650940, 38.222393, 27.983150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695404, 38.155819, 27.381706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.646400, 38.550167, 27.427399>,  <41.616997, 38.786777, 27.454815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.646400, 38.550167, 27.427399>,  <41.695404, 38.155819, 27.381706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646400, 38.550167, 27.427399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639349, 0.166431, -0.750688,
		-0.759094, -0.018933, -0.650706,
		-0.122510, 0.985871, 0.114232,
		41.609646, 38.845928, 27.461668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393677, 38.421497, 26.694696>,  <41.695404, 38.155819, 27.381706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393677, 38.421497, 26.694696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.543903, 38.737625, 26.888336>,  <41.634037, 38.927299, 27.004520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.543903, 38.737625, 26.888336>,  <41.393677, 38.421497, 26.694696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543903, 38.737625, 26.888336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579655, 0.207263, -0.788062,
		-0.723154, 0.576578, -0.380270,
		0.375564, 0.790316, 0.484100,
		41.656574, 38.974720, 27.033566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191410, 39.007065, 26.278965>,  <41.393677, 38.421497, 26.694696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191410, 39.007065, 26.278965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.515804, 39.123444, 26.482004>,  <41.710442, 39.193272, 26.603828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.515804, 39.123444, 26.482004>,  <41.191410, 39.007065, 26.278965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515804, 39.123444, 26.482004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387079, 0.383754, -0.838393,
		-0.438718, 0.876404, 0.198600,
		0.810985, 0.290944, 0.507598,
		41.759098, 39.210728, 26.634283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337559, 39.598289, 26.054976>,  <41.191410, 39.007065, 26.278965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337559, 39.598289, 26.054976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.692562, 39.505005, 26.213945>,  <41.905563, 39.449032, 26.309328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.692562, 39.505005, 26.213945>,  <41.337559, 39.598289, 26.054976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692562, 39.505005, 26.213945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459162, 0.374922, -0.805360,
		0.038818, 0.897243, 0.439828,
		0.887504, -0.233215, 0.397426,
		41.958813, 39.435040, 26.333174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712540, 40.259762, 25.965237>,  <41.337559, 39.598289, 26.054976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712540, 40.259762, 25.965237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.960251, 39.950855, 26.021935>,  <42.108879, 39.765511, 26.055954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.960251, 39.950855, 26.021935>,  <41.712540, 40.259762, 25.965237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960251, 39.950855, 26.021935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560934, 0.308833, -0.768098,
		0.549403, 0.555178, 0.624446,
		0.619281, -0.772269, 0.141745,
		42.146034, 39.719173, 26.064459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208870, 40.460182, 25.628633>,  <41.712540, 40.259762, 25.965237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208870, 40.460182, 25.628633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.323605, 40.080811, 25.682611>,  <42.392445, 39.853188, 25.714998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.323605, 40.080811, 25.682611>,  <42.208870, 40.460182, 25.628633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323605, 40.080811, 25.682611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529473, 0.039559, -0.847404,
		0.798364, 0.314514, 0.513514,
		0.286834, -0.948428, 0.134944,
		42.409657, 39.796284, 25.723095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952091, 40.505264, 25.541813>,  <42.208870, 40.460182, 25.628633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952091, 40.505264, 25.541813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.836655, 40.131187, 25.459711>,  <42.767391, 39.906742, 25.410450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.836655, 40.131187, 25.459711>,  <42.952091, 40.505264, 25.541813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836655, 40.131187, 25.459711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517285, 0.028103, -0.855352,
		0.805687, -0.353022, 0.475651,
		-0.288591, -0.935193, -0.205256,
		42.750076, 39.850628, 25.398134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540985, 40.106388, 25.300573>,  <42.952091, 40.505264, 25.541813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540985, 40.106388, 25.300573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.225876, 39.922401, 25.136700>,  <43.036808, 39.812012, 25.038376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.225876, 39.922401, 25.136700>,  <43.540985, 40.106388, 25.300573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225876, 39.922401, 25.136700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536303, -0.185054, -0.823489,
		0.302961, -0.868440, 0.392461,
		-0.787778, -0.459963, -0.409683,
		42.989544, 39.784412, 25.013794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843620, 39.580109, 24.951508>,  <43.540985, 40.106388, 25.300573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843620, 39.580109, 24.951508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.494370, 39.577587, 24.756527>,  <43.284821, 39.576073, 24.639538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.494370, 39.577587, 24.756527>,  <43.843620, 39.580109, 24.951508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494370, 39.577587, 24.756527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470105, -0.275573, -0.838487,
		-0.129043, -0.961259, 0.243573,
		-0.873126, -0.006304, -0.487454,
		43.232433, 39.575695, 24.610291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821342, 38.957291, 24.454945>,  <43.843620, 39.580109, 24.951508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821342, 38.957291, 24.454945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.531296, 39.181599, 24.295069>,  <43.357269, 39.316181, 24.199142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.531296, 39.181599, 24.295069>,  <43.821342, 38.957291, 24.454945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531296, 39.181599, 24.295069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225311, -0.355271, -0.907203,
		-0.650726, -0.747880, 0.131265,
		-0.725114, 0.560766, -0.399690,
		43.313763, 39.349827, 24.175161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568462, 38.568417, 23.985706>,  <43.821342, 38.957291, 24.454945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568462, 38.568417, 23.985706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.433601, 38.922749, 23.858187>,  <43.352684, 39.135349, 23.781675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.433601, 38.922749, 23.858187>,  <43.568462, 38.568417, 23.985706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433601, 38.922749, 23.858187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432375, -0.155109, -0.888253,
		-0.836291, -0.437315, -0.330716,
		-0.337149, 0.885831, -0.318801,
		43.332458, 39.188499, 23.762547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308773, 38.475555, 23.222734>,  <43.568462, 38.568417, 23.985706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308773, 38.475555, 23.222734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.389355, 38.864300, 23.271555>,  <43.437702, 39.097546, 23.300846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.389355, 38.864300, 23.271555>,  <43.308773, 38.475555, 23.222734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389355, 38.864300, 23.271555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469245, 0.013619, -0.882963,
		-0.859783, 0.235145, -0.453299,
		0.201450, 0.971865, 0.122050,
		43.449791, 39.155861, 23.308170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776520, 38.465012, 23.790365>,  <43.308773, 38.475555, 23.222734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776520, 38.465012, 23.790365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.614449, 38.472275, 23.424742>,  <42.517208, 38.476631, 23.205368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.614449, 38.472275, 23.424742>,  <42.776520, 38.465012, 23.790365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614449, 38.472275, 23.424742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891010, 0.216104, 0.399249,
		0.204781, 0.976202, -0.071382,
		-0.405174, 0.018156, -0.914059,
		42.492897, 38.477722, 23.150524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306362, 39.053242, 23.739885>,  <42.776520, 38.465012, 23.790365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306362, 39.053242, 23.739885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.183865, 38.779251, 23.475456>,  <42.110367, 38.614857, 23.316799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.183865, 38.779251, 23.475456>,  <42.306362, 39.053242, 23.739885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183865, 38.779251, 23.475456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944747, 0.133410, 0.299425,
		-0.116906, 0.716244, -0.687988,
		-0.306245, -0.684979, -0.661073,
		42.091991, 38.573757, 23.277134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718773, 39.319141, 23.515484>,  <42.306362, 39.053242, 23.739885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718773, 39.319141, 23.515484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.700958, 38.928253, 23.432478>,  <41.690269, 38.693722, 23.382675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.700958, 38.928253, 23.432478>,  <41.718773, 39.319141, 23.515484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700958, 38.928253, 23.432478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931616, -0.034370, 0.361816,
		-0.360705, 0.209440, -0.908860,
		-0.044541, -0.977217, -0.207515,
		41.687595, 38.635086, 23.370224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991680, 39.110092, 23.303230>,  <41.718773, 39.319141, 23.515484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991680, 39.110092, 23.303230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.154346, 38.752453, 23.378277>,  <41.251945, 38.537868, 23.423306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.154346, 38.752453, 23.378277>,  <40.991680, 39.110092, 23.303230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154346, 38.752453, 23.378277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863272, -0.308878, 0.399194,
		-0.298965, -0.324316, -0.897463,
		0.406672, -0.894099, 0.187629,
		41.276348, 38.484222, 23.434563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506359, 38.644753, 23.037292>,  <40.991680, 39.110092, 23.303230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506359, 38.644753, 23.037292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.717636, 38.414757, 23.287220>,  <40.844402, 38.276760, 23.437176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.717636, 38.414757, 23.287220>,  <40.506359, 38.644753, 23.037292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717636, 38.414757, 23.287220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848179, -0.391996, 0.356275,
		0.040072, -0.718140, -0.694744,
		0.528192, -0.574991, 0.624819,
		40.876095, 38.242260, 23.474667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296806, 37.974232, 23.004646>,  <40.506359, 38.644753, 23.037292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296806, 37.974232, 23.004646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.449253, 38.022034, 23.371355>,  <40.540722, 38.050713, 23.591379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.449253, 38.022034, 23.371355>,  <40.296806, 37.974232, 23.004646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449253, 38.022034, 23.371355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858112, -0.323325, 0.398879,
		0.344081, -0.938712, -0.020680,
		0.381119, 0.119500, 0.916771,
		40.563587, 38.057884, 23.646387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168365, 37.318394, 23.403582>,  <40.296806, 37.974232, 23.004646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168365, 37.318394, 23.403582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.225769, 37.624252, 23.654890>,  <40.260212, 37.807766, 23.805676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.225769, 37.624252, 23.654890>,  <40.168365, 37.318394, 23.403582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225769, 37.624252, 23.654890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834005, -0.248318, 0.492721,
		0.532768, -0.594688, 0.602084,
		0.143507, 0.764647, 0.628269,
		40.268822, 37.853645, 23.843370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284866, 37.053783, 24.091740>,  <40.168365, 37.318394, 23.403582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284866, 37.053783, 24.091740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.144127, 37.425819, 24.133945>,  <40.059685, 37.649040, 24.159269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.144127, 37.425819, 24.133945>,  <40.284866, 37.053783, 24.091740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144127, 37.425819, 24.133945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695191, -0.335126, 0.635924,
		0.626829, 0.150393, 0.764505,
		-0.351845, 0.930092, 0.105515,
		40.038574, 37.704845, 24.165600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794079, 36.755825, 24.531443>,  <40.284866, 37.053783, 24.091740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794079, 36.755825, 24.531443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.915234, 36.382015, 24.456699>,  <40.987926, 36.157730, 24.411854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.915234, 36.382015, 24.456699>,  <40.794079, 36.755825, 24.531443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915234, 36.382015, 24.456699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677522, 0.349039, -0.647407,
		0.670240, 0.069493, 0.738884,
		0.302889, -0.934528, -0.186857,
		41.006100, 36.101658, 24.400642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545082, 36.791634, 24.418016>,  <40.794079, 36.755825, 24.531443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545082, 36.791634, 24.418016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.445572, 36.440342, 24.254637>,  <41.385864, 36.229568, 24.156609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.445572, 36.440342, 24.254637>,  <41.545082, 36.791634, 24.418016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445572, 36.440342, 24.254637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483421, 0.252838, -0.838080,
		0.839295, -0.405945, 0.361653,
		-0.248775, -0.878226, -0.408448,
		41.370941, 36.176872, 24.132103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151707, 36.473076, 24.328806>,  <41.545082, 36.791634, 24.418016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151707, 36.473076, 24.328806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.912144, 36.284103, 24.070158>,  <41.768406, 36.170719, 23.914970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.912144, 36.284103, 24.070158>,  <42.151707, 36.473076, 24.328806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912144, 36.284103, 24.070158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729163, 0.012132, -0.684232,
		0.331097, -0.881285, 0.337212,
		-0.598912, -0.472430, -0.646617,
		41.732471, 36.142376, 23.876173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549080, 35.977840, 24.035429>,  <42.151707, 36.473076, 24.328806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549080, 35.977840, 24.035429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.256649, 35.980263, 23.762522>,  <42.081192, 35.981716, 23.598778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.256649, 35.980263, 23.762522>,  <42.549080, 35.977840, 24.035429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256649, 35.980263, 23.762522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670247, -0.180704, -0.719802,
		-0.127650, -0.983519, 0.128047,
		-0.731078, 0.006059, -0.682268,
		42.037327, 35.982079, 23.557842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596260, 35.374084, 23.601984>,  <42.549080, 35.977840, 24.035429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596260, 35.374084, 23.601984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.363213, 35.602154, 23.370310>,  <42.223385, 35.738995, 23.231304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.363213, 35.602154, 23.370310>,  <42.596260, 35.374084, 23.601984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363213, 35.602154, 23.370310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615610, -0.155686, -0.772519,
		-0.530645, -0.806634, -0.260303,
		-0.582615, 0.570178, -0.579186,
		42.188427, 35.773209, 23.196554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530945, 34.970898, 23.010883>,  <42.596260, 35.374084, 23.601984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530945, 34.970898, 23.010883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.464954, 35.354271, 22.917761>,  <42.425362, 35.584293, 22.861887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.464954, 35.354271, 22.917761>,  <42.530945, 34.970898, 23.010883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464954, 35.354271, 22.917761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670167, -0.064251, -0.739424,
		-0.723643, -0.278005, -0.631707,
		-0.164976, 0.958428, -0.232804,
		42.415462, 35.641800, 22.847919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516319, 34.942051, 22.325602>,  <42.530945, 34.970898, 23.010883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516319, 34.942051, 22.325602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.582771, 35.326416, 22.414188>,  <42.622643, 35.557034, 22.467340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.582771, 35.326416, 22.414188>,  <42.516319, 34.942051, 22.325602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582771, 35.326416, 22.414188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596158, 0.081025, -0.798768,
		-0.785490, 0.264732, -0.559395,
		0.166134, 0.960912, 0.221467,
		42.632610, 35.614689, 22.480629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417892, 35.383152, 21.685379>,  <42.516319, 34.942051, 22.325602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417892, 35.383152, 21.685379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.656948, 35.576134, 21.941523>,  <42.800381, 35.691925, 22.095209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.656948, 35.576134, 21.941523>,  <42.417892, 35.383152, 21.685379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656948, 35.576134, 21.941523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721802, 0.023934, -0.691685,
		-0.349035, 0.875593, -0.333935,
		0.597642, 0.482457, 0.640359,
		42.836239, 35.720871, 22.133631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538593, 35.957226, 21.320879>,  <42.417892, 35.383152, 21.685379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538593, 35.957226, 21.320879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.833858, 35.922390, 21.588470>,  <43.011017, 35.901489, 21.749025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.833858, 35.922390, 21.588470>,  <42.538593, 35.957226, 21.320879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833858, 35.922390, 21.588470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674612, 0.100882, -0.731247,
		-0.003807, 0.991080, 0.133216,
		0.738163, -0.087085, 0.668978,
		43.055309, 35.896263, 21.789164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.877289, 36.039658, 36.618267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.261776, 35.948616, 36.555973>,  <36.492470, 35.893993, 36.518597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.261776, 35.948616, 36.555973>,  <35.877289, 36.039658, 36.618267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261776, 35.948616, 36.555973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132342, 0.114759, -0.984538,
		0.241953, 0.966969, 0.080188,
		0.961220, -0.227600, -0.155737,
		36.550140, 35.880337, 36.509251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144821, 36.523129, 36.176281>,  <35.877289, 36.039658, 36.618267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144821, 36.523129, 36.176281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.361012, 36.187126, 36.157223>,  <36.490726, 35.985523, 36.145790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.361012, 36.187126, 36.157223>,  <36.144821, 36.523129, 36.176281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361012, 36.187126, 36.157223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142635, -0.035675, -0.989132,
		0.829179, 0.541400, -0.139096,
		0.540479, -0.840008, -0.047641,
		36.523155, 35.935123, 36.142929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391106, 36.610798, 35.550861>,  <36.144821, 36.523129, 36.176281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391106, 36.610798, 35.550861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.454067, 36.223267, 35.627377>,  <36.491844, 35.990746, 35.673286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.454067, 36.223267, 35.627377>,  <36.391106, 36.610798, 35.550861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454067, 36.223267, 35.627377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104444, -0.176279, -0.978783,
		0.981995, 0.174045, 0.073442,
		0.157406, -0.968831, 0.191284,
		36.501289, 35.932617, 35.684761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019535, 36.472313, 35.230335>,  <36.391106, 36.610798, 35.550861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019535, 36.472313, 35.230335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863762, 36.108063, 35.285618>,  <36.770298, 35.889511, 35.318787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863762, 36.108063, 35.285618>,  <37.019535, 36.472313, 35.230335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863762, 36.108063, 35.285618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380210, -0.295609, -0.876388,
		0.838917, -0.288747, 0.461350,
		-0.389434, -0.910626, 0.138207,
		36.746933, 35.834873, 35.327080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511841, 35.940765, 35.235298>,  <37.019535, 36.472313, 35.230335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511841, 35.940765, 35.235298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.164780, 35.777905, 35.121174>,  <36.956543, 35.680187, 35.052700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.164780, 35.777905, 35.121174>,  <37.511841, 35.940765, 35.235298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164780, 35.777905, 35.121174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452418, -0.408661, -0.792663,
		0.206141, -0.816836, 0.538781,
		-0.867654, -0.407154, -0.285310,
		36.904484, 35.655758, 35.035580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686752, 35.669544, 34.614502>,  <37.511841, 35.940765, 35.235298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686752, 35.669544, 34.614502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.302525, 35.558357, 34.617271>,  <37.071987, 35.491646, 34.618935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.302525, 35.558357, 34.617271>,  <37.686752, 35.669544, 34.614502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302525, 35.558357, 34.617271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082384, -0.308308, -0.947713,
		0.265565, -0.909770, 0.319050,
		-0.960566, -0.277964, 0.006925,
		37.014355, 35.474968, 34.619350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640453, 35.033279, 34.397240>,  <37.686752, 35.669544, 34.614502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640453, 35.033279, 34.397240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276180, 35.178223, 34.317890>,  <37.057617, 35.265190, 34.270279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276180, 35.178223, 34.317890>,  <37.640453, 35.033279, 34.397240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276180, 35.178223, 34.317890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095453, -0.282639, -0.954465,
		-0.401929, -0.888150, 0.222806,
		-0.910682, 0.362360, -0.198377,
		37.002975, 35.286930, 34.258377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292511, 34.550438, 33.923420>,  <37.640453, 35.033279, 34.397240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292511, 34.550438, 33.923420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.115303, 34.904808, 33.868488>,  <37.008976, 35.117432, 33.835529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.115303, 34.904808, 33.868488>,  <37.292511, 34.550438, 33.923420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115303, 34.904808, 33.868488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084969, -0.193981, -0.977319,
		-0.892474, -0.421307, 0.161215,
		-0.443024, 0.885930, -0.137325,
		36.982395, 35.170586, 33.827290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777649, 34.393890, 33.474133>,  <37.292511, 34.550438, 33.923420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777649, 34.393890, 33.474133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.829269, 34.789864, 33.450859>,  <36.860241, 35.027447, 33.436893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.829269, 34.789864, 33.450859>,  <36.777649, 34.393890, 33.474133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829269, 34.789864, 33.450859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248820, -0.024475, -0.968240,
		-0.959914, 0.139430, 0.243155,
		0.129051, 0.989929, -0.058187,
		36.867985, 35.086842, 33.433403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208733, 34.599628, 33.153496>,  <36.777649, 34.393890, 33.474133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208733, 34.599628, 33.153496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490189, 34.877502, 33.093765>,  <36.659061, 35.044228, 33.057926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490189, 34.877502, 33.093765>,  <36.208733, 34.599628, 33.153496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490189, 34.877502, 33.093765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146770, -0.063529, -0.987129,
		-0.695233, 0.716500, 0.057258,
		0.703640, 0.694688, -0.149328,
		36.701283, 35.085907, 33.048965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927238, 34.803307, 32.507141>,  <36.208733, 34.599628, 33.153496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927238, 34.803307, 32.507141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.290657, 34.970345, 32.502148>,  <36.508709, 35.070568, 32.499153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.290657, 34.970345, 32.502148>,  <35.927238, 34.803307, 32.507141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290657, 34.970345, 32.502148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068877, 0.120254, -0.990351,
		-0.412068, 0.900639, 0.138020,
		0.908546, 0.417598, -0.012480,
		36.563221, 35.095623, 32.498405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988132, 35.452023, 32.107697>,  <35.927238, 34.803307, 32.507141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988132, 35.452023, 32.107697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348225, 35.277962, 32.101738>,  <36.564281, 35.173523, 32.098164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348225, 35.277962, 32.101738>,  <35.988132, 35.452023, 32.107697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348225, 35.277962, 32.101738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000710, 0.032743, -0.999464,
		0.435409, 0.899760, 0.029167,
		0.900232, -0.435155, -0.014895,
		36.618294, 35.147415, 32.097271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107430, 36.210045, 32.130596>,  <35.988132, 35.452023, 32.107697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107430, 36.210045, 32.130596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.984539, 36.575272, 32.023319>,  <35.910805, 36.794407, 31.958954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.984539, 36.575272, 32.023319>,  <36.107430, 36.210045, 32.130596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984539, 36.575272, 32.023319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360561, 0.149127, 0.920737,
		0.880687, 0.379570, 0.283401,
		-0.307222, 0.913065, -0.268193,
		35.892372, 36.849190, 31.942862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249691, 36.654392, 32.658615>,  <36.107430, 36.210045, 32.130596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249691, 36.654392, 32.658615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986687, 36.885242, 32.464874>,  <35.828884, 37.023754, 32.348629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986687, 36.885242, 32.464874>,  <36.249691, 36.654392, 32.658615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986687, 36.885242, 32.464874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446814, 0.218939, 0.867423,
		0.606656, 0.786761, 0.113912,
		-0.657515, 0.577125, -0.484356,
		35.789433, 37.058380, 32.319569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101509, 37.254852, 33.031742>,  <36.249691, 36.654392, 32.658615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101509, 37.254852, 33.031742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.785183, 37.273300, 32.787617>,  <35.595387, 37.284367, 32.641140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.785183, 37.273300, 32.787617>,  <36.101509, 37.254852, 33.031742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785183, 37.273300, 32.787617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572932, 0.295004, 0.764671,
		0.215307, 0.954383, -0.206873,
		-0.790817, 0.046115, -0.610313,
		35.547939, 37.287136, 32.604523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850830, 37.781864, 33.241299>,  <36.101509, 37.254852, 33.031742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850830, 37.781864, 33.241299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.547344, 37.598637, 33.056034>,  <35.365253, 37.488701, 32.944874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.547344, 37.598637, 33.056034>,  <35.850830, 37.781864, 33.241299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547344, 37.598637, 33.056034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625969, 0.315879, 0.713010,
		-0.180308, 0.830897, -0.526402,
		-0.758718, -0.458073, -0.463160,
		35.319729, 37.461216, 32.917088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279427, 38.298691, 33.187759>,  <35.850830, 37.781864, 33.241299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279427, 38.298691, 33.187759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121300, 37.934093, 33.142323>,  <35.026424, 37.715336, 33.115059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121300, 37.934093, 33.142323>,  <35.279427, 38.298691, 33.187759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121300, 37.934093, 33.142323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586881, 0.155506, 0.794599,
		-0.706608, 0.380784, -0.596413,
		-0.395317, -0.911494, -0.113593,
		35.002705, 37.660645, 33.108246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598579, 38.311356, 33.279247>,  <35.279427, 38.298691, 33.187759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598579, 38.311356, 33.279247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.655079, 37.919014, 33.332874>,  <34.688976, 37.683609, 33.365051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.655079, 37.919014, 33.332874>,  <34.598579, 38.311356, 33.279247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655079, 37.919014, 33.332874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530433, 0.039360, 0.846812,
		-0.835877, -0.190722, -0.514718,
		0.141246, -0.980855, 0.134066,
		34.697453, 37.624756, 33.373093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002090, 38.051357, 33.543682>,  <34.598579, 38.311356, 33.279247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002090, 38.051357, 33.543682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232540, 37.743172, 33.652836>,  <34.370808, 37.558258, 33.718330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232540, 37.743172, 33.652836>,  <34.002090, 38.051357, 33.543682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232540, 37.743172, 33.652836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484444, -0.052966, 0.873217,
		-0.658331, -0.635277, -0.403763,
		0.576120, -0.770466, 0.272887,
		34.405376, 37.512032, 33.734703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500805, 37.716240, 33.888821>,  <34.002090, 38.051357, 33.543682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500805, 37.716240, 33.888821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856598, 37.574955, 34.004799>,  <34.070072, 37.490185, 34.074387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856598, 37.574955, 34.004799>,  <33.500805, 37.716240, 33.888821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856598, 37.574955, 34.004799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324508, -0.041487, 0.944973,
		-0.321745, -0.934624, -0.151522,
		0.889480, -0.353210, 0.289945,
		34.123444, 37.468994, 34.091782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360752, 37.131252, 34.314075>,  <33.500805, 37.716240, 33.888821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360752, 37.131252, 34.314075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.744900, 37.204464, 34.398170>,  <33.975388, 37.248390, 34.448627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.744900, 37.204464, 34.398170>,  <33.360752, 37.131252, 34.314075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744900, 37.204464, 34.398170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151771, -0.289265, 0.945141,
		0.233803, -0.939588, -0.250022,
		0.960366, 0.183031, 0.210233,
		34.033009, 37.259373, 34.461239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683712, 36.567818, 34.674294>,  <33.360752, 37.131252, 34.314075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683712, 36.567818, 34.674294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.883343, 36.905983, 34.750401>,  <34.003120, 37.108883, 34.796066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.883343, 36.905983, 34.750401>,  <33.683712, 36.567818, 34.674294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883343, 36.905983, 34.750401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358521, 0.001545, 0.933521,
		0.788914, -0.534115, 0.303869,
		0.499076, 0.845411, 0.190272,
		34.033066, 37.159607, 34.807484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023964, 36.483410, 35.383724>,  <33.683712, 36.567818, 34.674294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023964, 36.483410, 35.383724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997612, 36.877613, 35.321205>,  <33.981800, 37.114136, 35.283695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997612, 36.877613, 35.321205>,  <34.023964, 36.483410, 35.383724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997612, 36.877613, 35.321205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144747, 0.145543, 0.978706,
		0.987273, 0.087096, 0.133062,
		-0.065875, 0.985511, -0.156298,
		33.977848, 37.173267, 35.274315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365238, 36.760159, 36.012287>,  <34.023964, 36.483410, 35.383724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365238, 36.760159, 36.012287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171307, 37.076454, 35.862797>,  <34.054947, 37.266232, 35.773102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171307, 37.076454, 35.862797>,  <34.365238, 36.760159, 36.012287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171307, 37.076454, 35.862797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313977, 0.241464, 0.918212,
		0.816311, 0.562514, 0.131207,
		-0.484826, 0.790742, -0.373726,
		34.025860, 37.313675, 35.750679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490196, 37.234894, 36.429310>,  <34.365238, 36.760159, 36.012287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490196, 37.234894, 36.429310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.162975, 37.383804, 36.253948>,  <33.966644, 37.473152, 36.148731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.162975, 37.383804, 36.253948>,  <34.490196, 37.234894, 36.429310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162975, 37.383804, 36.253948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303790, 0.367564, 0.878982,
		0.488365, 0.852238, -0.187593,
		-0.818053, 0.372275, -0.438406,
		33.917561, 37.495487, 36.122425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461521, 37.999020, 36.590046>,  <34.490196, 37.234894, 36.429310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461521, 37.999020, 36.590046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.091686, 37.872898, 36.504505>,  <33.869785, 37.797226, 36.453182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.091686, 37.872898, 36.504505>,  <34.461521, 37.999020, 36.590046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091686, 37.872898, 36.504505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316723, 0.324174, 0.891402,
		-0.211737, 0.891906, -0.399589,
		-0.924583, -0.315301, -0.213848,
		33.814312, 37.778309, 36.440350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084187, 38.308132, 36.653610>,  <34.461521, 37.999020, 36.590046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084187, 38.308132, 36.653610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.110893, 38.668823, 36.824459>,  <35.126919, 38.885239, 36.926968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.110893, 38.668823, 36.824459>,  <35.084187, 38.308132, 36.653610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110893, 38.668823, 36.824459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282103, 0.393553, -0.874948,
		-0.957058, 0.178914, -0.228101,
		0.066770, 0.901724, 0.427125,
		35.130924, 38.939339, 36.952599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722069, 38.851906, 36.279163>,  <35.084187, 38.308132, 36.653610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722069, 38.851906, 36.279163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.080070, 38.944889, 36.431446>,  <35.294872, 39.000679, 36.522816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.080070, 38.944889, 36.431446>,  <34.722069, 38.851906, 36.279163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080070, 38.944889, 36.431446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270449, 0.395929, -0.877552,
		-0.354722, 0.888372, 0.291491,
		0.895003, 0.232453, 0.380704,
		35.348572, 39.014626, 36.545658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940594, 39.486691, 36.030262>,  <34.722069, 38.851906, 36.279163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940594, 39.486691, 36.030262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293564, 39.321476, 36.120354>,  <35.505344, 39.222347, 36.174408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293564, 39.321476, 36.120354>,  <34.940594, 39.486691, 36.030262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293564, 39.321476, 36.120354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394348, 0.388310, -0.832890,
		0.256557, 0.823780, 0.505534,
		0.882422, -0.413040, 0.225233,
		35.558289, 39.197563, 36.187923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498432, 39.932518, 35.963692>,  <34.940594, 39.486691, 36.030262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498432, 39.932518, 35.963692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690590, 39.582390, 35.941647>,  <35.805885, 39.372314, 35.928421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690590, 39.582390, 35.941647>,  <35.498432, 39.932518, 35.963692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690590, 39.582390, 35.941647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576707, 0.362601, -0.732072,
		0.660779, 0.319902, 0.678995,
		0.480395, -0.875319, -0.055110,
		35.834709, 39.319794, 35.925114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092014, 40.136574, 36.045368>,  <35.498432, 39.932518, 35.963692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092014, 40.136574, 36.045368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.093258, 39.781776, 35.860664>,  <36.094006, 39.568897, 35.749840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.093258, 39.781776, 35.860664>,  <36.092014, 40.136574, 36.045368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093258, 39.781776, 35.860664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620121, 0.363968, -0.694966,
		0.784500, -0.284187, 0.551178,
		0.003111, -0.886998, -0.461763,
		36.094193, 39.515678, 35.722134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733494, 40.102249, 35.880997>,  <36.092014, 40.136574, 36.045368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733494, 40.102249, 35.880997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.579956, 39.829643, 35.631775>,  <36.487831, 39.666080, 35.482243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.579956, 39.829643, 35.631775>,  <36.733494, 40.102249, 35.880997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579956, 39.829643, 35.631775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675085, 0.253248, -0.692911,
		0.630016, -0.686588, 0.362872,
		-0.383848, -0.681514, -0.623056,
		36.464802, 39.625191, 35.444859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245285, 39.490231, 35.660885>,  <36.733494, 40.102249, 35.880997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245285, 39.490231, 35.660885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.954487, 39.529854, 35.389103>,  <36.780006, 39.553627, 35.226032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.954487, 39.529854, 35.389103>,  <37.245285, 39.490231, 35.660885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954487, 39.529854, 35.389103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686629, 0.110530, -0.718557,
		0.003923, -0.988924, -0.148370,
		-0.726998, 0.099056, -0.679457,
		36.736389, 39.559570, 35.185265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558884, 39.102146, 35.196564>,  <37.245285, 39.490231, 35.660885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558884, 39.102146, 35.196564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.258915, 39.282253, 35.002705>,  <37.078934, 39.390316, 34.886391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.258915, 39.282253, 35.002705>,  <37.558884, 39.102146, 35.196564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258915, 39.282253, 35.002705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621797, 0.229689, -0.748740,
		-0.225815, -0.862845, -0.452222,
		-0.749917, 0.450267, -0.484647,
		37.033939, 39.417332, 34.857311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656395, 38.871555, 34.578621>,  <37.558884, 39.102146, 35.196564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656395, 38.871555, 34.578621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.456558, 39.214817, 34.531342>,  <37.336655, 39.420776, 34.502975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.456558, 39.214817, 34.531342>,  <37.656395, 38.871555, 34.578621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456558, 39.214817, 34.531342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579828, 0.229904, -0.781629,
		-0.643587, -0.459031, -0.612442,
		-0.499595, 0.858158, -0.118196,
		37.306679, 39.472263, 34.495884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405502, 38.817265, 33.836342>,  <37.656395, 38.871555, 34.578621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405502, 38.817265, 33.836342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.404083, 39.197231, 33.961338>,  <37.403233, 39.425209, 34.036335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.404083, 39.197231, 33.961338>,  <37.405502, 38.817265, 33.836342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404083, 39.197231, 33.961338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336105, 0.295443, -0.894286,
		-0.941818, 0.101857, -0.320320,
		-0.003547, 0.949915, 0.312488,
		37.403019, 39.482204, 34.055084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043358, 39.181873, 33.267387>,  <37.405502, 38.817265, 33.836342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043358, 39.181873, 33.267387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.237606, 39.463554, 33.474564>,  <37.354156, 39.632565, 33.598869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.237606, 39.463554, 33.474564>,  <37.043358, 39.181873, 33.267387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237606, 39.463554, 33.474564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308719, 0.416161, -0.855279,
		-0.817840, 0.575242, -0.015304,
		0.485624, 0.704206, 0.517941,
		37.383293, 39.674816, 33.629948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916470, 39.875473, 32.949478>,  <37.043358, 39.181873, 33.267387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916470, 39.875473, 32.949478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242847, 39.925053, 33.175350>,  <37.438675, 39.954800, 33.310875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242847, 39.925053, 33.175350>,  <36.916470, 39.875473, 32.949478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242847, 39.925053, 33.175350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521206, 0.264913, -0.811274,
		-0.250151, 0.956272, 0.151550,
		0.815947, 0.123952, 0.564683,
		37.487633, 39.962238, 33.344753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131878, 40.481949, 32.766140>,  <36.916470, 39.875473, 32.949478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131878, 40.481949, 32.766140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.443008, 40.301765, 32.941444>,  <37.629688, 40.193657, 33.046627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.443008, 40.301765, 32.941444>,  <37.131878, 40.481949, 32.766140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443008, 40.301765, 32.941444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581283, 0.250515, -0.774179,
		0.238943, 0.856931, 0.456700,
		0.777828, -0.450457, 0.438261,
		37.676357, 40.166630, 33.072922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672653, 40.917858, 32.639042>,  <37.131878, 40.481949, 32.766140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672653, 40.917858, 32.639042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.816452, 40.549179, 32.697319>,  <37.902733, 40.327972, 32.732285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.816452, 40.549179, 32.697319>,  <37.672653, 40.917858, 32.639042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816452, 40.549179, 32.697319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583444, 0.100166, -0.805953,
		0.728255, 0.374743, 0.573771,
		0.359497, -0.921702, 0.145695,
		37.924301, 40.272667, 32.741028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297653, 40.945065, 32.361057>,  <37.672653, 40.917858, 32.639042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297653, 40.945065, 32.361057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.258717, 40.548603, 32.397137>,  <38.235355, 40.310726, 32.418785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.258717, 40.548603, 32.397137>,  <38.297653, 40.945065, 32.361057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258717, 40.548603, 32.397137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578021, -0.130074, -0.805588,
		0.810195, -0.026282, 0.585570,
		-0.097340, -0.991156, 0.090194,
		38.229515, 40.251255, 32.424194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988503, 40.627567, 32.186760>,  <38.297653, 40.945065, 32.361057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988503, 40.627567, 32.186760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.717167, 40.335785, 32.151535>,  <38.554367, 40.160717, 32.130398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.717167, 40.335785, 32.151535>,  <38.988503, 40.627567, 32.186760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717167, 40.335785, 32.151535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465211, -0.333622, -0.819924,
		0.568717, -0.597153, 0.565658,
		-0.678336, -0.729455, -0.088065,
		38.513664, 40.116947, 32.125114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392616, 39.952869, 31.980947>,  <38.988503, 40.627567, 32.186760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392616, 39.952869, 31.980947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.014194, 39.896057, 31.864458>,  <38.787144, 39.861969, 31.794565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.014194, 39.896057, 31.864458>,  <39.392616, 39.952869, 31.980947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014194, 39.896057, 31.864458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323090, -0.345727, -0.880957,
		0.024443, -0.927523, 0.372966,
		-0.946053, -0.142036, -0.291223,
		38.730377, 39.853447, 31.777092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247963, 39.228951, 31.847141>,  <39.392616, 39.952869, 31.980947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247963, 39.228951, 31.847141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.981491, 39.430534, 31.627239>,  <38.821606, 39.551483, 31.495298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.981491, 39.430534, 31.627239>,  <39.247963, 39.228951, 31.847141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981491, 39.430534, 31.627239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375887, -0.409780, -0.831137,
		-0.644135, -0.760334, 0.083558,
		-0.666183, 0.503956, -0.549753,
		38.781635, 39.581722, 31.462313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918777, 38.703293, 31.335564>,  <39.247963, 39.228951, 31.847141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918777, 38.703293, 31.335564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.880764, 39.077126, 31.198435>,  <38.857956, 39.301426, 31.116158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.880764, 39.077126, 31.198435>,  <38.918777, 38.703293, 31.335564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880764, 39.077126, 31.198435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346539, -0.291782, -0.891501,
		-0.933209, -0.203527, -0.296139,
		-0.095036, 0.934580, -0.342823,
		38.852253, 39.357498, 31.095589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711819, 38.630718, 30.633759>,  <38.918777, 38.703293, 31.335564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711819, 38.630718, 30.633759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.815872, 39.016621, 30.649633>,  <38.878304, 39.248161, 30.659159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.815872, 39.016621, 30.649633>,  <38.711819, 38.630718, 30.633759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815872, 39.016621, 30.649633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464190, -0.088910, -0.881262,
		-0.846675, 0.247668, -0.470959,
		0.260133, 0.964757, 0.039687,
		38.893913, 39.306049, 30.661539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591980, 38.740070, 29.973957>,  <38.711819, 38.630718, 30.633759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591980, 38.740070, 29.973957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.820980, 39.046890, 30.089804>,  <38.958378, 39.230984, 30.159311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.820980, 39.046890, 30.089804>,  <38.591980, 38.740070, 29.973957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820980, 39.046890, 30.089804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520182, -0.066760, -0.851442,
		-0.633766, 0.638101, -0.437227,
		0.572496, 0.767053, 0.289619,
		38.992729, 39.277004, 30.176689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685638, 39.298264, 29.367037>,  <38.591980, 38.740070, 29.973957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685638, 39.298264, 29.367037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.992340, 39.353149, 29.617878>,  <39.176361, 39.386082, 29.768383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.992340, 39.353149, 29.617878>,  <38.685638, 39.298264, 29.367037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992340, 39.353149, 29.617878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636534, -0.289027, -0.715044,
		0.083137, 0.947437, -0.308953,
		0.766755, 0.137212, 0.627104,
		39.222366, 39.394314, 29.806009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092503, 39.697315, 28.980268>,  <38.685638, 39.298264, 29.367037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092503, 39.697315, 28.980268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.337448, 39.574287, 29.271585>,  <39.484417, 39.500469, 29.446375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.337448, 39.574287, 29.271585>,  <39.092503, 39.697315, 28.980268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337448, 39.574287, 29.271585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746155, -0.079587, -0.660998,
		0.261268, 0.948190, 0.180761,
		0.612365, -0.307573, 0.728291,
		39.521156, 39.482014, 29.490072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745922, 40.113354, 28.878944>,  <39.092503, 39.697315, 28.980268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745922, 40.113354, 28.878944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.844681, 39.783703, 29.082851>,  <39.903934, 39.585915, 29.205196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.844681, 39.783703, 29.082851>,  <39.745922, 40.113354, 28.878944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844681, 39.783703, 29.082851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781486, -0.141724, -0.607613,
		0.572995, 0.548393, 0.609050,
		0.246893, -0.824123, 0.509769,
		39.918747, 39.536465, 29.235783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410748, 40.233986, 29.019569>,  <39.745922, 40.113354, 28.878944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410748, 40.233986, 29.019569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.377720, 39.838818, 29.072012>,  <40.357903, 39.601715, 29.103477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.377720, 39.838818, 29.072012>,  <40.410748, 40.233986, 29.019569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377720, 39.838818, 29.072012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848228, -0.138724, -0.511140,
		0.523155, 0.069003, 0.849439,
		-0.082568, -0.987924, 0.131105,
		40.352951, 39.542439, 29.111343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986507, 40.002800, 29.141985>,  <40.410748, 40.233986, 29.019569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986507, 40.002800, 29.141985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.818554, 39.659832, 29.022966>,  <40.717781, 39.454052, 28.951555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.818554, 39.659832, 29.022966>,  <40.986507, 40.002800, 29.141985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818554, 39.659832, 29.022966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814510, -0.211384, -0.540269,
		0.400339, -0.469205, 0.787131,
		-0.419883, -0.857417, -0.297547,
		40.692589, 39.402607, 28.933702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548855, 39.507042, 29.014528>,  <40.986507, 40.002800, 29.141985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548855, 39.507042, 29.014528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.230438, 39.373753, 28.812428>,  <41.039387, 39.293781, 28.691168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.230438, 39.373753, 28.812428>,  <41.548855, 39.507042, 29.014528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230438, 39.373753, 28.812428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574211, -0.151946, -0.804484,
		0.191299, -0.930525, 0.312294,
		-0.796044, -0.333219, -0.505251,
		40.991627, 39.273788, 28.660852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839428, 38.893528, 28.777716>,  <41.548855, 39.507042, 29.014528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839428, 38.893528, 28.777716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.525059, 38.990520, 28.550200>,  <41.336437, 39.048714, 28.413691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.525059, 38.990520, 28.550200>,  <41.839428, 38.893528, 28.777716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525059, 38.990520, 28.550200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569641, -0.073818, -0.818572,
		-0.240472, -0.967344, -0.080109,
		-0.785928, 0.242478, -0.568790,
		41.289280, 39.063263, 28.379562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954823, 38.134899, 28.973724>,  <41.839428, 38.893528, 28.777716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954823, 38.134899, 28.973724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.308876, 37.965347, 29.050526>,  <42.521309, 37.863617, 29.096605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.308876, 37.965347, 29.050526>,  <41.954823, 38.134899, 28.973724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308876, 37.965347, 29.050526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100475, 0.228785, 0.968278,
		-0.454359, -0.876347, 0.159916,
		0.885134, -0.423878, 0.192002,
		42.574417, 37.838184, 29.108126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922970, 37.692120, 29.566069>,  <41.954823, 38.134899, 28.973724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922970, 37.692120, 29.566069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.314705, 37.771515, 29.550522>,  <42.549744, 37.819153, 29.541193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.314705, 37.771515, 29.550522>,  <41.922970, 37.692120, 29.566069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314705, 37.771515, 29.550522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037528, 0.010509, 0.999240,
		0.198743, -0.980048, 0.002843,
		0.979333, 0.198485, -0.038867,
		42.608505, 37.831059, 29.538862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237408, 37.171978, 29.994555>,  <41.922970, 37.692120, 29.566069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237408, 37.171978, 29.994555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.481815, 37.487659, 29.969885>,  <42.628460, 37.677071, 29.955084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.481815, 37.487659, 29.969885>,  <42.237408, 37.171978, 29.994555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481815, 37.487659, 29.969885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120906, 0.170036, 0.977992,
		0.782326, -0.590117, 0.199315,
		0.611021, 0.789208, -0.061675,
		42.665123, 37.724422, 29.951382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524517, 37.108349, 30.543760>,  <42.237408, 37.171978, 29.994555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524517, 37.108349, 30.543760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.652069, 37.472866, 30.439556>,  <42.728600, 37.691574, 30.377033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.652069, 37.472866, 30.439556>,  <42.524517, 37.108349, 30.543760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652069, 37.472866, 30.439556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034138, 0.263638, 0.964018,
		0.947179, -0.316303, 0.052960,
		0.318884, 0.911289, -0.260510,
		42.747734, 37.746254, 30.361403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151981, 37.325249, 31.007671>,  <42.524517, 37.108349, 30.543760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151981, 37.325249, 31.007671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.974194, 37.653099, 30.863085>,  <42.867519, 37.849808, 30.776333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.974194, 37.653099, 30.863085>,  <43.151981, 37.325249, 31.007671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974194, 37.653099, 30.863085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245026, 0.276890, 0.929136,
		0.861632, 0.501541, 0.077760,
		-0.444469, 0.819627, -0.361468,
		42.840851, 37.898987, 30.754644>
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
