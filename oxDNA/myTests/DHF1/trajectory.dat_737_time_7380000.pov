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
	<5.210212, 0.810970, 2.073984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.166668, 0.938847, 1.697485>,  <5.140542, 1.015573, 1.471586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.166668, 0.938847, 1.697485>,  <5.210212, 0.810970, 2.073984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.166668, 0.938847, 1.697485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972103, 0.163668, 0.168018,
		0.207766, 0.933279, 0.292956,
		-0.108860, 0.319692, -0.941248,
		5.134010, 1.034754, 1.415111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.927606, 1.563308, 2.109656>,  <5.210212, 0.810970, 2.073984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.927606, 1.563308, 2.109656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.842457, 1.315231, 1.807650>,  <4.791368, 1.166385, 1.626446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.842457, 1.315231, 1.807650>,  <4.927606, 1.563308, 2.109656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.842457, 1.315231, 1.807650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972959, 0.205442, 0.105565,
		0.089641, 0.757070, -0.647154,
		-0.212873, -0.620192, -0.755015,
		4.778595, 1.129174, 1.581145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.497455, 1.899588, 1.584321>,  <4.927606, 1.563308, 2.109656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.497455, 1.899588, 1.584321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.414539, 1.511520, 1.634607>,  <4.364790, 1.278680, 1.664779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.414539, 1.511520, 1.634607>,  <4.497455, 1.899588, 1.584321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.414539, 1.511520, 1.634607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894413, 0.240005, 0.377389,
		-0.396304, -0.034215, -0.917482,
		-0.207288, -0.970168, 0.125717,
		4.352353, 1.220470, 1.672322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.919434, 1.800621, 1.187718>,  <4.497455, 1.899588, 1.584321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.919434, 1.800621, 1.187718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.963284, 1.549557, 1.496010>,  <3.989593, 1.398918, 1.680985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.963284, 1.549557, 1.496010>,  <3.919434, 1.800621, 1.187718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.963284, 1.549557, 1.496010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889612, 0.283916, 0.357745,
		-0.443365, -0.724868, -0.527251,
		0.109623, -0.627661, 0.770730,
		3.996171, 1.361259, 1.727229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.302557, 1.432814, 1.270741>,  <3.919434, 1.800621, 1.187718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.302557, 1.432814, 1.270741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.486576, 1.442913, 1.625755>,  <3.596988, 1.448972, 1.838764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.486576, 1.442913, 1.625755>,  <3.302557, 1.432814, 1.270741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.486576, 1.442913, 1.625755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817246, 0.402783, 0.412158,
		-0.347078, -0.914947, 0.205932,
		0.460049, 0.025246, 0.887534,
		3.624591, 1.450487, 1.892016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.756168, 1.339169, 1.694033>,  <3.302557, 1.432814, 1.270741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.756168, 1.339169, 1.694033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.047478, 1.455475, 1.942249>,  <3.222264, 1.525258, 2.091179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.047478, 1.455475, 1.942249>,  <2.756168, 1.339169, 1.694033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.047478, 1.455475, 1.942249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678920, 0.429278, 0.595642,
		-0.093194, -0.855089, 0.510037,
		0.728274, 0.290764, 0.620542,
		3.265960, 1.542704, 2.128412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.500954, 1.079397, 2.386983>,  <2.756168, 1.339169, 1.694033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.500954, 1.079397, 2.386983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.748760, 1.392014, 2.416359>,  <2.897444, 1.579583, 2.433985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.748760, 1.392014, 2.416359>,  <2.500954, 1.079397, 2.386983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.748760, 1.392014, 2.416359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631655, 0.440775, 0.637754,
		0.466066, -0.441480, 0.766732,
		0.619512, 0.781545, 0.073433,
		2.934615, 1.626476, 2.438391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.672795, 1.234909, 3.145966>,  <2.500954, 1.079397, 2.386983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.672795, 1.234909, 3.145966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.691650, 1.547531, 2.897144>,  <2.702964, 1.735104, 2.747852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.691650, 1.547531, 2.897144>,  <2.672795, 1.234909, 3.145966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.691650, 1.547531, 2.897144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705581, 0.466861, 0.533101,
		0.707060, 0.413779, 0.573458,
		0.047139, 0.781555, -0.622053,
		2.705792, 1.781998, 2.710528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.918242, 2.383176, 3.422320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.066437, 2.714962, 3.255119>,  <2.155354, 2.914034, 3.154799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.066437, 2.714962, 3.255119>,  <1.918242, 2.383176, 3.422320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.066437, 2.714962, 3.255119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334647, -0.539005, -0.772972,
		-0.866459, 0.146494, -0.477273,
		0.370488, 0.829466, -0.418002,
		2.177583, 2.963802, 3.129719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.770124, 2.545391, 2.647992>,  <1.918242, 2.383176, 3.422320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.770124, 2.545391, 2.647992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.121193, 2.707039, 2.751049>,  <2.331834, 2.804028, 2.812883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.121193, 2.707039, 2.751049>,  <1.770124, 2.545391, 2.647992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.121193, 2.707039, 2.751049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476080, -0.673285, -0.565717,
		-0.055151, 0.619172, -0.783316,
		0.877671, 0.404121, 0.257643,
		2.384494, 2.828275, 2.828342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.265972, 2.628264, 2.074445>,  <1.770124, 2.545391, 2.647992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.265972, 2.628264, 2.074445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.467941, 2.593815, 2.417988>,  <2.589123, 2.573145, 2.624113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.467941, 2.593815, 2.417988>,  <2.265972, 2.628264, 2.074445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.467941, 2.593815, 2.417988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669222, -0.589365, -0.452537,
		0.545155, 0.803263, -0.239948,
		0.504924, -0.086124, 0.858857,
		2.619418, 2.567978, 2.675645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.928484, 2.861214, 2.071950>,  <2.265972, 2.628264, 2.074445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.928484, 2.861214, 2.071950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.926277, 2.556488, 2.331059>,  <2.924953, 2.373652, 2.486523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.926277, 2.556488, 2.331059>,  <2.928484, 2.861214, 2.071950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.926277, 2.556488, 2.331059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789515, -0.400871, -0.464724,
		0.613707, 0.508861, 0.603676,
		-0.005517, -0.761816, 0.647770,
		2.924622, 2.327943, 2.525390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.637126, 2.688145, 2.324524>,  <2.928484, 2.861214, 2.071950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.637126, 2.688145, 2.324524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.424889, 2.353725, 2.380371>,  <3.297546, 2.153074, 2.413879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.424889, 2.353725, 2.380371>,  <3.637126, 2.688145, 2.324524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.424889, 2.353725, 2.380371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717720, -0.530768, -0.450736,
		0.450942, -0.138951, 0.881671,
		-0.530593, -0.836049, 0.139618,
		3.265711, 2.102911, 2.422256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.128757, 2.167540, 2.794467>,  <3.637126, 2.688145, 2.324524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.128757, 2.167540, 2.794467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.856636, 1.960167, 2.587231>,  <3.693364, 1.835743, 2.462889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.856636, 1.960167, 2.587231>,  <4.128757, 2.167540, 2.794467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.856636, 1.960167, 2.587231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684214, -0.702633, -0.195340,
		-0.262758, -0.487375, 0.832720,
		-0.680301, -0.518432, -0.518092,
		3.652546, 1.804637, 2.431803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.170672, 1.499407, 3.054351>,  <4.128757, 2.167540, 2.794467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.170672, 1.499407, 3.054351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.027245, 1.490948, 2.681046>,  <3.941188, 1.485872, 2.457062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.027245, 1.490948, 2.681046>,  <4.170672, 1.499407, 3.054351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.027245, 1.490948, 2.681046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682788, -0.687687, -0.246752,
		-0.636575, -0.725699, 0.261024,
		-0.358570, -0.021148, -0.933263,
		3.919674, 1.484604, 2.401067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.041407, 0.775285, 2.942014>,  <4.170672, 1.499407, 3.054351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.041407, 0.775285, 2.942014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.079132, 0.981995, 2.601650>,  <4.101767, 1.106021, 2.397432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.079132, 0.981995, 2.601650>,  <4.041407, 0.775285, 2.942014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.079132, 0.981995, 2.601650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713108, -0.631484, -0.304474,
		-0.694681, -0.578075, -0.428074,
		0.094313, 0.516775, -0.850910,
		4.107426, 1.137027, 2.346377>
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
