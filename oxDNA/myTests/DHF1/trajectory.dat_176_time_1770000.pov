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
	<4.798439, 1.860807, 3.133701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.614853, 1.785912, 2.786301>,  <4.504701, 1.740974, 2.577861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.614853, 1.785912, 2.786301>,  <4.798439, 1.860807, 3.133701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.614853, 1.785912, 2.786301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320568, -0.876791, 0.358433,
		-0.828605, 0.442922, 0.342394,
		-0.458966, -0.187238, -0.868500,
		4.477163, 1.729740, 2.525751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.145784, 1.678292, 3.254972>,  <4.798439, 1.860807, 3.133701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.145784, 1.678292, 3.254972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.214745, 1.505249, 2.900993>,  <4.256121, 1.401423, 2.688607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.214745, 1.505249, 2.900993>,  <4.145784, 1.678292, 3.254972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.214745, 1.505249, 2.900993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611261, -0.751477, 0.248278,
		-0.772423, 0.498130, -0.393990,
		0.172400, -0.432607, -0.884946,
		4.266465, 1.375467, 2.635510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.470798, 1.495332, 2.957752>,  <4.145784, 1.678292, 3.254972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.470798, 1.495332, 2.957752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.778786, 1.266174, 2.845367>,  <3.963578, 1.128680, 2.777936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.778786, 1.266174, 2.845367>,  <3.470798, 1.495332, 2.957752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.778786, 1.266174, 2.845367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517963, -0.818321, 0.249130,
		-0.372642, -0.046295, -0.926820,
		0.769969, -0.572895, -0.280962,
		4.009777, 1.094306, 2.761079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.308230, 0.890642, 2.339678>,  <3.470798, 1.495332, 2.957752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.308230, 0.890642, 2.339678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.551529, 0.822647, 2.649811>,  <3.697508, 0.781850, 2.835890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.551529, 0.822647, 2.649811>,  <3.308230, 0.890642, 2.339678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.551529, 0.822647, 2.649811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638756, -0.684688, 0.350990,
		0.471195, -0.708736, -0.525041,
		0.608248, -0.169988, 0.775331,
		3.734003, 0.771651, 2.882410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.248683, 0.167229, 2.425935>,  <3.308230, 0.890642, 2.339678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.248683, 0.167229, 2.425935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.354942, 0.330063, 2.775497>,  <3.418698, 0.427763, 2.985235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.354942, 0.330063, 2.775497>,  <3.248683, 0.167229, 2.425935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.354942, 0.330063, 2.775497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713475, -0.526623, 0.462192,
		0.648371, -0.746291, 0.150549,
		0.265647, 0.407084, 0.873907,
		3.434637, 0.452188, 3.037670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.967864, -0.308757, 2.900734>,  <3.248683, 0.167229, 2.425935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.967864, -0.308757, 2.900734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.014511, 0.022980, 3.119308>,  <3.042500, 0.222022, 3.250453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.014511, 0.022980, 3.119308>,  <2.967864, -0.308757, 2.900734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.014511, 0.022980, 3.119308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824890, -0.225538, 0.518352,
		0.553133, -0.511198, 0.657814,
		0.116619, 0.829342, 0.546435,
		3.049497, 0.271782, 3.283239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.935517, -0.472358, 3.675445>,  <2.967864, -0.308757, 2.900734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.935517, -0.472358, 3.675445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.820335, -0.093887, 3.616341>,  <2.751227, 0.133195, 3.580878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.820335, -0.093887, 3.616341>,  <2.935517, -0.472358, 3.675445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.820335, -0.093887, 3.616341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733765, -0.118845, 0.668928,
		0.615363, 0.301042, 0.728493,
		-0.287953, 0.946176, -0.147762,
		2.733949, 0.189966, 3.572012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.815480, -0.295678, 4.272231>,  <2.935517, -0.472358, 3.675445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.815480, -0.295678, 4.272231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.611069, -0.028809, 4.055443>,  <2.488422, 0.131313, 3.925370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.611069, -0.028809, 4.055443>,  <2.815480, -0.295678, 4.272231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.611069, -0.028809, 4.055443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686215, 0.063057, 0.724661,
		0.517649, 0.742229, 0.425600,
		-0.511027, 0.667173, -0.541970,
		2.457761, 0.171343, 3.892852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.104875, -0.535091, 4.686688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.000126, -0.462265, 4.307579>,  <0.937276, -0.418570, 4.080113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.000126, -0.462265, 4.307579>,  <1.104875, -0.535091, 4.686688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.000126, -0.462265, 4.307579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642102, 0.766021, -0.030265,
		0.720505, -0.616493, -0.317504,
		-0.261872, 0.182064, -0.947774,
		0.921564, -0.407646, 4.023247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.722665, -0.640215, 4.248911>,  <1.104875, -0.535091, 4.686688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.722665, -0.640215, 4.248911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.476498, -0.370300, 4.085976>,  <1.328797, -0.208351, 3.988214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.476498, -0.370300, 4.085976>,  <1.722665, -0.640215, 4.248911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.476498, -0.370300, 4.085976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760030, 0.644965, -0.079840,
		0.208844, -0.358724, -0.909781,
		-0.615418, 0.674787, -0.407337,
		1.291872, -0.167864, 3.963774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.774738, -0.349961, 3.439256>,  <1.722665, -0.640215, 4.248911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.774738, -0.349961, 3.439256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.642551, -0.086243, 3.709404>,  <1.563240, 0.071988, 3.871493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.642551, -0.086243, 3.709404>,  <1.774738, -0.349961, 3.439256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.642551, -0.086243, 3.709404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821916, 0.552777, -0.137448,
		-0.463947, 0.509675, -0.724558,
		-0.330465, 0.659295, 0.675369,
		1.543412, 0.111546, 3.912015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.458780, 0.397026, 3.198837>,  <1.774738, -0.349961, 3.439256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.458780, 0.397026, 3.198837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.651253, 0.413879, 3.549080>,  <1.766736, 0.423991, 3.759226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.651253, 0.413879, 3.549080>,  <1.458780, 0.397026, 3.198837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.651253, 0.413879, 3.549080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811285, 0.356983, -0.463011,
		-0.332085, 0.933160, 0.137592,
		0.481182, 0.042133, 0.875608,
		1.795607, 0.426519, 3.811762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.866251, 1.062395, 3.204917>,  <1.458780, 0.397026, 3.198837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.866251, 1.062395, 3.204917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.072620, 0.828308, 3.455147>,  <2.196442, 0.687856, 3.605285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.072620, 0.828308, 3.455147>,  <1.866251, 1.062395, 3.204917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.072620, 0.828308, 3.455147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847205, 0.240518, -0.473703,
		0.126757, 0.774385, 0.619888,
		0.515923, -0.585217, 0.625575,
		2.227397, 0.652743, 3.642819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.441878, 1.496876, 3.587427>,  <1.866251, 1.062395, 3.204917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.441878, 1.496876, 3.587427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.544060, 1.111008, 3.561653>,  <2.605369, 0.879487, 3.546189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.544060, 1.111008, 3.561653>,  <2.441878, 1.496876, 3.587427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.544060, 1.111008, 3.561653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771347, 0.243533, -0.587976,
		0.582896, 0.100500, 0.806308,
		0.255455, -0.964672, -0.064434,
		2.620696, 0.821606, 3.542323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.045907, 1.323490, 3.976648>,  <2.441878, 1.496876, 3.587427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.045907, 1.323490, 3.976648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.028694, 1.068512, 3.668930>,  <3.018367, 0.915525, 3.484299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.028694, 1.068512, 3.668930>,  <3.045907, 1.323490, 3.976648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.028694, 1.068512, 3.668930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847048, 0.385028, -0.366418,
		0.529771, -0.667397, 0.523378,
		-0.043031, -0.637444, -0.769294,
		3.015785, 0.877279, 3.438142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.669912, 1.074641, 3.935658>,  <3.045907, 1.323490, 3.976648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.669912, 1.074641, 3.935658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.512646, 0.977692, 3.580879>,  <3.418286, 0.919522, 3.368012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.512646, 0.977692, 3.580879>,  <3.669912, 1.074641, 3.935658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.512646, 0.977692, 3.580879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882090, 0.172813, -0.438237,
		0.259494, -0.954668, 0.145852,
		-0.393166, -0.242374, -0.886947,
		3.394696, 0.904979, 3.314795>
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
