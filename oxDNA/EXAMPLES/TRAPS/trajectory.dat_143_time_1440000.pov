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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.206928, 52.932281, 49.599594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273247, 53.270016, 49.803398>,  <36.313038, 53.472656, 49.925682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273247, 53.270016, 49.803398>,  <36.206928, 52.932281, 49.599594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273247, 53.270016, 49.803398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629944, -0.488189, 0.604021,
		0.758738, 0.220823, -0.612824,
		0.165792, 0.844339, 0.509514,
		36.322983, 53.523319, 49.956253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947514, 53.053154, 49.668354>,  <36.206928, 52.932281, 49.599594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947514, 53.053154, 49.668354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788979, 53.265274, 49.968140>,  <36.693855, 53.392548, 50.148010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788979, 53.265274, 49.968140>,  <36.947514, 53.053154, 49.668354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788979, 53.265274, 49.968140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637955, -0.427973, 0.640197,
		0.660248, 0.731859, -0.168686,
		-0.396341, 0.530303, 0.749461,
		36.670074, 53.424366, 50.192978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627140, 53.511669, 49.810696>,  <36.947514, 53.053154, 49.668354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627140, 53.511669, 49.810696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718651, 53.135269, 49.910439>,  <37.773556, 52.909428, 49.970284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718651, 53.135269, 49.910439>,  <37.627140, 53.511669, 49.810696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718651, 53.135269, 49.910439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972211, 0.207785, -0.107845,
		0.049669, 0.267100, 0.962388,
		0.228776, -0.941001, 0.249357,
		37.787285, 52.852970, 49.985245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227077, 53.625465, 50.127090>,  <37.627140, 53.511669, 49.810696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227077, 53.625465, 50.127090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215244, 53.235558, 50.038589>,  <38.208145, 53.001614, 49.985489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215244, 53.235558, 50.038589>,  <38.227077, 53.625465, 50.127090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215244, 53.235558, 50.038589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995700, -0.009294, -0.092170,
		0.087788, -0.223030, 0.970851,
		-0.029579, -0.974767, -0.221255,
		38.206371, 52.943127, 49.972214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727901, 53.980743, 50.463367>,  <38.227077, 53.625465, 50.127090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727901, 53.980743, 50.463367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983345, 53.716404, 50.305656>,  <39.136612, 53.557800, 50.211029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983345, 53.716404, 50.305656>,  <38.727901, 53.980743, 50.463367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983345, 53.716404, 50.305656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764982, -0.600810, -0.232014,
		-0.083562, 0.449784, -0.889220,
		0.638608, -0.660849, -0.394282,
		39.174927, 53.518150, 50.187370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209808, 53.578133, 51.026031>,  <38.727901, 53.980743, 50.463367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209808, 53.578133, 51.026031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458496, 53.559914, 50.713264>,  <39.607708, 53.548981, 50.525604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458496, 53.559914, 50.713264>,  <39.209808, 53.578133, 51.026031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458496, 53.559914, 50.713264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783197, 0.025273, 0.621260,
		-0.008536, -0.998643, 0.051385,
		0.621715, -0.045548, -0.781918,
		39.645012, 53.546249, 50.478687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628223, 53.045486, 51.241650>,  <39.209808, 53.578133, 51.026031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628223, 53.045486, 51.241650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790455, 53.294044, 50.973511>,  <39.887794, 53.443180, 50.812626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790455, 53.294044, 50.973511>,  <39.628223, 53.045486, 51.241650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790455, 53.294044, 50.973511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871669, -0.042185, 0.488276,
		0.275135, -0.782359, -0.558762,
		0.405578, 0.621398, -0.670352,
		39.912128, 53.480465, 50.772404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333858, 52.971989, 51.300003>,  <39.628223, 53.045486, 51.241650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333858, 52.971989, 51.300003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283539, 53.336845, 51.143967>,  <40.253345, 53.555759, 51.050343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283539, 53.336845, 51.143967>,  <40.333858, 52.971989, 51.300003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283539, 53.336845, 51.143967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917712, 0.256351, 0.303461,
		0.376800, -0.319817, -0.869332,
		-0.125802, 0.912141, -0.390093,
		40.245800, 53.610489, 51.026939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919617, 53.151260, 50.848408>,  <40.333858, 52.971989, 51.300003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919617, 53.151260, 50.848408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782284, 53.490849, 51.009094>,  <40.699883, 53.694599, 51.105507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782284, 53.490849, 51.009094>,  <40.919617, 53.151260, 50.848408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782284, 53.490849, 51.009094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919909, 0.217699, 0.326151,
		0.189439, 0.481518, -0.855718,
		-0.343337, 0.848969, 0.401712,
		40.679283, 53.745541, 51.129608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410164, 53.632915, 50.623840>,  <40.919617, 53.151260, 50.848408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410164, 53.632915, 50.623840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224247, 53.795811, 50.938324>,  <41.112698, 53.893547, 51.127014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224247, 53.795811, 50.938324>,  <41.410164, 53.632915, 50.623840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224247, 53.795811, 50.938324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881961, 0.291324, 0.370506,
		-0.078159, 0.865615, -0.494572,
		-0.464797, 0.407235, 0.786208,
		41.084808, 53.917980, 51.174187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594604, 54.393761, 50.527912>,  <41.410164, 53.632915, 50.623840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594604, 54.393761, 50.527912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553658, 54.283031, 50.910091>,  <41.529087, 54.216595, 51.139400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553658, 54.283031, 50.910091>,  <41.594604, 54.393761, 50.527912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553658, 54.283031, 50.910091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972757, 0.172977, 0.154343,
		-0.207998, 0.945223, 0.251576,
		-0.102372, -0.276826, 0.955451,
		41.522945, 54.199986, 51.196728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848763, 55.049225, 50.956268>,  <41.594604, 54.393761, 50.527912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848763, 55.049225, 50.956268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799789, 54.812569, 51.275009>,  <41.770405, 54.670574, 51.466255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799789, 54.812569, 51.275009>,  <41.848763, 55.049225, 50.956268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799789, 54.812569, 51.275009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801133, 0.415013, 0.431219,
		-0.585830, 0.691181, 0.423169,
		-0.122429, -0.591636, 0.796855,
		41.763062, 54.635078, 51.514065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048645, 55.469448, 51.580070>,  <41.848763, 55.049225, 50.956268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048645, 55.469448, 51.580070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086853, 55.083031, 51.676094>,  <42.109779, 54.851181, 51.733707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086853, 55.083031, 51.676094>,  <42.048645, 55.469448, 51.580070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086853, 55.083031, 51.676094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875606, 0.196255, 0.441359,
		-0.473486, 0.168039, 0.864624,
		0.095521, -0.966047, 0.240060,
		42.115509, 54.793217, 51.748112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077667, 55.322384, 52.300312>,  <42.048645, 55.469448, 51.580070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077667, 55.322384, 52.300312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289745, 55.078041, 52.065109>,  <42.416992, 54.931435, 51.923988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289745, 55.078041, 52.065109>,  <42.077667, 55.322384, 52.300312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289745, 55.078041, 52.065109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838025, 0.272129, 0.472926,
		-0.128877, -0.743504, 0.656195,
		0.530192, -0.610858, -0.588004,
		42.448803, 54.894783, 51.888706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502087, 54.817139, 52.658730>,  <42.077667, 55.322384, 52.300312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502087, 54.817139, 52.658730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644062, 54.965603, 52.315506>,  <42.729248, 55.054680, 52.109573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644062, 54.965603, 52.315506>,  <42.502087, 54.817139, 52.658730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644062, 54.965603, 52.315506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819982, 0.317259, 0.476421,
		0.449055, -0.872689, -0.191740,
		0.354936, 0.371162, -0.858056,
		42.750542, 55.076950, 52.058090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172527, 54.723335, 52.734104>,  <42.502087, 54.817139, 52.658730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172527, 54.723335, 52.734104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155010, 54.988136, 52.434818>,  <43.144501, 55.147018, 52.255245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155010, 54.988136, 52.434818>,  <43.172527, 54.723335, 52.734104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155010, 54.988136, 52.434818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850826, 0.417250, 0.319370,
		0.523619, -0.622615, -0.581527,
		-0.043797, 0.662006, -0.748217,
		43.141872, 55.186737, 52.210354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812450, 54.663952, 52.362446>,  <43.172527, 54.723335, 52.734104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812450, 54.663952, 52.362446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647171, 55.028202, 52.364815>,  <43.548004, 55.246750, 52.366238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647171, 55.028202, 52.364815>,  <43.812450, 54.663952, 52.362446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647171, 55.028202, 52.364815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853134, 0.384815, 0.352250,
		0.318486, 0.150604, -0.935887,
		-0.413194, 0.910624, 0.005927,
		43.523212, 55.301388, 52.366592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.315247, 55.204639, 52.031990>,  <43.812450, 54.663952, 52.362446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.315247, 55.204639, 52.031990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.069340, 55.368435, 52.301620>,  <43.921795, 55.466713, 52.463398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.069340, 55.368435, 52.301620>,  <44.315247, 55.204639, 52.031990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069340, 55.368435, 52.301620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776409, 0.464555, 0.425884,
		-0.138750, 0.785178, -0.603526,
		-0.614766, 0.409492, 0.674076,
		43.884911, 55.491283, 52.503845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869526, 55.805592, 52.092400>,  <44.315247, 55.204639, 52.031990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869526, 55.805592, 52.092400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898544, 56.163921, 52.267776>,  <43.915955, 56.378922, 52.373001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898544, 56.163921, 52.267776>,  <43.869526, 55.805592, 52.092400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898544, 56.163921, 52.267776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972313, -0.161434, 0.168954,
		0.222132, 0.414044, -0.882737,
		0.072549, 0.895827, 0.438441,
		43.920307, 56.432671, 52.399307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.450092, 56.264954, 51.840710>,  <43.869526, 55.805592, 52.092400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.450092, 56.264954, 51.840710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428833, 56.433857, 52.202675>,  <44.416077, 56.535198, 52.419853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428833, 56.433857, 52.202675>,  <44.450092, 56.264954, 51.840710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428833, 56.433857, 52.202675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994664, -0.057852, 0.085417,
		0.088420, 0.904627, -0.416932,
		-0.053150, 0.422260, 0.904915,
		44.412888, 56.560535, 52.474148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965111, 56.859772, 51.957119>,  <44.450092, 56.264954, 51.840710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965111, 56.859772, 51.957119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.883419, 56.675884, 52.302826>,  <44.834404, 56.565552, 52.510250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.883419, 56.675884, 52.302826>,  <44.965111, 56.859772, 51.957119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.883419, 56.675884, 52.302826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972534, -0.195987, 0.125565,
		0.111661, 0.866171, 0.487114,
		-0.204229, -0.459715, 0.864264,
		44.822151, 56.537971, 52.562107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.360729, 57.020439, 52.547722>,  <44.965111, 56.859772, 51.957119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.360729, 57.020439, 52.547722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239155, 56.649204, 52.633766>,  <45.166210, 56.426464, 52.685394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239155, 56.649204, 52.633766>,  <45.360729, 57.020439, 52.547722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239155, 56.649204, 52.633766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923979, -0.232140, 0.303931,
		-0.232140, 0.291134, 0.928091,
		-0.303931, -0.928091, 0.215113,
		45.147976, 56.370777, 52.698299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.392963, 56.730667, 53.304993>,  <45.360729, 57.020439, 52.547722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.392963, 56.730667, 53.304993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493137, 56.498440, 52.995094>,  <45.553242, 56.359104, 52.809155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493137, 56.498440, 52.995094>,  <45.392963, 56.730667, 53.304993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493137, 56.498440, 52.995094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921306, -0.102956, 0.374962,
		-0.297453, -0.807679, 0.509093,
		0.250435, -0.580564, -0.774744,
		45.568268, 56.324272, 52.762672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.851227, 56.144455, 53.497189>,  <45.392963, 56.730667, 53.304993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.851227, 56.144455, 53.497189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906212, 56.278664, 53.124409>,  <45.939201, 56.359188, 52.900742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906212, 56.278664, 53.124409>,  <45.851227, 56.144455, 53.497189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906212, 56.278664, 53.124409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958060, 0.193812, 0.211087,
		0.251447, -0.921881, -0.294805,
		0.137460, 0.335518, -0.931951,
		45.947449, 56.379318, 52.844822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.482826, 55.791199, 53.283806>,  <45.851227, 56.144455, 53.497189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.482826, 55.791199, 53.283806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.434521, 56.124294, 53.067673>,  <46.405537, 56.324150, 52.937992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.434521, 56.124294, 53.067673>,  <46.482826, 55.791199, 53.283806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.434521, 56.124294, 53.067673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973068, 0.206973, 0.101491,
		0.196350, -0.513525, -0.835308,
		-0.120768, 0.832739, -0.540334,
		46.398289, 56.374115, 52.905571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.100899, 55.926815, 53.152958>,  <46.482826, 55.791199, 53.283806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.100899, 55.926815, 53.152958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.957447, 56.284416, 53.045521>,  <46.871376, 56.498978, 52.981056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.957447, 56.284416, 53.045521>,  <47.100899, 55.926815, 53.152958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.957447, 56.284416, 53.045521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930694, 0.364654, -0.028922,
		0.072088, -0.260352, -0.962819,
		-0.358626, 0.894005, -0.268595,
		46.849861, 56.552616, 52.964943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.231815, 56.172672, 52.434269>,  <47.100899, 55.926815, 53.152958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.231815, 56.172672, 52.434269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.213860, 56.479492, 52.690277>,  <47.203087, 56.663582, 52.843884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.213860, 56.479492, 52.690277>,  <47.231815, 56.172672, 52.434269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.213860, 56.479492, 52.690277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892069, 0.319151, -0.319932,
		-0.449665, 0.556581, -0.698583,
		-0.044886, 0.767046, 0.640020,
		47.200394, 56.709606, 52.882282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.355114, 56.862743, 52.130672>,  <47.231815, 56.172672, 52.434269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.355114, 56.862743, 52.130672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.454449, 56.867672, 52.518112>,  <47.514050, 56.870628, 52.750576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.454449, 56.867672, 52.518112>,  <47.355114, 56.862743, 52.130672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.454449, 56.867672, 52.518112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907763, 0.346018, -0.237145,
		-0.338074, 0.938147, 0.074742,
		0.248339, 0.012324, 0.968595,
		47.528950, 56.871368, 52.808689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.409779, 57.530960, 52.303745>,  <47.355114, 56.862743, 52.130672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.409779, 57.530960, 52.303745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.654434, 57.287415, 52.505806>,  <47.801228, 57.141289, 52.627041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.654434, 57.287415, 52.505806>,  <47.409779, 57.530960, 52.303745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.654434, 57.287415, 52.505806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775004, 0.589409, -0.227959,
		-0.158946, 0.530924, 0.832380,
		0.611641, -0.608865, 0.505153,
		47.837925, 57.104755, 52.657352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.019955, 57.779560, 52.157028>,  <47.409779, 57.530960, 52.303745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.019955, 57.779560, 52.157028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.124199, 57.489658, 52.412155>,  <48.186745, 57.315716, 52.565231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.124199, 57.489658, 52.412155>,  <48.019955, 57.779560, 52.157028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.124199, 57.489658, 52.412155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965137, 0.212223, -0.153205,
		-0.024323, 0.655508, 0.754797,
		0.260612, -0.724756, 0.637817,
		48.202381, 57.272232, 52.603500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.563286, 58.125511, 52.510849>,  <48.019955, 57.779560, 52.157028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.563286, 58.125511, 52.510849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.615726, 57.729046, 52.518963>,  <48.647190, 57.491169, 52.523830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.615726, 57.729046, 52.518963>,  <48.563286, 58.125511, 52.510849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.615726, 57.729046, 52.518963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947505, 0.119253, -0.296670,
		0.291629, 0.058116, 0.954764,
		0.131100, -0.991162, 0.020287,
		48.655056, 57.431698, 52.525047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.112263, 57.777088, 53.028748>,  <48.563286, 58.125511, 52.510849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.112263, 57.777088, 53.028748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.053215, 57.608223, 52.670979>,  <49.017788, 57.506905, 52.456318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.053215, 57.608223, 52.670979>,  <49.112263, 57.777088, 53.028748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.053215, 57.608223, 52.670979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988022, -0.021838, -0.152760,
		0.044958, -0.906255, 0.420333,
		-0.147619, -0.422166, -0.894418,
		49.008930, 57.481575, 52.402653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.572517, 57.181999, 52.936886>,  <49.112263, 57.777088, 53.028748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.572517, 57.181999, 52.936886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.482574, 57.391724, 52.608364>,  <49.428608, 57.517559, 52.411251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.482574, 57.391724, 52.608364>,  <49.572517, 57.181999, 52.936886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.482574, 57.391724, 52.608364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962242, -0.013210, -0.271876,
		-0.153397, -0.851424, -0.501545,
		-0.224857, 0.524312, -0.821302,
		49.415119, 57.549019, 52.361973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.808598, 56.833569, 52.217510>,  <49.572517, 57.181999, 52.936886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.808598, 56.833569, 52.217510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.824680, 57.229038, 52.275352>,  <49.834332, 57.466320, 52.310059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.824680, 57.229038, 52.275352>,  <49.808598, 56.833569, 52.217510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.824680, 57.229038, 52.275352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985114, -0.015019, -0.171247,
		-0.167135, 0.149342, -0.974558,
		0.040211, 0.988672, 0.144608,
		49.836742, 57.525639, 52.318733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.282063, 57.220631, 51.648750>,  <49.808598, 56.833569, 52.217510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.282063, 57.220631, 51.648750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.261547, 57.373318, 52.017891>,  <50.249237, 57.464928, 52.239376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.261547, 57.373318, 52.017891>,  <50.282063, 57.220631, 51.648750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.261547, 57.373318, 52.017891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984687, 0.173496, -0.017033,
		-0.166614, 0.907851, -0.384768,
		-0.051292, 0.381714, 0.922856,
		50.246159, 57.487831, 52.294746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.591549, 57.861080, 51.663559>,  <50.282063, 57.220631, 51.648750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.591549, 57.861080, 51.663559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.621334, 57.710361, 52.032879>,  <50.639206, 57.619930, 52.254471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.621334, 57.710361, 52.032879>,  <50.591549, 57.861080, 51.663559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.621334, 57.710361, 52.032879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960469, 0.276146, 0.035237,
		-0.268243, 0.884177, 0.382462,
		0.074460, -0.376795, 0.923299,
		50.643673, 57.597324, 52.309868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.094814, 58.280441, 51.908997>,  <50.591549, 57.861080, 51.663559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.094814, 58.280441, 51.908997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.085014, 57.992355, 52.186321>,  <51.079136, 57.819504, 52.352718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.085014, 57.992355, 52.186321>,  <51.094814, 58.280441, 51.908997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.085014, 57.992355, 52.186321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981084, 0.115894, 0.155055,
		-0.192024, 0.683999, 0.703755,
		-0.024496, -0.720217, 0.693316,
		51.077667, 57.776291, 52.394318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.195354, 58.544762, 52.521263>,  <51.094814, 58.280441, 51.908997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.195354, 58.544762, 52.521263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.312618, 58.162594, 52.507259>,  <51.382977, 57.933292, 52.498856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.312618, 58.162594, 52.507259>,  <51.195354, 58.544762, 52.521263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.312618, 58.162594, 52.507259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951773, 0.288181, 0.105262,
		-0.090481, -0.064179, 0.993828,
		0.293158, -0.955423, -0.035009,
		51.400566, 57.875965, 52.496758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.532040, 58.401512, 53.139175>,  <51.195354, 58.544762, 52.521263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.532040, 58.401512, 53.139175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.659828, 58.193111, 52.822571>,  <51.736504, 58.068069, 52.632607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.659828, 58.193111, 52.822571>,  <51.532040, 58.401512, 53.139175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.659828, 58.193111, 52.822571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894456, 0.441585, 0.070357,
		0.312863, -0.730451, 0.607090,
		0.319474, -0.521003, -0.791513,
		51.755669, 58.036812, 52.585117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.115940, 58.167561, 53.420139>,  <51.532040, 58.401512, 53.139175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.115940, 58.167561, 53.420139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.125721, 58.107391, 53.024811>,  <52.131588, 58.071289, 52.787613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.125721, 58.107391, 53.024811>,  <52.115940, 58.167561, 53.420139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.125721, 58.107391, 53.024811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916168, 0.398982, -0.038057,
		0.400047, -0.904537, 0.147565,
		0.024451, -0.150419, -0.988320,
		52.133057, 58.062267, 52.728313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.700855, 57.736237, 53.144379>,  <52.115940, 58.167561, 53.420139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.700855, 57.736237, 53.144379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.636940, 58.025932, 52.876068>,  <52.598591, 58.199749, 52.715080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.636940, 58.025932, 52.876068>,  <52.700855, 57.736237, 53.144379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.636940, 58.025932, 52.876068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938945, 0.321254, 0.123198,
		0.304715, -0.610137, -0.731356,
		-0.159783, 0.724243, -0.670776,
		52.589005, 58.243206, 52.674835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.232201, 57.734741, 52.642967>,  <52.700855, 57.736237, 53.144379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.232201, 57.734741, 52.642967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.083992, 58.105453, 52.667583>,  <52.995068, 58.327881, 52.682354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.083992, 58.105453, 52.667583>,  <53.232201, 57.734741, 52.642967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.083992, 58.105453, 52.667583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888795, 0.334535, 0.313257,
		0.269732, 0.170768, -0.947672,
		-0.370524, 0.926782, 0.061543,
		52.972836, 58.383488, 52.686047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.732910, 58.228584, 52.274101>,  <53.232201, 57.734741, 52.642967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.732910, 58.228584, 52.274101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.500301, 58.344952, 52.577995>,  <53.360737, 58.414772, 52.760330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.500301, 58.344952, 52.577995>,  <53.732910, 58.228584, 52.274101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.500301, 58.344952, 52.577995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813002, 0.241497, 0.529818,
		-0.029340, 0.925767, -0.376954,
		-0.581521, 0.290919, 0.759736,
		53.325844, 58.432228, 52.805916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.031036, 58.704674, 52.487198>,  <53.732910, 58.228584, 52.274101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.031036, 58.704674, 52.487198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.835270, 58.604393, 52.821293>,  <53.717812, 58.544224, 53.021751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.835270, 58.604393, 52.821293>,  <54.031036, 58.704674, 52.487198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.835270, 58.604393, 52.821293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808244, 0.229223, 0.542401,
		-0.327439, 0.940533, 0.090447,
		-0.489414, -0.250706, 0.835237,
		53.688446, 58.529182, 53.071865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.084442, 59.275372, 53.096443>,  <54.031036, 58.704674, 52.487198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.084442, 59.275372, 53.096443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.047691, 58.904434, 53.241547>,  <54.025639, 58.681873, 53.328609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.047691, 58.904434, 53.241547>,  <54.084442, 59.275372, 53.096443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.047691, 58.904434, 53.241547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777126, 0.161001, 0.608403,
		-0.622602, 0.337812, 0.705868,
		-0.091880, -0.927341, 0.362762,
		54.020126, 58.626232, 53.350376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.200703, 59.090042, 53.901413>,  <54.084442, 59.275372, 53.096443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.200703, 59.090042, 53.901413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.277069, 58.723675, 54.042637>,  <54.322887, 58.503857, 54.127373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.277069, 58.723675, 54.042637>,  <54.200703, 59.090042, 53.901413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.277069, 58.723675, 54.042637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464429, -0.232593, -0.854521,
		0.864788, 0.327111, 0.380973,
		0.190911, -0.915914, 0.353063,
		54.334343, 58.448902, 54.148556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.022827, 58.830544, 53.892719>,  <54.200703, 59.090042, 53.901413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.022827, 58.830544, 53.892719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.734993, 58.561981, 53.821823>,  <54.562294, 58.400845, 53.779285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.734993, 58.561981, 53.821823>,  <55.022827, 58.830544, 53.892719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.734993, 58.561981, 53.821823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407577, -0.201709, -0.890614,
		0.562213, -0.713110, 0.418797,
		-0.719581, -0.671407, -0.177244,
		54.519119, 58.360558, 53.768650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.165020, 58.725273, 53.165169>,  <55.022827, 58.830544, 53.892719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.165020, 58.725273, 53.165169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.897507, 58.942223, 53.368565>,  <54.737000, 59.072392, 53.490601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.897507, 58.942223, 53.368565>,  <55.165020, 58.725273, 53.165169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.897507, 58.942223, 53.368565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601908, 0.796465, -0.057879,
		-0.436384, 0.267354, -0.859122,
		-0.668787, 0.542370, 0.508487,
		54.696869, 59.104935, 53.521111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.849373, 59.319195, 52.791679>,  <55.165020, 58.725273, 53.165169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.849373, 59.319195, 52.791679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.912521, 59.366470, 53.183823>,  <54.950409, 59.394836, 53.419109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.912521, 59.366470, 53.183823>,  <54.849373, 59.319195, 52.791679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.912521, 59.366470, 53.183823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574783, 0.796286, -0.188557,
		-0.802934, 0.593262, 0.057774,
		0.157868, 0.118191, 0.980361,
		54.959881, 59.401928, 53.477932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.571297, 59.637268, 52.709114>,  <54.849373, 59.319195, 52.791679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.571297, 59.637268, 52.709114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.459892, 59.453133, 53.046284>,  <55.393051, 59.342651, 53.248585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.459892, 59.453133, 53.046284>,  <55.571297, 59.637268, 52.709114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.459892, 59.453133, 53.046284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950857, -0.255791, 0.174476,
		0.135295, 0.850093, 0.508956,
		-0.278507, -0.460339, 0.842924,
		55.376339, 59.315029, 53.299160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.110119, 59.782841, 53.065273>,  <55.571297, 59.637268, 52.709114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.110119, 59.782841, 53.065273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.916252, 59.469967, 53.221882>,  <55.799934, 59.282242, 53.315849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.916252, 59.469967, 53.221882>,  <56.110119, 59.782841, 53.065273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.916252, 59.469967, 53.221882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869371, -0.480096, 0.117053,
		0.096412, 0.397110, 0.912693,
		-0.484663, -0.782184, 0.391523,
		55.770855, 59.235313, 53.339340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.308640, 59.564583, 53.765545>,  <56.110119, 59.782841, 53.065273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.308640, 59.564583, 53.765545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.209549, 59.281021, 53.501396>,  <56.150093, 59.110886, 53.342907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.209549, 59.281021, 53.501396>,  <56.308640, 59.564583, 53.765545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.209549, 59.281021, 53.501396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926343, -0.372955, 0.052857,
		-0.283759, -0.598636, 0.749076,
		-0.247730, -0.708900, -0.660372,
		56.135231, 59.068352, 53.303284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.271606, 58.835129, 54.024548>,  <56.308640, 59.564583, 53.765545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.271606, 58.835129, 54.024548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.411362, 58.832230, 53.649769>,  <56.495213, 58.830490, 53.424900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.411362, 58.832230, 53.649769>,  <56.271606, 58.835129, 54.024548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.411362, 58.832230, 53.649769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854573, -0.407601, 0.321818,
		-0.384233, -0.913131, -0.136221,
		0.349386, -0.007242, -0.936951,
		56.516178, 58.830055, 53.368683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.865932, 58.372856, 54.493191>,  <56.271606, 58.835129, 54.024548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.865932, 58.372856, 54.493191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.071747, 58.270153, 54.165939>,  <56.195236, 58.208530, 53.969589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.071747, 58.270153, 54.165939>,  <55.865932, 58.372856, 54.493191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.071747, 58.270153, 54.165939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748114, -0.331829, 0.574643,
		-0.419024, -0.907724, 0.021351,
		0.514533, -0.256762, -0.818126,
		56.226105, 58.193123, 53.920502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.068165, 57.647678, 54.564548>,  <55.865932, 58.372856, 54.493191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.068165, 57.647678, 54.564548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.315292, 57.863091, 54.335361>,  <56.463570, 57.992336, 54.197849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.315292, 57.863091, 54.335361>,  <56.068165, 57.647678, 54.564548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.315292, 57.863091, 54.335361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784089, -0.367037, 0.500488,
		0.059226, -0.758467, -0.649015,
		0.617816, 0.538528, -0.572967,
		56.500637, 58.024651, 54.163471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.807915, 57.504265, 54.380089>,  <56.068165, 57.647678, 54.564548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.807915, 57.504265, 54.380089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.945816, 57.877758, 54.341549>,  <57.028557, 58.101856, 54.318424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.945816, 57.877758, 54.341549>,  <56.807915, 57.504265, 54.380089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.945816, 57.877758, 54.341549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883726, -0.288241, 0.368708,
		0.316503, -0.212261, -0.924538,
		0.344752, 0.933736, -0.096352,
		57.049240, 58.157879, 54.312645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.481968, 57.447365, 53.973469>,  <56.807915, 57.504265, 54.380089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.481968, 57.447365, 53.973469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.570831, 57.743225, 53.719364>,  <57.624149, 57.920742, 53.566902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.570831, 57.743225, 53.719364>,  <57.481968, 57.447365, 53.973469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.570831, 57.743225, 53.719364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556318, 0.438921, 0.705591,
		0.800722, -0.510162, -0.313971,
		0.222158, 0.739651, -0.635266,
		57.637478, 57.965118, 53.528786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.248264, 57.562126, 53.937702>,  <57.481968, 57.447365, 53.973469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.248264, 57.562126, 53.937702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.053024, 57.893829, 53.828823>,  <57.935883, 58.092850, 53.763496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.053024, 57.893829, 53.828823>,  <58.248264, 57.562126, 53.937702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.053024, 57.893829, 53.828823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622350, 0.549339, 0.557590,
		0.611915, 0.102755, -0.784220,
		-0.488098, 0.829257, -0.272200,
		57.906593, 58.142605, 53.747162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.707603, 58.040066, 53.762756>,  <58.248264, 57.562126, 53.937702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.707603, 58.040066, 53.762756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.387703, 58.266418, 53.842937>,  <58.195763, 58.402229, 53.891048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.387703, 58.266418, 53.842937>,  <58.707603, 58.040066, 53.762756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.387703, 58.266418, 53.842937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573647, 0.621879, 0.533100,
		0.177013, 0.541336, -0.821962,
		-0.799747, 0.565882, 0.200455,
		58.147778, 58.436184, 53.903072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.746174, 58.789520, 53.572098>,  <58.707603, 58.040066, 53.762756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.746174, 58.789520, 53.572098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.544708, 58.697281, 53.905121>,  <58.423828, 58.641937, 54.104935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.544708, 58.697281, 53.905121>,  <58.746174, 58.789520, 53.572098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.544708, 58.697281, 53.905121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759735, 0.340533, 0.553932,
		-0.411245, 0.911517, 0.003675,
		-0.503667, -0.230594, 0.832554,
		58.393608, 58.628101, 54.154888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.953407, 59.031540, 54.204308>,  <58.746174, 58.789520, 53.572098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.953407, 59.031540, 54.204308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.162247, 58.864178, 54.501587>,  <59.287548, 58.763760, 54.679955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.162247, 58.864178, 54.501587>,  <58.953407, 59.031540, 54.204308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.162247, 58.864178, 54.501587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411349, -0.886880, -0.210323,
		0.747132, -0.195907, -0.635148,
		0.522097, -0.418407, 0.743203,
		59.318874, 58.738655, 54.724548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.514606, 58.485603, 54.021938>,  <58.953407, 59.031540, 54.204308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.514606, 58.485603, 54.021938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.326157, 58.415009, 54.367630>,  <59.213085, 58.372654, 54.575047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.326157, 58.415009, 54.367630>,  <59.514606, 58.485603, 54.021938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.326157, 58.415009, 54.367630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469983, -0.778892, -0.415264,
		0.746429, -0.601815, 0.284012,
		-0.471127, -0.176484, 0.864230,
		59.184818, 58.362064, 54.626900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.089718, 58.680405, 54.406582>,  <59.514606, 58.485603, 54.021938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.089718, 58.680405, 54.406582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.804436, 58.531746, 54.644310>,  <59.633266, 58.442551, 54.786945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.804436, 58.531746, 54.644310>,  <60.089718, 58.680405, 54.406582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.804436, 58.531746, 54.644310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654097, -0.048076, 0.754881,
		-0.251976, 0.927129, 0.277381,
		-0.713207, -0.371646, 0.594319,
		59.590473, 58.420254, 54.822605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.161758, 58.982738, 55.060780>,  <60.089718, 58.680405, 54.406582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.161758, 58.982738, 55.060780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.955261, 58.649349, 55.139595>,  <59.831364, 58.449318, 55.186882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.955261, 58.649349, 55.139595>,  <60.161758, 58.982738, 55.060780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.955261, 58.649349, 55.139595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585377, -0.175450, 0.791550,
		-0.625163, 0.523972, 0.578468,
		-0.516242, -0.833469, 0.197036,
		59.800388, 58.399307, 55.198708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.218266, 59.688454, 55.100361>,  <60.161758, 58.982738, 55.060780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.218266, 59.688454, 55.100361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.878273, 59.624054, 55.301003>,  <59.674278, 59.585415, 55.421387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.878273, 59.624054, 55.301003>,  <60.218266, 59.688454, 55.100361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.878273, 59.624054, 55.301003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178224, -0.983893, -0.013786,
		0.495746, 0.077680, 0.864986,
		-0.849983, -0.160996, 0.501606,
		59.623280, 59.575756, 55.451485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.666431, 59.498562, 55.771492>,  <60.218266, 59.688454, 55.100361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.666431, 59.498562, 55.771492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.880676, 59.160866, 55.763702>,  <61.009224, 58.958248, 55.759029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.880676, 59.160866, 55.763702>,  <60.666431, 59.498562, 55.771492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.880676, 59.160866, 55.763702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444745, 0.262407, 0.856355,
		-0.717862, -0.467330, 0.516020,
		0.535608, -0.844242, -0.019471,
		61.041359, 58.907593, 55.757862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.667702, 59.191021, 56.539333>,  <60.666431, 59.498562, 55.771492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.667702, 59.191021, 56.539333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.985680, 59.073341, 56.327103>,  <61.176464, 59.002735, 56.199764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.985680, 59.073341, 56.327103>,  <60.667702, 59.191021, 56.539333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.985680, 59.073341, 56.327103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599259, 0.244341, 0.762355,
		-0.094643, -0.923982, 0.370539,
		0.794941, -0.294201, -0.530580,
		61.224163, 58.985081, 56.167931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.063148, 58.701401, 57.007729>,  <60.667702, 59.191021, 56.539333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.063148, 58.701401, 57.007729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.313126, 58.867332, 56.743195>,  <61.463112, 58.966892, 56.584473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.313126, 58.867332, 56.743195>,  <61.063148, 58.701401, 57.007729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.313126, 58.867332, 56.743195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703129, 0.068982, 0.707708,
		0.339197, -0.907281, -0.248567,
		0.624944, 0.414827, -0.661335,
		61.500610, 58.991779, 56.544796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.745857, 58.307896, 57.084396>,  <61.063148, 58.701401, 57.007729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.745857, 58.307896, 57.084396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.777573, 58.658073, 56.893692>,  <61.796600, 58.868179, 56.779270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.777573, 58.658073, 56.893692>,  <61.745857, 58.307896, 57.084396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.777573, 58.658073, 56.893692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838670, 0.199940, 0.506613,
		0.538838, -0.440015, -0.718360,
		0.079288, 0.875449, -0.476763,
		61.801357, 58.920708, 56.750664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.414288, 58.360130, 56.885269>,  <61.745857, 58.307896, 57.084396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.414288, 58.360130, 56.885269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.297966, 58.735962, 56.957527>,  <62.228172, 58.961460, 57.000881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.297966, 58.735962, 56.957527>,  <62.414288, 58.360130, 56.885269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.297966, 58.735962, 56.957527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735489, 0.098767, 0.670299,
		0.611955, 0.327785, -0.719770,
		-0.290803, 0.939576, 0.180641,
		62.210724, 59.017834, 57.011719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.051876, 58.778358, 56.782825>,  <62.414288, 58.360130, 56.885269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.051876, 58.778358, 56.782825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.775040, 58.899269, 57.045013>,  <62.608940, 58.971817, 57.202328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.775040, 58.899269, 57.045013>,  <63.051876, 58.778358, 56.782825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.775040, 58.899269, 57.045013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699194, 0.055199, 0.712798,
		0.179283, 0.951620, -0.249555,
		-0.692088, 0.302280, 0.655470,
		62.567413, 58.989952, 57.241653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.560543, 58.987553, 57.258064>,  <63.051876, 58.778358, 56.782825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.560543, 58.987553, 57.258064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.231560, 59.078865, 57.466469>,  <63.034172, 59.133652, 57.591511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.231560, 59.078865, 57.466469>,  <63.560543, 58.987553, 57.258064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.231560, 59.078865, 57.466469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566473, 0.245397, 0.786695,
		0.051735, 0.942161, -0.331144,
		-0.822455, 0.228284, 0.521013,
		62.984821, 59.147350, 57.622772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.757034, 59.569347, 57.648563>,  <63.560543, 58.987553, 57.258064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.757034, 59.569347, 57.648563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.671989, 59.272217, 57.902496>,  <63.620960, 59.093941, 58.054855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.671989, 59.272217, 57.902496>,  <63.757034, 59.569347, 57.648563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.671989, 59.272217, 57.902496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506664, 0.639331, 0.578401,
		-0.835516, -0.198669, -0.512292,
		-0.212614, -0.742823, 0.634830,
		63.608204, 59.049370, 58.092945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.168922, 59.754688, 58.235676>,  <63.757034, 59.569347, 57.648563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.168922, 59.754688, 58.235676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.132019, 59.597443, 58.601616>,  <64.109879, 59.503094, 58.821178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.132019, 59.597443, 58.601616>,  <64.168922, 59.754688, 58.235676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.132019, 59.597443, 58.601616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944273, 0.257007, 0.205659,
		-0.315971, 0.882840, 0.347501,
		-0.092254, -0.393118, 0.914848,
		64.104340, 59.479507, 58.876072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.358894, 60.242264, 58.802555>,  <64.168922, 59.754688, 58.235676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.358894, 60.242264, 58.802555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.457397, 59.871693, 58.916451>,  <64.516502, 59.649349, 58.984787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.457397, 59.871693, 58.916451>,  <64.358894, 60.242264, 58.802555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.457397, 59.871693, 58.916451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895364, 0.329937, 0.299107,
		-0.371048, 0.181286, 0.910746,
		0.246265, -0.926432, 0.284739,
		64.531281, 59.593761, 59.001873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.711494, 60.247215, 59.529346>,  <64.358894, 60.242264, 58.802555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.711494, 60.247215, 59.529346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.806099, 59.945782, 59.284012>,  <64.862862, 59.764923, 59.136810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.806099, 59.945782, 59.284012>,  <64.711494, 60.247215, 59.529346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.806099, 59.945782, 59.284012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970393, 0.151377, 0.188207,
		-0.048985, -0.639687, 0.767073,
		0.236510, -0.753582, -0.613333,
		64.877052, 59.719707, 59.100014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.360817, 60.077278, 59.777828>,  <64.711494, 60.247215, 59.529346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.360817, 60.077278, 59.777828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.345268, 59.930664, 59.405991>,  <65.335938, 59.842697, 59.182888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.345268, 59.930664, 59.405991>,  <65.360817, 60.077278, 59.777828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.345268, 59.930664, 59.405991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996952, -0.077195, -0.011243,
		-0.067640, -0.927198, 0.368415,
		-0.038864, -0.366531, -0.929594,
		65.333611, 59.820705, 59.127113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.887558, 59.589783, 59.610451>,  <65.360817, 60.077278, 59.777828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.887558, 59.589783, 59.610451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.788979, 59.670074, 59.231194>,  <65.729828, 59.718250, 59.003639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.788979, 59.670074, 59.231194>,  <65.887558, 59.589783, 59.610451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.788979, 59.670074, 59.231194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967929, 0.100154, -0.230398,
		0.048712, -0.974514, -0.218975,
		-0.246457, 0.200730, -0.948138,
		65.715042, 59.730293, 58.946751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.119537, 59.083797, 59.072212>,  <65.887558, 59.589783, 59.610451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.119537, 59.083797, 59.072212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.060738, 59.423805, 58.869881>,  <66.025459, 59.627811, 58.748482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.060738, 59.423805, 58.869881>,  <66.119537, 59.083797, 59.072212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.060738, 59.423805, 58.869881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929760, -0.055772, -0.363917,
		-0.337547, -0.523790, -0.782116,
		-0.146996, 0.850019, -0.505825,
		66.016640, 59.678810, 58.718132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.454895, 58.954029, 58.468918>,  <66.119537, 59.083797, 59.072212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.454895, 58.954029, 58.468918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.421432, 59.351822, 58.494225>,  <66.401360, 59.590500, 58.509407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.421432, 59.351822, 58.494225>,  <66.454895, 58.954029, 58.468918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.421432, 59.351822, 58.494225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946595, 0.099139, -0.306807,
		-0.311387, 0.034224, -0.949667,
		-0.083649, 0.994485, 0.063267,
		66.396339, 59.650166, 58.513203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.931450, 58.831387, 57.884548>,  <66.454895, 58.954029, 58.468918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.931450, 58.831387, 57.884548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.935089, 58.566868, 58.184578>,  <66.937271, 58.408157, 58.364594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.935089, 58.566868, 58.184578>,  <66.931450, 58.831387, 57.884548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.935089, 58.566868, 58.184578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435802, -0.672497, -0.598185,
		0.899997, 0.332320, 0.282080,
		0.009091, -0.661295, 0.750071,
		66.937813, 58.368481, 58.409599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.613556, 58.597889, 58.148735>,  <66.931450, 58.831387, 57.884548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.613556, 58.597889, 58.148735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.310295, 58.337078, 58.152283>,  <67.128342, 58.180592, 58.154411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.310295, 58.337078, 58.152283>,  <67.613556, 58.597889, 58.148735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.310295, 58.337078, 58.152283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527650, -0.621406, -0.579172,
		0.383150, -0.434413, 0.815157,
		-0.758143, -0.652027, 0.008873,
		67.082855, 58.141468, 58.154945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.739807, 57.988678, 58.637154>,  <67.613556, 58.597889, 58.148735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.739807, 57.988678, 58.637154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.533058, 57.879967, 58.312447>,  <67.409004, 57.814739, 58.117622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.533058, 57.879967, 58.312447>,  <67.739807, 57.988678, 58.637154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.533058, 57.879967, 58.312447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727584, -0.639117, -0.249302,
		-0.451060, -0.719490, 0.528090,
		-0.516881, -0.271779, -0.811769,
		67.377991, 57.798431, 58.068916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.877068, 57.241295, 58.508755>,  <67.739807, 57.988678, 58.637154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.877068, 57.241295, 58.508755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.765366, 57.403084, 58.160408>,  <67.698341, 57.500156, 57.951401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.765366, 57.403084, 58.160408>,  <67.877068, 57.241295, 58.508755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.765366, 57.403084, 58.160408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863144, -0.291634, -0.412227,
		-0.420712, -0.866803, -0.267682,
		-0.279255, 0.404477, -0.870870,
		67.681587, 57.524426, 57.899147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.199570, 56.833637, 58.058800>,  <67.877068, 57.241295, 58.508755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.199570, 56.833637, 58.058800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.084724, 57.135410, 57.822701>,  <68.015816, 57.316475, 57.681042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.084724, 57.135410, 57.822701>,  <68.199570, 56.833637, 58.058800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.084724, 57.135410, 57.822701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743173, -0.213341, -0.634176,
		-0.604369, -0.620737, -0.499423,
		-0.287109, 0.754434, -0.590252,
		67.998589, 57.361740, 57.645626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.909515, 56.643597, 57.396755>,  <68.199570, 56.833637, 58.058800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.909515, 56.643597, 57.396755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.131912, 56.975510, 57.377480>,  <68.265350, 57.174660, 57.365913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.131912, 56.975510, 57.377480>,  <67.909515, 56.643597, 57.396755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.131912, 56.975510, 57.377480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579121, -0.428326, -0.693654,
		-0.596225, 0.357762, -0.718695,
		0.555999, 0.829785, -0.048191,
		68.298714, 57.224445, 57.363022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.307465, 56.880650, 56.762516>,  <67.909515, 56.643597, 57.396755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.307465, 56.880650, 56.762516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.559235, 56.570873, 56.736969>,  <68.710297, 56.385010, 56.721642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.559235, 56.570873, 56.736969>,  <68.307465, 56.880650, 56.762516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.559235, 56.570873, 56.736969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324011, -0.186853, -0.927417,
		0.706294, 0.604426, -0.368535,
		0.629417, -0.774438, -0.063868,
		68.748062, 56.338543, 56.717808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.675636, 56.914597, 56.144005>,  <68.307465, 56.880650, 56.762516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.675636, 56.914597, 56.144005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.720139, 56.533714, 56.257797>,  <68.746841, 56.305183, 56.326073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.720139, 56.533714, 56.257797>,  <68.675636, 56.914597, 56.144005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.720139, 56.533714, 56.257797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198519, -0.301781, -0.932480,
		0.973762, 0.047267, -0.222605,
		0.111253, -0.952205, 0.284480,
		68.753517, 56.248055, 56.343140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.373856, 56.468910, 55.933075>,  <68.675636, 56.914597, 56.144005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.373856, 56.468910, 55.933075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.007050, 56.310432, 55.951424>,  <68.786964, 56.215347, 55.962433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.007050, 56.310432, 55.951424>,  <69.373856, 56.468910, 55.933075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.007050, 56.310432, 55.951424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025069, -0.057530, -0.998029,
		0.398054, -0.916362, 0.042824,
		-0.917019, -0.396196, 0.045872,
		68.731941, 56.191574, 55.965187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.530792, 56.464340, 56.615410>,  <69.373856, 56.468910, 55.933075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.530792, 56.464340, 56.615410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.430634, 56.848255, 56.666176>,  <69.370537, 57.078606, 56.696636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.430634, 56.848255, 56.666176>,  <69.530792, 56.464340, 56.615410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.430634, 56.848255, 56.666176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479449, 0.009048, 0.877523,
		0.841087, 0.280583, -0.462434,
		-0.250402, 0.959787, 0.126914,
		69.355515, 57.136192, 56.704250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.168770, 56.874676, 56.695648>,  <69.530792, 56.464340, 56.615410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.168770, 56.874676, 56.695648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.849571, 57.018833, 56.888855>,  <69.658051, 57.105328, 57.004780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.849571, 57.018833, 56.888855>,  <70.168770, 56.874676, 56.695648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.849571, 57.018833, 56.888855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428030, -0.225277, 0.875238,
		0.424244, 0.905188, 0.025511,
		-0.798002, 0.360395, 0.483020,
		69.610168, 57.126953, 57.033760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.731133, 56.586830, 57.117706>,  <70.168770, 56.874676, 56.695648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.731133, 56.586830, 57.117706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.023018, 56.825855, 57.250641>,  <71.198151, 56.969269, 57.330402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.023018, 56.825855, 57.250641>,  <70.731133, 56.586830, 57.117706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.023018, 56.825855, 57.250641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395425, -0.765319, 0.507864,
		0.557827, -0.239175, -0.794748,
		0.729704, 0.597563, 0.332340,
		71.241928, 57.005123, 57.350342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.726532, 57.236336, 57.441315>,  <70.731133, 56.586830, 57.117706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.726532, 57.236336, 57.441315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.370750, 57.194588, 57.619293>,  <70.157280, 57.169540, 57.726082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.370750, 57.194588, 57.619293>,  <70.726532, 57.236336, 57.441315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.370750, 57.194588, 57.619293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452362, 0.339756, -0.824581,
		-0.065112, -0.934705, -0.349411,
		-0.889454, -0.104370, 0.444947,
		70.103912, 57.163277, 57.752777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.855339, 57.972904, 57.276382>,  <70.726532, 57.236336, 57.441315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.855339, 57.972904, 57.276382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.984200, 57.689560, 57.025162>,  <71.061516, 57.519554, 56.874428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.984200, 57.689560, 57.025162>,  <70.855339, 57.972904, 57.276382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.984200, 57.689560, 57.025162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942374, 0.176660, 0.284116,
		-0.090306, -0.683384, 0.724452,
		0.322142, -0.708362, -0.628050,
		71.080841, 57.477051, 56.836746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.685135, 58.042164, 57.288673>,  <70.855339, 57.972904, 57.276382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.685135, 58.042164, 57.288673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.904167, 58.053246, 56.954155>,  <72.035583, 58.059895, 56.753445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.904167, 58.053246, 56.954155>,  <71.685135, 58.042164, 57.288673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.904167, 58.053246, 56.954155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821602, -0.171514, -0.543647,
		-0.158500, 0.984792, -0.071152,
		0.547583, 0.027709, -0.836292,
		72.068443, 58.061558, 56.703266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.988914, 57.585354, 57.751701>,  <71.685135, 58.042164, 57.288673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.988914, 57.585354, 57.751701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.803452, 57.414482, 58.062195>,  <71.692169, 57.311958, 58.248489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.803452, 57.414482, 58.062195>,  <71.988914, 57.585354, 57.751701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.803452, 57.414482, 58.062195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856814, -0.439232, 0.270083,
		0.225572, 0.790313, 0.569669,
		-0.463667, -0.427178, 0.776230,
		71.664352, 57.286327, 58.295063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.382629, 57.738503, 58.340282>,  <71.988914, 57.585354, 57.751701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.382629, 57.738503, 58.340282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.173668, 57.414146, 58.445778>,  <72.048294, 57.219532, 58.509075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.173668, 57.414146, 58.445778>,  <72.382629, 57.738503, 58.340282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.173668, 57.414146, 58.445778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765287, -0.309444, 0.564428,
		-0.376078, 0.496691, 0.782217,
		-0.522399, -0.810890, 0.263736,
		72.016945, 57.170879, 58.524899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.871292, 57.904591, 58.808418>,  <72.382629, 57.738503, 58.340282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.871292, 57.904591, 58.808418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.496292, 57.769672, 58.842682>,  <72.271294, 57.688721, 58.863239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.496292, 57.769672, 58.842682>,  <72.871292, 57.904591, 58.808418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.496292, 57.769672, 58.842682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191776, -0.295326, 0.935951,
		-0.290395, 0.893875, 0.341551,
		-0.937493, -0.337297, 0.085662,
		72.215042, 57.668484, 58.868382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.794617, 57.969242, 59.553318>,  <72.871292, 57.904591, 58.808418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.794617, 57.969242, 59.553318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.488655, 57.742855, 59.430290>,  <72.305077, 57.607025, 59.356472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.488655, 57.742855, 59.430290>,  <72.794617, 57.969242, 59.553318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.488655, 57.742855, 59.430290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109388, -0.356428, 0.927897,
		-0.634783, 0.743401, 0.210725,
		-0.764908, -0.565963, -0.307574,
		72.259186, 57.573067, 59.338017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.049706, 57.682930, 60.292717>,  <72.794617, 57.969242, 59.553318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.049706, 57.682930, 60.292717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.178749, 57.441658, 60.584496>,  <73.256172, 57.296894, 60.759563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.178749, 57.441658, 60.584496>,  <73.049706, 57.682930, 60.292717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.178749, 57.441658, 60.584496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606957, 0.723178, 0.329571,
		-0.726314, 0.336426, 0.599404,
		0.322599, -0.603184, 0.729451,
		73.275528, 57.260704, 60.803329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
