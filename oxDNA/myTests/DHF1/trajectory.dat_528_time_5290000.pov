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
	<0.000922, 2.885939, 2.050512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.057891, 3.210121, 1.823223>,  <0.092073, 3.404631, 1.686850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.057891, 3.210121, 1.823223>,  <0.000922, 2.885939, 2.050512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.057891, 3.210121, 1.823223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698457, 0.324475, 0.637865,
		0.701336, -0.487726, -0.519856,
		0.142423, 0.810456, -0.568222,
		0.100618, 3.453258, 1.652756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.801321, 3.093260, 1.877966>,  <0.000922, 2.885939, 2.050512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.801321, 3.093260, 1.877966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.537489, 3.393387, 1.895763>,  <0.379190, 3.573463, 1.906442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.537489, 3.393387, 1.895763>,  <0.801321, 3.093260, 1.877966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.537489, 3.393387, 1.895763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670429, 0.560525, 0.486144,
		0.339823, 0.350480, -0.872745,
		-0.659579, 0.750317, 0.044493,
		0.339616, 3.618482, 1.909111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.999121, 3.831776, 1.617729>,  <0.801321, 3.093260, 1.877966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.999121, 3.831776, 1.617729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.730230, 3.868149, 1.911625>,  <0.568895, 3.889972, 2.087962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.730230, 3.868149, 1.911625>,  <0.999121, 3.831776, 1.617729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.730230, 3.868149, 1.911625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620388, 0.610767, 0.492018,
		-0.404014, 0.786571, -0.466988,
		-0.672228, 0.090932, 0.734739,
		0.528561, 3.895428, 2.132046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.784465, 4.570633, 1.747651>,  <0.999121, 3.831776, 1.617729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.784465, 4.570633, 1.747651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.756202, 4.351765, 2.081264>,  <0.739244, 4.220444, 2.281432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.756202, 4.351765, 2.081264>,  <0.784465, 4.570633, 1.747651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.756202, 4.351765, 2.081264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632176, 0.622202, 0.461756,
		-0.771597, 0.559882, 0.301945,
		-0.070658, -0.547171, 0.834033,
		0.735005, 4.187613, 2.331474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.751236, 5.010714, 2.304669>,  <0.784465, 4.570633, 1.747651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.751236, 5.010714, 2.304669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.845068, 4.687244, 2.520454>,  <0.901367, 4.493163, 2.649925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.845068, 4.687244, 2.520454>,  <0.751236, 5.010714, 2.304669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.845068, 4.687244, 2.520454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450689, 0.582174, 0.676721,
		-0.861308, 0.084385, 0.501027,
		0.234580, -0.808673, 0.539463,
		0.915442, 4.444643, 2.682293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.646787, 5.301239, 2.869025>,  <0.751236, 5.010714, 2.304669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.646787, 5.301239, 2.869025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.871535, 4.974266, 2.919788>,  <1.006384, 4.778082, 2.950246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.871535, 4.974266, 2.919788>,  <0.646787, 5.301239, 2.869025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.871535, 4.974266, 2.919788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427938, 0.418515, 0.801070,
		-0.707934, -0.395789, 0.584962,
		0.561871, -0.817432, 0.126908,
		1.040097, 4.729036, 2.957861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.467702, 5.111677, 3.477440>,  <0.646787, 5.301239, 2.869025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.467702, 5.111677, 3.477440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.840772, 4.999359, 3.386864>,  <1.064613, 4.931968, 3.332518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.840772, 4.999359, 3.386864>,  <0.467702, 5.111677, 3.477440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.840772, 4.999359, 3.386864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346871, 0.525844, 0.776640,
		-0.099004, -0.802896, 0.587840,
		0.932673, -0.280795, -0.226441,
		1.120574, 4.915121, 3.318932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.801539, 4.940958, 4.126618>,  <0.467702, 5.111677, 3.477440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.801539, 4.940958, 4.126618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.085568, 5.027927, 3.858730>,  <1.255985, 5.080109, 3.697997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.085568, 5.027927, 3.858730>,  <0.801539, 4.940958, 4.126618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.085568, 5.027927, 3.858730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483259, 0.541276, 0.688099,
		0.512111, -0.812248, 0.279274,
		0.710072, 0.217422, -0.669720,
		1.298589, 5.093154, 3.657814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.301704, 5.881483, 4.312686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.696033, 5.890953, 4.246246>,  <1.932631, 5.896635, 4.206382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.696033, 5.890953, 4.246246>,  <1.301704, 5.881483, 4.312686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.696033, 5.890953, 4.246246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108478, -0.665295, -0.738657,
		-0.127993, 0.746205, -0.653296,
		0.985825, 0.023675, -0.166100,
		1.991781, 5.898056, 4.196416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.472992, 6.111269, 3.586358>,  <1.301704, 5.881483, 4.312686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.472992, 6.111269, 3.586358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.726822, 5.847549, 3.747673>,  <1.879120, 5.689318, 3.844462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.726822, 5.847549, 3.747673>,  <1.472992, 6.111269, 3.586358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.726822, 5.847549, 3.747673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287253, -0.685629, -0.668879,
		0.717496, 0.308608, -0.624468,
		0.634575, -0.659298, 0.403288,
		1.917194, 5.649760, 3.868659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.978175, 5.851917, 3.049489>,  <1.472992, 6.111269, 3.586358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.978175, 5.851917, 3.049489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.903130, 5.610619, 3.359558>,  <1.858102, 5.465839, 3.545600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.903130, 5.610619, 3.359558>,  <1.978175, 5.851917, 3.049489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.903130, 5.610619, 3.359558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248391, -0.734399, -0.631633,
		0.950317, -0.311050, -0.012057,
		-0.187614, -0.603246, 0.775174,
		1.846845, 5.429645, 3.592110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.164126, 5.227980, 2.828888>,  <1.978175, 5.851917, 3.049489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.164126, 5.227980, 2.828888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.956974, 5.115631, 3.152100>,  <1.832683, 5.048222, 3.346027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.956974, 5.115631, 3.152100>,  <2.164126, 5.227980, 2.828888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.956974, 5.115631, 3.152100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358846, -0.786114, -0.503244,
		0.776550, -0.550578, 0.306324,
		-0.517881, -0.280871, 0.808029,
		1.801610, 5.031370, 3.394508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.307506, 4.413176, 2.935440>,  <2.164126, 5.227980, 2.828888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.307506, 4.413176, 2.935440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.961155, 4.549644, 3.081787>,  <1.753344, 4.631526, 3.169595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.961155, 4.549644, 3.081787>,  <2.307506, 4.413176, 2.935440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.961155, 4.549644, 3.081787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469710, -0.806113, -0.359936,
		0.172131, -0.483512, 0.858246,
		-0.865877, 0.341171, 0.365868,
		1.701392, 4.651996, 3.191547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.932714, 3.786528, 3.127734>,  <2.307506, 4.413176, 2.935440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.932714, 3.786528, 3.127734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.649014, 4.067062, 3.099197>,  <1.478793, 4.235383, 3.082076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.649014, 4.067062, 3.099197>,  <1.932714, 3.786528, 3.127734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.649014, 4.067062, 3.099197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609560, -0.660961, -0.437683,
		-0.354117, -0.266941, 0.896294,
		-0.709251, 0.701336, -0.071341,
		1.436238, 4.277463, 3.077795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.400953, 3.425502, 3.313524>,  <1.932714, 3.786528, 3.127734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.400953, 3.425502, 3.313524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.269455, 3.741661, 3.106758>,  <1.190556, 3.931356, 2.982699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.269455, 3.741661, 3.106758>,  <1.400953, 3.425502, 3.313524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.269455, 3.741661, 3.106758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712791, -0.566717, -0.413231,
		-0.619561, 0.232605, 0.749693,
		-0.328744, 0.790396, -0.516915,
		1.170831, 3.978780, 2.951684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.682060, 3.365448, 3.414881>,  <1.400953, 3.425502, 3.313524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.682060, 3.365448, 3.414881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.706882, 3.591911, 3.086098>,  <0.721776, 3.727789, 2.888828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.706882, 3.591911, 3.086098>,  <0.682060, 3.365448, 3.414881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.706882, 3.591911, 3.086098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723653, -0.541649, -0.427719,
		-0.687369, 0.621355, 0.376089,
		0.062057, 0.566158, -0.821957,
		0.725499, 3.761759, 2.839510>
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
