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
	<24.290041, 35.297695, 34.853500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.252089, 34.910618, 34.946941>,  <24.229317, 34.678371, 35.003006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.252089, 34.910618, 34.946941>,  <24.290041, 35.297695, 34.853500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.252089, 34.910618, 34.946941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913944, -0.177692, -0.364872,
		0.394593, 0.178882, 0.901275,
		-0.094880, -0.967691, 0.233604,
		24.223625, 34.620312, 35.017021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909306, 35.130924, 35.265163>,  <24.290041, 35.297695, 34.853500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909306, 35.130924, 35.265163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.749487, 34.816525, 35.076454>,  <24.653595, 34.627884, 34.963230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.749487, 34.816525, 35.076454>,  <24.909306, 35.130924, 35.265163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.749487, 34.816525, 35.076454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879841, -0.184307, -0.438077,
		0.257376, -0.590118, 0.765192,
		-0.399547, -0.785997, -0.471774,
		24.629623, 34.580727, 34.934921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.289181, 34.524544, 35.402248>,  <24.909306, 35.130924, 35.265163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.289181, 34.524544, 35.402248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107449, 34.488617, 35.047729>,  <24.998409, 34.467060, 34.835018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107449, 34.488617, 35.047729>,  <25.289181, 34.524544, 35.402248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.107449, 34.488617, 35.047729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890826, -0.049506, -0.451639,
		-0.003314, -0.994727, 0.102501,
		-0.454333, -0.089814, -0.886293,
		24.971149, 34.461674, 34.781841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510584, 33.936726, 35.131710>,  <25.289181, 34.524544, 35.402248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510584, 33.936726, 35.131710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.274464, 33.644058, 34.995354>,  <25.132792, 33.468456, 34.913540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.274464, 33.644058, 34.995354>,  <25.510584, 33.936726, 35.131710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.274464, 33.644058, 34.995354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244235, 0.240619, -0.939389,
		0.769348, -0.637777, 0.036663,
		-0.590299, -0.731671, -0.340887,
		25.097374, 33.424557, 34.893089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873274, 33.316910, 34.689800>,  <25.510584, 33.936726, 35.131710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873274, 33.316910, 34.689800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490622, 33.370815, 34.586494>,  <25.261030, 33.403160, 34.524513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490622, 33.370815, 34.586494>,  <25.873274, 33.316910, 34.689800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490622, 33.370815, 34.586494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256836, -0.028164, -0.966045,
		-0.137462, -0.990478, -0.007670,
		-0.956629, 0.134764, -0.258262,
		25.203632, 33.411243, 34.509014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344927, 33.385715, 35.126507>,  <25.873274, 33.316910, 34.689800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.344927, 33.385715, 35.126507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333132, 33.056225, 34.900021>,  <26.326056, 32.858532, 34.764130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333132, 33.056225, 34.900021>,  <26.344927, 33.385715, 35.126507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333132, 33.056225, 34.900021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424683, 0.523121, -0.738910,
		0.904862, 0.218677, -0.365248,
		-0.029486, -0.823726, -0.566220,
		26.324286, 32.809109, 34.730156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276428, 33.929314, 34.709499>,  <26.344927, 33.385715, 35.126507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276428, 33.929314, 34.709499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272062, 33.858738, 34.315800>,  <26.269442, 33.816391, 34.079578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272062, 33.858738, 34.315800>,  <26.276428, 33.929314, 34.709499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272062, 33.858738, 34.315800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834953, 0.543219, -0.088121,
		0.550212, 0.820842, -0.153250,
		-0.010915, -0.176442, -0.984250,
		26.268787, 33.805805, 34.020523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494911, 34.709229, 34.815765>,  <26.276428, 33.929314, 34.709499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494911, 34.709229, 34.815765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393198, 35.078861, 34.701633>,  <26.332170, 35.300640, 34.633152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393198, 35.078861, 34.701633>,  <26.494911, 34.709229, 34.815765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393198, 35.078861, 34.701633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965792, 0.258138, -0.024690,
		0.050840, -0.281851, -0.958110,
		-0.254284, 0.924080, -0.285333,
		26.316914, 35.356087, 34.616032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163040, 34.716976, 35.072727>,  <26.494911, 34.709229, 34.815765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163040, 34.716976, 35.072727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883320, 34.488194, 35.244236>,  <26.715488, 34.350925, 35.347141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883320, 34.488194, 35.244236>,  <27.163040, 34.716976, 35.072727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883320, 34.488194, 35.244236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714100, 0.531903, -0.455128,
		0.032245, -0.624460, -0.780391,
		-0.699301, -0.571953, 0.428775,
		26.673529, 34.316608, 35.372868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336874, 33.982063, 34.931408>,  <27.163040, 34.716976, 35.072727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336874, 33.982063, 34.931408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154636, 34.181282, 35.226540>,  <27.045294, 34.300812, 35.403618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154636, 34.181282, 35.226540>,  <27.336874, 33.982063, 34.931408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154636, 34.181282, 35.226540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151689, -0.860154, 0.486955,
		0.877168, 0.109934, 0.467429,
		-0.455594, 0.498045, 0.737825,
		27.017958, 34.330696, 35.447887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668747, 33.854134, 35.665977>,  <27.336874, 33.982063, 34.931408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668747, 33.854134, 35.665977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271942, 33.889988, 35.630474>,  <27.033859, 33.911499, 35.609173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271942, 33.889988, 35.630474>,  <27.668747, 33.854134, 35.665977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271942, 33.889988, 35.630474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119610, -0.891912, 0.436103,
		-0.040074, 0.443236, 0.895509,
		-0.992012, 0.089636, -0.088759,
		26.974339, 33.916878, 35.603848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506042, 33.724274, 36.270603>,  <27.668747, 33.854134, 35.665977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506042, 33.724274, 36.270603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204081, 33.654850, 36.017624>,  <27.022903, 33.613197, 35.865837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204081, 33.654850, 36.017624>,  <27.506042, 33.724274, 36.270603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204081, 33.654850, 36.017624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162848, -0.884540, 0.437115,
		-0.635293, 0.432974, 0.639481,
		-0.754906, -0.173558, -0.632451,
		26.977610, 33.602783, 35.827888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773594, 33.671864, 36.623455>,  <27.506042, 33.724274, 36.270603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773594, 33.671864, 36.623455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862850, 33.448185, 36.304081>,  <26.916405, 33.313976, 36.112457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862850, 33.448185, 36.304081>,  <26.773594, 33.671864, 36.623455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862850, 33.448185, 36.304081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011876, -0.820589, 0.571396,
		-0.974714, -0.118020, -0.189748,
		0.223141, -0.559201, -0.798438,
		26.929792, 33.280426, 36.064548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.873550, 33.817455, 37.386196>,  <26.773594, 33.671864, 36.623455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.873550, 33.817455, 37.386196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987843, 34.098064, 37.125053>,  <27.056417, 34.266430, 36.968369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987843, 34.098064, 37.125053>,  <26.873550, 33.817455, 37.386196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987843, 34.098064, 37.125053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671074, 0.339861, 0.658903,
		0.684117, -0.626384, -0.373667,
		0.285732, 0.701525, -0.652855,
		27.073563, 34.308521, 36.929195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609493, 33.956001, 37.328049>,  <26.873550, 33.817455, 37.386196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609493, 33.956001, 37.328049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433758, 34.296513, 37.213295>,  <27.328318, 34.500820, 37.144444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433758, 34.296513, 37.213295>,  <27.609493, 33.956001, 37.328049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433758, 34.296513, 37.213295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442223, 0.482932, 0.755788,
		0.781934, 0.205177, -0.588626,
		-0.439337, 0.851281, -0.286887,
		27.301956, 34.551895, 37.127228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064602, 34.477249, 37.352249>,  <27.609493, 33.956001, 37.328049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064602, 34.477249, 37.352249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721321, 34.681454, 37.373676>,  <27.515352, 34.803974, 37.386532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721321, 34.681454, 37.373676>,  <28.064602, 34.477249, 37.352249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721321, 34.681454, 37.373676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416168, 0.630895, 0.654809,
		0.300486, 0.584254, -0.753893,
		-0.858203, 0.510507, 0.053572,
		27.463860, 34.834606, 37.389748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336613, 35.232151, 37.398018>,  <28.064602, 34.477249, 37.352249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336613, 35.232151, 37.398018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525434, 34.984760, 37.146732>,  <28.638727, 34.836327, 36.995960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525434, 34.984760, 37.146732>,  <28.336613, 35.232151, 37.398018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525434, 34.984760, 37.146732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784909, 0.619291, -0.019896,
		0.401351, -0.483698, 0.777788,
		0.472054, -0.618478, -0.628212,
		28.667051, 34.799217, 36.958267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073696, 35.146133, 37.630989>,  <28.336613, 35.232151, 37.398018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073696, 35.146133, 37.630989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052616, 35.052319, 37.242718>,  <29.039968, 34.996029, 37.009754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052616, 35.052319, 37.242718>,  <29.073696, 35.146133, 37.630989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052616, 35.052319, 37.242718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854084, 0.493099, -0.165510,
		0.517459, -0.837763, 0.174327,
		-0.052698, -0.234534, -0.970678,
		29.036806, 34.981960, 36.951515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644846, 34.841118, 37.292957>,  <29.073696, 35.146133, 37.630989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644846, 34.841118, 37.292957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431313, 35.064751, 37.039204>,  <29.303192, 35.198929, 36.886951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431313, 35.064751, 37.039204>,  <29.644846, 34.841118, 37.292957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431313, 35.064751, 37.039204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721151, 0.692768, 0.003691,
		0.441548, -0.455519, -0.773006,
		-0.533833, 0.559084, -0.634388,
		29.271162, 35.232475, 36.848888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031715, 35.061470, 36.761646>,  <29.644846, 34.841118, 37.292957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031715, 35.061470, 36.761646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767208, 35.344620, 36.860954>,  <29.608503, 35.514511, 36.920540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767208, 35.344620, 36.860954>,  <30.031715, 35.061470, 36.761646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767208, 35.344620, 36.860954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749066, 0.640879, 0.167851,
		-0.040291, 0.296962, -0.954039,
		-0.661269, 0.707875, 0.248265,
		29.568827, 35.556984, 36.935432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119093, 35.640163, 36.365986>,  <30.031715, 35.061470, 36.761646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119093, 35.640163, 36.365986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011080, 35.758831, 36.732388>,  <29.946272, 35.830032, 36.952229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011080, 35.758831, 36.732388>,  <30.119093, 35.640163, 36.365986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011080, 35.758831, 36.732388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799898, 0.598671, 0.041911,
		-0.535953, 0.744029, -0.398969,
		-0.270034, 0.296672, 0.916006,
		29.930069, 35.847832, 37.007191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243179, 36.366215, 36.425472>,  <30.119093, 35.640163, 36.365986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243179, 36.366215, 36.425472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268440, 36.218155, 36.796204>,  <30.283596, 36.129318, 37.018642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268440, 36.218155, 36.796204>,  <30.243179, 36.366215, 36.425472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268440, 36.218155, 36.796204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896421, 0.429246, 0.110348,
		-0.438680, 0.823857, 0.358914,
		0.063152, -0.370145, 0.926825,
		30.287386, 36.107113, 37.074249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603710, 36.921368, 36.849739>,  <30.243179, 36.366215, 36.425472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603710, 36.921368, 36.849739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630617, 36.553432, 37.004333>,  <30.646761, 36.332672, 37.097092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630617, 36.553432, 37.004333>,  <30.603710, 36.921368, 36.849739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630617, 36.553432, 37.004333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964381, 0.159263, 0.211199,
		-0.255822, 0.358516, 0.897787,
		0.067266, -0.919838, 0.386489,
		30.650797, 36.277481, 37.120281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024458, 36.874657, 37.468029>,  <30.603710, 36.921368, 36.849739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024458, 36.874657, 37.468029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047867, 36.506420, 37.313583>,  <31.061913, 36.285477, 37.220917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047867, 36.506420, 37.313583>,  <31.024458, 36.874657, 37.468029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047867, 36.506420, 37.313583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995547, 0.025184, 0.090841,
		-0.073904, -0.389711, 0.917967,
		0.058520, -0.920593, -0.386114,
		31.065422, 36.230244, 37.197750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454819, 36.508755, 37.911522>,  <31.024458, 36.874657, 37.468029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454819, 36.508755, 37.911522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460859, 36.378712, 37.533298>,  <31.464483, 36.300686, 37.306366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460859, 36.378712, 37.533298>,  <31.454819, 36.508755, 37.911522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460859, 36.378712, 37.533298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999005, -0.034785, 0.027918,
		-0.041968, -0.945037, 0.324258,
		0.015104, -0.325107, -0.945557,
		31.465391, 36.281181, 37.249630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902151, 35.988075, 37.966496>,  <31.454819, 36.508755, 37.911522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902151, 35.988075, 37.966496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916332, 36.138882, 37.596283>,  <31.924841, 36.229366, 37.374157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916332, 36.138882, 37.596283>,  <31.902151, 35.988075, 37.966496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916332, 36.138882, 37.596283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996610, 0.055463, 0.060769,
		0.074243, -0.924546, -0.373769,
		0.035453, 0.377013, -0.925529,
		31.926968, 36.251987, 37.318623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280121, 35.610378, 37.412445>,  <31.902151, 35.988075, 37.966496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280121, 35.610378, 37.412445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293064, 36.007915, 37.370045>,  <32.300831, 36.246437, 37.344604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293064, 36.007915, 37.370045>,  <32.280121, 35.610378, 37.412445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293064, 36.007915, 37.370045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989779, -0.017122, 0.141575,
		0.138888, -0.109501, -0.984236,
		0.032355, 0.993839, -0.106003,
		32.302769, 36.306068, 37.338245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757095, 35.710835, 36.723007>,  <32.280121, 35.610378, 37.412445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757095, 35.710835, 36.723007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738052, 36.007725, 36.990387>,  <32.726627, 36.185860, 37.150814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738052, 36.007725, 36.990387>,  <32.757095, 35.710835, 36.723007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738052, 36.007725, 36.990387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988199, -0.062538, 0.139824,
		0.145585, 0.667221, -0.730494,
		-0.047610, 0.742230, 0.668452,
		32.723770, 36.230392, 37.190922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317711, 36.138699, 36.560749>,  <32.757095, 35.710835, 36.723007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317711, 36.138699, 36.560749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195293, 36.179485, 36.939365>,  <33.121841, 36.203957, 37.166534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195293, 36.179485, 36.939365>,  <33.317711, 36.138699, 36.560749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195293, 36.179485, 36.939365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940537, -0.121557, 0.317196,
		0.147403, 0.987333, -0.058704,
		-0.306042, 0.101969, 0.946541,
		33.103481, 36.210075, 37.223328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505554, 36.880295, 36.842941>,  <33.317711, 36.138699, 36.560749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505554, 36.880295, 36.842941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749931, 37.144173, 37.018005>,  <33.896557, 37.302498, 37.123043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749931, 37.144173, 37.018005>,  <33.505554, 36.880295, 36.842941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749931, 37.144173, 37.018005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791496, 0.520610, 0.320154,
		-0.016648, -0.542006, 0.840210,
		0.610947, 0.659693, 0.437663,
		33.933216, 37.342079, 37.149303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171406, 37.122578, 37.404705>,  <33.505554, 36.880295, 36.842941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171406, 37.122578, 37.404705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456013, 37.403011, 37.423576>,  <33.626778, 37.571270, 37.434898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456013, 37.403011, 37.423576>,  <33.171406, 37.122578, 37.404705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456013, 37.403011, 37.423576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692361, 0.688038, 0.217349,
		0.119917, -0.187314, 0.974953,
		0.711517, 0.701083, 0.047181,
		33.669468, 37.613335, 37.437733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990406, 37.522243, 37.975796>,  <33.171406, 37.122578, 37.404705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990406, 37.522243, 37.975796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224461, 37.739635, 37.735046>,  <33.364891, 37.870071, 37.590599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224461, 37.739635, 37.735046>,  <32.990406, 37.522243, 37.975796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224461, 37.739635, 37.735046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608203, 0.785025, 0.117579,
		0.536386, 0.297260, 0.789891,
		0.585132, 0.543481, -0.601871,
		33.400002, 37.902679, 37.554485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250755, 38.094952, 38.363098>,  <32.990406, 37.522243, 37.975796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250755, 38.094952, 38.363098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214417, 38.159042, 37.969940>,  <33.192612, 38.197498, 37.734047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214417, 38.159042, 37.969940>,  <33.250755, 38.094952, 38.363098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214417, 38.159042, 37.969940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461457, 0.867845, 0.184128,
		0.882499, 0.470289, -0.004903,
		-0.090848, 0.160230, -0.982890,
		33.187160, 38.207111, 37.675072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467525, 38.809418, 38.283550>,  <33.250755, 38.094952, 38.363098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467525, 38.809418, 38.283550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214043, 38.700790, 37.993813>,  <33.061954, 38.635616, 37.819969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214043, 38.700790, 37.993813>,  <33.467525, 38.809418, 38.283550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214043, 38.700790, 37.993813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584203, 0.781780, 0.218005,
		0.507073, 0.561313, -0.654068,
		-0.633707, -0.271564, -0.724340,
		33.023930, 38.619320, 37.776512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251949, 39.416779, 38.109070>,  <33.467525, 38.809418, 38.283550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251949, 39.416779, 38.109070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996876, 39.123806, 38.013653>,  <32.843834, 38.948021, 37.956402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996876, 39.123806, 38.013653>,  <33.251949, 39.416779, 38.109070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996876, 39.123806, 38.013653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770060, 0.598387, 0.221223,
		-0.019288, 0.324765, -0.945598,
		-0.637679, -0.732434, -0.238547,
		32.805573, 38.904076, 37.942089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914799, 39.501091, 37.718880>,  <33.251949, 39.416779, 38.109070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914799, 39.501091, 37.718880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646797, 39.327515, 37.477951>,  <33.485996, 39.223370, 37.333393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646797, 39.327515, 37.477951>,  <33.914799, 39.501091, 37.718880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646797, 39.327515, 37.477951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656152, 0.725659, 0.207082,
		0.347217, 0.533960, -0.770926,
		-0.670003, -0.433943, -0.602320,
		33.445797, 39.197330, 37.297256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776222, 39.912399, 37.175747>,  <33.914799, 39.501091, 37.718880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776222, 39.912399, 37.175747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469658, 39.674469, 37.272736>,  <33.285717, 39.531712, 37.330929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469658, 39.674469, 37.272736>,  <33.776222, 39.912399, 37.175747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469658, 39.674469, 37.272736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527552, 0.798237, 0.290700,
		-0.366466, 0.094880, -0.925581,
		-0.766414, -0.594824, 0.242473,
		33.239735, 39.496021, 37.345478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155350, 40.182278, 36.979687>,  <33.776222, 39.912399, 37.175747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155350, 40.182278, 36.979687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992210, 39.930965, 37.244690>,  <32.894325, 39.780178, 37.403694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992210, 39.930965, 37.244690>,  <33.155350, 40.182278, 36.979687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992210, 39.930965, 37.244690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640151, 0.714156, 0.283175,
		-0.651051, -0.308616, -0.693462,
		-0.407848, -0.628281, 0.662512,
		32.869858, 39.742481, 37.443443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345737, 40.237740, 36.965824>,  <33.155350, 40.182278, 36.979687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345737, 40.237740, 36.965824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461620, 40.104847, 37.324863>,  <32.531151, 40.025112, 37.540287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461620, 40.104847, 37.324863>,  <32.345737, 40.237740, 36.965824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461620, 40.104847, 37.324863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613471, 0.655391, 0.440586,
		-0.734659, -0.678293, -0.013946,
		0.289707, -0.332236, 0.897602,
		32.548531, 40.005177, 37.594143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821291, 39.921581, 37.449165>,  <32.345737, 40.237740, 36.965824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821291, 39.921581, 37.449165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099159, 40.127831, 37.649792>,  <32.265881, 40.251579, 37.770168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099159, 40.127831, 37.649792>,  <31.821291, 39.921581, 37.449165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099159, 40.127831, 37.649792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717044, 0.551861, 0.425789,
		-0.057247, -0.655427, 0.753086,
		0.694673, 0.515621, 0.501562,
		32.307560, 40.282516, 37.800259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095621, 39.846554, 37.495033>,  <31.821291, 39.921581, 37.449165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095621, 39.846554, 37.495033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093723, 39.746300, 37.882259>,  <31.092585, 39.686146, 38.114597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093723, 39.746300, 37.882259>,  <31.095621, 39.846554, 37.495033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093723, 39.746300, 37.882259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999877, 0.015671, -0.000844,
		-0.014959, -0.967954, -0.250681,
		-0.004745, -0.250638, 0.968069,
		31.092300, 39.671108, 38.172680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781113, 39.246105, 37.623066>,  <31.095621, 39.846554, 37.495033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781113, 39.246105, 37.623066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729340, 39.514610, 37.914997>,  <30.698277, 39.675713, 38.090157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729340, 39.514610, 37.914997>,  <30.781113, 39.246105, 37.623066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729340, 39.514610, 37.914997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938633, 0.154372, -0.308444,
		-0.319713, -0.724965, 0.610089,
		-0.129431, 0.671264, 0.729831,
		30.690510, 39.715988, 38.133945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398930, 38.945534, 37.637760>,  <30.781113, 39.246105, 37.623066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398930, 38.945534, 37.637760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688566, 39.175392, 37.790321>,  <31.862349, 39.313309, 37.881859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688566, 39.175392, 37.790321>,  <31.398930, 38.945534, 37.637760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688566, 39.175392, 37.790321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563812, 0.811692, -0.152555,
		-0.397247, -0.104575, 0.911734,
		0.724093, 0.574648, 0.381403,
		31.905794, 39.347786, 37.904743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150696, 38.860855, 38.028870>,  <31.398930, 38.945534, 37.637760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150696, 38.860855, 38.028870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391804, 39.124439, 37.848896>,  <32.536469, 39.282589, 37.740913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391804, 39.124439, 37.848896>,  <32.150696, 38.860855, 38.028870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391804, 39.124439, 37.848896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566201, -0.750555, -0.340710,
		-0.562211, -0.049380, -0.825518,
		0.602773, 0.658960, -0.449930,
		32.572636, 39.322128, 37.713917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306705, 38.555256, 37.406700>,  <32.150696, 38.860855, 38.028870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306705, 38.555256, 37.406700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584045, 38.843098, 37.421852>,  <32.750450, 39.015800, 37.430943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584045, 38.843098, 37.421852>,  <32.306705, 38.555256, 37.406700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584045, 38.843098, 37.421852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696587, -0.655867, -0.290868,
		-0.184465, 0.228061, -0.956013,
		0.693353, 0.719602, 0.037880,
		32.792053, 39.058979, 37.433216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594227, 38.639313, 36.750790>,  <32.306705, 38.555256, 37.406700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594227, 38.639313, 36.750790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831070, 38.734009, 37.058910>,  <32.973175, 38.790825, 37.243782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831070, 38.734009, 37.058910>,  <32.594227, 38.639313, 36.750790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831070, 38.734009, 37.058910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693525, -0.636502, -0.337474,
		0.410406, 0.734044, -0.541060,
		0.592106, 0.236737, 0.770302,
		33.008701, 38.805031, 37.290001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276054, 38.773178, 36.540070>,  <32.594227, 38.639313, 36.750790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276054, 38.773178, 36.540070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291454, 38.631908, 36.913975>,  <33.300694, 38.547146, 37.138317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291454, 38.631908, 36.913975>,  <33.276054, 38.773178, 36.540070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291454, 38.631908, 36.913975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725327, -0.633567, -0.269246,
		0.687327, 0.688375, 0.231777,
		0.038495, -0.353174, 0.934765,
		33.303001, 38.525955, 37.194405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997505, 38.735794, 36.652214>,  <33.276054, 38.773178, 36.540070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997505, 38.735794, 36.652214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830944, 38.507908, 36.935631>,  <33.731007, 38.371178, 37.105682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830944, 38.507908, 36.935631>,  <33.997505, 38.735794, 36.652214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830944, 38.507908, 36.935631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763028, -0.642738, -0.068380,
		0.494365, 0.512165, 0.702347,
		-0.416403, -0.569715, 0.708543,
		33.706024, 38.336994, 37.148193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517551, 38.525917, 37.192108>,  <33.997505, 38.735794, 36.652214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517551, 38.525917, 37.192108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227379, 38.252693, 37.158241>,  <34.053276, 38.088757, 37.137920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227379, 38.252693, 37.158241>,  <34.517551, 38.525917, 37.192108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227379, 38.252693, 37.158241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687283, -0.712220, -0.142773,
		0.037220, -0.161764, 0.986127,
		-0.725436, -0.683063, -0.084669,
		34.009747, 38.047775, 37.132839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614571, 37.836544, 37.532360>,  <34.517551, 38.525917, 37.192108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614571, 37.836544, 37.532360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347763, 37.749413, 37.247364>,  <34.187679, 37.697136, 37.076366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347763, 37.749413, 37.247364>,  <34.614571, 37.836544, 37.532360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347763, 37.749413, 37.247364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461593, -0.871478, -0.165704,
		-0.584821, -0.439406, 0.681841,
		-0.667020, -0.217826, -0.712485,
		34.147655, 37.684063, 37.033619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232204, 37.504719, 37.628368>,  <34.614571, 37.836544, 37.532360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232204, 37.504719, 37.628368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956413, 37.239433, 37.744827>,  <34.790939, 37.080261, 37.814705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956413, 37.239433, 37.744827>,  <35.232204, 37.504719, 37.628368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956413, 37.239433, 37.744827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715856, -0.685180, 0.134458,
		0.110315, 0.301128, 0.947182,
		-0.689478, -0.663213, 0.291150,
		34.749569, 37.040470, 37.832172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316307, 37.280312, 38.359814>,  <35.232204, 37.504719, 37.628368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316307, 37.280312, 38.359814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137356, 37.007439, 38.128475>,  <35.029987, 36.843716, 37.989674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137356, 37.007439, 38.128475>,  <35.316307, 37.280312, 38.359814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137356, 37.007439, 38.128475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839802, -0.542812, -0.009356,
		-0.307549, -0.489880, 0.815739,
		-0.447376, -0.682183, -0.578344,
		35.003143, 36.802784, 37.954971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378063, 36.590466, 38.649910>,  <35.316307, 37.280312, 38.359814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378063, 36.590466, 38.649910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379986, 36.603783, 38.250137>,  <35.381142, 36.611771, 38.010273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379986, 36.603783, 38.250137>,  <35.378063, 36.590466, 38.649910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379986, 36.603783, 38.250137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856862, -0.515380, -0.013041,
		-0.515523, -0.856315, -0.031001,
		0.004810, 0.033287, -0.999434,
		35.381428, 36.613770, 37.950306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636425, 35.958210, 38.434048>,  <35.378063, 36.590466, 38.649910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636425, 35.958210, 38.434048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721909, 36.239464, 38.162777>,  <35.773201, 36.408215, 38.000015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721909, 36.239464, 38.162777>,  <35.636425, 35.958210, 38.434048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721909, 36.239464, 38.162777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917836, -0.382246, -0.107080,
		-0.334523, -0.599573, -0.727053,
		0.213711, 0.703136, -0.678180,
		35.786022, 36.450405, 37.959324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850399, 35.673779, 37.726326>,  <35.636425, 35.958210, 38.434048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850399, 35.673779, 37.726326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024799, 36.030724, 37.772953>,  <36.129440, 36.244892, 37.800930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024799, 36.030724, 37.772953>,  <35.850399, 35.673779, 37.726326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024799, 36.030724, 37.772953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899268, -0.426985, -0.094877,
		-0.034893, 0.146190, -0.988641,
		0.436005, 0.892363, 0.116565,
		36.155602, 36.298431, 37.807922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315708, 35.891720, 37.146439>,  <35.850399, 35.673779, 37.726326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315708, 35.891720, 37.146439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437214, 36.063503, 37.486626>,  <36.510117, 36.166573, 37.690739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437214, 36.063503, 37.486626>,  <36.315708, 35.891720, 37.146439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437214, 36.063503, 37.486626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882166, -0.463954, -0.080808,
		0.359872, 0.774797, -0.519790,
		0.303769, 0.429461, 0.850463,
		36.528343, 36.192341, 37.741764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556602, 35.432350, 36.572163>,  <36.315708, 35.891720, 37.146439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556602, 35.432350, 36.572163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925564, 35.279110, 36.591782>,  <37.146942, 35.187164, 36.603554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925564, 35.279110, 36.591782>,  <36.556602, 35.432350, 36.572163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925564, 35.279110, 36.591782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251571, -0.692303, -0.676334,
		0.293061, 0.611514, -0.734960,
		0.922403, -0.383102, 0.049048,
		37.202286, 35.164181, 36.606495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895733, 35.371750, 35.865982>,  <36.556602, 35.432350, 36.572163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895733, 35.371750, 35.865982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064037, 35.109192, 36.116459>,  <37.165020, 34.951656, 36.266743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064037, 35.109192, 36.116459>,  <36.895733, 35.371750, 35.865982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064037, 35.109192, 36.116459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142013, -0.729412, -0.669171,
		0.895987, 0.192634, -0.400124,
		0.420760, -0.656392, 0.626188,
		37.190266, 34.912273, 36.304314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356594, 34.872601, 35.403301>,  <36.895733, 35.371750, 35.865982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356594, 34.872601, 35.403301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351868, 34.652821, 35.737476>,  <37.349033, 34.520954, 35.937981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351868, 34.652821, 35.737476>,  <37.356594, 34.872601, 35.403301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351868, 34.652821, 35.737476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106194, -0.831465, -0.545334,
		0.994275, 0.082277, 0.068170,
		-0.011813, -0.549451, 0.835442,
		37.348324, 34.487984, 35.988110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977451, 34.403290, 35.325199>,  <37.356594, 34.872601, 35.403301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977451, 34.403290, 35.325199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691181, 34.264008, 35.567375>,  <37.519417, 34.180439, 35.712681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691181, 34.264008, 35.567375>,  <37.977451, 34.403290, 35.325199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691181, 34.264008, 35.567375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070539, -0.898459, -0.433354,
		0.694858, -0.267435, 0.667570,
		-0.715679, -0.348209, 0.605437,
		37.476479, 34.159546, 35.749008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241791, 33.823410, 35.695423>,  <37.977451, 34.403290, 35.325199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241791, 33.823410, 35.695423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845249, 33.771164, 35.690502>,  <37.607323, 33.739819, 35.687550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845249, 33.771164, 35.690502>,  <38.241791, 33.823410, 35.695423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845249, 33.771164, 35.690502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126147, -0.923280, -0.362822,
		0.036029, -0.361239, 0.931777,
		-0.991357, -0.130613, -0.012305,
		37.547844, 33.731979, 35.686810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118088, 33.199184, 36.051746>,  <38.241791, 33.823410, 35.695423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118088, 33.199184, 36.051746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834877, 33.291042, 35.784626>,  <37.664951, 33.346157, 35.624355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834877, 33.291042, 35.784626>,  <38.118088, 33.199184, 36.051746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834877, 33.291042, 35.784626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157986, -0.870170, -0.466739,
		-0.688281, -0.435969, 0.579827,
		-0.708032, 0.229643, -0.667799,
		37.622467, 33.359936, 35.584286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577145, 32.545982, 35.927242>,  <38.118088, 33.199184, 36.051746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577145, 32.545982, 35.927242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662849, 32.780079, 35.614426>,  <37.714272, 32.920536, 35.426735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662849, 32.780079, 35.614426>,  <37.577145, 32.545982, 35.927242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662849, 32.780079, 35.614426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201656, -0.809890, -0.550829,
		-0.955734, -0.039681, -0.291545,
		0.214262, 0.585238, -0.782041,
		37.727127, 32.955650, 35.379814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250816, 32.247787, 35.393089>,  <37.577145, 32.545982, 35.927242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250816, 32.247787, 35.393089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559162, 32.450932, 35.239285>,  <37.744171, 32.572819, 35.146999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559162, 32.450932, 35.239285>,  <37.250816, 32.247787, 35.393089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559162, 32.450932, 35.239285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010716, -0.613884, -0.789323,
		-0.636911, 0.604340, -0.478663,
		0.770863, 0.507858, -0.384514,
		37.790421, 32.603291, 35.123932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108128, 32.529564, 34.658413>,  <37.250816, 32.247787, 35.393089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108128, 32.529564, 34.658413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501915, 32.468700, 34.693436>,  <37.738190, 32.432182, 34.714447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501915, 32.468700, 34.693436>,  <37.108128, 32.529564, 34.658413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501915, 32.468700, 34.693436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003227, -0.514332, -0.857585,
		0.175523, 0.843985, -0.506835,
		0.984470, -0.152162, 0.087553,
		37.797256, 32.423054, 34.719700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437389, 32.654411, 34.070351>,  <37.108128, 32.529564, 34.658413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437389, 32.654411, 34.070351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681637, 32.386871, 34.239956>,  <37.828186, 32.226349, 34.341717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681637, 32.386871, 34.239956>,  <37.437389, 32.654411, 34.070351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681637, 32.386871, 34.239956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005444, -0.538953, -0.842318,
		0.791903, 0.512031, -0.332738,
		0.610623, -0.668845, 0.424011,
		37.864822, 32.186218, 34.367161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178062, 32.488914, 33.851051>,  <37.437389, 32.654411, 34.070351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178062, 32.488914, 33.851051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949135, 32.196388, 33.999451>,  <37.811779, 32.020874, 34.088490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949135, 32.196388, 33.999451>,  <38.178062, 32.488914, 33.851051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949135, 32.196388, 33.999451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097098, -0.388798, -0.916192,
		0.814265, -0.560374, 0.151506,
		-0.572315, -0.731312, 0.370995,
		37.777439, 31.976995, 34.110748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458767, 31.740421, 33.768311>,  <38.178062, 32.488914, 33.851051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458767, 31.740421, 33.768311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059452, 31.760220, 33.780777>,  <37.819862, 31.772099, 33.788258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059452, 31.760220, 33.780777>,  <38.458767, 31.740421, 33.768311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059452, 31.760220, 33.780777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042369, -0.244516, -0.968719,
		-0.040325, -0.968381, 0.246195,
		-0.998288, 0.049495, 0.031169,
		37.759964, 31.775068, 33.790127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301319, 31.160933, 33.348961>,  <38.458767, 31.740421, 33.768311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301319, 31.160933, 33.348961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942150, 31.331953, 33.390797>,  <37.726650, 31.434565, 33.415897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942150, 31.331953, 33.390797>,  <38.301319, 31.160933, 33.348961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942150, 31.331953, 33.390797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228781, -0.250349, -0.940737,
		-0.376029, -0.868635, 0.322608,
		-0.897921, 0.427551, 0.104588,
		37.672775, 31.460218, 33.422173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756935, 30.712736, 33.222198>,  <38.301319, 31.160933, 33.348961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756935, 30.712736, 33.222198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637035, 31.081348, 33.123459>,  <37.565094, 31.302515, 33.064217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637035, 31.081348, 33.123459>,  <37.756935, 30.712736, 33.222198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637035, 31.081348, 33.123459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295969, -0.335803, -0.894225,
		-0.906945, -0.194989, 0.373402,
		-0.299754, 0.921529, -0.246844,
		37.547108, 31.357807, 33.049404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389065, 30.469507, 32.750668>,  <37.756935, 30.712736, 33.222198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389065, 30.469507, 32.750668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432518, 30.863762, 32.698948>,  <37.458591, 31.100315, 32.667915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432518, 30.863762, 32.698948>,  <37.389065, 30.469507, 32.750668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432518, 30.863762, 32.698948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131732, -0.114644, -0.984634,
		-0.985315, 0.123996, 0.117386,
		0.108633, 0.985638, -0.129295,
		37.465107, 31.159452, 32.660160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763481, 30.559223, 32.409569>,  <37.389065, 30.469507, 32.750668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763481, 30.559223, 32.409569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015583, 30.859749, 32.331276>,  <37.166843, 31.040064, 32.284302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015583, 30.859749, 32.331276>,  <36.763481, 30.559223, 32.409569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015583, 30.859749, 32.331276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095894, -0.174846, -0.979915,
		-0.770447, 0.636361, -0.038150,
		0.630251, 0.751314, -0.195733,
		37.204659, 31.085142, 32.272556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431595, 31.088722, 31.974300>,  <36.763481, 30.559223, 32.409569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431595, 31.088722, 31.974300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826141, 31.132086, 31.924761>,  <37.062870, 31.158104, 31.895037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826141, 31.132086, 31.924761>,  <36.431595, 31.088722, 31.974300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826141, 31.132086, 31.924761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093477, -0.250367, -0.963628,
		-0.135472, 0.962063, -0.236819,
		0.986362, 0.108408, -0.123848,
		37.122051, 31.164608, 31.887606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484524, 31.313129, 31.283609>,  <36.431595, 31.088722, 31.974300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484524, 31.313129, 31.283609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852333, 31.177404, 31.362947>,  <37.073021, 31.095970, 31.410551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852333, 31.177404, 31.362947>,  <36.484524, 31.313129, 31.283609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852333, 31.177404, 31.362947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081545, -0.328969, -0.940813,
		0.384480, 0.881275, -0.274826,
		0.919525, -0.339313, 0.198346,
		37.128189, 31.075611, 31.422451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838547, 31.597956, 30.798147>,  <36.484524, 31.313129, 31.283609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838547, 31.597956, 30.798147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065697, 31.281080, 30.887554>,  <37.201984, 31.090956, 30.941198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065697, 31.281080, 30.887554>,  <36.838547, 31.597956, 30.798147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065697, 31.281080, 30.887554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092718, -0.208258, -0.973669,
		0.817878, 0.573643, -0.044814,
		0.567872, -0.792188, 0.223517,
		37.236057, 31.043425, 30.954609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309681, 31.609749, 30.266483>,  <36.838547, 31.597956, 30.798147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309681, 31.609749, 30.266483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338348, 31.245008, 30.428169>,  <37.355549, 31.026163, 30.525181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338348, 31.245008, 30.428169>,  <37.309681, 31.609749, 30.266483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338348, 31.245008, 30.428169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006653, -0.404811, -0.914376,
		0.997406, 0.068219, -0.022945,
		0.071667, -0.911852, 0.404215,
		37.359848, 30.971453, 30.549435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890545, 31.361757, 30.142639>,  <37.309681, 31.609749, 30.266483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890545, 31.361757, 30.142639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650436, 31.046070, 30.194490>,  <37.506371, 30.856657, 30.225601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650436, 31.046070, 30.194490>,  <37.890545, 31.361757, 30.142639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650436, 31.046070, 30.194490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335500, -0.395604, -0.854949,
		0.726024, -0.469712, 0.502254,
		-0.600273, -0.789220, 0.129630,
		37.470356, 30.809303, 30.233379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305698, 30.727791, 30.126909>,  <37.890545, 31.361757, 30.142639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305698, 30.727791, 30.126909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930294, 30.635077, 30.024565>,  <37.705051, 30.579449, 29.963158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930294, 30.635077, 30.024565>,  <38.305698, 30.727791, 30.126909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930294, 30.635077, 30.024565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330451, -0.388545, -0.860137,
		0.099956, -0.891800, 0.441249,
		-0.938515, -0.231787, -0.255859,
		37.648739, 30.565540, 29.947807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386753, 30.182449, 29.654018>,  <38.305698, 30.727791, 30.126909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386753, 30.182449, 29.654018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996483, 30.258804, 29.610895>,  <37.762321, 30.304617, 29.585022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996483, 30.258804, 29.610895>,  <38.386753, 30.182449, 29.654018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996483, 30.258804, 29.610895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050954, -0.280835, -0.958403,
		-0.213223, -0.940582, 0.264277,
		-0.975675, 0.190887, -0.107807,
		37.703781, 30.316071, 29.578552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095036, 29.578264, 29.414953>,  <38.386753, 30.182449, 29.654018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095036, 29.578264, 29.414953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843563, 29.866789, 29.298697>,  <37.692680, 30.039904, 29.228943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843563, 29.866789, 29.298697>,  <38.095036, 29.578264, 29.414953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843563, 29.866789, 29.298697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012138, -0.364593, -0.931088,
		-0.777570, -0.588884, 0.220457,
		-0.628680, 0.721310, -0.290644,
		37.654961, 30.083181, 29.211504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568771, 29.261042, 29.031530>,  <38.095036, 29.578264, 29.414953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568771, 29.261042, 29.031530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495163, 29.638744, 28.922338>,  <37.451000, 29.865366, 28.856823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495163, 29.638744, 28.922338>,  <37.568771, 29.261042, 29.031530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495163, 29.638744, 28.922338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076537, -0.290645, -0.953765,
		-0.979939, -0.154616, 0.125754,
		-0.184017, 0.944256, -0.272980,
		37.439957, 29.922022, 28.840445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858658, 29.292322, 28.639721>,  <37.568771, 29.261042, 29.031530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858658, 29.292322, 28.639721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085781, 29.610050, 28.553331>,  <37.222057, 29.800688, 28.501497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085781, 29.610050, 28.553331>,  <36.858658, 29.292322, 28.639721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085781, 29.610050, 28.553331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161585, -0.149714, -0.975436,
		-0.807143, 0.588762, 0.043341,
		0.567811, 0.794320, -0.215975,
		37.256126, 29.848347, 28.488539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448036, 29.756069, 28.212584>,  <36.858658, 29.292322, 28.639721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448036, 29.756069, 28.212584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834454, 29.796299, 28.117390>,  <37.066303, 29.820436, 28.060274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834454, 29.796299, 28.117390>,  <36.448036, 29.756069, 28.212584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834454, 29.796299, 28.117390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208924, -0.237787, -0.948582,
		-0.151994, 0.966096, -0.208701,
		0.966048, 0.100576, -0.237983,
		37.124268, 29.826471, 28.045994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399204, 30.047283, 27.651594>,  <36.448036, 29.756069, 28.212584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399204, 30.047283, 27.651594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784344, 29.954033, 27.597086>,  <37.015427, 29.898083, 27.564381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784344, 29.954033, 27.597086>,  <36.399204, 30.047283, 27.651594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784344, 29.954033, 27.597086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134576, 0.023237, -0.990631,
		0.234107, 0.972169, -0.008999,
		0.962852, -0.233124, -0.136271,
		37.073200, 29.884096, 27.556204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727821, 30.475801, 27.067665>,  <36.399204, 30.047283, 27.651594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727821, 30.475801, 27.067665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965374, 30.154022, 27.072823>,  <37.107906, 29.960955, 27.075918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965374, 30.154022, 27.072823>,  <36.727821, 30.475801, 27.067665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965374, 30.154022, 27.072823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091949, -0.083786, -0.992233,
		0.799282, 0.588082, -0.123727,
		0.593881, -0.804450, 0.012895,
		37.143539, 29.912687, 27.076691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323288, 30.587181, 26.612343>,  <36.727821, 30.475801, 27.067665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323288, 30.587181, 26.612343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318169, 30.188656, 26.646271>,  <37.315098, 29.949541, 26.666628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318169, 30.188656, 26.646271>,  <37.323288, 30.587181, 26.612343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318169, 30.188656, 26.646271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031341, -0.084387, -0.995940,
		0.999427, -0.015404, -0.030145,
		-0.012798, -0.996314, 0.084821,
		37.314331, 29.889761, 26.671717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900681, 30.308865, 26.164310>,  <37.323288, 30.587181, 26.612343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900681, 30.308865, 26.164310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618164, 30.030792, 26.217785>,  <37.448654, 29.863949, 26.249870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618164, 30.030792, 26.217785>,  <37.900681, 30.308865, 26.164310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618164, 30.030792, 26.217785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016596, -0.172532, -0.984864,
		0.707723, -0.697824, 0.110321,
		-0.706295, -0.695180, 0.133686,
		37.406277, 29.822239, 26.257891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109001, 29.861912, 25.704496>,  <37.900681, 30.308865, 26.164310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109001, 29.861912, 25.704496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764885, 29.684177, 25.804468>,  <37.558414, 29.577538, 25.864450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764885, 29.684177, 25.804468>,  <38.109001, 29.861912, 25.704496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764885, 29.684177, 25.804468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122932, -0.294971, -0.947565,
		0.494758, -0.845907, 0.199138,
		-0.860291, -0.444335, 0.249928,
		37.506798, 29.550877, 25.879446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051212, 29.285841, 25.326515>,  <38.109001, 29.861912, 25.704496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051212, 29.285841, 25.326515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667793, 29.351114, 25.419950>,  <37.437744, 29.390278, 25.476011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667793, 29.351114, 25.419950>,  <38.051212, 29.285841, 25.326515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667793, 29.351114, 25.419950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250760, -0.093766, -0.963498,
		-0.135326, -0.982130, 0.130799,
		-0.958544, 0.163185, 0.233590,
		37.380230, 29.400068, 25.490028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626041, 28.672617, 25.001741>,  <38.051212, 29.285841, 25.326515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626041, 28.672617, 25.001741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389889, 28.990091, 25.060404>,  <37.248196, 29.180576, 25.095600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389889, 28.990091, 25.060404>,  <37.626041, 28.672617, 25.001741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389889, 28.990091, 25.060404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254373, -0.010530, -0.967049,
		-0.765988, -0.608237, 0.208109,
		-0.590386, 0.793686, 0.146654,
		37.212772, 29.228197, 25.104401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047001, 28.500074, 24.669800>,  <37.626041, 28.672617, 25.001741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047001, 28.500074, 24.669800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003788, 28.895935, 24.707581>,  <36.977859, 29.133451, 24.730249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003788, 28.895935, 24.707581>,  <37.047001, 28.500074, 24.669800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003788, 28.895935, 24.707581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449817, 0.036066, -0.892392,
		-0.886562, -0.138897, 0.441265,
		-0.108036, 0.989650, 0.094453,
		36.971378, 29.192829, 24.735916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380711, 28.740032, 24.582024>,  <37.047001, 28.500074, 24.669800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380711, 28.740032, 24.582024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562954, 29.085140, 24.494341>,  <36.672298, 29.292204, 24.441730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562954, 29.085140, 24.494341>,  <36.380711, 28.740032, 24.582024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562954, 29.085140, 24.494341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295752, -0.085555, -0.951426,
		-0.839614, 0.498308, 0.216186,
		0.455608, 0.862768, -0.219209,
		36.699635, 29.343971, 24.428577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911724, 29.118935, 24.175116>,  <36.380711, 28.740032, 24.582024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911724, 29.118935, 24.175116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275387, 29.257771, 24.083063>,  <36.493584, 29.341072, 24.027832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275387, 29.257771, 24.083063>,  <35.911724, 29.118935, 24.175116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275387, 29.257771, 24.083063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215012, -0.082038, -0.973160,
		-0.356653, 0.934237, 0.000042,
		0.909158, 0.347089, -0.230131,
		36.548134, 29.361897, 24.014023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698040, 29.610153, 23.710064>,  <35.911724, 29.118935, 24.175116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698040, 29.610153, 23.710064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087959, 29.542109, 23.652336>,  <36.321911, 29.501282, 23.617699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087959, 29.542109, 23.652336>,  <35.698040, 29.610153, 23.710064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087959, 29.542109, 23.652336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145245, 0.007060, -0.989371,
		0.169324, 0.985399, -0.017826,
		0.974799, -0.170114, -0.144319,
		36.380398, 29.491074, 23.609041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759132, 29.919064, 23.158136>,  <35.698040, 29.610153, 23.710064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759132, 29.919064, 23.158136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102364, 29.714338, 23.174883>,  <36.308300, 29.591503, 23.184931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102364, 29.714338, 23.174883>,  <35.759132, 29.919064, 23.158136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102364, 29.714338, 23.174883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050160, 0.002402, -0.998738,
		0.511068, 0.859093, 0.027734,
		0.858075, -0.511814, 0.041865,
		36.359787, 29.560795, 23.187443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361111, 30.281788, 22.788809>,  <35.759132, 29.919064, 23.158136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361111, 30.281788, 22.788809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435978, 29.889238, 22.806131>,  <36.480900, 29.653709, 22.816525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435978, 29.889238, 22.806131>,  <36.361111, 30.281788, 22.788809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435978, 29.889238, 22.806131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107265, -0.023406, -0.993955,
		0.976454, 0.190682, 0.100886,
		0.187168, -0.981373, 0.043309,
		36.492126, 29.594826, 22.819124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032951, 30.114731, 22.382835>,  <36.361111, 30.281788, 22.788809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032951, 30.114731, 22.382835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838097, 29.766167, 22.405954>,  <36.721184, 29.557028, 22.419827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838097, 29.766167, 22.405954>,  <37.032951, 30.114731, 22.382835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838097, 29.766167, 22.405954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156300, -0.152103, -0.975928,
		0.859227, -0.466374, 0.210296,
		-0.487134, -0.871413, 0.057797,
		36.691956, 29.504744, 22.423294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332581, 29.722345, 21.804518>,  <37.032951, 30.114731, 22.382835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332581, 29.722345, 21.804518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995556, 29.524040, 21.888712>,  <36.793339, 29.405056, 21.939228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995556, 29.524040, 21.888712>,  <37.332581, 29.722345, 21.804518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995556, 29.524040, 21.888712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101747, -0.237250, -0.966105,
		0.528898, -0.835422, 0.149456,
		-0.842564, -0.495765, 0.210483,
		36.742786, 29.375311, 21.951857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371311, 29.147133, 21.349428>,  <37.332581, 29.722345, 21.804518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371311, 29.147133, 21.349428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987949, 29.160965, 21.462751>,  <36.757931, 29.169264, 21.530745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987949, 29.160965, 21.462751>,  <37.371311, 29.147133, 21.349428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987949, 29.160965, 21.462751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278056, -0.337008, -0.899506,
		0.064371, -0.940867, 0.332606,
		-0.958405, 0.034581, 0.283307,
		36.700428, 29.171339, 21.547743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069214, 28.678070, 21.066820>,  <37.371311, 29.147133, 21.349428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069214, 28.678070, 21.066820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746120, 28.901075, 21.143499>,  <36.552265, 29.034878, 21.189507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746120, 28.901075, 21.143499>,  <37.069214, 28.678070, 21.066820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746120, 28.901075, 21.143499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399719, -0.278878, -0.873185,
		-0.433351, -0.781925, 0.448107,
		-0.807732, 0.557513, 0.191699,
		36.503799, 29.068329, 21.201010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562435, 28.289505, 20.645067>,  <37.069214, 28.678070, 21.066820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562435, 28.289505, 20.645067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411110, 28.653240, 20.714323>,  <36.320312, 28.871481, 20.755877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411110, 28.653240, 20.714323>,  <36.562435, 28.289505, 20.645067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411110, 28.653240, 20.714323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388416, 0.013838, -0.921380,
		-0.840243, -0.415825, 0.347967,
		-0.378318, 0.909340, 0.173141,
		36.297615, 28.926043, 20.766266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930866, 28.260429, 20.266287>,  <36.562435, 28.289505, 20.645067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930866, 28.260429, 20.266287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016068, 28.648193, 20.315062>,  <36.067188, 28.880852, 20.344326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016068, 28.648193, 20.315062>,  <35.930866, 28.260429, 20.266287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016068, 28.648193, 20.315062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367557, 0.195137, -0.909298,
		-0.905279, 0.148868, 0.397879,
		0.213007, 0.969412, 0.121936,
		36.079971, 28.939016, 20.351643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290848, 28.628807, 20.284214>,  <35.930866, 28.260429, 20.266287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290848, 28.628807, 20.284214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528927, 28.934065, 20.183540>,  <35.671776, 29.117220, 20.123137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528927, 28.934065, 20.183540>,  <35.290848, 28.628807, 20.284214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528927, 28.934065, 20.183540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514706, 0.121531, -0.848710,
		-0.617102, 0.634696, 0.465131,
		0.595200, 0.763146, -0.251685,
		35.707485, 29.163010, 20.108034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815796, 29.048101, 20.060162>,  <35.290848, 28.628807, 20.284214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815796, 29.048101, 20.060162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175388, 29.146826, 19.915434>,  <35.391144, 29.206060, 19.828598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175388, 29.146826, 19.915434>,  <34.815796, 29.048101, 20.060162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175388, 29.146826, 19.915434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382821, 0.041452, -0.922892,
		-0.212782, 0.968177, 0.131749,
		0.898984, 0.246811, -0.361818,
		35.445084, 29.220869, 19.806889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770191, 29.716486, 19.721853>,  <34.815796, 29.048101, 20.060162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770191, 29.716486, 19.721853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087204, 29.526926, 19.568331>,  <35.277412, 29.413191, 19.476217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087204, 29.526926, 19.568331>,  <34.770191, 29.716486, 19.721853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087204, 29.526926, 19.568331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450878, -0.031588, -0.892027,
		0.410607, 0.880013, -0.238705,
		0.792535, -0.473899, -0.383808,
		35.324963, 29.384756, 19.453188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814625, 30.044529, 19.095499>,  <34.770191, 29.716486, 19.721853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814625, 30.044529, 19.095499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052723, 29.729340, 19.032530>,  <35.195580, 29.540226, 18.994749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052723, 29.729340, 19.032530>,  <34.814625, 30.044529, 19.095499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052723, 29.729340, 19.032530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429103, -0.146071, -0.891367,
		0.679379, 0.598130, -0.425070,
		0.595244, -0.787974, -0.157421,
		35.231297, 29.492947, 18.985304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117508, 30.121931, 18.420118>,  <34.814625, 30.044529, 19.095499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117508, 30.121931, 18.420118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124973, 29.734983, 18.521191>,  <35.129452, 29.502815, 18.581833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124973, 29.734983, 18.521191>,  <35.117508, 30.121931, 18.420118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124973, 29.734983, 18.521191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422896, -0.236640, -0.874734,
		0.905986, -0.090534, -0.413513,
		0.018661, -0.967370, 0.252679,
		35.130573, 29.444773, 18.596994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234680, 29.822895, 17.808840>,  <35.117508, 30.121931, 18.420118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234680, 29.822895, 17.808840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090199, 29.527355, 18.036396>,  <35.003510, 29.350031, 18.172930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090199, 29.527355, 18.036396>,  <35.234680, 29.822895, 17.808840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090199, 29.527355, 18.036396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337812, -0.464957, -0.818351,
		0.869147, -0.487766, -0.081650,
		-0.361201, -0.738850, 0.568889,
		34.981838, 29.305700, 18.207064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378010, 29.135563, 17.486786>,  <35.234680, 29.822895, 17.808840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378010, 29.135563, 17.486786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056042, 29.097664, 17.721096>,  <34.862862, 29.074924, 17.861683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056042, 29.097664, 17.721096>,  <35.378010, 29.135563, 17.486786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056042, 29.097664, 17.721096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474111, -0.490945, -0.730884,
		0.356833, -0.866023, 0.350250,
		-0.804916, -0.094746, 0.585776,
		34.814568, 29.069241, 17.896830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297695, 28.475853, 17.694237>,  <35.378010, 29.135563, 17.486786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297695, 28.475853, 17.694237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986862, 28.716394, 17.619926>,  <34.800362, 28.860720, 17.575340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986862, 28.716394, 17.619926>,  <35.297695, 28.475853, 17.694237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986862, 28.716394, 17.619926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164819, -0.479293, -0.862040,
		-0.607431, -0.639260, 0.471566,
		-0.777086, 0.601353, -0.185775,
		34.753735, 28.896801, 17.564194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711197, 28.267273, 17.654362>,  <35.297695, 28.475853, 17.694237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711197, 28.267273, 17.654362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632347, 28.562401, 17.396132>,  <34.585037, 28.739477, 17.241194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632347, 28.562401, 17.396132>,  <34.711197, 28.267273, 17.654362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632347, 28.562401, 17.396132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096084, -0.669865, -0.736240,
		-0.975658, -0.083105, 0.202942,
		-0.197129, 0.737817, -0.645574,
		34.573208, 28.783747, 17.202459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864098, 27.464453, 17.628557>,  <34.711197, 28.267273, 17.654362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864098, 27.464453, 17.628557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746651, 27.751524, 17.375978>,  <34.676182, 27.923767, 17.224432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746651, 27.751524, 17.375978>,  <34.864098, 27.464453, 17.628557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746651, 27.751524, 17.375978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891062, -0.444655, -0.091044,
		-0.346117, 0.535927, 0.770056,
		-0.293617, 0.717680, -0.631447,
		34.658566, 27.966827, 17.186544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225826, 27.749315, 17.909910>,  <34.864098, 27.464453, 17.628557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225826, 27.749315, 17.909910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245399, 27.790417, 17.512508>,  <34.257145, 27.815077, 17.274067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245399, 27.790417, 17.512508>,  <34.225826, 27.749315, 17.909910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245399, 27.790417, 17.512508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873101, -0.478683, -0.092510,
		-0.485078, 0.871955, 0.066290,
		0.048932, 0.102753, -0.993503,
		34.260078, 27.821243, 17.214458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673298, 28.128885, 17.642694>,  <34.225826, 27.749315, 17.909910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673298, 28.128885, 17.642694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791931, 27.878656, 17.354055>,  <33.863110, 27.728519, 17.180872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791931, 27.878656, 17.354055>,  <33.673298, 28.128885, 17.642694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791931, 27.878656, 17.354055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911990, -0.409743, -0.019614,
		-0.283400, 0.663907, -0.692035,
		0.296579, -0.625570, -0.721598,
		33.880905, 27.690985, 17.137575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269562, 28.029846, 16.976231>,  <33.673298, 28.128885, 17.642694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269562, 28.029846, 16.976231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443317, 27.669804, 16.962862>,  <33.547569, 27.453779, 16.954840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443317, 27.669804, 16.962862>,  <33.269562, 28.029846, 16.976231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443317, 27.669804, 16.962862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876404, -0.413803, -0.246340,
		0.207901, 0.136300, -0.968607,
		0.434388, -0.900105, -0.033424,
		33.573635, 27.399773, 16.952835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101509, 28.794256, 16.945019>,  <33.269562, 28.029846, 16.976231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101509, 28.794256, 16.945019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841473, 29.094843, 16.899982>,  <32.685452, 29.275194, 16.872961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841473, 29.094843, 16.899982>,  <33.101509, 28.794256, 16.945019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841473, 29.094843, 16.899982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437622, -0.249142, 0.863953,
		0.621181, 0.610923, 0.490824,
		-0.650093, 0.751466, -0.112591,
		32.646446, 29.320282, 16.866205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098286, 29.175089, 17.631987>,  <33.101509, 28.794256, 16.945019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098286, 29.175089, 17.631987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748550, 29.213884, 17.441774>,  <32.538708, 29.237162, 17.327646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748550, 29.213884, 17.441774>,  <33.098286, 29.175089, 17.631987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748550, 29.213884, 17.441774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485024, -0.140454, 0.863148,
		0.016924, 0.985325, 0.169845,
		-0.874337, 0.096987, -0.475530,
		32.486248, 29.242981, 17.299116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605309, 29.806101, 17.886137>,  <33.098286, 29.175089, 17.631987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605309, 29.806101, 17.886137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442158, 29.448008, 17.814362>,  <32.344269, 29.233152, 17.771296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442158, 29.448008, 17.814362>,  <32.605309, 29.806101, 17.886137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442158, 29.448008, 17.814362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233593, -0.087672, 0.968374,
		-0.882652, 0.436889, -0.173361,
		-0.407873, -0.895233, -0.179438,
		32.319798, 29.179438, 17.760530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825891, 29.781906, 18.241913>,  <32.605309, 29.806101, 17.886137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825891, 29.781906, 18.241913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998058, 29.422964, 18.202940>,  <32.101360, 29.207600, 18.179556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998058, 29.422964, 18.202940>,  <31.825891, 29.781906, 18.241913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998058, 29.422964, 18.202940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268534, -0.230355, 0.935321,
		-0.861760, -0.376416, -0.340120,
		0.430418, -0.897356, -0.097430,
		32.127182, 29.153757, 18.173712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375275, 29.170048, 18.405170>,  <31.825891, 29.781906, 18.241913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375275, 29.170048, 18.405170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745098, 29.062492, 18.513165>,  <31.966991, 28.997959, 18.577961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745098, 29.062492, 18.513165>,  <31.375275, 29.170048, 18.405170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745098, 29.062492, 18.513165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273255, 0.025934, 0.961592,
		-0.265562, -0.962822, -0.049497,
		0.924558, -0.268888, 0.269983,
		32.022465, 28.981827, 18.594160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284233, 28.645149, 19.055693>,  <31.375275, 29.170048, 18.405170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284233, 28.645149, 19.055693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647421, 28.811686, 19.036734>,  <31.865334, 28.911608, 19.025358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647421, 28.811686, 19.036734>,  <31.284233, 28.645149, 19.055693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647421, 28.811686, 19.036734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022119, 0.065333, 0.997618,
		0.418448, -0.906857, 0.050111,
		0.907971, 0.416343, -0.047397,
		31.919813, 28.936588, 19.022514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685947, 28.303322, 19.597904>,  <31.284233, 28.645149, 19.055693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685947, 28.303322, 19.597904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879974, 28.646845, 19.531984>,  <31.996391, 28.852959, 19.492432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879974, 28.646845, 19.531984>,  <31.685947, 28.303322, 19.597904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879974, 28.646845, 19.531984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109658, 0.127233, 0.985793,
		0.867574, -0.496248, -0.032459,
		0.485067, 0.858807, -0.164802,
		32.025494, 28.904488, 19.482544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080727, 28.352406, 20.184471>,  <31.685947, 28.303322, 19.597904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080727, 28.352406, 20.184471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131897, 28.724752, 20.047579>,  <32.162598, 28.948160, 19.965445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131897, 28.724752, 20.047579>,  <32.080727, 28.352406, 20.184471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131897, 28.724752, 20.047579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114903, 0.328830, 0.937373,
		0.985105, -0.159237, -0.064894,
		0.127926, 0.930868, -0.342228,
		32.170277, 29.004013, 19.944910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620014, 28.658485, 20.508703>,  <32.080727, 28.352406, 20.184471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620014, 28.658485, 20.508703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453331, 28.997358, 20.376863>,  <32.353321, 29.200682, 20.297760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453331, 28.997358, 20.376863>,  <32.620014, 28.658485, 20.508703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453331, 28.997358, 20.376863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006970, 0.365548, 0.930766,
		0.909013, 0.385561, -0.158232,
		-0.416708, 0.847182, -0.329601,
		32.328320, 29.251513, 20.277983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062721, 29.205576, 20.697411>,  <32.620014, 28.658485, 20.508703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062721, 29.205576, 20.697411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699932, 29.363667, 20.639168>,  <32.482258, 29.458521, 20.604223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699932, 29.363667, 20.639168>,  <33.062721, 29.205576, 20.697411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699932, 29.363667, 20.639168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094675, 0.528147, 0.843858,
		0.410416, 0.751569, -0.516432,
		-0.906970, 0.395226, -0.145605,
		32.427841, 29.482235, 20.595486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195511, 29.881475, 20.769163>,  <33.062721, 29.205576, 20.697411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195511, 29.881475, 20.769163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799458, 29.872839, 20.824545>,  <32.561825, 29.867657, 20.857775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799458, 29.872839, 20.824545>,  <33.195511, 29.881475, 20.769163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799458, 29.872839, 20.824545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081171, 0.717030, 0.692300,
		-0.114223, 0.696708, -0.708203,
		-0.990133, -0.021591, 0.138454,
		32.502419, 29.866362, 20.866081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996964, 30.496923, 20.746689>,  <33.195511, 29.881475, 20.769163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996964, 30.496923, 20.746689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677090, 30.350574, 20.937119>,  <32.485165, 30.262766, 21.051376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677090, 30.350574, 20.937119>,  <32.996964, 30.496923, 20.746689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677090, 30.350574, 20.937119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027514, 0.769735, 0.637770,
		-0.599792, 0.523113, -0.605478,
		-0.799683, -0.365870, 0.476073,
		32.437183, 30.240814, 21.079941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662804, 31.073708, 21.019707>,  <32.996964, 30.496923, 20.746689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662804, 31.073708, 21.019707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532093, 30.758459, 21.228352>,  <32.453667, 30.569309, 21.353539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532093, 30.758459, 21.228352>,  <32.662804, 31.073708, 21.019707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532093, 30.758459, 21.228352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070607, 0.530013, 0.845045,
		-0.942461, 0.312968, -0.117547,
		-0.326774, -0.788123, 0.521614,
		32.434059, 30.522022, 21.384836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077068, 31.334061, 21.514647>,  <32.662804, 31.073708, 21.019707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077068, 31.334061, 21.514647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226482, 31.007181, 21.690216>,  <32.316132, 30.811054, 21.795557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226482, 31.007181, 21.690216>,  <32.077068, 31.334061, 21.514647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226482, 31.007181, 21.690216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260592, 0.546566, 0.795838,
		-0.890258, -0.182897, 0.417120,
		0.373540, -0.817199, 0.438923,
		32.338543, 30.762022, 21.821894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856127, 31.434566, 22.186539>,  <32.077068, 31.334061, 21.514647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856127, 31.434566, 22.186539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131908, 31.145006, 22.196482>,  <32.297379, 30.971270, 22.202448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131908, 31.145006, 22.196482>,  <31.856127, 31.434566, 22.186539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131908, 31.145006, 22.196482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419127, 0.426704, 0.801409,
		-0.590749, -0.542116, 0.597600,
		0.689455, -0.723902, 0.024860,
		32.338745, 30.927835, 22.203939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787289, 31.081144, 22.862076>,  <31.856127, 31.434566, 22.186539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787289, 31.081144, 22.862076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157539, 31.014036, 22.726387>,  <32.379688, 30.973772, 22.644974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157539, 31.014036, 22.726387>,  <31.787289, 31.081144, 22.862076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157539, 31.014036, 22.726387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368855, 0.199473, 0.907830,
		-0.084642, -0.965434, 0.246520,
		0.925625, -0.167771, -0.339222,
		32.435226, 30.963705, 22.624620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046299, 30.716356, 23.302874>,  <31.787289, 31.081144, 22.862076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046299, 30.716356, 23.302874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384815, 30.848888, 23.136015>,  <32.587925, 30.928408, 23.035900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384815, 30.848888, 23.136015>,  <32.046299, 30.716356, 23.302874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384815, 30.848888, 23.136015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420972, 0.063920, 0.904819,
		0.326461, -0.941346, -0.085387,
		0.846290, 0.331334, -0.417148,
		32.638702, 30.948288, 23.010870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500389, 30.406858, 23.639353>,  <32.046299, 30.716356, 23.302874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500389, 30.406858, 23.639353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698078, 30.717167, 23.482424>,  <32.816692, 30.903353, 23.388266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698078, 30.717167, 23.482424>,  <32.500389, 30.406858, 23.639353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698078, 30.717167, 23.482424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444973, 0.161945, 0.880780,
		0.746819, -0.609878, -0.265161,
		0.494226, 0.775773, -0.392323,
		32.846348, 30.949898, 23.364727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225380, 30.334421, 23.773256>,  <32.500389, 30.406858, 23.639353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225380, 30.334421, 23.773256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172806, 30.720652, 23.683464>,  <33.141262, 30.952389, 23.629589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172806, 30.720652, 23.683464>,  <33.225380, 30.334421, 23.773256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172806, 30.720652, 23.683464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251528, 0.251517, 0.934598,
		0.958884, 0.066374, -0.275927,
		-0.131433, 0.965574, -0.224481,
		33.133377, 31.010324, 23.616119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874718, 30.485577, 23.898569>,  <33.225380, 30.334421, 23.773256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874718, 30.485577, 23.898569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637447, 30.807304, 23.912479>,  <33.495087, 31.000341, 23.920826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637447, 30.807304, 23.912479>,  <33.874718, 30.485577, 23.898569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637447, 30.807304, 23.912479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365526, 0.230582, 0.901789,
		0.717309, 0.547631, -0.430776,
		-0.593177, 0.804321, 0.034775,
		33.459496, 31.048601, 23.922913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388447, 31.022509, 24.259401>,  <33.874718, 30.485577, 23.898569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388447, 31.022509, 24.259401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012482, 31.155760, 24.289286>,  <33.786903, 31.235710, 24.307217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012482, 31.155760, 24.289286>,  <34.388447, 31.022509, 24.259401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012482, 31.155760, 24.289286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148675, 0.202396, 0.967952,
		0.307331, 0.920902, -0.239763,
		-0.939917, 0.333129, 0.074712,
		33.730507, 31.255699, 24.311699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475906, 31.551874, 24.676296>,  <34.388447, 31.022509, 24.259401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475906, 31.551874, 24.676296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094280, 31.436399, 24.708324>,  <33.865303, 31.367115, 24.727541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094280, 31.436399, 24.708324>,  <34.475906, 31.551874, 24.676296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094280, 31.436399, 24.708324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065947, 0.058332, 0.996117,
		-0.292236, 0.955645, -0.036615,
		-0.954070, -0.288687, 0.080068,
		33.808060, 31.349794, 24.732346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233456, 32.078274, 25.109158>,  <34.475906, 31.551874, 24.676296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233456, 32.078274, 25.109158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963940, 31.784925, 25.145329>,  <33.802231, 31.608917, 25.167032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963940, 31.784925, 25.145329>,  <34.233456, 32.078274, 25.109158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963940, 31.784925, 25.145329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069419, 0.059013, 0.995841,
		-0.735654, 0.677266, 0.011148,
		-0.673792, -0.733368, 0.090428,
		33.761803, 31.564915, 25.172457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889931, 32.270756, 25.704031>,  <34.233456, 32.078274, 25.109158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889931, 32.270756, 25.704031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768944, 31.892168, 25.658953>,  <33.696350, 31.665014, 25.631907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768944, 31.892168, 25.658953>,  <33.889931, 32.270756, 25.704031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768944, 31.892168, 25.658953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149513, -0.069655, 0.986303,
		-0.941359, 0.315177, -0.120442,
		-0.302471, -0.946473, -0.112693,
		33.678204, 31.608227, 25.625145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268147, 32.221504, 26.119370>,  <33.889931, 32.270756, 25.704031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268147, 32.221504, 26.119370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421295, 31.854929, 26.072803>,  <33.513184, 31.634985, 26.044865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421295, 31.854929, 26.072803>,  <33.268147, 32.221504, 26.119370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421295, 31.854929, 26.072803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270768, -0.231809, 0.934317,
		-0.883229, -0.326203, -0.336895,
		0.382872, -0.916437, -0.116416,
		33.536156, 31.579998, 26.037878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837650, 31.881151, 26.588354>,  <33.268147, 32.221504, 26.119370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837650, 31.881151, 26.588354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154453, 31.650364, 26.508516>,  <33.344536, 31.511892, 26.460613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154453, 31.650364, 26.508516>,  <32.837650, 31.881151, 26.588354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154453, 31.650364, 26.508516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021206, -0.300731, 0.953473,
		-0.610147, -0.759387, -0.225945,
		0.792004, -0.576968, -0.199594,
		33.392056, 31.477274, 26.448639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714497, 31.230946, 27.023109>,  <32.837650, 31.881151, 26.588354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714497, 31.230946, 27.023109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095703, 31.200388, 26.905857>,  <33.324429, 31.182053, 26.835506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095703, 31.200388, 26.905857>,  <32.714497, 31.230946, 27.023109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095703, 31.200388, 26.905857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256079, -0.313743, 0.914324,
		-0.161817, -0.946430, -0.279439,
		0.953016, -0.076395, -0.293130,
		33.381607, 31.177469, 26.817919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874462, 30.579948, 27.237572>,  <32.714497, 31.230946, 27.023109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874462, 30.579948, 27.237572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219772, 30.777704, 27.196920>,  <33.426960, 30.896357, 27.172529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219772, 30.777704, 27.196920>,  <32.874462, 30.579948, 27.237572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219772, 30.777704, 27.196920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206021, -0.161340, 0.965155,
		0.460765, -0.854136, -0.241135,
		0.863279, 0.494389, -0.101630,
		33.478756, 30.926022, 27.166431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494530, 30.140430, 27.499878>,  <32.874462, 30.579948, 27.237572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494530, 30.140430, 27.499878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598656, 30.526335, 27.515251>,  <33.661129, 30.757877, 27.524475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598656, 30.526335, 27.515251>,  <33.494530, 30.140430, 27.499878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598656, 30.526335, 27.515251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469178, -0.161185, 0.868270,
		0.843866, -0.207988, -0.494602,
		0.260312, 0.964759, 0.038435,
		33.676750, 30.815762, 27.526781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221676, 30.132504, 27.672600>,  <33.494530, 30.140430, 27.499878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221676, 30.132504, 27.672600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054623, 30.482246, 27.771458>,  <33.954391, 30.692093, 27.830772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054623, 30.482246, 27.771458>,  <34.221676, 30.132504, 27.672600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054623, 30.482246, 27.771458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410474, -0.061109, 0.909822,
		0.810612, 0.481421, -0.333379,
		-0.417635, 0.874357, 0.247146,
		33.929333, 30.744553, 27.845602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785160, 30.476683, 28.138561>,  <34.221676, 30.132504, 27.672600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785160, 30.476683, 28.138561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444496, 30.674265, 28.208639>,  <34.240097, 30.792814, 28.250687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444496, 30.674265, 28.208639>,  <34.785160, 30.476683, 28.138561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444496, 30.674265, 28.208639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314440, 0.214133, 0.924811,
		0.419298, 0.842708, -0.337686,
		-0.851655, 0.493953, 0.175195,
		34.188999, 30.822451, 28.261198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004494, 31.117542, 28.272303>,  <34.785160, 30.476683, 28.138561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004494, 31.117542, 28.272303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636604, 31.068968, 28.421627>,  <34.415871, 31.039824, 28.511223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636604, 31.068968, 28.421627>,  <35.004494, 31.117542, 28.272303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636604, 31.068968, 28.421627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320829, 0.315487, 0.893049,
		-0.226225, 0.941127, -0.251200,
		-0.919723, -0.121438, 0.373312,
		34.360687, 31.032536, 28.533621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989246, 31.721474, 28.766428>,  <35.004494, 31.117542, 28.272303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989246, 31.721474, 28.766428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715042, 31.443531, 28.853371>,  <34.550518, 31.276766, 28.905537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715042, 31.443531, 28.853371>,  <34.989246, 31.721474, 28.766428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715042, 31.443531, 28.853371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131434, 0.175527, 0.975661,
		-0.716099, 0.697396, -0.028998,
		-0.685513, -0.694859, 0.217356,
		34.509388, 31.235073, 28.918577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531567, 32.016773, 29.289740>,  <34.989246, 31.721474, 28.766428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531567, 32.016773, 29.289740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434937, 31.628908, 29.304674>,  <34.376957, 31.396189, 29.313635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434937, 31.628908, 29.304674>,  <34.531567, 32.016773, 29.289740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434937, 31.628908, 29.304674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017928, 0.042929, 0.998917,
		-0.970216, 0.240647, -0.027754,
		-0.241578, -0.969663, 0.037336,
		34.362465, 31.338009, 29.315874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937431, 32.006905, 29.728531>,  <34.531567, 32.016773, 29.289740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937431, 32.006905, 29.728531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093285, 31.638521, 29.729990>,  <34.186798, 31.417490, 29.730865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093285, 31.638521, 29.729990>,  <33.937431, 32.006905, 29.728531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093285, 31.638521, 29.729990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070160, 0.033629, 0.996969,
		-0.918293, -0.388198, 0.077718,
		0.389634, -0.920963, 0.003646,
		34.210175, 31.362232, 29.731083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520683, 31.598141, 30.260769>,  <33.937431, 32.006905, 29.728531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520683, 31.598141, 30.260769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876759, 31.419443, 30.225016>,  <34.090405, 31.312225, 30.203564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876759, 31.419443, 30.225016>,  <33.520683, 31.598141, 30.260769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876759, 31.419443, 30.225016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167458, 0.138382, 0.976119,
		-0.423705, -0.883896, 0.197997,
		0.890187, -0.446743, -0.089382,
		34.143814, 31.285421, 30.198200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575150, 30.954100, 30.678089>,  <33.520683, 31.598141, 30.260769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575150, 30.954100, 30.678089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947098, 31.092733, 30.628742>,  <34.170265, 31.175913, 30.599134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947098, 31.092733, 30.628742>,  <33.575150, 30.954100, 30.678089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947098, 31.092733, 30.628742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128050, 0.009453, 0.991723,
		0.344881, -0.937971, -0.035590,
		0.929871, 0.346584, -0.123368,
		34.226059, 31.196709, 30.591732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854908, 30.814753, 31.346457>,  <33.575150, 30.954100, 30.678089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854908, 30.814753, 31.346457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142281, 31.044739, 31.189859>,  <34.314705, 31.182730, 31.095901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142281, 31.044739, 31.189859>,  <33.854908, 30.814753, 31.346457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142281, 31.044739, 31.189859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383508, 0.142141, 0.912534,
		0.580321, -0.805737, -0.118383,
		0.718436, 0.574963, -0.391494,
		34.357811, 31.217228, 31.072411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431499, 30.631748, 31.711779>,  <33.854908, 30.814753, 31.346457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431499, 30.631748, 31.711779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516315, 30.990948, 31.557566>,  <34.567204, 31.206469, 31.465038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516315, 30.990948, 31.557566>,  <34.431499, 30.631748, 31.711779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516315, 30.990948, 31.557566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277416, 0.322965, 0.904840,
		0.937059, -0.298813, -0.180639,
		0.212038, 0.898001, -0.385532,
		34.579926, 31.260347, 31.441906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064693, 30.716543, 31.828970>,  <34.431499, 30.631748, 31.711779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064693, 30.716543, 31.828970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907803, 31.081577, 31.782753>,  <34.813667, 31.300598, 31.755024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907803, 31.081577, 31.782753>,  <35.064693, 30.716543, 31.828970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907803, 31.081577, 31.782753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309341, 0.249147, 0.917733,
		0.866295, 0.324217, -0.380022,
		-0.392226, 0.912584, -0.115541,
		34.790134, 31.355352, 31.748091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520714, 31.065168, 32.165764>,  <35.064693, 30.716543, 31.828970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520714, 31.065168, 32.165764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209785, 31.313198, 32.123276>,  <35.023228, 31.462015, 32.097782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209785, 31.313198, 32.123276>,  <35.520714, 31.065168, 32.165764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209785, 31.313198, 32.123276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221276, 0.427537, 0.876498,
		0.588905, 0.657817, -0.469540,
		-0.777321, 0.620072, -0.106219,
		34.976589, 31.499220, 32.091412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730282, 31.789360, 32.329998>,  <35.520714, 31.065168, 32.165764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730282, 31.789360, 32.329998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336975, 31.783430, 32.402630>,  <35.100990, 31.779873, 32.446209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336975, 31.783430, 32.402630>,  <35.730282, 31.789360, 32.329998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336975, 31.783430, 32.402630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153590, 0.468620, 0.869946,
		-0.097989, 0.883275, -0.458500,
		-0.983264, -0.014824, 0.181581,
		35.041996, 31.778982, 32.457104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541584, 32.436337, 32.483871>,  <35.730282, 31.789360, 32.329998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541584, 32.436337, 32.483871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237358, 32.230755, 32.642559>,  <35.054821, 32.107407, 32.737770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237358, 32.230755, 32.642559>,  <35.541584, 32.436337, 32.483871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237358, 32.230755, 32.642559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195071, 0.401904, 0.894662,
		-0.619261, 0.757839, -0.205417,
		-0.760568, -0.513958, 0.396716,
		35.009186, 32.076569, 32.761574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260033, 32.853073, 32.993538>,  <35.541584, 32.436337, 32.483871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260033, 32.853073, 32.993538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163635, 32.473705, 33.075920>,  <35.105797, 32.246082, 33.125347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163635, 32.473705, 33.075920>,  <35.260033, 32.853073, 32.993538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163635, 32.473705, 33.075920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201908, 0.158569, 0.966483,
		-0.949293, 0.274495, 0.153281,
		-0.240990, -0.948424, 0.205951,
		35.091339, 32.189178, 33.137707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169407, 33.478279, 32.620037>,  <35.260033, 32.853073, 32.993538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169407, 33.478279, 32.620037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398758, 33.804520, 32.588982>,  <35.536369, 34.000263, 32.570347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398758, 33.804520, 32.588982>,  <35.169407, 33.478279, 32.620037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398758, 33.804520, 32.588982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230136, 0.069383, -0.970682,
		-0.786305, 0.574436, 0.227482,
		0.573378, 0.815604, -0.077642,
		35.570770, 34.049202, 32.565689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797626, 33.867290, 32.121891>,  <35.169407, 33.478279, 32.620037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797626, 33.867290, 32.121891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132740, 34.085583, 32.115074>,  <35.333809, 34.216557, 32.110985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132740, 34.085583, 32.115074>,  <34.797626, 33.867290, 32.121891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132740, 34.085583, 32.115074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191842, 0.265000, -0.944972,
		-0.511184, 0.794955, 0.326708,
		0.837787, 0.545731, -0.017042,
		35.384075, 34.249302, 32.109962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632725, 34.564236, 31.890217>,  <34.797626, 33.867290, 32.121891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632725, 34.564236, 31.890217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016376, 34.480560, 31.813995>,  <35.246567, 34.430355, 31.768263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016376, 34.480560, 31.813995>,  <34.632725, 34.564236, 31.890217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016376, 34.480560, 31.813995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116910, 0.320295, -0.940076,
		0.257687, 0.923932, 0.282748,
		0.959129, -0.209190, -0.190553,
		35.304115, 34.417805, 31.756830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961769, 35.184792, 31.571833>,  <34.632725, 34.564236, 31.890217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961769, 35.184792, 31.571833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195625, 34.888725, 31.438963>,  <35.335941, 34.711086, 31.359241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195625, 34.888725, 31.438963>,  <34.961769, 35.184792, 31.571833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195625, 34.888725, 31.438963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062349, 0.367237, -0.928035,
		0.808891, 0.563281, 0.168554,
		0.584644, -0.740170, -0.332175,
		35.371017, 34.666676, 31.339310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409542, 35.424641, 31.082014>,  <34.961769, 35.184792, 31.571833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409542, 35.424641, 31.082014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469368, 35.044682, 30.972239>,  <35.505264, 34.816704, 30.906374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469368, 35.044682, 30.972239>,  <35.409542, 35.424641, 31.082014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469368, 35.044682, 30.972239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125257, 0.257122, -0.958227,
		0.980786, 0.177693, -0.080525,
		0.149566, -0.949902, -0.274439,
		35.514236, 34.759712, 30.889908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830158, 35.488743, 30.559494>,  <35.409542, 35.424641, 31.082014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830158, 35.488743, 30.559494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672016, 35.122700, 30.527805>,  <35.577129, 34.903076, 30.508793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672016, 35.122700, 30.527805>,  <35.830158, 35.488743, 30.559494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672016, 35.122700, 30.527805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090480, 0.124629, -0.988069,
		0.914061, -0.383470, -0.132072,
		-0.395355, -0.915106, -0.079222,
		35.553410, 34.848167, 30.504038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250439, 35.234562, 30.049242>,  <35.830158, 35.488743, 30.559494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250439, 35.234562, 30.049242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912674, 35.020924, 30.065781>,  <35.710014, 34.892738, 30.075705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912674, 35.020924, 30.065781>,  <36.250439, 35.234562, 30.049242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912674, 35.020924, 30.065781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059068, 0.016118, -0.998124,
		0.532432, -0.845268, -0.045159,
		-0.844410, -0.534101, 0.041347,
		35.659351, 34.860695, 30.078184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294754, 34.834728, 29.493383>,  <36.250439, 35.234562, 30.049242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294754, 34.834728, 29.493383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901302, 34.829327, 29.565268>,  <35.665234, 34.826084, 29.608398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901302, 34.829327, 29.565268>,  <36.294754, 34.834728, 29.493383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901302, 34.829327, 29.565268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179163, -0.034552, -0.983213,
		0.019493, -0.999312, 0.031565,
		-0.983626, -0.013511, 0.179713,
		35.606213, 34.825275, 29.619181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039654, 34.293640, 29.127583>,  <36.294754, 34.834728, 29.493383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039654, 34.293640, 29.127583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716534, 34.523788, 29.178810>,  <35.522659, 34.661877, 29.209547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716534, 34.523788, 29.178810>,  <36.039654, 34.293640, 29.127583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716534, 34.523788, 29.178810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282948, -0.187903, -0.940549,
		-0.517101, -0.796015, 0.314589,
		-0.807803, 0.575371, 0.128066,
		35.474194, 34.696400, 29.217230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498959, 33.968658, 28.647654>,  <36.039654, 34.293640, 29.127583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498959, 33.968658, 28.647654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327377, 34.312786, 28.757812>,  <35.224426, 34.519264, 28.823908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327377, 34.312786, 28.757812>,  <35.498959, 33.968658, 28.647654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327377, 34.312786, 28.757812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525243, 0.010493, -0.850887,
		-0.734927, -0.509643, 0.447377,
		-0.428955, 0.860322, 0.275398,
		35.198692, 34.570881, 28.840431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704914, 33.929684, 28.801693>,  <35.498959, 33.968658, 28.647654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704914, 33.929684, 28.801693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807732, 34.299107, 28.687866>,  <34.869423, 34.520760, 28.619570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807732, 34.299107, 28.687866>,  <34.704914, 33.929684, 28.801693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807732, 34.299107, 28.687866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556304, -0.099372, -0.825016,
		-0.790224, 0.370371, 0.488233,
		0.257045, 0.923553, -0.284565,
		34.884846, 34.576172, 28.602497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213764, 34.011219, 28.311424>,  <34.704914, 33.929684, 28.801693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213764, 34.011219, 28.311424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426098, 34.346268, 28.259871>,  <34.553497, 34.547298, 28.228939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426098, 34.346268, 28.259871>,  <34.213764, 34.011219, 28.311424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426098, 34.346268, 28.259871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343429, 0.073576, -0.936292,
		-0.774775, 0.541275, 0.326719,
		0.530831, 0.837620, -0.128884,
		34.585346, 34.597553, 28.221205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768456, 34.458736, 28.185112>,  <34.213764, 34.011219, 28.311424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768456, 34.458736, 28.185112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104767, 34.610378, 28.030516>,  <34.306553, 34.701363, 27.937757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104767, 34.610378, 28.030516>,  <33.768456, 34.458736, 28.185112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104767, 34.610378, 28.030516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459288, 0.121529, -0.879935,
		-0.286621, 0.917337, 0.276299,
		0.840775, 0.379109, -0.386489,
		34.356998, 34.724110, 27.914570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548496, 34.974716, 27.700716>,  <33.768456, 34.458736, 28.185112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548496, 34.974716, 27.700716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924625, 34.904247, 27.584270>,  <34.150303, 34.861965, 27.514404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924625, 34.904247, 27.584270>,  <33.548496, 34.974716, 27.700716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924625, 34.904247, 27.584270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264667, 0.159015, -0.951139,
		0.213859, 0.971430, 0.102898,
		0.940327, -0.176176, -0.291113,
		34.206722, 34.851395, 27.496937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559265, 35.373074, 27.044884>,  <33.548496, 34.974716, 27.700716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559265, 35.373074, 27.044884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903446, 35.172710, 27.007528>,  <34.109955, 35.052494, 26.985115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903446, 35.172710, 27.007528>,  <33.559265, 35.373074, 27.044884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903446, 35.172710, 27.007528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223798, -0.206866, -0.952429,
		0.457759, 0.840416, -0.290099,
		0.860448, -0.500906, -0.093388,
		34.161579, 35.022438, 26.979511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963711, 35.635063, 26.385824>,  <33.559265, 35.373074, 27.044884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963711, 35.635063, 26.385824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081963, 35.267998, 26.492029>,  <34.152916, 35.047760, 26.555752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081963, 35.267998, 26.492029>,  <33.963711, 35.635063, 26.385824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081963, 35.267998, 26.492029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001722, -0.277424, -0.960746,
		0.955300, 0.284484, -0.080435,
		0.295632, -0.917663, 0.265513,
		34.170650, 34.992699, 26.571684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406246, 35.385582, 25.912527>,  <33.963711, 35.635063, 26.385824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406246, 35.385582, 25.912527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303783, 35.040810, 26.087551>,  <34.242306, 34.833946, 26.192566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303783, 35.040810, 26.087551>,  <34.406246, 35.385582, 25.912527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303783, 35.040810, 26.087551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024796, -0.458373, -0.888414,
		0.966316, -0.216726, 0.138789,
		-0.256160, -0.861930, 0.437559,
		34.226936, 34.782230, 26.218819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830261, 34.856285, 25.548075>,  <34.406246, 35.385582, 25.912527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830261, 34.856285, 25.548075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505943, 34.714592, 25.734465>,  <34.311352, 34.629574, 25.846298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505943, 34.714592, 25.734465>,  <34.830261, 34.856285, 25.548075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505943, 34.714592, 25.734465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243474, -0.519847, -0.818828,
		0.532295, -0.777352, 0.335240,
		-0.810791, -0.354236, 0.465976,
		34.262707, 34.608322, 25.874258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855045, 34.089916, 25.464401>,  <34.830261, 34.856285, 25.548075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855045, 34.089916, 25.464401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469479, 34.181721, 25.518345>,  <34.238140, 34.236805, 25.550711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469479, 34.181721, 25.518345>,  <34.855045, 34.089916, 25.464401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469479, 34.181721, 25.518345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233552, -0.486047, -0.842147,
		-0.127736, -0.843257, 0.522112,
		-0.963917, 0.229513, 0.134859,
		34.180302, 34.250576, 25.558802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452133, 33.432732, 25.361292>,  <34.855045, 34.089916, 25.464401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452133, 33.432732, 25.361292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201843, 33.737823, 25.295910>,  <34.051670, 33.920879, 25.256681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201843, 33.737823, 25.295910>,  <34.452133, 33.432732, 25.361292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201843, 33.737823, 25.295910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281936, -0.416517, -0.864306,
		-0.727313, -0.494731, 0.475664,
		-0.625721, 0.762729, -0.163455,
		34.014126, 33.966640, 25.246874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770542, 33.180752, 25.148617>,  <34.452133, 33.432732, 25.361292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770542, 33.180752, 25.148617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858200, 33.537617, 24.990620>,  <33.910793, 33.751736, 24.895821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858200, 33.537617, 24.990620>,  <33.770542, 33.180752, 25.148617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858200, 33.537617, 24.990620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270693, -0.333349, -0.903108,
		-0.937390, 0.304833, 0.168451,
		0.219144, 0.892163, -0.394994,
		33.923943, 33.805267, 24.872122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320435, 33.370754, 24.653204>,  <33.770542, 33.180752, 25.148617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320435, 33.370754, 24.653204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624546, 33.603161, 24.537004>,  <33.807014, 33.742603, 24.467285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624546, 33.603161, 24.537004>,  <33.320435, 33.370754, 24.653204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624546, 33.603161, 24.537004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214782, -0.197209, -0.956545,
		-0.613056, 0.789639, -0.025143,
		0.760283, 0.581016, -0.290500,
		33.852631, 33.777466, 24.449854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019764, 33.812912, 24.084259>,  <33.320435, 33.370754, 24.653204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019764, 33.812912, 24.084259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415520, 33.847992, 24.037930>,  <33.652973, 33.869041, 24.010132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415520, 33.847992, 24.037930>,  <33.019764, 33.812912, 24.084259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415520, 33.847992, 24.037930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101127, -0.156651, -0.982463,
		-0.104306, 0.983753, -0.146120,
		0.989391, 0.087700, -0.115823,
		33.712337, 33.874302, 24.003183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101028, 34.238705, 23.484125>,  <33.019764, 33.812912, 24.084259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101028, 34.238705, 23.484125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471760, 34.094994, 23.527788>,  <33.694199, 34.008766, 23.553986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471760, 34.094994, 23.527788>,  <33.101028, 34.238705, 23.484125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471760, 34.094994, 23.527788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073848, -0.110621, -0.991115,
		0.368159, 0.926652, -0.075994,
		0.926826, -0.359276, 0.109158,
		33.749809, 33.987209, 23.560535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534760, 34.661953, 23.078745>,  <33.101028, 34.238705, 23.484125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534760, 34.661953, 23.078745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670422, 34.289604, 23.133087>,  <33.751820, 34.066196, 23.165693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670422, 34.289604, 23.133087>,  <33.534760, 34.661953, 23.078745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670422, 34.289604, 23.133087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197151, -0.070879, -0.977808,
		0.919841, 0.358409, 0.159483,
		0.339151, -0.930870, 0.135858,
		33.772167, 34.010342, 23.173845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919407, 34.574516, 22.451073>,  <33.534760, 34.661953, 23.078745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919407, 34.574516, 22.451073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896931, 34.194427, 22.573660>,  <33.883446, 33.966373, 22.647213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896931, 34.194427, 22.573660>,  <33.919407, 34.574516, 22.451073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896931, 34.194427, 22.573660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188754, -0.311530, -0.931301,
		0.980415, 0.005516, 0.196863,
		-0.056192, -0.950220, 0.306470,
		33.880074, 33.909363, 22.665602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413639, 34.126549, 22.084768>,  <33.919407, 34.574516, 22.451073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413639, 34.126549, 22.084768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184704, 33.829006, 22.222822>,  <34.047344, 33.650482, 22.305655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184704, 33.829006, 22.222822>,  <34.413639, 34.126549, 22.084768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184704, 33.829006, 22.222822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005571, -0.424403, -0.905456,
		0.820002, -0.516300, 0.247045,
		-0.572334, -0.743852, 0.345135,
		34.013004, 33.605850, 22.326363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819927, 33.534893, 21.964510>,  <34.413639, 34.126549, 22.084768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819927, 33.534893, 21.964510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435879, 33.423080, 21.966560>,  <34.205448, 33.355991, 21.967791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435879, 33.423080, 21.966560>,  <34.819927, 33.534893, 21.964510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435879, 33.423080, 21.966560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108991, -0.391112, -0.913867,
		0.257463, -0.876865, 0.405982,
		-0.960122, -0.279536, 0.005126,
		34.147842, 33.339218, 21.968098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805534, 32.844894, 21.665865>,  <34.819927, 33.534893, 21.964510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805534, 32.844894, 21.665865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436401, 32.996662, 21.639288>,  <34.214920, 33.087723, 21.623343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436401, 32.996662, 21.639288>,  <34.805534, 32.844894, 21.665865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436401, 32.996662, 21.639288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079912, -0.357318, -0.930558,
		-0.376822, -0.853439, 0.360065,
		-0.922832, 0.379428, -0.066445,
		34.159550, 33.110489, 21.619356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297535, 32.326267, 21.375450>,  <34.805534, 32.844894, 21.665865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297535, 32.326267, 21.375450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138405, 32.689205, 21.321100>,  <34.042927, 32.906967, 21.288490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138405, 32.689205, 21.321100>,  <34.297535, 32.326267, 21.375450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138405, 32.689205, 21.321100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294796, -0.266666, -0.917597,
		-0.868809, -0.324988, 0.373568,
		-0.397826, 0.907344, -0.135877,
		34.019058, 32.961407, 21.280336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636230, 32.209373, 21.121571>,  <34.297535, 32.326267, 21.375450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636230, 32.209373, 21.121571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714714, 32.585831, 21.011478>,  <33.761806, 32.811707, 20.945423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714714, 32.585831, 21.011478>,  <33.636230, 32.209373, 21.121571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714714, 32.585831, 21.011478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115073, -0.256646, -0.959631,
		-0.973786, 0.219962, 0.057943,
		0.196211, 0.941143, -0.275230,
		33.773579, 32.868172, 20.928909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486732, 32.174797, 20.503017>,  <33.636230, 32.209373, 21.121571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486732, 32.174797, 20.503017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681812, 32.523956, 20.497313>,  <33.798859, 32.733452, 20.493889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681812, 32.523956, 20.497313>,  <33.486732, 32.174797, 20.503017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681812, 32.523956, 20.497313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187298, -0.120575, -0.974875,
		-0.852684, 0.472773, -0.222297,
		0.487698, 0.872896, -0.014263,
		33.828121, 32.785824, 20.493034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161842, 32.524979, 20.024046>,  <33.486732, 32.174797, 20.503017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161842, 32.524979, 20.024046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529846, 32.672642, 20.076664>,  <33.750648, 32.761238, 20.108234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529846, 32.672642, 20.076664>,  <33.161842, 32.524979, 20.024046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529846, 32.672642, 20.076664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203070, -0.161985, -0.965673,
		-0.335178, 0.915141, -0.223993,
		0.920010, 0.369159, 0.131543,
		33.805851, 32.783390, 20.116127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302933, 33.154362, 19.468798>,  <33.161842, 32.524979, 20.024046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302933, 33.154362, 19.468798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675205, 33.059269, 19.580017>,  <33.898571, 33.002213, 19.646749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675205, 33.059269, 19.580017>,  <33.302933, 33.154362, 19.468798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675205, 33.059269, 19.580017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306504, 0.091811, -0.947431,
		0.199707, 0.966982, 0.158313,
		0.930684, -0.237733, 0.278048,
		33.954411, 32.987949, 19.663431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731880, 33.595089, 19.140881>,  <33.302933, 33.154362, 19.468798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731880, 33.595089, 19.140881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992237, 33.302631, 19.222624>,  <34.148453, 33.127155, 19.271669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992237, 33.302631, 19.222624>,  <33.731880, 33.595089, 19.140881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992237, 33.302631, 19.222624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407441, 0.109305, -0.906666,
		0.640570, 0.673406, 0.369045,
		0.650893, -0.731147, 0.204356,
		34.187504, 33.083286, 19.283930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372234, 33.826267, 18.987434>,  <33.731880, 33.595089, 19.140881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372234, 33.826267, 18.987434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393539, 33.427307, 18.967981>,  <34.406322, 33.187931, 18.956310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393539, 33.427307, 18.967981>,  <34.372234, 33.826267, 18.987434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393539, 33.427307, 18.967981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357233, 0.064510, -0.931785,
		0.932496, 0.032253, 0.359738,
		0.053260, -0.997396, -0.048633,
		34.409519, 33.128090, 18.953392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988029, 33.752289, 18.619370>,  <34.372234, 33.826267, 18.987434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988029, 33.752289, 18.619370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809719, 33.395126, 18.594057>,  <34.702732, 33.180828, 18.578871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809719, 33.395126, 18.594057>,  <34.988029, 33.752289, 18.619370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809719, 33.395126, 18.594057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302638, -0.083806, -0.949414,
		0.842434, -0.442376, 0.307586,
		-0.445775, -0.892905, -0.063279,
		34.675987, 33.127254, 18.575073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440483, 33.166615, 18.499884>,  <34.988029, 33.752289, 18.619370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440483, 33.166615, 18.499884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068348, 33.137100, 18.356201>,  <34.845066, 33.119392, 18.269993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068348, 33.137100, 18.356201>,  <35.440483, 33.166615, 18.499884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068348, 33.137100, 18.356201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349969, 0.113907, -0.929810,
		0.109500, -0.990749, -0.080157,
		-0.930340, -0.073762, -0.359204,
		34.789246, 33.114964, 18.248440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144547, 33.478550, 18.504953>,  <35.440483, 33.166615, 18.499884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144547, 33.478550, 18.504953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292622, 33.771839, 18.276798>,  <36.381466, 33.947811, 18.139906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292622, 33.771839, 18.276798>,  <36.144547, 33.478550, 18.504953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292622, 33.771839, 18.276798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069893, 0.590286, 0.804163,
		0.926323, -0.337559, 0.167271,
		0.370190, 0.733224, -0.570388,
		36.403679, 33.991806, 18.105682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812122, 33.722706, 18.745306>,  <36.144547, 33.478550, 18.504953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812122, 33.722706, 18.745306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657219, 34.030682, 18.542437>,  <36.564278, 34.215466, 18.420715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657219, 34.030682, 18.542437>,  <36.812122, 33.722706, 18.745306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657219, 34.030682, 18.542437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208160, 0.608908, 0.765441,
		0.898166, 0.190849, -0.396075,
		-0.387257, 0.769940, -0.507173,
		36.541042, 34.261665, 18.390285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247124, 34.232140, 18.835443>,  <36.812122, 33.722706, 18.745306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247124, 34.232140, 18.835443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918308, 34.437733, 18.737406>,  <36.721020, 34.561089, 18.678583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918308, 34.437733, 18.737406>,  <37.247124, 34.232140, 18.835443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918308, 34.437733, 18.737406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115372, 0.571830, 0.812219,
		0.557616, 0.639402, -0.529367,
		-0.822042, 0.513981, -0.245092,
		36.671696, 34.591927, 18.663877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506920, 34.920662, 18.892366>,  <37.247124, 34.232140, 18.835443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506920, 34.920662, 18.892366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109253, 34.958961, 18.912197>,  <36.870651, 34.981941, 18.924095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109253, 34.958961, 18.912197>,  <37.506920, 34.920662, 18.892366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109253, 34.958961, 18.912197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097733, 0.605993, 0.789443,
		0.045544, 0.789687, -0.611818,
		-0.994170, 0.095750, 0.049579,
		36.811001, 34.987686, 18.927071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399914, 35.634686, 18.967846>,  <37.506920, 34.920662, 18.892366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399914, 35.634686, 18.967846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064098, 35.456112, 19.091696>,  <36.862610, 35.348969, 19.166006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064098, 35.456112, 19.091696>,  <37.399914, 35.634686, 18.967846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064098, 35.456112, 19.091696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043574, 0.623397, 0.780690,
		-0.541545, 0.641930, -0.542820,
		-0.839542, -0.446432, 0.309627,
		36.812237, 35.322182, 19.184584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891899, 36.186180, 19.087706>,  <37.399914, 35.634686, 18.967846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891899, 36.186180, 19.087706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721161, 35.881828, 19.283201>,  <36.618717, 35.699219, 19.400499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721161, 35.881828, 19.283201>,  <36.891899, 36.186180, 19.087706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721161, 35.881828, 19.283201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105251, 0.578572, 0.808812,
		-0.898181, 0.293794, -0.327042,
		-0.426841, -0.760881, 0.488740,
		36.593109, 35.653564, 19.429823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621597, 36.545776, 19.676809>,  <36.891899, 36.186180, 19.087706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621597, 36.545776, 19.676809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554070, 36.163372, 19.772760>,  <36.513554, 35.933929, 19.830332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554070, 36.163372, 19.772760>,  <36.621597, 36.545776, 19.676809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554070, 36.163372, 19.772760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089598, 0.257248, 0.962183,
		-0.981566, 0.140942, -0.129085,
		-0.168819, -0.956012, 0.239878,
		36.503426, 35.876568, 19.844725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984997, 36.473522, 20.157667>,  <36.621597, 36.545776, 19.676809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984997, 36.473522, 20.157667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220703, 36.154575, 20.209787>,  <36.362125, 35.963207, 20.241060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220703, 36.154575, 20.209787>,  <35.984997, 36.473522, 20.157667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220703, 36.154575, 20.209787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208354, 0.005850, 0.978036,
		-0.780612, -0.603472, -0.162686,
		0.589265, -0.797363, 0.130303,
		36.397484, 35.915367, 20.248878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623173, 36.041607, 20.638748>,  <35.984997, 36.473522, 20.157667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623173, 36.041607, 20.638748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000320, 35.908443, 20.644119>,  <36.226608, 35.828545, 20.647343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000320, 35.908443, 20.644119>,  <35.623173, 36.041607, 20.638748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000320, 35.908443, 20.644119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071001, -0.161384, 0.984334,
		-0.325525, -0.929047, -0.175800,
		0.942864, -0.332907, 0.013429,
		36.283180, 35.808571, 20.648148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587845, 35.482597, 21.078875>,  <35.623173, 36.041607, 20.638748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587845, 35.482597, 21.078875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968182, 35.604706, 21.099691>,  <36.196384, 35.677971, 21.112181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968182, 35.604706, 21.099691>,  <35.587845, 35.482597, 21.078875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968182, 35.604706, 21.099691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043132, -0.035862, 0.998425,
		0.306654, -0.951591, -0.020933,
		0.950843, 0.305268, 0.052041,
		36.253433, 35.696285, 21.115303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898830, 34.962452, 21.468433>,  <35.587845, 35.482597, 21.078875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898830, 34.962452, 21.468433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151356, 35.272236, 21.484760>,  <36.302872, 35.458107, 21.494556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151356, 35.272236, 21.484760>,  <35.898830, 34.962452, 21.468433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151356, 35.272236, 21.484760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021193, -0.069838, 0.997333,
		0.775241, -0.628762, -0.060503,
		0.631310, 0.774455, 0.040816,
		36.340748, 35.504574, 21.497005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403648, 34.807312, 21.979134>,  <35.898830, 34.962452, 21.468433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403648, 34.807312, 21.979134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427105, 35.205250, 21.946054>,  <36.441177, 35.444012, 21.926207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427105, 35.205250, 21.946054>,  <36.403648, 34.807312, 21.979134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427105, 35.205250, 21.946054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052541, 0.079649, 0.995437,
		0.996896, -0.062715, -0.047600,
		0.058638, 0.994848, -0.082697,
		36.444695, 35.503704, 21.921246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055752, 35.105644, 22.375401>,  <36.403648, 34.807312, 21.979134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055752, 35.105644, 22.375401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829948, 35.431068, 22.319611>,  <36.694466, 35.626324, 22.286137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829948, 35.431068, 22.319611>,  <37.055752, 35.105644, 22.375401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829948, 35.431068, 22.319611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149342, 0.266853, 0.952096,
		0.811803, 0.516639, -0.272140,
		-0.564511, 0.813556, -0.139476,
		36.660595, 35.675137, 22.277767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369682, 35.637383, 22.748163>,  <37.055752, 35.105644, 22.375401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369682, 35.637383, 22.748163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007252, 35.802418, 22.710642>,  <36.789795, 35.901440, 22.688129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007252, 35.802418, 22.710642>,  <37.369682, 35.637383, 22.748163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007252, 35.802418, 22.710642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016237, 0.187630, 0.982106,
		0.422810, 0.891382, -0.163307,
		-0.906073, 0.412593, -0.093805,
		36.735432, 35.926197, 22.682501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397232, 36.311714, 23.057293>,  <37.369682, 35.637383, 22.748163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397232, 36.311714, 23.057293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013088, 36.200359, 23.062996>,  <36.782600, 36.133545, 23.066418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013088, 36.200359, 23.062996>,  <37.397232, 36.311714, 23.057293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013088, 36.200359, 23.062996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001155, 0.047170, 0.998886,
		-0.278748, 0.959310, -0.044978,
		-0.960363, -0.278386, 0.014257,
		36.724979, 36.116844, 23.067272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097157, 36.830444, 23.669865>,  <37.397232, 36.311714, 23.057293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097157, 36.830444, 23.669865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826008, 36.546047, 23.595058>,  <36.663319, 36.375408, 23.550175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826008, 36.546047, 23.595058>,  <37.097157, 36.830444, 23.669865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826008, 36.546047, 23.595058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311170, 0.047002, 0.949191,
		-0.666079, 0.701626, -0.253101,
		-0.677874, -0.710994, -0.187018,
		36.622646, 36.332748, 23.538954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524769, 37.139282, 23.882551>,  <37.097157, 36.830444, 23.669865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524769, 37.139282, 23.882551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435600, 36.749592, 23.896334>,  <36.382099, 36.515778, 23.904602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435600, 36.749592, 23.896334>,  <36.524769, 37.139282, 23.882551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435600, 36.749592, 23.896334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375173, 0.118362, 0.919367,
		-0.899750, 0.192022, -0.391889,
		-0.222924, -0.974227, 0.034455,
		36.368725, 36.457325, 23.906670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814713, 37.075653, 24.147032>,  <36.524769, 37.139282, 23.882551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814713, 37.075653, 24.147032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981667, 36.715733, 24.197861>,  <36.081841, 36.499783, 24.228359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981667, 36.715733, 24.197861>,  <35.814713, 37.075653, 24.147032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981667, 36.715733, 24.197861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088204, 0.099061, 0.991164,
		-0.904437, -0.424910, -0.038018,
		0.417389, -0.899799, 0.127073,
		36.106884, 36.445793, 24.235983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350758, 36.590023, 24.526289>,  <35.814713, 37.075653, 24.147032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350758, 36.590023, 24.526289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718243, 36.441433, 24.579920>,  <35.938732, 36.352280, 24.612099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718243, 36.441433, 24.579920>,  <35.350758, 36.590023, 24.526289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718243, 36.441433, 24.579920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155597, -0.028429, 0.987412,
		-0.362988, -0.928007, -0.083919,
		0.918711, -0.371476, 0.134075,
		35.993855, 36.329990, 24.620142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299366, 36.058155, 25.016161>,  <35.350758, 36.590023, 24.526289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299366, 36.058155, 25.016161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692406, 36.129745, 25.036064>,  <35.928230, 36.172699, 25.048006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692406, 36.129745, 25.036064>,  <35.299366, 36.058155, 25.016161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692406, 36.129745, 25.036064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005697, -0.238693, 0.971078,
		0.185676, -0.954460, -0.233519,
		0.982594, 0.178975, 0.049757,
		35.987183, 36.183437, 25.050991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697392, 35.468552, 25.266588>,  <35.299366, 36.058155, 25.016161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697392, 35.468552, 25.266588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922955, 35.786076, 25.357693>,  <36.058292, 35.976589, 25.412355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922955, 35.786076, 25.357693>,  <35.697392, 35.468552, 25.266588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922955, 35.786076, 25.357693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001006, -0.276452, 0.961027,
		0.825839, -0.541699, -0.156691,
		0.563906, 0.793811, 0.227760,
		36.092125, 36.024220, 25.426022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081013, 35.229374, 25.835566>,  <35.697392, 35.468552, 25.266588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081013, 35.229374, 25.835566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116112, 35.627377, 25.854557>,  <36.137173, 35.866180, 25.865952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116112, 35.627377, 25.854557>,  <36.081013, 35.229374, 25.835566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116112, 35.627377, 25.854557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060881, -0.042216, 0.997252,
		0.994281, -0.090397, 0.056873,
		0.087748, 0.995011, 0.047478,
		36.142437, 35.925880, 25.868801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427631, 35.291557, 26.469700>,  <36.081013, 35.229374, 25.835566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427631, 35.291557, 26.469700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355560, 35.677975, 26.395615>,  <36.312317, 35.909824, 26.351164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355560, 35.677975, 26.395615>,  <36.427631, 35.291557, 26.469700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355560, 35.677975, 26.395615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081748, 0.172938, 0.981535,
		0.980232, 0.191989, 0.047813,
		-0.180175, 0.966040, -0.185214,
		36.301506, 35.967785, 26.340050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868671, 35.688202, 26.882755>,  <36.427631, 35.291557, 26.469700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868671, 35.688202, 26.882755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567333, 35.939358, 26.804546>,  <36.386532, 36.090050, 26.757622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567333, 35.939358, 26.804546>,  <36.868671, 35.688202, 26.882755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567333, 35.939358, 26.804546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045170, 0.247208, 0.967909,
		0.656071, 0.738002, -0.157872,
		-0.753346, 0.627886, -0.195522,
		36.341328, 36.127724, 26.745890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958664, 36.135246, 27.367188>,  <36.868671, 35.688202, 26.882755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958664, 36.135246, 27.367188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583920, 36.206364, 27.246737>,  <36.359074, 36.249035, 27.174465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583920, 36.206364, 27.246737>,  <36.958664, 36.135246, 27.367188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583920, 36.206364, 27.246737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241456, 0.294004, 0.924803,
		0.252956, 0.939123, -0.232512,
		-0.936863, 0.177793, -0.301127,
		36.302860, 36.259701, 27.156399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803909, 36.894016, 27.473839>,  <36.958664, 36.135246, 27.367188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803909, 36.894016, 27.473839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497292, 36.639599, 27.509302>,  <36.313320, 36.486950, 27.530581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497292, 36.639599, 27.509302>,  <36.803909, 36.894016, 27.473839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497292, 36.639599, 27.509302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097361, 0.251565, 0.962931,
		-0.634765, 0.729500, -0.254762,
		-0.766547, -0.636039, 0.088660,
		36.267326, 36.448788, 27.535900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130569, 37.215031, 27.606066>,  <36.803909, 36.894016, 27.473839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130569, 37.215031, 27.606066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119015, 36.857956, 27.785965>,  <36.112083, 36.643711, 27.893906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119015, 36.857956, 27.785965>,  <36.130569, 37.215031, 27.606066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119015, 36.857956, 27.785965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104058, 0.450178, 0.886855,
		-0.994152, -0.021186, -0.105893,
		-0.028882, -0.892687, 0.449750,
		36.110352, 36.590149, 27.920891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928982, 37.408230, 28.218567>,  <36.130569, 37.215031, 27.606066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928982, 37.408230, 28.218567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021599, 37.023418, 28.276379>,  <36.077168, 36.792530, 28.311066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021599, 37.023418, 28.276379>,  <35.928982, 37.408230, 28.218567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021599, 37.023418, 28.276379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330764, 0.217567, 0.918292,
		-0.914869, -0.164815, 0.368580,
		0.231539, -0.962029, 0.144530,
		36.091061, 36.734810, 28.319738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534184, 37.169205, 28.760532>,  <35.928982, 37.408230, 28.218567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534184, 37.169205, 28.760532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861240, 36.941349, 28.727139>,  <36.057476, 36.804634, 28.707102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861240, 36.941349, 28.727139>,  <35.534184, 37.169205, 28.760532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861240, 36.941349, 28.727139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249293, 0.219594, 0.943203,
		-0.518952, -0.792016, 0.321557,
		0.817644, -0.569639, -0.083485,
		36.106533, 36.770458, 28.702093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509945, 36.611965, 29.373207>,  <35.534184, 37.169205, 28.760532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509945, 36.611965, 29.373207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868202, 36.683769, 29.210434>,  <36.083157, 36.726852, 29.112770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868202, 36.683769, 29.210434>,  <35.509945, 36.611965, 29.373207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868202, 36.683769, 29.210434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404139, 0.053576, 0.913127,
		0.185722, -0.982295, -0.024564,
		0.895644, 0.179515, -0.406934,
		36.136894, 36.737625, 29.088354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929375, 36.057446, 29.695625>,  <35.509945, 36.611965, 29.373207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929375, 36.057446, 29.695625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137447, 36.374359, 29.568069>,  <36.262291, 36.564507, 29.491535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137447, 36.374359, 29.568069>,  <35.929375, 36.057446, 29.695625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137447, 36.374359, 29.568069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285355, 0.190692, 0.939260,
		0.804973, -0.579585, -0.126888,
		0.520184, 0.792286, -0.318890,
		36.293503, 36.612045, 29.472403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530270, 36.055096, 30.097748>,  <35.929375, 36.057446, 29.695625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530270, 36.055096, 30.097748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558937, 36.420155, 29.936779>,  <36.576138, 36.639191, 29.840199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558937, 36.420155, 29.936779>,  <36.530270, 36.055096, 30.097748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558937, 36.420155, 29.936779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484656, 0.320766, 0.813768,
		0.871764, -0.253354, -0.419331,
		0.071664, 0.912645, -0.402422,
		36.580437, 36.693947, 29.816053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165878, 36.218437, 30.291283>,  <36.530270, 36.055096, 30.097748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165878, 36.218437, 30.291283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970558, 36.562305, 30.231234>,  <36.853367, 36.768627, 30.195204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970558, 36.562305, 30.231234>,  <37.165878, 36.218437, 30.291283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970558, 36.562305, 30.231234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420120, 0.382350, 0.822987,
		0.764893, 0.338795, -0.547865,
		-0.488301, 0.859666, -0.150122,
		36.824066, 36.820206, 30.186197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708477, 36.641510, 30.452946>,  <37.165878, 36.218437, 30.291283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708477, 36.641510, 30.452946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355221, 36.826557, 30.484043>,  <37.143265, 36.937584, 30.502701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355221, 36.826557, 30.484043>,  <37.708477, 36.641510, 30.452946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355221, 36.826557, 30.484043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270141, 0.366053, 0.890522,
		0.383514, 0.807459, -0.448249,
		-0.883143, 0.462618, 0.077742,
		37.090279, 36.965343, 30.507366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841660, 37.273491, 30.832155>,  <37.708477, 36.641510, 30.452946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841660, 37.273491, 30.832155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441929, 37.268562, 30.845938>,  <37.202091, 37.265606, 30.854208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441929, 37.268562, 30.845938>,  <37.841660, 37.273491, 30.832155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441929, 37.268562, 30.845938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030187, 0.254657, 0.966560,
		-0.020682, 0.966953, -0.254115,
		-0.999330, -0.012319, 0.034456,
		37.142128, 37.264866, 30.856274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510941, 37.937592, 31.062473>,  <37.841660, 37.273491, 30.832155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510941, 37.937592, 31.062473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257633, 37.639343, 31.145441>,  <37.105648, 37.460396, 31.195221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257633, 37.639343, 31.145441>,  <37.510941, 37.937592, 31.062473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257633, 37.639343, 31.145441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092260, 0.193364, 0.976780,
		-0.768412, 0.637702, -0.053661,
		-0.633270, -0.745618, 0.207417,
		37.067654, 37.415657, 31.207666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072701, 38.259407, 31.456587>,  <37.510941, 37.937592, 31.062473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072701, 38.259407, 31.456587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991306, 37.877201, 31.541994>,  <36.942471, 37.647877, 31.593239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991306, 37.877201, 31.541994>,  <37.072701, 38.259407, 31.456587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991306, 37.877201, 31.541994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019164, 0.214151, 0.976613,
		-0.978890, 0.202819, -0.025265,
		-0.203486, -0.955512, 0.213517,
		36.930260, 37.590546, 31.606049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533360, 38.235455, 31.921667>,  <37.072701, 38.259407, 31.456587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533360, 38.235455, 31.921667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682373, 37.867481, 31.970562>,  <36.771782, 37.646698, 31.999899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682373, 37.867481, 31.970562>,  <36.533360, 38.235455, 31.921667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682373, 37.867481, 31.970562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125609, 0.080523, 0.988806,
		-0.919479, -0.383718, -0.085554,
		0.372534, -0.919933, 0.122237,
		36.794132, 37.591503, 32.007233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090256, 38.023861, 32.350754>,  <36.533360, 38.235455, 31.921667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090256, 38.023861, 32.350754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411575, 37.786476, 32.370792>,  <36.604366, 37.644043, 32.382816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411575, 37.786476, 32.370792>,  <36.090256, 38.023861, 32.350754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411575, 37.786476, 32.370792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133129, -0.096940, 0.986346,
		-0.580508, -0.798999, -0.156879,
		0.803298, -0.593467, 0.050095,
		36.652565, 37.608437, 32.385822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845837, 37.401085, 32.594898>,  <36.090256, 38.023861, 32.350754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845837, 37.401085, 32.594898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234585, 37.437500, 32.681789>,  <36.467834, 37.459347, 32.733925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234585, 37.437500, 32.681789>,  <35.845837, 37.401085, 32.594898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234585, 37.437500, 32.681789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194552, -0.209577, 0.958241,
		0.132761, -0.973545, -0.185970,
		0.971866, 0.091036, 0.217229,
		36.526146, 37.464809, 32.746960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976830, 36.980118, 33.209236>,  <35.845837, 37.401085, 32.594898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976830, 36.980118, 33.209236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303829, 37.209824, 33.191689>,  <36.500027, 37.347645, 33.181160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303829, 37.209824, 33.191689>,  <35.976830, 36.980118, 33.209236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303829, 37.209824, 33.191689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140923, -0.125587, 0.982023,
		0.558426, -0.808983, -0.183593,
		0.817497, 0.574260, -0.043873,
		36.549080, 37.382103, 33.178528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409428, 36.794140, 33.737289>,  <35.976830, 36.980118, 33.209236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409428, 36.794140, 33.737289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580162, 37.145233, 33.650208>,  <36.682602, 37.355888, 33.597958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580162, 37.145233, 33.650208>,  <36.409428, 36.794140, 33.737289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580162, 37.145233, 33.650208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314928, 0.081395, 0.945619,
		0.847720, -0.472187, -0.241680,
		0.426838, 0.877732, -0.217705,
		36.708214, 37.408554, 33.584896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142494, 36.729343, 33.995556>,  <36.409428, 36.794140, 33.737289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142494, 36.729343, 33.995556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952095, 37.079082, 34.033394>,  <36.837856, 37.288925, 34.056095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952095, 37.079082, 34.033394>,  <37.142494, 36.729343, 33.995556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952095, 37.079082, 34.033394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228723, 0.019217, 0.973302,
		0.849183, 0.484925, -0.209130,
		-0.475997, 0.874344, 0.094595,
		36.809296, 37.341385, 34.061771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526630, 37.133163, 34.419544>,  <37.142494, 36.729343, 33.995556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526630, 37.133163, 34.419544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163094, 37.299847, 34.411949>,  <36.944973, 37.399857, 34.407391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163094, 37.299847, 34.411949>,  <37.526630, 37.133163, 34.419544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163094, 37.299847, 34.411949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010338, 0.068011, 0.997631,
		0.417013, 0.906492, -0.066119,
		-0.908842, 0.416709, -0.018990,
		36.890442, 37.424858, 34.406254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103958, 36.908463, 34.823528>,  <37.526630, 37.133163, 34.419544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103958, 36.908463, 34.823528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495003, 36.980080, 34.867760>,  <38.729630, 37.023048, 34.894299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495003, 36.980080, 34.867760>,  <38.103958, 36.908463, 34.823528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495003, 36.980080, 34.867760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114199, -0.892739, 0.435862,
		0.176753, -0.413474, -0.893195,
		0.977608, 0.179042, 0.110576,
		38.788284, 37.033791, 34.900932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530109, 36.327675, 34.471123>,  <38.103958, 36.908463, 34.823528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530109, 36.327675, 34.471123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733288, 36.471909, 34.784039>,  <38.855194, 36.558449, 34.971786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733288, 36.471909, 34.784039>,  <38.530109, 36.327675, 34.471123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733288, 36.471909, 34.784039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163946, -0.932034, 0.323162,
		0.845646, -0.035895, -0.532537,
		0.507942, 0.360588, 0.782286,
		38.885670, 36.580086, 35.018723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297386, 36.036255, 34.562035>,  <38.530109, 36.327675, 34.471123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297386, 36.036255, 34.562035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152039, 36.149380, 34.917107>,  <39.064831, 36.217255, 35.130150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152039, 36.149380, 34.917107>,  <39.297386, 36.036255, 34.562035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152039, 36.149380, 34.917107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316537, -0.858652, 0.403139,
		0.876224, 0.427471, 0.222485,
		-0.363367, 0.282815, 0.887682,
		39.043030, 36.234222, 35.183411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724258, 36.609726, 34.463528>,  <39.297386, 36.036255, 34.562035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724258, 36.609726, 34.463528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484623, 36.572979, 34.145370>,  <39.340843, 36.550930, 33.954475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484623, 36.572979, 34.145370>,  <39.724258, 36.609726, 34.463528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484623, 36.572979, 34.145370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627556, 0.563070, -0.537704,
		0.497260, -0.821288, -0.279678,
		-0.599087, -0.091865, -0.795396,
		39.304897, 36.545418, 33.906750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061710, 36.301533, 34.022064>,  <39.724258, 36.609726, 34.463528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061710, 36.301533, 34.022064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798054, 36.550915, 33.853855>,  <39.639858, 36.700542, 33.752930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798054, 36.550915, 33.853855>,  <40.061710, 36.301533, 34.022064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798054, 36.550915, 33.853855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725692, 0.380673, -0.573114,
		-0.197229, -0.682932, -0.703353,
		-0.659145, 0.623452, -0.420519,
		39.600311, 36.737949, 33.727699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205406, 36.319160, 33.355236>,  <40.061710, 36.301533, 34.022064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205406, 36.319160, 33.355236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003265, 36.659786, 33.411041>,  <39.881981, 36.864162, 33.444527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003265, 36.659786, 33.411041>,  <40.205406, 36.319160, 33.355236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003265, 36.659786, 33.411041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653828, 0.483380, -0.582111,
		-0.563141, -0.202952, -0.801051,
		-0.505352, 0.851560, 0.139516,
		39.851658, 36.915253, 33.452896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371696, 36.118946, 33.530338>,  <40.205406, 36.319160, 33.355236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371696, 36.118946, 33.530338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983593, 36.046379, 33.466221>,  <38.750732, 36.002838, 33.427750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983593, 36.046379, 33.466221>,  <39.371696, 36.118946, 33.530338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983593, 36.046379, 33.466221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219854, -0.383131, -0.897148,
		0.101343, -0.905703, 0.411619,
		-0.970255, -0.181416, -0.160295,
		38.692516, 35.991955, 33.418133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186440, 35.444496, 33.363121>,  <39.371696, 36.118946, 33.530338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186440, 35.444496, 33.363121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931976, 35.690052, 33.176170>,  <38.779297, 35.837387, 33.063999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931976, 35.690052, 33.176170>,  <39.186440, 35.444496, 33.363121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931976, 35.690052, 33.176170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476382, -0.163982, -0.863811,
		-0.606925, -0.772172, -0.188127,
		-0.636162, 0.613889, -0.467374,
		38.741127, 35.874218, 33.035957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947990, 35.045193, 32.794865>,  <39.186440, 35.444496, 33.363121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947990, 35.045193, 32.794865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955914, 35.440903, 32.736984>,  <38.960667, 35.678329, 32.702255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955914, 35.440903, 32.736984>,  <38.947990, 35.045193, 32.794865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955914, 35.440903, 32.736984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327104, -0.143181, -0.934079,
		-0.944781, -0.028833, -0.326432,
		0.019807, 0.989276, -0.144706,
		38.961857, 35.737686, 32.693573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274361, 34.908318, 32.931957>,  <38.947990, 35.045193, 32.794865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274361, 34.908318, 32.931957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091354, 34.554272, 32.897915>,  <37.981548, 34.341843, 32.877491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091354, 34.554272, 32.897915>,  <38.274361, 34.908318, 32.931957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091354, 34.554272, 32.897915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846606, -0.404336, -0.346080,
		0.271912, -0.230387, 0.934337,
		-0.457519, -0.885118, -0.085104,
		37.954098, 34.288734, 32.872383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499939, 34.481617, 33.415600>,  <38.274361, 34.908318, 32.931957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499939, 34.481617, 33.415600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383625, 34.345169, 33.058033>,  <38.313835, 34.263302, 32.843494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383625, 34.345169, 33.058033>,  <38.499939, 34.481617, 33.415600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383625, 34.345169, 33.058033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948004, -0.229030, -0.220984,
		-0.129352, -0.911693, 0.389981,
		-0.290787, -0.341118, -0.893914,
		38.296391, 34.242832, 32.789860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215481, 34.973797, 33.916828>,  <38.499939, 34.481617, 33.415600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215481, 34.973797, 33.916828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523224, 34.720711, 33.881607>,  <38.707870, 34.568859, 33.860474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523224, 34.720711, 33.881607>,  <38.215481, 34.973797, 33.916828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523224, 34.720711, 33.881607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359192, -0.542452, 0.759425,
		-0.528255, -0.552654, -0.644609,
		0.769369, -0.632708, -0.088044,
		38.754032, 34.530895, 33.855190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953690, 34.297661, 34.040073>,  <38.215481, 34.973797, 33.916828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953690, 34.297661, 34.040073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350060, 34.271614, 34.087097>,  <38.587883, 34.255985, 34.115311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350060, 34.271614, 34.087097>,  <37.953690, 34.297661, 34.040073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350060, 34.271614, 34.087097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132654, -0.614016, 0.778066,
		0.021523, -0.786603, -0.617084,
		0.990929, -0.065112, 0.117562,
		38.647339, 34.252079, 34.122364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291096, 34.112190, 34.279224>,  <37.953690, 34.297661, 34.040073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291096, 34.112190, 34.279224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344654, 34.150394, 34.673779>,  <37.376789, 34.173317, 34.910511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344654, 34.150394, 34.673779>,  <37.291096, 34.112190, 34.279224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344654, 34.150394, 34.673779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178528, 0.976735, -0.118812,
		-0.974782, 0.192004, 0.113726,
		0.133892, 0.095512, 0.986382,
		37.384823, 34.179047, 34.969692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845329, 33.710678, 34.679413>,  <37.291096, 34.112190, 34.279224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845329, 33.710678, 34.679413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923634, 33.407455, 34.928261>,  <36.970615, 33.225521, 35.077572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923634, 33.407455, 34.928261>,  <36.845329, 33.710678, 34.679413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923634, 33.407455, 34.928261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206393, 0.652034, 0.729557,
		-0.958687, -0.014414, 0.284096,
		0.195756, -0.758053, 0.622122,
		36.982361, 33.180038, 35.114899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326855, 33.769714, 35.268627>,  <36.845329, 33.710678, 34.679413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326855, 33.769714, 35.268627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670486, 33.583618, 35.353977>,  <36.876667, 33.471962, 35.405186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670486, 33.583618, 35.353977>,  <36.326855, 33.769714, 35.268627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670486, 33.583618, 35.353977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195613, 0.683663, 0.703093,
		-0.472981, -0.562277, 0.678331,
		0.859083, -0.465240, 0.213371,
		36.928211, 33.444046, 35.417988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321678, 33.605396, 36.001286>,  <36.326855, 33.769714, 35.268627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321678, 33.605396, 36.001286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712147, 33.633728, 35.919231>,  <36.946426, 33.650726, 35.869999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712147, 33.633728, 35.919231>,  <36.321678, 33.605396, 36.001286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712147, 33.633728, 35.919231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100717, 0.689413, 0.717333,
		0.192229, -0.720897, 0.665849,
		0.976168, 0.070830, -0.205132,
		37.004997, 33.654976, 35.857693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732635, 33.664673, 36.727905>,  <36.321678, 33.605396, 36.001286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732635, 33.664673, 36.727905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943802, 33.831039, 36.431709>,  <37.070499, 33.930859, 36.253990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943802, 33.831039, 36.431709>,  <36.732635, 33.664673, 36.727905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943802, 33.831039, 36.431709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275886, 0.740620, 0.612673,
		0.803242, -0.527727, 0.276235,
		0.527910, 0.415915, -0.740490,
		37.102177, 33.955814, 36.209564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413425, 33.762524, 37.075493>,  <36.732635, 33.664673, 36.727905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413425, 33.762524, 37.075493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378731, 33.992355, 36.749958>,  <37.357914, 34.130257, 36.554638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378731, 33.992355, 36.749958>,  <37.413425, 33.762524, 37.075493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378731, 33.992355, 36.749958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331747, 0.786950, 0.520243,
		0.939373, -0.224866, -0.258872,
		-0.086734, 0.574582, -0.813838,
		37.352711, 34.164730, 36.505806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086819, 34.196011, 36.967903>,  <37.413425, 33.762524, 37.075493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086819, 34.196011, 36.967903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840393, 34.416542, 36.742867>,  <37.692539, 34.548859, 36.607845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840393, 34.416542, 36.742867>,  <38.086819, 34.196011, 36.967903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840393, 34.416542, 36.742867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387650, 0.833948, 0.392757,
		0.685706, 0.023876, -0.727486,
		-0.616063, 0.551327, -0.562588,
		37.655575, 34.581940, 36.574089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487305, 34.722115, 36.652203>,  <38.086819, 34.196011, 36.967903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487305, 34.722115, 36.652203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108143, 34.847122, 36.676895>,  <37.880646, 34.922127, 36.691711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108143, 34.847122, 36.676895>,  <38.487305, 34.722115, 36.652203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108143, 34.847122, 36.676895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312890, 0.876975, 0.364711,
		0.059847, 0.365025, -0.929072,
		-0.947902, 0.312524, 0.061729,
		37.823772, 34.940880, 36.695415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540668, 34.862061, 37.369144>,  <38.487305, 34.722115, 36.652203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540668, 34.862061, 37.369144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217186, 35.039509, 37.214645>,  <38.023094, 35.145977, 37.121944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217186, 35.039509, 37.214645>,  <38.540668, 34.862061, 37.369144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217186, 35.039509, 37.214645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179991, -0.438525, -0.880511,
		-0.559994, -0.781598, 0.274791,
		-0.808709, 0.443621, -0.386252,
		37.974575, 35.172596, 37.098770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141312, 34.951633, 36.928181>,  <38.540668, 34.862061, 37.369144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141312, 34.951633, 36.928181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466831, 34.720612, 36.954002>,  <39.662144, 34.581997, 36.969498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466831, 34.720612, 36.954002>,  <39.141312, 34.951633, 36.928181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466831, 34.720612, 36.954002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140901, 0.088312, -0.986077,
		0.563812, 0.811561, 0.153246,
		0.813795, -0.577555, 0.064559,
		39.710968, 34.547344, 36.973370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844646, 35.240643, 36.827465>,  <39.141312, 34.951633, 36.928181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844646, 35.240643, 36.827465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893223, 34.855778, 36.729897>,  <39.922367, 34.624859, 36.671356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893223, 34.855778, 36.729897>,  <39.844646, 35.240643, 36.827465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893223, 34.855778, 36.729897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035740, 0.241342, -0.969782,
		0.991955, 0.126487, -0.005080,
		0.121439, -0.962162, -0.243921,
		39.929653, 34.567131, 36.656719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379223, 35.223179, 36.307266>,  <39.844646, 35.240643, 36.827465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379223, 35.223179, 36.307266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097221, 34.939960, 36.291065>,  <39.928020, 34.770031, 36.281345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097221, 34.939960, 36.291065>,  <40.379223, 35.223179, 36.307266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097221, 34.939960, 36.291065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125558, 0.180822, -0.975468,
		0.698002, -0.682622, -0.216381,
		-0.705002, -0.708047, -0.040506,
		39.885719, 34.727547, 36.278912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500217, 34.611397, 35.823776>,  <40.379223, 35.223179, 36.307266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500217, 34.611397, 35.823776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116859, 34.708515, 35.883812>,  <39.886845, 34.766785, 35.919834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116859, 34.708515, 35.883812>,  <40.500217, 34.611397, 35.823776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116859, 34.708515, 35.883812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075781, 0.290521, -0.953863,
		-0.275198, -0.925553, -0.260035,
		-0.958396, 0.242795, 0.150090,
		39.829342, 34.781353, 35.928841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199287, 34.030228, 35.470238>,  <40.500217, 34.611397, 35.823776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199287, 34.030228, 35.470238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852142, 34.097553, 35.283268>,  <39.643856, 34.137947, 35.171085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852142, 34.097553, 35.283268>,  <40.199287, 34.030228, 35.470238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852142, 34.097553, 35.283268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072647, 0.973744, 0.215743,
		0.491468, 0.153277, -0.857301,
		-0.867860, 0.168311, -0.467429,
		39.591785, 34.148048, 35.143040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403748, 34.519272, 35.004116>,  <40.199287, 34.030228, 35.470238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403748, 34.519272, 35.004116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027584, 34.478901, 35.134010>,  <39.801888, 34.454678, 35.211945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027584, 34.478901, 35.134010>,  <40.403748, 34.519272, 35.004116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027584, 34.478901, 35.134010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006270, 0.959924, 0.280190,
		-0.339997, 0.261456, -0.903351,
		-0.940406, -0.100928, 0.324731,
		39.745461, 34.448624, 35.231430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996414, 35.140930, 34.757298>,  <40.403748, 34.519272, 35.004116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996414, 35.140930, 34.757298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786541, 34.983444, 35.059208>,  <39.660618, 34.888950, 35.240356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786541, 34.983444, 35.059208>,  <39.996414, 35.140930, 34.757298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786541, 34.983444, 35.059208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219941, 0.919216, 0.326600,
		-0.822394, 0.005355, -0.568893,
		-0.524684, -0.393717, 0.754780,
		39.629135, 34.865330, 35.285641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253422, 35.326180, 34.684986>,  <39.996414, 35.140930, 34.757298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253422, 35.326180, 34.684986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412880, 35.255665, 35.044987>,  <39.508556, 35.213356, 35.260986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412880, 35.255665, 35.044987>,  <39.253422, 35.326180, 34.684986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412880, 35.255665, 35.044987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086857, 0.969685, 0.228403,
		-0.912983, -0.169223, 0.371249,
		0.398645, -0.176282, 0.900004,
		39.532475, 35.202782, 35.314987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834278, 35.592377, 35.238426>,  <39.253422, 35.326180, 34.684986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834278, 35.592377, 35.238426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213753, 35.580944, 35.364399>,  <39.441437, 35.574085, 35.439983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213753, 35.580944, 35.364399>,  <38.834278, 35.592377, 35.238426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213753, 35.580944, 35.364399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036829, 0.979144, 0.199801,
		-0.314076, -0.201146, 0.927845,
		0.948683, -0.028581, 0.314934,
		39.498356, 35.572369, 35.458878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912453, 35.918888, 35.908020>,  <38.834278, 35.592377, 35.238426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912453, 35.918888, 35.908020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233372, 35.940067, 35.670193>,  <39.425922, 35.952774, 35.527496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233372, 35.940067, 35.670193>,  <38.912453, 35.918888, 35.908020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233372, 35.940067, 35.670193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056119, 0.984957, 0.163433,
		0.594276, -0.164489, 0.787261,
		0.802301, 0.052944, -0.594567,
		39.474064, 35.955952, 35.491821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588478, 36.298054, 36.085190>,  <38.912453, 35.918888, 35.908020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588478, 36.298054, 36.085190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505920, 36.345062, 35.696636>,  <39.456387, 36.373268, 35.463505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505920, 36.345062, 35.696636>,  <39.588478, 36.298054, 36.085190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505920, 36.345062, 35.696636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319753, 0.930156, 0.180469,
		0.924749, 0.347851, -0.154400,
		-0.206392, 0.117519, -0.971386,
		39.444004, 36.380318, 35.405220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507473, 36.955753, 36.113178>,  <39.588478, 36.298054, 36.085190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507473, 36.955753, 36.113178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330185, 36.860981, 35.767365>,  <39.223812, 36.804115, 35.559875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330185, 36.860981, 35.767365>,  <39.507473, 36.955753, 36.113178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330185, 36.860981, 35.767365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318194, 0.943216, -0.095371,
		0.838039, 0.232820, -0.493443,
		-0.443219, -0.236935, -0.864534,
		39.197220, 36.789902, 35.508003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755802, 36.983433, 36.830650>,  <39.507473, 36.955753, 36.113178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755802, 36.983433, 36.830650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397591, 37.145050, 36.905247>,  <39.182663, 37.242020, 36.950005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397591, 37.145050, 36.905247>,  <39.755802, 36.983433, 36.830650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397591, 37.145050, 36.905247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354206, 0.900875, -0.250921,
		-0.269390, -0.158650, -0.949873,
		-0.895526, 0.404046, 0.186492,
		39.128933, 37.266266, 36.961193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835854, 37.667091, 36.447624>,  <39.755802, 36.983433, 36.830650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835854, 37.667091, 36.447624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710640, 37.913273, 36.736961>,  <39.635509, 38.060982, 36.910564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710640, 37.913273, 36.736961>,  <39.835854, 37.667091, 36.447624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710640, 37.913273, 36.736961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835287, -0.184063, 0.518089,
		0.452000, 0.766381, -0.456461,
		-0.313036, 0.615452, 0.723344,
		39.616730, 38.097908, 36.953964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406139, 38.265240, 36.651989>,  <39.835854, 37.667091, 36.447624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406139, 38.265240, 36.651989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160561, 38.101318, 36.921841>,  <40.013214, 38.002968, 37.083752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160561, 38.101318, 36.921841>,  <40.406139, 38.265240, 36.651989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160561, 38.101318, 36.921841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780441, -0.443152, 0.441054,
		0.118221, 0.797296, 0.591898,
		-0.613951, -0.409799, 0.674632,
		39.976376, 37.978378, 37.124229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499264, 38.527264, 37.226467>,  <40.406139, 38.265240, 36.651989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499264, 38.527264, 37.226467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379242, 38.152954, 37.300541>,  <40.307228, 37.928368, 37.344986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379242, 38.152954, 37.300541>,  <40.499264, 38.527264, 37.226467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379242, 38.152954, 37.300541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818699, -0.152991, 0.553467,
		-0.489589, 0.317680, 0.812023,
		-0.300058, -0.935774, 0.185182,
		40.289227, 37.872223, 37.356094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724140, 38.342007, 37.893414>,  <40.499264, 38.527264, 37.226467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724140, 38.342007, 37.893414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664909, 37.983368, 37.726471>,  <40.629372, 37.768185, 37.626305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664909, 37.983368, 37.726471>,  <40.724140, 38.342007, 37.893414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664909, 37.983368, 37.726471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756949, -0.374337, 0.535630,
		-0.636476, -0.236603, 0.734110,
		-0.148073, -0.896599, -0.417353,
		40.620487, 37.714390, 37.601265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618931, 37.701195, 38.397644>,  <40.724140, 38.342007, 37.893414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618931, 37.701195, 38.397644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802021, 37.626949, 38.049843>,  <40.911873, 37.582401, 37.841160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802021, 37.626949, 38.049843>,  <40.618931, 37.701195, 38.397644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802021, 37.626949, 38.049843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781567, -0.382212, 0.493018,
		-0.423845, -0.905242, -0.029880,
		0.457721, -0.185610, -0.869506,
		40.939339, 37.571266, 37.788990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845085, 37.019417, 38.249935>,  <40.618931, 37.701195, 38.397644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845085, 37.019417, 38.249935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114559, 37.253723, 38.069702>,  <41.276245, 37.394306, 37.961563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114559, 37.253723, 38.069702>,  <40.845085, 37.019417, 38.249935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114559, 37.253723, 38.069702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711643, -0.349789, 0.609271,
		0.199283, -0.731111, -0.652505,
		0.673684, 0.585769, -0.450583,
		41.316666, 37.429455, 37.934528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612724, 36.782516, 38.068245>,  <40.845085, 37.019417, 38.249935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612724, 36.782516, 38.068245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614136, 37.173950, 38.150574>,  <41.614983, 37.408810, 38.199970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614136, 37.173950, 38.150574>,  <41.612724, 36.782516, 38.068245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614136, 37.173950, 38.150574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818082, -0.121195, 0.562186,
		0.575090, 0.166397, -0.800989,
		0.003530, 0.978583, 0.205824,
		41.615196, 37.467525, 38.212322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298363, 36.906483, 38.447945>,  <41.612724, 36.782516, 38.068245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298363, 36.906483, 38.447945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492111, 36.707447, 38.735775>,  <42.608360, 36.588028, 38.908474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492111, 36.707447, 38.735775>,  <42.298363, 36.906483, 38.447945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492111, 36.707447, 38.735775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679700, 0.303808, 0.667615,
		-0.550809, -0.812470, -0.191053,
		0.484373, -0.497587, 0.719576,
		42.637424, 36.558170, 38.951649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855370, 36.712536, 38.813046>,  <42.298363, 36.906483, 38.447945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855370, 36.712536, 38.813046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153973, 36.655418, 39.072998>,  <42.333134, 36.621147, 39.228970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153973, 36.655418, 39.072998>,  <41.855370, 36.712536, 38.813046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153973, 36.655418, 39.072998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629982, 0.162655, 0.759386,
		-0.214141, -0.976296, 0.031466,
		0.746503, -0.142792, 0.649880,
		42.377922, 36.612579, 39.267963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690643, 36.254894, 39.283215>,  <41.855370, 36.712536, 38.813046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690643, 36.254894, 39.283215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939606, 36.531124, 39.430573>,  <42.088982, 36.696861, 39.518990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939606, 36.531124, 39.430573>,  <41.690643, 36.254894, 39.283215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939606, 36.531124, 39.430573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675429, 0.236067, 0.698619,
		0.395483, -0.683650, 0.613364,
		0.622406, 0.690576, 0.368397,
		42.126328, 36.738297, 39.541092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014923, 36.128490, 39.966679>,  <41.690643, 36.254894, 39.283215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014923, 36.128490, 39.966679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925850, 36.518257, 39.954533>,  <41.872406, 36.752117, 39.947247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925850, 36.518257, 39.954533>,  <42.014923, 36.128490, 39.966679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925850, 36.518257, 39.954533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471517, -0.080392, 0.878185,
		0.853278, 0.209878, 0.477356,
		-0.222687, 0.974417, -0.030365,
		41.859043, 36.810581, 39.945423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166298, 36.378502, 40.620453>,  <42.014923, 36.128490, 39.966679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166298, 36.378502, 40.620453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897232, 36.593075, 40.416584>,  <41.735790, 36.721817, 40.294262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897232, 36.593075, 40.416584>,  <42.166298, 36.378502, 40.620453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897232, 36.593075, 40.416584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580482, 0.044587, 0.813052,
		0.458869, 0.842767, 0.281396,
		-0.672666, 0.536429, -0.509670,
		41.695431, 36.754005, 40.263683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762745, 36.151009, 40.409508>,  <42.166298, 36.378502, 40.620453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762745, 36.151009, 40.409508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785225, 35.810631, 40.200607>,  <42.798714, 35.606403, 40.075268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785225, 35.810631, 40.200607>,  <42.762745, 36.151009, 40.409508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785225, 35.810631, 40.200607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827045, 0.332703, -0.453105,
		0.559319, -0.406460, 0.722463,
		0.056197, -0.850940, -0.522248,
		42.802086, 35.555347, 40.043934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471390, 35.826504, 40.379227>,  <42.762745, 36.151009, 40.409508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471390, 35.826504, 40.379227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240906, 35.790314, 40.054314>,  <43.102615, 35.768600, 39.859367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240906, 35.790314, 40.054314>,  <43.471390, 35.826504, 40.379227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240906, 35.790314, 40.054314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654504, 0.544155, -0.524899,
		0.489495, -0.834092, -0.254332,
		-0.576211, -0.090475, -0.812278,
		43.068043, 35.763172, 39.810631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779636, 35.415115, 39.746433>,  <43.471390, 35.826504, 40.379227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779636, 35.415115, 39.746433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543888, 35.737522, 39.724628>,  <43.402439, 35.930965, 39.711544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543888, 35.737522, 39.724628>,  <43.779636, 35.415115, 39.746433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543888, 35.737522, 39.724628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798340, 0.570772, -0.192022,
		-0.123659, -0.156692, -0.979876,
		-0.589374, 0.806019, -0.054512,
		43.367077, 35.979328, 39.708275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058460, 34.713184, 39.721600>,  <43.779636, 35.415115, 39.746433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058460, 34.713184, 39.721600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435925, 34.817577, 39.640221>,  <44.662403, 34.880215, 39.591393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435925, 34.817577, 39.640221>,  <44.058460, 34.713184, 39.721600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435925, 34.817577, 39.640221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060711, -0.740905, -0.668860,
		-0.325296, 0.618826, -0.715008,
		0.943661, 0.260987, -0.203443,
		44.719025, 34.895874, 39.579189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155609, 34.743008, 38.961269>,  <44.058460, 34.713184, 39.721600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155609, 34.743008, 38.961269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.505386, 34.649284, 39.131184>,  <44.715252, 34.593052, 39.233131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.505386, 34.649284, 39.131184>,  <44.155609, 34.743008, 38.961269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505386, 34.649284, 39.131184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076391, -0.798202, -0.597526,
		0.479072, 0.554954, -0.680085,
		0.874445, -0.234306, 0.424790,
		44.767719, 34.578991, 39.258621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.736305, 34.646721, 38.508034>,  <44.155609, 34.743008, 38.961269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.736305, 34.646721, 38.508034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768196, 34.388474, 38.811829>,  <44.787331, 34.233524, 38.994106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768196, 34.388474, 38.811829>,  <44.736305, 34.646721, 38.508034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768196, 34.388474, 38.811829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033768, -0.759729, -0.649363,
		0.996244, 0.077420, -0.038772,
		0.079730, -0.645615, 0.759490,
		44.792114, 34.194790, 39.039677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.399746, 34.246666, 38.489803>,  <44.736305, 34.646721, 38.508034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.399746, 34.246666, 38.489803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.109329, 34.048386, 38.680443>,  <44.935078, 33.929417, 38.794827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.109329, 34.048386, 38.680443>,  <45.399746, 34.246666, 38.489803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109329, 34.048386, 38.680443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147098, -0.788994, -0.596532,
		0.671730, -0.363003, 0.645761,
		-0.726044, -0.495699, 0.476594,
		44.891518, 33.899677, 38.823421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983109, 34.672398, 38.483276>,  <45.399746, 34.246666, 38.489803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983109, 34.672398, 38.483276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.147919, 34.390129, 38.252708>,  <46.246803, 34.220768, 38.114368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.147919, 34.390129, 38.252708>,  <45.983109, 34.672398, 38.483276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.147919, 34.390129, 38.252708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036854, 0.619187, -0.784378,
		0.910427, 0.344425, 0.229113,
		0.412024, -0.705676, -0.576418,
		46.271526, 34.178425, 38.079784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.669754, 34.861313, 38.084240>,  <45.983109, 34.672398, 38.483276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.669754, 34.861313, 38.084240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.406548, 34.621246, 37.902328>,  <46.248623, 34.477207, 37.793182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.406548, 34.621246, 37.902328>,  <46.669754, 34.861313, 38.084240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.406548, 34.621246, 37.902328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146429, 0.694400, -0.704533,
		0.738633, -0.396999, -0.544806,
		-0.658013, -0.600167, -0.454775,
		46.209145, 34.441196, 37.765896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.866951, 34.703598, 37.354481>,  <46.669754, 34.861313, 38.084240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.866951, 34.703598, 37.354481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.468620, 34.691952, 37.389076>,  <46.229622, 34.684963, 37.409832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.468620, 34.691952, 37.389076>,  <46.866951, 34.703598, 37.354481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.468620, 34.691952, 37.389076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091154, 0.362100, -0.927672,
		-0.004311, -0.931685, -0.363242,
		-0.995828, -0.029112, 0.086488,
		46.169872, 34.683220, 37.415024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.683220, 34.424744, 36.798668>,  <46.866951, 34.703598, 37.354481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.683220, 34.424744, 36.798668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346870, 34.607143, 36.915279>,  <46.145061, 34.716583, 36.985245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346870, 34.607143, 36.915279>,  <46.683220, 34.424744, 36.798668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.346870, 34.607143, 36.915279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115758, 0.374656, -0.919909,
		-0.528701, -0.807278, -0.262254,
		-0.840878, 0.455999, 0.291530,
		46.094608, 34.743942, 37.002739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.623432, 34.562698, 36.044544>,  <46.683220, 34.424744, 36.798668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.623432, 34.562698, 36.044544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959221, 34.368702, 36.142582>,  <47.160694, 34.252304, 36.201405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959221, 34.368702, 36.142582>,  <46.623432, 34.562698, 36.044544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.959221, 34.368702, 36.142582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403870, 0.255078, -0.878535,
		0.363564, 0.836491, 0.410005,
		0.839470, -0.484992, 0.245097,
		47.211063, 34.223206, 36.216110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.234501, 34.858917, 36.334255>,  <46.623432, 34.562698, 36.044544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.234501, 34.858917, 36.334255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278336, 34.549580, 36.084476>,  <47.304638, 34.363976, 35.934608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278336, 34.549580, 36.084476>,  <47.234501, 34.858917, 36.334255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.278336, 34.549580, 36.084476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107992, 0.633773, -0.765944,
		0.988093, 0.016502, 0.152968,
		0.109586, -0.773343, -0.624445,
		47.311211, 34.317577, 35.897144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.886692, 34.913921, 36.089954>,  <47.234501, 34.858917, 36.334255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.886692, 34.913921, 36.089954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587406, 34.751766, 35.879871>,  <47.407837, 34.654472, 35.753822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587406, 34.751766, 35.879871>,  <47.886692, 34.913921, 36.089954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.587406, 34.751766, 35.879871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093422, 0.719358, -0.688329,
		0.656850, -0.564082, -0.500361,
		-0.748212, -0.405384, -0.525208,
		47.362942, 34.630150, 35.722309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.031837, 34.730019, 35.426579>,  <47.886692, 34.913921, 36.089954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.031837, 34.730019, 35.426579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.641636, 34.816853, 35.440765>,  <47.407513, 34.868954, 35.449276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.641636, 34.816853, 35.440765>,  <48.031837, 34.730019, 35.426579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.641636, 34.816853, 35.440765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101930, 0.589003, -0.801677,
		-0.194921, -0.778428, -0.596704,
		-0.975508, 0.217086, 0.035464,
		47.348984, 34.881977, 35.451405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.804199, 34.627525, 34.726322>,  <48.031837, 34.730019, 35.426579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.804199, 34.627525, 34.726322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.584545, 34.878742, 34.946873>,  <47.452751, 35.029472, 35.079205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.584545, 34.878742, 34.946873>,  <47.804199, 34.627525, 34.726322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.584545, 34.878742, 34.946873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037821, 0.677750, -0.734319,
		-0.834878, -0.382386, -0.395929,
		-0.549134, 0.628041, 0.551376,
		47.419804, 35.067154, 35.112286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.272533, 32.351059, 24.108999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.129665, 31.977448, 24.110964>,  <39.043945, 31.753281, 24.112143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.129665, 31.977448, 24.110964>,  <39.272533, 32.351059, 24.108999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129665, 31.977448, 24.110964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061005, 0.028576, 0.997728,
		-0.932045, 0.356059, -0.067187,
		-0.357170, -0.934026, 0.004913,
		39.022514, 31.697239, 24.112438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690823, 32.264072, 24.559385>,  <39.272533, 32.351059, 24.108999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690823, 32.264072, 24.559385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.820824, 31.885948, 24.548412>,  <38.898823, 31.659073, 24.541828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.820824, 31.885948, 24.548412>,  <38.690823, 32.264072, 24.559385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820824, 31.885948, 24.548412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050575, -0.011593, 0.998653,
		-0.944360, -0.325953, 0.044042,
		0.325003, -0.945315, -0.027433,
		38.918324, 31.602354, 24.540182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261318, 31.871061, 24.937906>,  <38.690823, 32.264072, 24.559385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261318, 31.871061, 24.937906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601257, 31.660639, 24.950686>,  <38.805222, 31.534386, 24.958353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601257, 31.660639, 24.950686>,  <38.261318, 31.871061, 24.937906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601257, 31.660639, 24.950686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121580, -0.136710, 0.983122,
		-0.512809, -0.839390, -0.180141,
		0.849850, -0.526055, 0.031946,
		38.856213, 31.502823, 24.960270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127945, 31.306124, 25.470346>,  <38.261318, 31.871061, 24.937906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127945, 31.306124, 25.470346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.518063, 31.354500, 25.396395>,  <38.752132, 31.383526, 25.352024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.518063, 31.354500, 25.396395>,  <38.127945, 31.306124, 25.470346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518063, 31.354500, 25.396395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209259, -0.237377, 0.948611,
		0.070840, -0.963859, -0.256820,
		0.975291, 0.120942, -0.184881,
		38.810650, 31.390781, 25.340931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379925, 30.863609, 25.923964>,  <38.127945, 31.306124, 25.470346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379925, 30.863609, 25.923964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.708260, 31.070314, 25.826653>,  <38.905262, 31.194338, 25.768267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.708260, 31.070314, 25.826653>,  <38.379925, 30.863609, 25.923964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708260, 31.070314, 25.826653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329442, -0.080415, 0.940745,
		0.466578, -0.852344, -0.236250,
		0.820837, 0.516762, -0.243278,
		38.954510, 31.225344, 25.753670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917442, 30.518974, 26.198130>,  <38.379925, 30.863609, 25.923964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917442, 30.518974, 26.198130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064659, 30.889240, 26.163061>,  <39.152988, 31.111401, 26.142019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064659, 30.889240, 26.163061>,  <38.917442, 30.518974, 26.198130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064659, 30.889240, 26.163061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230479, 0.000524, 0.973077,
		0.900789, -0.378344, -0.213153,
		0.368046, 0.925665, -0.087672,
		39.175072, 31.166939, 26.136759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525703, 30.589716, 26.579828>,  <38.917442, 30.518974, 26.198130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525703, 30.589716, 26.579828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.419189, 30.973980, 26.548273>,  <39.355282, 31.204538, 26.529339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.419189, 30.973980, 26.548273>,  <39.525703, 30.589716, 26.579828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419189, 30.973980, 26.548273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292814, 0.158597, 0.942924,
		0.918342, 0.227986, -0.323527,
		-0.266284, 0.960661, -0.078889,
		39.339306, 31.262178, 26.524607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882698, 30.850079, 27.097746>,  <39.525703, 30.589716, 26.579828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882698, 30.850079, 27.097746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.618160, 31.136992, 27.009996>,  <39.459438, 31.309139, 26.957348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.618160, 31.136992, 27.009996>,  <39.882698, 30.850079, 27.097746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618160, 31.136992, 27.009996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058842, 0.341176, 0.938156,
		0.747767, 0.607540, -0.267842,
		-0.661348, 0.717283, -0.219372,
		39.419754, 31.352177, 26.944185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158302, 31.437738, 27.465204>,  <39.882698, 30.850079, 27.097746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158302, 31.437738, 27.465204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.772297, 31.499548, 27.380480>,  <39.540691, 31.536634, 27.329645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.772297, 31.499548, 27.380480>,  <40.158302, 31.437738, 27.465204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772297, 31.499548, 27.380480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132072, 0.411383, 0.901843,
		0.226494, 0.898268, -0.376583,
		-0.965017, 0.154526, -0.211812,
		39.482792, 31.545906, 27.316936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987411, 32.108398, 27.746191>,  <40.158302, 31.437738, 27.465204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987411, 32.108398, 27.746191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.612747, 31.976196, 27.699841>,  <39.387947, 31.896873, 27.672031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.612747, 31.976196, 27.699841>,  <39.987411, 32.108398, 27.746191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612747, 31.976196, 27.699841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286582, 0.533079, 0.796052,
		-0.201332, 0.778839, -0.594033,
		-0.936662, -0.330510, -0.115875,
		39.331749, 31.877043, 27.665077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545513, 32.721874, 27.643572>,  <39.987411, 32.108398, 27.746191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545513, 32.721874, 27.643572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369751, 32.401718, 27.806690>,  <39.264294, 32.209625, 27.904560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369751, 32.401718, 27.806690>,  <39.545513, 32.721874, 27.643572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369751, 32.401718, 27.806690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309279, 0.561011, 0.767863,
		-0.843369, 0.211279, -0.494055,
		-0.439403, -0.800392, 0.407795,
		39.237930, 32.161602, 27.929029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008705, 33.142963, 28.003292>,  <39.545513, 32.721874, 27.643572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008705, 33.142963, 28.003292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.018532, 32.772156, 28.152975>,  <39.024429, 32.549671, 28.242785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.018532, 32.772156, 28.152975>,  <39.008705, 33.142963, 28.003292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018532, 32.772156, 28.152975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275254, 0.353580, 0.893989,
		-0.961058, -0.124967, -0.246478,
		0.024569, -0.927019, 0.374209,
		39.025902, 32.494049, 28.265238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366978, 33.103554, 28.335722>,  <39.008705, 33.142963, 28.003292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366978, 33.103554, 28.335722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.592499, 32.811539, 28.490213>,  <38.727814, 32.636330, 28.582909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.592499, 32.811539, 28.490213>,  <38.366978, 33.103554, 28.335722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592499, 32.811539, 28.490213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075840, 0.419905, 0.904394,
		-0.822419, -0.539193, 0.181379,
		0.563805, -0.730035, 0.386230,
		38.761639, 32.592529, 28.606083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952827, 32.927334, 28.871176>,  <38.366978, 33.103554, 28.335722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952827, 32.927334, 28.871176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319756, 32.791298, 28.953993>,  <38.539913, 32.709675, 29.003683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319756, 32.791298, 28.953993>,  <37.952827, 32.927334, 28.871176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319756, 32.791298, 28.953993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095263, 0.317426, 0.943486,
		-0.386594, -0.885199, 0.258782,
		0.917317, -0.340093, 0.207042,
		38.594952, 32.689270, 29.016106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932926, 32.473545, 29.543257>,  <37.952827, 32.927334, 28.871176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932926, 32.473545, 29.543257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.285599, 32.646202, 29.467022>,  <38.497200, 32.749798, 29.421280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.285599, 32.646202, 29.467022>,  <37.932926, 32.473545, 29.543257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285599, 32.646202, 29.467022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075363, 0.269912, 0.959931,
		0.465795, -0.860714, 0.205445,
		0.881678, 0.431648, -0.190590,
		38.550102, 32.775696, 29.409845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210243, 32.255245, 30.122511>,  <37.932926, 32.473545, 29.543257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210243, 32.255245, 30.122511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.432682, 32.558544, 29.986380>,  <38.566143, 32.740524, 29.904701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.432682, 32.558544, 29.986380>,  <38.210243, 32.255245, 30.122511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432682, 32.558544, 29.986380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013475, 0.401199, 0.915892,
		0.831012, -0.513906, 0.212886,
		0.556092, 0.758248, -0.340326,
		38.599510, 32.786018, 29.884281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780865, 32.208172, 30.412197>,  <38.210243, 32.255245, 30.122511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780865, 32.208172, 30.412197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.780769, 32.594109, 30.307072>,  <38.780712, 32.825672, 30.243996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.780769, 32.594109, 30.307072>,  <38.780865, 32.208172, 30.412197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780769, 32.594109, 30.307072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178273, 0.258646, 0.949379,
		0.983981, -0.046624, -0.172068,
		-0.000241, 0.964846, -0.262815,
		38.780697, 32.883564, 30.228228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413582, 32.513477, 30.744719>,  <38.780865, 32.208172, 30.412197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413582, 32.513477, 30.744719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.156780, 32.808956, 30.662594>,  <39.002697, 32.986244, 30.613319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.156780, 32.808956, 30.662594>,  <39.413582, 32.513477, 30.744719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156780, 32.808956, 30.662594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160439, 0.391296, 0.906171,
		0.749723, 0.548829, -0.369731,
		-0.642008, 0.738697, -0.205311,
		38.964176, 33.030567, 30.601000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630943, 33.140553, 30.950914>,  <39.413582, 32.513477, 30.744719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630943, 33.140553, 30.950914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.241348, 33.231171, 30.952618>,  <39.007591, 33.285542, 30.953640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.241348, 33.231171, 30.952618>,  <39.630943, 33.140553, 30.950914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241348, 33.231171, 30.952618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071770, 0.290626, 0.954141,
		0.214918, 0.929631, -0.299327,
		-0.973991, 0.226545, 0.004259,
		38.949150, 33.299133, 30.953896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625217, 33.808212, 31.289185>,  <39.630943, 33.140553, 30.950914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625217, 33.808212, 31.289185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.242283, 33.692791, 31.295399>,  <39.012520, 33.623539, 31.299128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.242283, 33.692791, 31.295399>,  <39.625217, 33.808212, 31.289185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242283, 33.692791, 31.295399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098598, 0.376708, 0.921070,
		-0.271629, 0.880243, -0.389088,
		-0.957338, -0.288553, 0.015535,
		38.955082, 33.606224, 31.300058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275162, 34.368874, 31.544584>,  <39.625217, 33.808212, 31.289185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275162, 34.368874, 31.544584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031895, 34.057869, 31.608585>,  <38.885933, 33.871265, 31.646986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031895, 34.057869, 31.608585>,  <39.275162, 34.368874, 31.544584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031895, 34.057869, 31.608585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189591, 0.338001, 0.921851,
		-0.770835, 0.530306, -0.352972,
		-0.608168, -0.777516, 0.160002,
		38.849445, 33.824615, 31.656586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686821, 34.673698, 31.735151>,  <39.275162, 34.368874, 31.544584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686821, 34.673698, 31.735151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.658409, 34.299488, 31.873566>,  <38.641361, 34.074963, 31.956614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.658409, 34.299488, 31.873566>,  <38.686821, 34.673698, 31.735151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658409, 34.299488, 31.873566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218242, 0.353082, 0.909782,
		-0.973306, -0.010896, -0.229251,
		-0.071032, -0.935529, 0.346035,
		38.637100, 34.018829, 31.977377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325706, 35.320534, 32.081200>,  <38.686821, 34.673698, 31.735151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325706, 35.320534, 32.081200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.600933, 35.602871, 32.148537>,  <38.766071, 35.772274, 32.188938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.600933, 35.602871, 32.148537>,  <38.325706, 35.320534, 32.081200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600933, 35.602871, 32.148537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091358, 0.145881, -0.985075,
		-0.719870, 0.693181, 0.035892,
		0.688071, 0.705846, 0.168343,
		38.807354, 35.814625, 32.199039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167278, 35.986557, 31.721968>,  <38.325706, 35.320534, 32.081200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167278, 35.986557, 31.721968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561935, 36.031067, 31.769564>,  <38.798729, 36.057774, 31.798120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561935, 36.031067, 31.769564>,  <38.167278, 35.986557, 31.721968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561935, 36.031067, 31.769564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097065, 0.185083, -0.977917,
		-0.130838, 0.976403, 0.171810,
		0.986641, 0.111272, 0.118991,
		38.857929, 36.064449, 31.805262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313354, 36.486118, 31.260929>,  <38.167278, 35.986557, 31.721968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313354, 36.486118, 31.260929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.689976, 36.364925, 31.319826>,  <38.915947, 36.292210, 31.355164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.689976, 36.364925, 31.319826>,  <38.313354, 36.486118, 31.260929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689976, 36.364925, 31.319826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209900, 0.185799, -0.959907,
		0.263474, 0.934710, 0.238535,
		0.941554, -0.302979, 0.147243,
		38.972443, 36.274033, 31.363998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699253, 37.018272, 30.905291>,  <38.313354, 36.486118, 31.260929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699253, 37.018272, 30.905291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.898949, 36.672180, 30.923754>,  <39.018768, 36.464523, 30.934832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.898949, 36.672180, 30.923754>,  <38.699253, 37.018272, 30.905291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898949, 36.672180, 30.923754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027489, -0.037430, -0.998921,
		0.866025, 0.499974, 0.005098,
		0.499244, -0.865231, 0.046159,
		39.048721, 36.412609, 30.937601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169178, 37.002666, 30.328030>,  <38.699253, 37.018272, 30.905291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169178, 37.002666, 30.328030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.162643, 36.614140, 30.422926>,  <39.158722, 36.381023, 30.479864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.162643, 36.614140, 30.422926>,  <39.169178, 37.002666, 30.328030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162643, 36.614140, 30.422926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099470, -0.234516, -0.967010,
		0.994906, -0.039398, -0.092785,
		-0.016339, -0.971313, 0.237241,
		39.157742, 36.322746, 30.494099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547489, 36.715313, 29.820753>,  <39.169178, 37.002666, 30.328030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547489, 36.715313, 29.820753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369896, 36.392433, 29.976349>,  <39.263340, 36.198708, 30.069706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369896, 36.392433, 29.976349>,  <39.547489, 36.715313, 29.820753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369896, 36.392433, 29.976349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035835, -0.449773, -0.892424,
		0.895317, -0.382283, 0.228619,
		-0.443985, -0.807195, 0.388990,
		39.236702, 36.150276, 30.093046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953449, 36.168049, 29.671659>,  <39.547489, 36.715313, 29.820753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953449, 36.168049, 29.671659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.583260, 36.025982, 29.724367>,  <39.361145, 35.940742, 29.755991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.583260, 36.025982, 29.724367>,  <39.953449, 36.168049, 29.671659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583260, 36.025982, 29.724367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027045, -0.408901, -0.912178,
		0.377854, -0.840630, 0.388031,
		-0.925470, -0.355165, 0.131770,
		39.305618, 35.919434, 29.763899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990459, 35.480087, 29.432695>,  <39.953449, 36.168049, 29.671659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990459, 35.480087, 29.432695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.598289, 35.552368, 29.401398>,  <39.362988, 35.595737, 29.382620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.598289, 35.552368, 29.401398>,  <39.990459, 35.480087, 29.432695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598289, 35.552368, 29.401398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011666, -0.449946, -0.892980,
		-0.196569, -0.874583, 0.443244,
		-0.980420, 0.180703, -0.078243,
		39.304165, 35.606579, 29.377924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676037, 34.834648, 29.229359>,  <39.990459, 35.480087, 29.432695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676037, 34.834648, 29.229359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.438614, 35.137192, 29.119370>,  <39.296162, 35.318718, 29.053377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.438614, 35.137192, 29.119370>,  <39.676037, 34.834648, 29.229359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438614, 35.137192, 29.119370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213087, -0.477174, -0.852583,
		-0.776070, -0.447464, 0.444401,
		-0.593557, 0.756360, -0.274972,
		39.260548, 35.364101, 29.036879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105877, 34.559521, 28.937614>,  <39.676037, 34.834648, 29.229359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105877, 34.559521, 28.937614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.089607, 34.932037, 28.792812>,  <39.079845, 35.155548, 28.705931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.089607, 34.932037, 28.792812>,  <39.105877, 34.559521, 28.937614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089607, 34.932037, 28.792812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267500, -0.359231, -0.894090,
		-0.962699, 0.060472, 0.263731,
		-0.040673, 0.931287, -0.362008,
		39.077404, 35.211422, 28.684210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570286, 34.568932, 28.455591>,  <39.105877, 34.559521, 28.937614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570286, 34.568932, 28.455591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.743793, 34.909096, 28.336491>,  <38.847897, 35.113194, 28.265030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.743793, 34.909096, 28.336491>,  <38.570286, 34.568932, 28.455591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743793, 34.909096, 28.336491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107085, -0.279460, -0.954167,
		-0.894640, 0.445769, -0.030155,
		0.433765, 0.850407, -0.297752,
		38.873924, 35.164219, 28.247166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099548, 34.915268, 28.031570>,  <38.570286, 34.568932, 28.455591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099548, 34.915268, 28.031570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.461006, 35.059921, 27.939791>,  <38.677879, 35.146713, 27.884722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.461006, 35.059921, 27.939791>,  <38.099548, 34.915268, 28.031570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461006, 35.059921, 27.939791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196899, -0.124978, -0.972425,
		-0.380336, 0.923906, -0.041731,
		0.903645, 0.361632, -0.229450,
		38.732101, 35.168411, 27.870956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025024, 35.339424, 27.415007>,  <38.099548, 34.915268, 28.031570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025024, 35.339424, 27.415007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.420307, 35.278439, 27.420568>,  <38.657478, 35.241848, 27.423906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.420307, 35.278439, 27.420568>,  <38.025024, 35.339424, 27.415007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420307, 35.278439, 27.420568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030622, 0.107844, -0.993696,
		0.150005, 0.982407, 0.111242,
		0.988211, -0.152466, 0.013907,
		38.716770, 35.232700, 27.424740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314739, 35.901382, 26.971083>,  <38.025024, 35.339424, 27.415007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314739, 35.901382, 26.971083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620090, 35.643311, 26.983744>,  <38.803299, 35.488468, 26.991341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620090, 35.643311, 26.983744>,  <38.314739, 35.901382, 26.971083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620090, 35.643311, 26.983744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163729, 0.145856, -0.975663,
		0.624862, 0.749979, 0.216978,
		0.763374, -0.645181, 0.031654,
		38.849102, 35.449757, 26.993240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617420, 36.001652, 26.348799>,  <38.314739, 35.901382, 26.971083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617420, 36.001652, 26.348799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.793362, 35.662670, 26.467699>,  <38.898926, 35.459282, 26.539040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.793362, 35.662670, 26.467699>,  <38.617420, 36.001652, 26.348799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793362, 35.662670, 26.467699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224934, -0.216478, -0.950022,
		0.869445, 0.484731, 0.095402,
		0.439853, -0.847451, 0.297249,
		38.925316, 35.408436, 26.556873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203102, 36.005470, 25.949909>,  <38.617420, 36.001652, 26.348799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203102, 36.005470, 25.949909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.122128, 35.634201, 26.074816>,  <39.073544, 35.411438, 26.149759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.122128, 35.634201, 26.074816>,  <39.203102, 36.005470, 25.949909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122128, 35.634201, 26.074816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184676, -0.349328, -0.918621,
		0.961724, -0.128297, 0.242129,
		-0.202439, -0.928175, 0.312264,
		39.061398, 35.355747, 26.168495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642765, 35.511742, 25.585283>,  <39.203102, 36.005470, 25.949909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642765, 35.511742, 25.585283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.349205, 35.258381, 25.683426>,  <39.173069, 35.106365, 25.742311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.349205, 35.258381, 25.683426>,  <39.642765, 35.511742, 25.585283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349205, 35.258381, 25.683426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032668, -0.393709, -0.918655,
		0.678475, -0.666182, 0.309633,
		-0.733897, -0.633399, 0.245359,
		39.129036, 35.068359, 25.757034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910091, 34.798302, 25.386316>,  <39.642765, 35.511742, 25.585283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910091, 34.798302, 25.386316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.511684, 34.793751, 25.421688>,  <39.272640, 34.791019, 25.442911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.511684, 34.793751, 25.421688>,  <39.910091, 34.798302, 25.386316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511684, 34.793751, 25.421688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072389, -0.475804, -0.876567,
		0.052047, -0.879477, 0.473086,
		-0.996018, -0.011376, 0.088428,
		39.212879, 34.790337, 25.448217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.648281, 34.018139, 25.210970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.348663, 34.278381, 25.160940>,  <39.168892, 34.434525, 25.130922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.348663, 34.278381, 25.160940>,  <39.648281, 34.018139, 25.210970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348663, 34.278381, 25.160940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192824, -0.394704, -0.898347,
		-0.633834, -0.648788, 0.421104,
		-0.749048, 0.650602, -0.125075,
		39.123947, 34.473560, 25.123417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141781, 33.633617, 25.058302>,  <39.648281, 34.018139, 25.210970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141781, 33.633617, 25.058302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051609, 33.993835, 24.909603>,  <38.997505, 34.209965, 24.820383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051609, 33.993835, 24.909603>,  <39.141781, 33.633617, 25.058302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051609, 33.993835, 24.909603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111687, -0.402942, -0.908385,
		-0.967836, -0.163260, 0.191415,
		-0.225433, 0.900546, -0.371748,
		38.983978, 34.264000, 24.798079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640488, 33.482395, 24.646446>,  <39.141781, 33.633617, 25.058302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640488, 33.482395, 24.646446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.761894, 33.839901, 24.514351>,  <38.834740, 34.054405, 24.435093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.761894, 33.839901, 24.514351>,  <38.640488, 33.482395, 24.646446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761894, 33.839901, 24.514351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157166, -0.294879, -0.942521,
		-0.939774, 0.337974, 0.050969,
		0.303518, 0.893767, -0.330238,
		38.852951, 34.108032, 24.415279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171474, 33.467709, 24.097181>,  <38.640488, 33.482395, 24.646446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171474, 33.467709, 24.097181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.447159, 33.755058, 24.059391>,  <38.612572, 33.927467, 24.036716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.447159, 33.755058, 24.059391>,  <38.171474, 33.467709, 24.097181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447159, 33.755058, 24.059391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127592, -0.008020, -0.991794,
		-0.713235, 0.695613, 0.086131,
		0.689214, 0.718372, -0.094475,
		38.653923, 33.970570, 24.031048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940308, 33.835819, 23.524582>,  <38.171474, 33.467709, 24.097181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940308, 33.835819, 23.524582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.327007, 33.932446, 23.558153>,  <38.559029, 33.990421, 23.578297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.327007, 33.932446, 23.558153>,  <37.940308, 33.835819, 23.524582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327007, 33.932446, 23.558153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049741, 0.144301, -0.988283,
		-0.250846, 0.959595, 0.127487,
		0.966748, 0.241565, 0.083928,
		38.617031, 34.004913, 23.583332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092365, 34.320370, 23.050711>,  <37.940308, 33.835819, 23.524582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092365, 34.320370, 23.050711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458508, 34.167774, 23.102230>,  <38.678192, 34.076218, 23.133142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458508, 34.167774, 23.102230>,  <38.092365, 34.320370, 23.050711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458508, 34.167774, 23.102230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138936, -0.000981, -0.990301,
		0.377911, 0.924375, 0.052104,
		0.915358, -0.381484, 0.128800,
		38.733116, 34.053329, 23.140869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498104, 34.734570, 22.667664>,  <38.092365, 34.320370, 23.050711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498104, 34.734570, 22.667664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.738167, 34.417366, 22.709509>,  <38.882202, 34.227043, 22.734615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.738167, 34.417366, 22.709509>,  <38.498104, 34.734570, 22.667664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738167, 34.417366, 22.709509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249863, 0.061620, -0.966318,
		0.759857, 0.606080, 0.235126,
		0.600155, -0.793013, 0.104614,
		38.918213, 34.179462, 22.740892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095345, 34.887074, 22.289505>,  <38.498104, 34.734570, 22.667664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095345, 34.887074, 22.289505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.100639, 34.487465, 22.306389>,  <39.103817, 34.247700, 22.316519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.100639, 34.487465, 22.306389>,  <39.095345, 34.887074, 22.289505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100639, 34.487465, 22.306389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277365, -0.036889, -0.960056,
		0.960673, 0.024418, 0.276605,
		0.013239, -0.999021, 0.042211,
		39.104610, 34.187759, 22.319052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709690, 34.723961, 22.003706>,  <39.095345, 34.887074, 22.289505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709690, 34.723961, 22.003706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.478649, 34.398998, 21.971771>,  <39.340023, 34.204021, 21.952610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.478649, 34.398998, 21.971771>,  <39.709690, 34.723961, 22.003706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478649, 34.398998, 21.971771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218598, -0.059705, -0.973987,
		0.786504, -0.580031, 0.212075,
		-0.577605, -0.812404, -0.079835,
		39.305367, 34.155277, 21.947821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074352, 34.210758, 21.611319>,  <39.709690, 34.723961, 22.003706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074352, 34.210758, 21.611319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.695618, 34.088272, 21.571877>,  <39.468376, 34.014778, 21.548212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.695618, 34.088272, 21.571877>,  <40.074352, 34.210758, 21.611319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695618, 34.088272, 21.571877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143613, -0.128074, -0.981312,
		0.287867, -0.943307, 0.165243,
		-0.946841, -0.306218, -0.098603,
		39.411564, 33.996407, 21.542295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085175, 33.640743, 21.050039>,  <40.074352, 34.210758, 21.611319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085175, 33.640743, 21.050039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.696220, 33.731289, 21.072783>,  <39.462849, 33.785614, 21.086428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.696220, 33.731289, 21.072783>,  <40.085175, 33.640743, 21.050039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696220, 33.731289, 21.072783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101396, -0.190296, -0.976476,
		-0.210227, -0.955271, 0.207993,
		-0.972381, 0.226371, 0.056855,
		39.404507, 33.799198, 21.089840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755707, 32.989376, 20.861094>,  <40.085175, 33.640743, 21.050039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755707, 32.989376, 20.861094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.507359, 33.298641, 20.809355>,  <39.358349, 33.484200, 20.778313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.507359, 33.298641, 20.809355>,  <39.755707, 32.989376, 20.861094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507359, 33.298641, 20.809355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074380, -0.222358, -0.972124,
		-0.780375, -0.593944, 0.195564,
		-0.620872, 0.773167, -0.129345,
		39.321098, 33.530590, 20.770552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258045, 32.781364, 20.390413>,  <39.755707, 32.989376, 20.861094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258045, 32.781364, 20.390413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.236893, 33.180695, 20.380960>,  <39.224201, 33.420292, 20.375288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.236893, 33.180695, 20.380960>,  <39.258045, 32.781364, 20.390413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236893, 33.180695, 20.380960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125877, -0.030143, -0.991588,
		-0.990635, -0.049465, 0.127260,
		-0.052885, 0.998321, -0.023634,
		39.221027, 33.480190, 20.373871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587032, 33.064919, 20.094147>,  <39.258045, 32.781364, 20.390413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587032, 33.064919, 20.094147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.842651, 33.370525, 20.058611>,  <38.996025, 33.553890, 20.037289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.842651, 33.370525, 20.058611>,  <38.587032, 33.064919, 20.094147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842651, 33.370525, 20.058611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245323, 0.092989, -0.964971,
		-0.728992, 0.638462, 0.246856,
		0.639052, 0.764015, -0.088841,
		39.034367, 33.599731, 20.031958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210777, 33.635929, 19.793213>,  <38.587032, 33.064919, 20.094147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210777, 33.635929, 19.793213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.598461, 33.705082, 19.723080>,  <38.831070, 33.746574, 19.681000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.598461, 33.705082, 19.723080>,  <38.210777, 33.635929, 19.793213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598461, 33.705082, 19.723080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196679, 0.115135, -0.973684,
		-0.148148, 0.978190, 0.145593,
		0.969211, 0.172884, -0.175332,
		38.889225, 33.756947, 19.670481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120209, 34.123951, 19.289206>,  <38.210777, 33.635929, 19.793213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120209, 34.123951, 19.289206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.503403, 34.009811, 19.277651>,  <38.733318, 33.941326, 19.270718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.503403, 34.009811, 19.277651>,  <38.120209, 34.123951, 19.289206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503403, 34.009811, 19.277651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019304, 0.164639, -0.986165,
		0.286156, 0.944177, 0.163231,
		0.957988, -0.285348, -0.028886,
		38.790798, 33.924206, 19.268986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485294, 34.609924, 18.867193>,  <38.120209, 34.123951, 19.289206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485294, 34.609924, 18.867193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.723480, 34.289192, 18.847244>,  <38.866390, 34.096752, 18.835276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.723480, 34.289192, 18.847244>,  <38.485294, 34.609924, 18.867193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723480, 34.289192, 18.847244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020035, 0.076878, -0.996839,
		0.803132, 0.592582, 0.061843,
		0.595464, -0.801833, -0.049871,
		38.902119, 34.048641, 18.832283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069412, 34.689804, 18.274046>,  <38.485294, 34.609924, 18.867193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069412, 34.689804, 18.274046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.012871, 34.300529, 18.346638>,  <38.978947, 34.066967, 18.390192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.012871, 34.300529, 18.346638>,  <39.069412, 34.689804, 18.274046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012871, 34.300529, 18.346638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154129, -0.159448, -0.975100,
		0.977887, -0.165807, -0.127456,
		-0.141355, -0.973182, 0.181478,
		38.970463, 34.008575, 18.401081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290863, 34.363316, 17.731035>,  <39.069412, 34.689804, 18.274046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290863, 34.363316, 17.731035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.116703, 34.043293, 17.896124>,  <39.012207, 33.851280, 17.995176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.116703, 34.043293, 17.896124>,  <39.290863, 34.363316, 17.731035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116703, 34.043293, 17.896124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317533, -0.292507, -0.902005,
		0.842376, -0.523788, -0.126685,
		-0.435403, -0.800054, 0.412720,
		38.986084, 33.803276, 18.019939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533600, 33.682110, 17.391720>,  <39.290863, 34.363316, 17.731035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533600, 33.682110, 17.391720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.172737, 33.637997, 17.558550>,  <38.956219, 33.611530, 17.658648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.172737, 33.637997, 17.558550>,  <39.533600, 33.682110, 17.391720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172737, 33.637997, 17.558550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360299, -0.339111, -0.869016,
		0.237270, -0.934260, 0.266197,
		-0.902157, -0.110281, 0.417074,
		38.902092, 33.604912, 17.683672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223557, 33.038658, 17.129393>,  <39.533600, 33.682110, 17.391720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223557, 33.038658, 17.129393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.907085, 33.237816, 17.271460>,  <38.717201, 33.357311, 17.356699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.907085, 33.237816, 17.271460>,  <39.223557, 33.038658, 17.129393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907085, 33.237816, 17.271460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443096, -0.066371, -0.894014,
		-0.421548, -0.864697, 0.273125,
		-0.791178, 0.497891, 0.355166,
		38.669731, 33.387184, 17.378010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740616, 32.688160, 16.732618>,  <39.223557, 33.038658, 17.129393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740616, 32.688160, 16.732618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.586235, 33.030693, 16.869865>,  <38.493607, 33.236214, 16.952213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.586235, 33.030693, 16.869865>,  <38.740616, 32.688160, 16.732618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586235, 33.030693, 16.869865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398587, 0.180637, -0.899165,
		-0.831968, -0.483797, 0.271607,
		-0.385951, 0.856336, 0.343120,
		38.470451, 33.287594, 16.972801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043827, 32.630589, 16.610735>,  <38.740616, 32.688160, 16.732618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043827, 32.630589, 16.610735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.150528, 33.016087, 16.608570>,  <38.214550, 33.247387, 16.607271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.150528, 33.016087, 16.608570>,  <38.043827, 32.630589, 16.610735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150528, 33.016087, 16.608570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392577, 0.103527, -0.913874,
		-0.880185, 0.245906, 0.405962,
		0.266755, 0.963749, -0.005414,
		38.230553, 33.305210, 16.606945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087337, 32.106087, 16.092707>,  <38.043827, 32.630589, 16.610735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087337, 32.106087, 16.092707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.868736, 31.771919, 16.069382>,  <37.737576, 31.571419, 16.055386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.868736, 31.771919, 16.069382>,  <38.087337, 32.106087, 16.092707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868736, 31.771919, 16.069382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163516, 0.038155, 0.985803,
		-0.821336, 0.548283, -0.157457,
		-0.546507, -0.835422, -0.058315,
		37.704784, 31.521294, 16.051888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332390, 32.176849, 16.317110>,  <38.087337, 32.106087, 16.092707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332390, 32.176849, 16.317110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.442657, 31.797380, 16.379114>,  <37.508820, 31.569700, 16.416317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.442657, 31.797380, 16.379114>,  <37.332390, 32.176849, 16.317110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442657, 31.797380, 16.379114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345191, 0.052806, 0.937046,
		-0.897134, -0.311824, -0.312916,
		0.275669, -0.948671, 0.155012,
		37.525360, 31.512779, 16.425617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937393, 31.923130, 16.877773>,  <37.332390, 32.176849, 16.317110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937393, 31.923130, 16.877773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.201149, 31.624229, 16.844730>,  <37.359402, 31.444889, 16.824905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.201149, 31.624229, 16.844730>,  <36.937393, 31.923130, 16.877773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201149, 31.624229, 16.844730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037491, -0.142423, 0.989096,
		-0.750866, -0.649102, -0.121927,
		0.659390, -0.747250, -0.082606,
		37.398968, 31.400055, 16.819948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645077, 31.421425, 17.231482>,  <36.937393, 31.923130, 16.877773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645077, 31.421425, 17.231482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.033287, 31.325029, 17.232368>,  <37.266212, 31.267193, 17.232901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.033287, 31.325029, 17.232368>,  <36.645077, 31.421425, 17.231482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033287, 31.325029, 17.232368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063584, -0.247168, 0.966884,
		-0.232461, -0.938527, -0.255206,
		0.970525, -0.240990, 0.002218,
		37.324444, 31.252733, 17.233034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643951, 30.779465, 17.505289>,  <36.645077, 31.421425, 17.231482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643951, 30.779465, 17.505289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012867, 30.920261, 17.569138>,  <37.234219, 31.004740, 17.607447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012867, 30.920261, 17.569138>,  <36.643951, 30.779465, 17.505289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012867, 30.920261, 17.569138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044095, -0.314465, 0.948244,
		0.383971, -0.881596, -0.274507,
		0.922292, 0.351994, 0.159619,
		37.289555, 31.025860, 17.617023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949158, 30.246559, 18.018457>,  <36.643951, 30.779465, 17.505289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949158, 30.246559, 18.018457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.175739, 30.574507, 18.051775>,  <37.311687, 30.771276, 18.071766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.175739, 30.574507, 18.051775>,  <36.949158, 30.246559, 18.018457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175739, 30.574507, 18.051775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221451, -0.248798, 0.942899,
		0.793780, -0.515665, -0.322494,
		0.566456, 0.819871, 0.083296,
		37.345676, 30.820469, 18.076763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513081, 29.996801, 18.315907>,  <36.949158, 30.246559, 18.018457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513081, 29.996801, 18.315907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543545, 30.389736, 18.384270>,  <37.561825, 30.625498, 18.425287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543545, 30.389736, 18.384270>,  <37.513081, 29.996801, 18.315907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543545, 30.389736, 18.384270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222348, -0.183823, 0.957481,
		0.971988, -0.034922, -0.232422,
		0.076162, 0.982339, 0.170909,
		37.566395, 30.684439, 18.435543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973186, 29.996397, 18.881430>,  <37.513081, 29.996801, 18.315907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973186, 29.996397, 18.881430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.784252, 30.347874, 18.909142>,  <37.670891, 30.558760, 18.925770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.784252, 30.347874, 18.909142>,  <37.973186, 29.996397, 18.881430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784252, 30.347874, 18.909142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121668, -0.012852, 0.992488,
		0.872981, 0.477216, -0.100838,
		-0.472335, 0.878692, 0.069281,
		37.642551, 30.611481, 18.929926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418343, 30.506092, 19.218700>,  <37.973186, 29.996397, 18.881430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418343, 30.506092, 19.218700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043999, 30.636658, 19.271791>,  <37.819393, 30.714996, 19.303646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043999, 30.636658, 19.271791>,  <38.418343, 30.506092, 19.218700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043999, 30.636658, 19.271791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165113, 0.073466, 0.983535,
		0.311286, 0.942368, -0.122649,
		-0.935863, 0.326412, 0.132728,
		37.763241, 30.734581, 19.311609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602230, 31.078619, 19.586334>,  <38.418343, 30.506092, 19.218700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602230, 31.078619, 19.586334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.205544, 31.071287, 19.637178>,  <37.967529, 31.066889, 19.667685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.205544, 31.071287, 19.637178>,  <38.602230, 31.078619, 19.586334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205544, 31.071287, 19.637178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112240, 0.357284, 0.927227,
		-0.062409, 0.933816, -0.352268,
		-0.991719, -0.018329, 0.127109,
		37.908028, 31.065788, 19.675312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397247, 31.754246, 19.798059>,  <38.602230, 31.078619, 19.586334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397247, 31.754246, 19.798059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.117355, 31.495993, 19.920395>,  <37.949421, 31.341042, 19.993795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.117355, 31.495993, 19.920395>,  <38.397247, 31.754246, 19.798059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117355, 31.495993, 19.920395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131176, 0.304709, 0.943369,
		-0.702260, 0.700223, -0.128523,
		-0.699731, -0.645631, 0.305838,
		37.907436, 31.302303, 20.012146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022907, 32.124962, 20.301497>,  <38.397247, 31.754246, 19.798059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022907, 32.124962, 20.301497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977051, 31.732307, 20.362476>,  <37.949535, 31.496714, 20.399065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977051, 31.732307, 20.362476>,  <38.022907, 32.124962, 20.301497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977051, 31.732307, 20.362476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235474, 0.122235, 0.964163,
		-0.965096, 0.146430, 0.217138,
		-0.114641, -0.981640, 0.152449,
		37.942657, 31.437815, 20.408211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645473, 32.132580, 20.906569>,  <38.022907, 32.124962, 20.301497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645473, 32.132580, 20.906569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.760544, 31.752453, 20.859018>,  <37.829586, 31.524376, 20.830488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.760544, 31.752453, 20.859018>,  <37.645473, 32.132580, 20.906569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760544, 31.752453, 20.859018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050777, -0.108814, 0.992765,
		-0.956381, -0.291631, 0.016952,
		0.287676, -0.950322, -0.118876,
		37.846848, 31.467356, 20.823355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285282, 31.703648, 21.449347>,  <37.645473, 32.132580, 20.906569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285282, 31.703648, 21.449347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.610844, 31.500219, 21.336975>,  <37.806179, 31.378162, 21.269552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.610844, 31.500219, 21.336975>,  <37.285282, 31.703648, 21.449347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610844, 31.500219, 21.336975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321120, -0.009197, 0.946994,
		-0.484197, -0.860971, 0.155827,
		0.813901, -0.508571, -0.280928,
		37.855015, 31.347649, 21.252697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410400, 31.260967, 21.935627>,  <37.285282, 31.703648, 21.449347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410400, 31.260967, 21.935627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.766186, 31.279310, 21.753744>,  <37.979656, 31.290316, 21.644615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.766186, 31.279310, 21.753744>,  <37.410400, 31.260967, 21.935627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766186, 31.279310, 21.753744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456817, -0.060146, 0.887525,
		0.013354, -0.997135, -0.074447,
		0.889461, 0.045860, -0.454705,
		38.033024, 31.293068, 21.617332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832008, 31.039040, 22.485973>,  <37.410400, 31.260967, 21.935627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832008, 31.039040, 22.485973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.102142, 31.163498, 22.218508>,  <38.264221, 31.238173, 22.058027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.102142, 31.163498, 22.218508>,  <37.832008, 31.039040, 22.485973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102142, 31.163498, 22.218508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697250, 0.026113, 0.716353,
		0.240351, -0.950003, -0.199311,
		0.675333, 0.311146, -0.668666,
		38.304741, 31.256842, 22.017908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343552, 30.537743, 22.468044>,  <37.832008, 31.039040, 22.485973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343552, 30.537743, 22.468044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.483646, 30.893822, 22.351507>,  <38.567703, 31.107470, 22.281586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.483646, 30.893822, 22.351507>,  <38.343552, 30.537743, 22.468044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483646, 30.893822, 22.351507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584544, 0.035305, 0.810594,
		0.731875, -0.454203, -0.507995,
		0.350239, 0.890198, -0.291341,
		38.588718, 31.160881, 22.264105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044487, 30.560932, 22.573904>,  <38.343552, 30.537743, 22.468044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044487, 30.560932, 22.573904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.947636, 30.948980, 22.567728>,  <38.889523, 31.181808, 22.564022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.947636, 30.948980, 22.567728>,  <39.044487, 30.560932, 22.573904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947636, 30.948980, 22.567728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373588, 0.107905, 0.921297,
		0.895435, 0.217308, -0.388552,
		-0.242132, 0.970121, -0.015438,
		38.874996, 31.240017, 22.563097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742798, 30.942665, 22.763254>,  <39.044487, 30.560932, 22.573904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742798, 30.942665, 22.763254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.418312, 31.170650, 22.815506>,  <39.223621, 31.307442, 22.846857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.418312, 31.170650, 22.815506>,  <39.742798, 30.942665, 22.763254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418312, 31.170650, 22.815506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316731, 0.240511, 0.917516,
		0.491534, 0.785681, -0.375632,
		-0.811219, 0.569965, 0.130630,
		39.174946, 31.341640, 22.854694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891056, 31.487598, 23.240482>,  <39.742798, 30.942665, 22.763254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891056, 31.487598, 23.240482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.494568, 31.510193, 23.288315>,  <39.256676, 31.523748, 23.317015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.494568, 31.510193, 23.288315>,  <39.891056, 31.487598, 23.240482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494568, 31.510193, 23.288315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126061, 0.130122, 0.983452,
		0.039990, 0.989888, -0.136099,
		-0.991216, 0.056485, 0.119583,
		39.197205, 31.527138, 23.324190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840637, 31.963335, 23.728682>,  <39.891056, 31.487598, 23.240482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840637, 31.963335, 23.728682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482151, 31.785995, 23.722544>,  <39.267059, 31.679592, 23.718861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482151, 31.785995, 23.722544>,  <39.840637, 31.963335, 23.728682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482151, 31.785995, 23.722544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085554, 0.138796, 0.986619,
		-0.435287, 0.885538, -0.162321,
		-0.896218, -0.443349, -0.015345,
		39.213287, 31.652990, 23.717939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.844185, 35.762592, 27.731153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.492336, 35.572392, 27.726000>,  <39.281227, 35.458271, 27.722908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.492336, 35.572392, 27.726000>,  <39.844185, 35.762592, 27.731153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492336, 35.572392, 27.726000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202717, 0.350220, 0.914468,
		-0.430318, 0.806997, -0.404453,
		-0.879621, -0.475502, -0.012887,
		39.228451, 35.429741, 27.722134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415939, 36.289574, 27.962898>,  <39.844185, 35.762592, 27.731153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415939, 36.289574, 27.962898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.237633, 35.938965, 28.035572>,  <39.130650, 35.728600, 28.079176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.237633, 35.938965, 28.035572>,  <39.415939, 36.289574, 27.962898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237633, 35.938965, 28.035572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171408, 0.282788, 0.943743,
		-0.878586, 0.389546, -0.276299,
		-0.445765, -0.876519, 0.181682,
		39.103905, 35.676010, 28.090076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676918, 36.366920, 28.265253>,  <39.415939, 36.289574, 27.962898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676918, 36.366920, 28.265253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.838615, 36.027916, 28.402838>,  <38.935635, 35.824512, 28.485388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.838615, 36.027916, 28.402838>,  <38.676918, 36.366920, 28.265253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838615, 36.027916, 28.402838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356736, 0.200182, 0.912506,
		-0.842215, -0.491578, -0.221416,
		0.404244, -0.847513, 0.343960,
		38.959888, 35.773663, 28.506025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258347, 36.149178, 28.839798>,  <38.676918, 36.366920, 28.265253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258347, 36.149178, 28.839798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.573589, 35.908627, 28.892311>,  <38.762733, 35.764297, 28.923819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.573589, 35.908627, 28.892311>,  <38.258347, 36.149178, 28.839798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573589, 35.908627, 28.892311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101538, 0.083347, 0.991334,
		-0.607109, -0.794605, 0.004623,
		0.788104, -0.601379, 0.131283,
		38.810020, 35.728214, 28.931696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031109, 35.934620, 29.412106>,  <38.258347, 36.149178, 28.839798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031109, 35.934620, 29.412106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.415550, 35.824310, 29.406082>,  <38.646214, 35.758125, 29.402468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.415550, 35.824310, 29.406082>,  <38.031109, 35.934620, 29.412106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415550, 35.824310, 29.406082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024056, 0.029279, 0.999282,
		-0.275141, -0.960775, 0.034774,
		0.961103, -0.275779, -0.015057,
		38.703880, 35.741577, 29.401566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157097, 35.329273, 29.995121>,  <38.031109, 35.934620, 29.412106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157097, 35.329273, 29.995121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.495419, 35.528198, 29.917868>,  <38.698410, 35.647552, 29.871515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.495419, 35.528198, 29.917868>,  <38.157097, 35.329273, 29.995121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495419, 35.528198, 29.917868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029091, 0.318486, 0.947481,
		0.532704, -0.807000, 0.254908,
		0.845801, 0.497311, -0.193135,
		38.749161, 35.677391, 29.859926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453133, 35.254498, 30.496546>,  <38.157097, 35.329273, 29.995121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453133, 35.254498, 30.496546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.711464, 35.530727, 30.366308>,  <38.866463, 35.696465, 30.288166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.711464, 35.530727, 30.366308>,  <38.453133, 35.254498, 30.496546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711464, 35.530727, 30.366308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245581, 0.215896, 0.945029,
		0.722911, -0.690282, -0.030162,
		0.645824, 0.690579, -0.325594,
		38.905212, 35.737900, 30.268631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117924, 35.061176, 30.755634>,  <38.453133, 35.254498, 30.496546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117924, 35.061176, 30.755634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.142788, 35.453629, 30.682409>,  <39.157707, 35.689102, 30.638474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.142788, 35.453629, 30.682409>,  <39.117924, 35.061176, 30.755634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142788, 35.453629, 30.682409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295175, 0.157143, 0.942432,
		0.953419, -0.112615, -0.279839,
		0.062158, 0.981134, -0.183064,
		39.161434, 35.747971, 30.627491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686825, 35.330185, 31.110025>,  <39.117924, 35.061176, 30.755634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686825, 35.330185, 31.110025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.473785, 35.660725, 31.036823>,  <39.345963, 35.859047, 30.992903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.473785, 35.660725, 31.036823>,  <39.686825, 35.330185, 31.110025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473785, 35.660725, 31.036823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132162, 0.294770, 0.946384,
		0.835985, 0.479858, -0.266206,
		-0.532600, 0.826346, -0.183004,
		39.314007, 35.908627, 30.981922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089138, 35.745972, 31.473127>,  <39.686825, 35.330185, 31.110025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089138, 35.745972, 31.473127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.725132, 35.909618, 31.446339>,  <39.506729, 36.007809, 31.430265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.725132, 35.909618, 31.446339>,  <40.089138, 35.745972, 31.473127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725132, 35.909618, 31.446339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013477, 0.132265, 0.991123,
		0.414346, 0.902844, -0.114851,
		-0.910020, 0.409120, -0.066971,
		39.452126, 36.032352, 31.426247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086956, 36.261772, 32.099094>,  <40.089138, 35.745972, 31.473127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086956, 36.261772, 32.099094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.712872, 36.176720, 31.985836>,  <39.488422, 36.125687, 31.917881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.712872, 36.176720, 31.985836>,  <40.086956, 36.261772, 32.099094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712872, 36.176720, 31.985836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272383, -0.078951, 0.958944,
		-0.226258, 0.973937, 0.015917,
		-0.935208, -0.212634, -0.283148,
		39.432308, 36.112930, 31.900892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781536, 36.668671, 32.464516>,  <40.086956, 36.261772, 32.099094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781536, 36.668671, 32.464516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.500072, 36.399181, 32.374218>,  <39.331192, 36.237488, 32.320042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.500072, 36.399181, 32.374218>,  <39.781536, 36.668671, 32.464516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500072, 36.399181, 32.374218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368328, 0.074180, 0.926732,
		-0.607612, 0.735254, -0.300348,
		-0.703663, -0.673720, -0.225742,
		39.288975, 36.197063, 32.306496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070702, 37.025131, 32.645309>,  <39.781536, 36.668671, 32.464516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070702, 37.025131, 32.645309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.019421, 36.628502, 32.652760>,  <38.988651, 36.390526, 32.657230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.019421, 36.628502, 32.652760>,  <39.070702, 37.025131, 32.645309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019421, 36.628502, 32.652760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358285, 0.063817, 0.931429,
		-0.924768, 0.112740, -0.363447,
		-0.128203, -0.991573, 0.018623,
		38.980961, 36.331032, 32.658348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379166, 36.893051, 32.980682>,  <39.070702, 37.025131, 32.645309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379166, 36.893051, 32.980682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.632076, 36.585258, 33.016747>,  <38.783821, 36.400585, 33.038383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.632076, 36.585258, 33.016747>,  <38.379166, 36.893051, 32.980682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632076, 36.585258, 33.016747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086107, 0.045860, 0.995230,
		-0.769943, -0.637024, -0.037261,
		0.632277, -0.769478, 0.090162,
		38.821758, 36.354416, 33.043797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871063, 37.478161, 32.943035>,  <38.379166, 36.893051, 32.980682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871063, 37.478161, 32.943035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.475540, 37.493305, 32.885307>,  <37.238228, 37.502392, 32.850670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.475540, 37.493305, 32.885307>,  <37.871063, 37.478161, 32.943035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475540, 37.493305, 32.885307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133730, -0.204082, -0.969777,
		-0.066170, -0.978222, 0.196734,
		-0.988806, 0.037861, -0.144322,
		37.178898, 37.504662, 32.842010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701111, 36.890514, 32.543350>,  <37.871063, 37.478161, 32.943035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701111, 36.890514, 32.543350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.372868, 37.111732, 32.485741>,  <37.175922, 37.244465, 32.451176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.372868, 37.111732, 32.485741>,  <37.701111, 36.890514, 32.543350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372868, 37.111732, 32.485741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004565, -0.245664, -0.969344,
		-0.571472, -0.796110, 0.199070,
		-0.820609, 0.553044, -0.144024,
		37.126686, 37.277645, 32.442532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391613, 36.480049, 32.131947>,  <37.701111, 36.890514, 32.543350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391613, 36.480049, 32.131947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.204491, 36.832897, 32.109947>,  <37.092216, 37.044605, 32.096748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.204491, 36.832897, 32.109947>,  <37.391613, 36.480049, 32.131947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204491, 36.832897, 32.109947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322858, -0.228484, -0.918454,
		-0.822754, -0.411897, 0.391684,
		-0.467802, 0.882120, -0.055002,
		37.064152, 37.097534, 32.093445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698460, 36.332348, 31.990620>,  <37.391613, 36.480049, 32.131947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698460, 36.332348, 31.990620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.770863, 36.706730, 31.869808>,  <36.814304, 36.931358, 31.797321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.770863, 36.706730, 31.869808>,  <36.698460, 36.332348, 31.990620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770863, 36.706730, 31.869808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478641, -0.184444, -0.858419,
		-0.859150, 0.299943, 0.414602,
		0.181006, 0.935956, -0.302030,
		36.825165, 36.987518, 31.779200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182594, 36.542366, 31.479956>,  <36.698460, 36.332348, 31.990620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182594, 36.542366, 31.479956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.470768, 36.805603, 31.392412>,  <36.643673, 36.963543, 31.339886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.470768, 36.805603, 31.392412>,  <36.182594, 36.542366, 31.479956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470768, 36.805603, 31.392412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331532, 0.049611, -0.942139,
		-0.609153, 0.751304, 0.253919,
		0.720429, 0.658089, -0.218861,
		36.686897, 37.003029, 31.326754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827908, 37.096760, 31.064968>,  <36.182594, 36.542366, 31.479956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827908, 37.096760, 31.064968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.218174, 37.150574, 30.995726>,  <36.452335, 37.182861, 30.954180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.218174, 37.150574, 30.995726>,  <35.827908, 37.096760, 31.064968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218174, 37.150574, 30.995726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187345, 0.101491, -0.977037,
		-0.113880, 0.985697, 0.124227,
		0.975671, 0.134538, -0.173107,
		36.510876, 37.190937, 30.943794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872025, 37.593655, 30.513254>,  <35.827908, 37.096760, 31.064968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872025, 37.593655, 30.513254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.238831, 37.434113, 30.512823>,  <36.458916, 37.338387, 30.512566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.238831, 37.434113, 30.512823>,  <35.872025, 37.593655, 30.513254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238831, 37.434113, 30.512823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049443, -0.110996, -0.992590,
		0.395779, 0.910272, -0.121505,
		0.917014, -0.398854, -0.001077,
		36.513935, 37.314457, 30.512501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233910, 37.914242, 29.963558>,  <35.872025, 37.593655, 30.513254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233910, 37.914242, 29.963558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.394501, 37.555710, 30.038834>,  <36.490856, 37.340591, 30.084000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.394501, 37.555710, 30.038834>,  <36.233910, 37.914242, 29.963558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394501, 37.555710, 30.038834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078941, -0.238579, -0.967909,
		0.912461, 0.373736, -0.166541,
		0.401476, -0.896326, 0.188191,
		36.514942, 37.286812, 30.095291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621880, 37.909138, 29.356512>,  <36.233910, 37.914242, 29.963558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621880, 37.909138, 29.356512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.627354, 37.534847, 29.497501>,  <36.630638, 37.310272, 29.582094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.627354, 37.534847, 29.497501>,  <36.621880, 37.909138, 29.356512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627354, 37.534847, 29.497501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065849, -0.352582, -0.933461,
		0.997736, -0.010432, -0.066443,
		0.013688, -0.935723, 0.352471,
		36.631462, 37.254131, 29.603243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124569, 37.449593, 28.984228>,  <36.621880, 37.909138, 29.356512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124569, 37.449593, 28.984228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.864071, 37.194042, 29.148041>,  <36.707771, 37.040710, 29.246328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.864071, 37.194042, 29.148041>,  <37.124569, 37.449593, 28.984228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864071, 37.194042, 29.148041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136239, -0.432462, -0.891300,
		0.746535, -0.636252, 0.194600,
		-0.651248, -0.638875, 0.409530,
		36.668697, 37.002380, 29.270899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349964, 36.799782, 28.644371>,  <37.124569, 37.449593, 28.984228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349964, 36.799782, 28.644371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.983006, 36.757366, 28.797804>,  <36.762829, 36.731918, 28.889864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.983006, 36.757366, 28.797804>,  <37.349964, 36.799782, 28.644371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983006, 36.757366, 28.797804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268610, -0.546202, -0.793418,
		0.293643, -0.830915, 0.472604,
		-0.917400, -0.106036, 0.383580,
		36.707787, 36.725555, 28.912878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141644, 36.048893, 28.673794>,  <37.349964, 36.799782, 28.644371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141644, 36.048893, 28.673794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.810699, 36.273563, 28.672798>,  <36.612133, 36.408363, 28.672201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.810699, 36.273563, 28.672798>,  <37.141644, 36.048893, 28.673794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810699, 36.273563, 28.672798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341782, -0.506958, -0.791315,
		-0.445722, -0.653848, 0.611404,
		-0.827356, 0.561673, -0.002489,
		36.562492, 36.442066, 28.672052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541683, 35.559990, 28.658594>,  <37.141644, 36.048893, 28.673794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541683, 35.559990, 28.658594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.406460, 35.914478, 28.531893>,  <36.325325, 36.127171, 28.455872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.406460, 35.914478, 28.531893>,  <36.541683, 35.559990, 28.658594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406460, 35.914478, 28.531893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273297, -0.414509, -0.868039,
		-0.900569, -0.206881, 0.382329,
		-0.338060, 0.886218, -0.316754,
		36.305042, 36.180344, 28.436867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025864, 35.393368, 28.358282>,  <36.541683, 35.559990, 28.658594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025864, 35.393368, 28.358282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.069244, 35.768433, 28.226204>,  <36.095272, 35.993473, 28.146957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.069244, 35.768433, 28.226204>,  <36.025864, 35.393368, 28.358282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069244, 35.768433, 28.226204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357717, -0.273095, -0.893005,
		-0.927511, 0.214964, 0.305800,
		0.108452, 0.937662, -0.330194,
		36.101780, 36.049732, 28.127146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347370, 35.656807, 28.085911>,  <36.025864, 35.393368, 28.358282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347370, 35.656807, 28.085911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.124939, 35.326122, 28.120157>,  <34.991482, 35.127712, 28.140705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.124939, 35.326122, 28.120157>,  <35.347370, 35.656807, 28.085911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124939, 35.326122, 28.120157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112067, 0.027490, 0.993320,
		-0.823543, 0.561954, 0.077361,
		-0.556074, -0.826712, 0.085616,
		34.958118, 35.078110, 28.145842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977066, 35.854549, 28.511082>,  <35.347370, 35.656807, 28.085911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977066, 35.854549, 28.511082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.969215, 35.454681, 28.517717>,  <34.964504, 35.214760, 28.521700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.969215, 35.454681, 28.517717>,  <34.977066, 35.854549, 28.511082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969215, 35.454681, 28.517717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111978, 0.014291, 0.993608,
		-0.993517, 0.021363, 0.111660,
		-0.019630, -0.999670, 0.016590,
		34.963326, 35.154781, 28.522694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588417, 35.735619, 29.116482>,  <34.977066, 35.854549, 28.511082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588417, 35.735619, 29.116482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.776947, 35.391415, 29.039141>,  <34.890064, 35.184895, 28.992737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.776947, 35.391415, 29.039141>,  <34.588417, 35.735619, 29.116482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776947, 35.391415, 29.039141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235398, -0.088540, 0.967858,
		-0.849967, -0.501686, 0.160831,
		0.471321, -0.860506, -0.193352,
		34.918343, 35.133263, 28.981134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402531, 35.310326, 29.598816>,  <34.588417, 35.735619, 29.116482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402531, 35.310326, 29.598816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.735687, 35.129601, 29.470963>,  <34.935581, 35.021168, 29.394251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.735687, 35.129601, 29.470963>,  <34.402531, 35.310326, 29.598816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735687, 35.129601, 29.470963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233475, -0.236792, 0.943090,
		-0.501785, -0.860114, -0.091735,
		0.832887, -0.451811, -0.319634,
		34.985554, 34.994057, 29.375072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306145, 34.631340, 29.847893>,  <34.402531, 35.310326, 29.598816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306145, 34.631340, 29.847893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.696785, 34.699318, 29.795162>,  <34.931168, 34.740105, 29.763523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.696785, 34.699318, 29.795162>,  <34.306145, 34.631340, 29.847893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696785, 34.699318, 29.795162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160441, -0.167414, 0.972744,
		0.143244, -0.971129, -0.190762,
		0.976596, 0.169946, -0.131828,
		34.989765, 34.750301, 29.755613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591217, 34.070843, 30.103918>,  <34.306145, 34.631340, 29.847893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591217, 34.070843, 30.103918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.917801, 34.301613, 30.094490>,  <35.113750, 34.440075, 30.088833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.917801, 34.301613, 30.094490>,  <34.591217, 34.070843, 30.103918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917801, 34.301613, 30.094490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156527, -0.181855, 0.970787,
		0.555788, -0.796294, -0.238781,
		0.816455, 0.576927, -0.023569,
		35.162739, 34.474689, 30.087420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083817, 33.643539, 30.317327>,  <34.591217, 34.070843, 30.103918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083817, 33.643539, 30.317327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.229202, 34.008060, 30.394712>,  <35.316433, 34.226772, 30.441143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.229202, 34.008060, 30.394712>,  <35.083817, 33.643539, 30.317327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229202, 34.008060, 30.394712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196304, -0.277918, 0.940333,
		0.910692, -0.303799, -0.279905,
		0.363463, 0.911300, 0.193460,
		35.338242, 34.281452, 30.452751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542454, 33.472725, 30.811527>,  <35.083817, 33.643539, 30.317327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542454, 33.472725, 30.811527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.505863, 33.871002, 30.817488>,  <35.483910, 34.109970, 30.821064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.505863, 33.871002, 30.817488>,  <35.542454, 33.472725, 30.811527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505863, 33.871002, 30.817488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339490, 0.017114, 0.940454,
		0.936151, 0.091087, -0.339595,
		-0.091475, 0.995696, 0.014902,
		35.478420, 34.169712, 30.821959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183994, 33.772160, 30.981966>,  <35.542454, 33.472725, 30.811527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183994, 33.772160, 30.981966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.917362, 34.046967, 31.097681>,  <35.757385, 34.211849, 31.167110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.917362, 34.046967, 31.097681>,  <36.183994, 33.772160, 30.981966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917362, 34.046967, 31.097681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396219, -0.002180, 0.918153,
		0.631415, 0.726641, -0.270755,
		-0.666577, 0.687014, 0.289286,
		35.717388, 34.253071, 31.184467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544704, 34.182133, 31.475487>,  <36.183994, 33.772160, 30.981966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544704, 34.182133, 31.475487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.163486, 34.263065, 31.565609>,  <35.934753, 34.311626, 31.619682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.163486, 34.263065, 31.565609>,  <36.544704, 34.182133, 31.475487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163486, 34.263065, 31.565609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228106, -0.009686, 0.973588,
		0.199169, 0.979269, -0.036922,
		-0.953047, 0.202331, 0.225307,
		35.877571, 34.323765, 31.633202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557495, 34.745449, 31.985979>,  <36.544704, 34.182133, 31.475487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557495, 34.745449, 31.985979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.198025, 34.580582, 32.045967>,  <35.982342, 34.481663, 32.081959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.198025, 34.580582, 32.045967>,  <36.557495, 34.745449, 31.985979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198025, 34.580582, 32.045967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165360, -0.001700, 0.986232,
		-0.406238, 0.911107, 0.069684,
		-0.898681, -0.412168, 0.149970,
		35.928421, 34.456932, 32.090958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279217, 35.157364, 32.494396>,  <36.557495, 34.745449, 31.985979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279217, 35.157364, 32.494396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.064037, 34.822521, 32.534130>,  <35.934929, 34.621616, 32.557972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.064037, 34.822521, 32.534130>,  <36.279217, 35.157364, 32.494396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064037, 34.822521, 32.534130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103520, 0.051348, 0.993301,
		-0.836596, 0.544630, 0.059035,
		-0.537950, -0.837103, 0.099338,
		35.902653, 34.571392, 32.563931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.678799, 34.882481, 24.692312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613476, 34.495262, 24.768436>,  <33.574280, 34.262932, 24.814110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613476, 34.495262, 24.768436>,  <33.678799, 34.882481, 24.692312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613476, 34.495262, 24.768436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276743, 0.140205, 0.950661,
		-0.946965, 0.207918, 0.245004,
		-0.163309, -0.968046, 0.190309,
		33.564484, 34.204849, 24.825529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158176, 34.869808, 25.149841>,  <33.678799, 34.882481, 24.692312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158176, 34.869808, 25.149841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398876, 34.552383, 25.185970>,  <33.543297, 34.361927, 25.207647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398876, 34.552383, 25.185970>,  <33.158176, 34.869808, 25.149841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398876, 34.552383, 25.185970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060902, 0.158351, 0.985503,
		-0.796361, -0.587523, 0.143617,
		0.601748, -0.793562, 0.090323,
		33.579399, 34.314316, 25.213068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970051, 34.659077, 25.808313>,  <33.158176, 34.869808, 25.149841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970051, 34.659077, 25.808313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322433, 34.483849, 25.736750>,  <33.533863, 34.378712, 25.693811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322433, 34.483849, 25.736750>,  <32.970051, 34.659077, 25.808313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322433, 34.483849, 25.736750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244078, 0.096770, 0.964915,
		-0.405387, -0.893717, 0.192173,
		0.880958, -0.438070, -0.178908,
		33.586720, 34.352428, 25.683077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132389, 34.080677, 26.310171>,  <32.970051, 34.659077, 25.808313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132389, 34.080677, 26.310171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485802, 34.229504, 26.196365>,  <33.697849, 34.318798, 26.128082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485802, 34.229504, 26.196365>,  <33.132389, 34.080677, 26.310171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485802, 34.229504, 26.196365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250643, 0.137578, 0.958254,
		0.395674, -0.917955, 0.028298,
		0.883527, 0.372063, -0.284515,
		33.750858, 34.341122, 26.111012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719799, 33.715038, 26.701450>,  <33.132389, 34.080677, 26.310171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719799, 33.715038, 26.701450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896053, 34.041958, 26.552927>,  <34.001804, 34.238110, 26.463812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896053, 34.041958, 26.552927>,  <33.719799, 33.715038, 26.701450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896053, 34.041958, 26.552927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552378, 0.079194, 0.829823,
		0.707616, -0.570751, -0.416560,
		0.440634, 0.817295, -0.371310,
		34.028244, 34.287148, 26.441534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401718, 33.746914, 26.891623>,  <33.719799, 33.715038, 26.701450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401718, 33.746914, 26.891623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375843, 34.129440, 26.777584>,  <34.360317, 34.358955, 26.709162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375843, 34.129440, 26.777584>,  <34.401718, 33.746914, 26.891623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375843, 34.129440, 26.777584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330923, 0.290084, 0.897965,
		0.941438, -0.036258, -0.335231,
		-0.064687, 0.956314, -0.285095,
		34.356438, 34.416336, 26.692055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099651, 34.145962, 26.943689>,  <34.401718, 33.746914, 26.891623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099651, 34.145962, 26.943689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797897, 34.406841, 26.973446>,  <34.616844, 34.563370, 26.991299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797897, 34.406841, 26.973446>,  <35.099651, 34.145962, 26.943689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797897, 34.406841, 26.973446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429975, 0.405328, 0.806741,
		0.496004, 0.640582, -0.586204,
		-0.754388, 0.652200, 0.074390,
		34.571579, 34.602501, 26.995764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389614, 34.825871, 27.020460>,  <35.099651, 34.145962, 26.943689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389614, 34.825871, 27.020460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026772, 34.805431, 27.187578>,  <34.809067, 34.793167, 27.287849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026772, 34.805431, 27.187578>,  <35.389614, 34.825871, 27.020460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026772, 34.805431, 27.187578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372706, 0.363719, 0.853697,
		-0.195585, 0.930106, -0.310885,
		-0.907104, -0.051102, 0.417794,
		34.754639, 34.790100, 27.312916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504154, 35.206760, 27.564512>,  <35.389614, 34.825871, 27.020460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504154, 35.206760, 27.564512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138638, 35.077053, 27.662352>,  <34.919327, 34.999229, 27.721056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138638, 35.077053, 27.662352>,  <35.504154, 35.206760, 27.564512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138638, 35.077053, 27.662352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130534, 0.335807, 0.932842,
		-0.384629, 0.884355, -0.264530,
		-0.913795, -0.324268, 0.244600,
		34.864498, 34.979774, 27.735731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160889, 35.812244, 27.281786>,  <35.504154, 35.206760, 27.564512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160889, 35.812244, 27.281786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493679, 36.014767, 27.372532>,  <35.693352, 36.136280, 27.426979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493679, 36.014767, 27.372532>,  <35.160889, 35.812244, 27.281786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493679, 36.014767, 27.372532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103768, 0.259682, -0.960103,
		-0.545021, 0.822324, 0.163511,
		0.831976, 0.506309, 0.226863,
		35.743271, 36.166660, 27.440592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050591, 36.439857, 27.023851>,  <35.160889, 35.812244, 27.281786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050591, 36.439857, 27.023851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447273, 36.393269, 27.045572>,  <35.685284, 36.365314, 27.058605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447273, 36.393269, 27.045572>,  <35.050591, 36.439857, 27.023851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447273, 36.393269, 27.045572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071904, 0.152672, -0.985658,
		0.106509, 0.981390, 0.159781,
		0.991708, -0.116470, 0.054304,
		35.744785, 36.358326, 27.061863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290478, 36.832230, 26.572529>,  <35.050591, 36.439857, 27.023851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290478, 36.832230, 26.572529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626488, 36.620861, 26.621727>,  <35.828094, 36.494038, 26.651245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626488, 36.620861, 26.621727>,  <35.290478, 36.832230, 26.572529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626488, 36.620861, 26.621727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201403, 0.093211, -0.975063,
		0.503782, 0.843849, 0.184725,
		0.840024, -0.528424, 0.122996,
		35.878494, 36.462334, 26.658627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850842, 37.201954, 26.283285>,  <35.290478, 36.832230, 26.572529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850842, 37.201954, 26.283285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955311, 36.815838, 26.283453>,  <36.017994, 36.584167, 26.283554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955311, 36.815838, 26.283453>,  <35.850842, 37.201954, 26.283285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955311, 36.815838, 26.283453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238156, 0.064018, -0.969115,
		0.935451, 0.253209, 0.246610,
		0.261176, -0.965291, 0.000417,
		36.033665, 36.526249, 26.283579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414574, 37.231815, 25.905561>,  <35.850842, 37.201954, 26.283285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414574, 37.231815, 25.905561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311893, 36.846378, 25.875618>,  <36.250286, 36.615116, 25.857653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311893, 36.846378, 25.875618>,  <36.414574, 37.231815, 25.905561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311893, 36.846378, 25.875618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303010, -0.006690, -0.952964,
		0.917764, -0.267308, 0.293694,
		-0.256700, -0.963588, -0.074857,
		36.234882, 36.557301, 25.853161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050762, 36.841263, 25.641712>,  <36.414574, 37.231815, 25.905561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050762, 36.841263, 25.641712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720085, 36.625340, 25.578241>,  <36.521679, 36.495785, 25.540159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720085, 36.625340, 25.578241>,  <37.050762, 36.841263, 25.641712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720085, 36.625340, 25.578241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256594, -0.110728, -0.960156,
		0.500733, -0.834472, 0.230051,
		-0.826696, -0.539811, -0.158676,
		36.472076, 36.463398, 25.530638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264427, 36.382229, 25.032164>,  <37.050762, 36.841263, 25.641712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264427, 36.382229, 25.032164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869778, 36.318241, 25.044687>,  <36.632988, 36.279850, 25.052200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869778, 36.318241, 25.044687>,  <37.264427, 36.382229, 25.032164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869778, 36.318241, 25.044687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021336, -0.063679, -0.997742,
		0.161602, -0.985066, 0.059414,
		-0.986626, -0.159969, 0.031308,
		36.573792, 36.270252, 25.054079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118057, 35.752190, 24.759975>,  <37.264427, 36.382229, 25.032164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118057, 35.752190, 24.759975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761841, 35.928524, 24.715096>,  <36.548111, 36.034325, 24.688168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761841, 35.928524, 24.715096>,  <37.118057, 35.752190, 24.759975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761841, 35.928524, 24.715096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014147, -0.219689, -0.975467,
		-0.454675, -0.870285, 0.189407,
		-0.890545, 0.440841, -0.112199,
		36.494678, 36.060776, 24.681437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774811, 35.326252, 24.367416>,  <37.118057, 35.752190, 24.759975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774811, 35.326252, 24.367416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554573, 35.658157, 24.330885>,  <36.422428, 35.857300, 24.308966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554573, 35.658157, 24.330885>,  <36.774811, 35.326252, 24.367416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554573, 35.658157, 24.330885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000728, -0.109883, -0.993944,
		-0.834771, -0.547197, 0.061106,
		-0.550597, 0.829760, -0.091329,
		36.389393, 35.907085, 24.303486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214943, 35.158859, 23.857628>,  <36.774811, 35.326252, 24.367416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214943, 35.158859, 23.857628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246136, 35.556995, 23.880304>,  <36.264851, 35.795876, 23.893909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246136, 35.556995, 23.880304>,  <36.214943, 35.158859, 23.857628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246136, 35.556995, 23.880304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037092, 0.053928, -0.997856,
		-0.996264, 0.079921, -0.032713,
		0.077986, 0.995341, 0.056691,
		36.269531, 35.855598, 23.897312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726738, 35.399227, 23.375288>,  <36.214943, 35.158859, 23.857628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726738, 35.399227, 23.375288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985134, 35.700512, 23.424877>,  <36.140171, 35.881283, 23.454630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985134, 35.700512, 23.424877>,  <35.726738, 35.399227, 23.375288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985134, 35.700512, 23.424877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003008, 0.164916, -0.986303,
		-0.763340, 0.636770, 0.108800,
		0.645991, 0.753211, 0.123972,
		36.178932, 35.926476, 23.462069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435307, 35.946648, 23.065468>,  <35.726738, 35.399227, 23.375288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435307, 35.946648, 23.065468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833431, 35.981621, 23.082010>,  <36.072308, 36.002605, 23.091936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833431, 35.981621, 23.082010>,  <35.435307, 35.946648, 23.065468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833431, 35.981621, 23.082010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034840, 0.074764, -0.996592,
		-0.090231, 0.993361, 0.071367,
		0.995311, 0.087437, 0.041355,
		36.132023, 36.007851, 23.094418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579754, 36.499332, 22.610023>,  <35.435307, 35.946648, 23.065468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579754, 36.499332, 22.610023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943367, 36.333553, 22.627453>,  <36.161533, 36.234085, 22.637911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943367, 36.333553, 22.627453>,  <35.579754, 36.499332, 22.610023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943367, 36.333553, 22.627453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085623, 0.083420, -0.992829,
		0.407844, 0.906241, 0.111318,
		0.909028, -0.414450, 0.043572,
		36.216076, 36.209217, 22.640524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949024, 36.750080, 22.034054>,  <35.579754, 36.499332, 22.610023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949024, 36.750080, 22.034054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140865, 36.413429, 22.133364>,  <36.255970, 36.211437, 22.192949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140865, 36.413429, 22.133364>,  <35.949024, 36.750080, 22.034054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140865, 36.413429, 22.133364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167782, -0.189764, -0.967388,
		0.861296, 0.505618, 0.050198,
		0.479603, -0.841629, 0.248277,
		36.284748, 36.160942, 22.207848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.391716, 28.707514, 23.225386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.098774, 28.978081, 23.194092>,  <36.923008, 29.140421, 23.175316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.098774, 28.978081, 23.194092>,  <37.391716, 28.707514, 23.225386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098774, 28.978081, 23.194092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266660, 0.390616, 0.881085,
		0.626540, 0.624404, -0.466442,
		-0.732353, 0.676416, -0.078233,
		36.879066, 29.181005, 23.170622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652672, 29.417303, 23.350676>,  <37.391716, 28.707514, 23.225386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652672, 29.417303, 23.350676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.262299, 29.407856, 23.437382>,  <37.028072, 29.402187, 23.489407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.262299, 29.407856, 23.437382>,  <37.652672, 29.417303, 23.350676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262299, 29.407856, 23.437382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202594, 0.269399, 0.941477,
		-0.080633, 0.962739, -0.258132,
		-0.975937, -0.023618, 0.216768,
		36.969517, 29.400770, 23.502413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624012, 29.966747, 23.738401>,  <37.652672, 29.417303, 23.350676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624012, 29.966747, 23.738401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.283890, 29.777050, 23.829681>,  <37.079819, 29.663231, 23.884449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.283890, 29.777050, 23.829681>,  <37.624012, 29.966747, 23.738401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283890, 29.777050, 23.829681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129703, 0.231395, 0.964175,
		-0.510059, 0.849440, -0.135245,
		-0.850304, -0.474245, 0.228200,
		37.028797, 29.634777, 23.898142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262909, 30.489790, 24.100159>,  <37.624012, 29.966747, 23.738401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262909, 30.489790, 24.100159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.119476, 30.130825, 24.202978>,  <37.033417, 29.915447, 24.264669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.119476, 30.130825, 24.202978>,  <37.262909, 30.489790, 24.100159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119476, 30.130825, 24.202978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101826, 0.311317, 0.944835,
		-0.927928, 0.312627, -0.203013,
		-0.358582, -0.897411, 0.257047,
		37.011902, 29.861601, 24.280092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598919, 30.431635, 24.501196>,  <37.262909, 30.489790, 24.100159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598919, 30.431635, 24.501196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.777359, 30.085220, 24.591509>,  <36.884422, 29.877371, 24.645697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.777359, 30.085220, 24.591509>,  <36.598919, 30.431635, 24.501196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777359, 30.085220, 24.591509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024844, 0.264158, 0.964159,
		-0.894640, -0.424499, 0.139356,
		0.446097, -0.866038, 0.225781,
		36.911186, 29.825409, 24.659243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433067, 30.325405, 25.254175>,  <36.598919, 30.431635, 24.501196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433067, 30.325405, 25.254175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.664177, 30.002441, 25.206400>,  <36.802845, 29.808662, 25.177734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.664177, 30.002441, 25.206400>,  <36.433067, 30.325405, 25.254175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664177, 30.002441, 25.206400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120341, -0.060462, 0.990890,
		-0.807274, -0.586886, 0.062230,
		0.577777, -0.807409, -0.119436,
		36.837509, 29.760220, 25.170568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170086, 29.697235, 25.593391>,  <36.433067, 30.325405, 25.254175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170086, 29.697235, 25.593391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.562813, 29.623674, 25.574604>,  <36.798450, 29.579538, 25.563332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.562813, 29.623674, 25.574604>,  <36.170086, 29.697235, 25.593391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562813, 29.623674, 25.574604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024576, -0.122190, 0.992202,
		-0.188210, -0.975320, -0.115449,
		0.981821, -0.183906, -0.046967,
		36.857361, 29.568504, 25.560514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268414, 29.162041, 26.129145>,  <36.170086, 29.697235, 25.593391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268414, 29.162041, 26.129145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.641766, 29.281008, 26.048803>,  <36.865776, 29.352388, 26.000599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.641766, 29.281008, 26.048803>,  <36.268414, 29.162041, 26.129145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641766, 29.281008, 26.048803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265187, -0.194465, 0.944383,
		0.241816, -0.934734, -0.260381,
		0.933381, 0.297416, -0.200854,
		36.921780, 29.370232, 25.988546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851303, 28.642382, 26.288282>,  <36.268414, 29.162041, 26.129145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851303, 28.642382, 26.288282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.005192, 29.011168, 26.306025>,  <37.097527, 29.232439, 26.316669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.005192, 29.011168, 26.306025>,  <36.851303, 28.642382, 26.288282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005192, 29.011168, 26.306025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160617, -0.114188, 0.980389,
		0.908949, -0.370056, -0.192014,
		0.384725, 0.921965, 0.044354,
		37.120609, 29.287758, 26.319330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292934, 28.621555, 26.890680>,  <36.851303, 28.642382, 26.288282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292934, 28.621555, 26.890680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277943, 29.014412, 26.816933>,  <37.268948, 29.250126, 26.772684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277943, 29.014412, 26.816933>,  <37.292934, 28.621555, 26.890680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277943, 29.014412, 26.816933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160804, 0.188025, 0.968911,
		0.986274, 0.006670, -0.164980,
		-0.037483, 0.982142, -0.184371,
		37.266697, 29.309055, 26.761621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950195, 28.931871, 27.060476>,  <37.292934, 28.621555, 26.890680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950195, 28.931871, 27.060476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.677563, 29.224316, 27.072596>,  <37.513981, 29.399782, 27.079868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.677563, 29.224316, 27.072596>,  <37.950195, 28.931871, 27.060476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677563, 29.224316, 27.072596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223064, 0.168160, 0.960190,
		0.696910, 0.661210, -0.277700,
		-0.681585, 0.731111, 0.030300,
		37.473087, 29.443649, 27.081686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275520, 29.396681, 27.536793>,  <37.950195, 28.931871, 27.060476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275520, 29.396681, 27.536793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.911968, 29.561924, 27.513905>,  <37.693836, 29.661070, 27.500172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.911968, 29.561924, 27.513905>,  <38.275520, 29.396681, 27.536793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911968, 29.561924, 27.513905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035810, 0.213994, 0.976178,
		0.415513, 0.885182, -0.209288,
		-0.908882, 0.413109, -0.057219,
		37.639305, 29.685856, 27.496738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336769, 30.011393, 27.809994>,  <38.275520, 29.396681, 27.536793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336769, 30.011393, 27.809994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.943371, 29.965433, 27.865911>,  <37.707333, 29.937857, 27.899462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.943371, 29.965433, 27.865911>,  <38.336769, 30.011393, 27.809994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943371, 29.965433, 27.865911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086620, 0.379360, 0.921186,
		-0.158877, 0.918087, -0.363145,
		-0.983491, -0.114900, 0.139796,
		37.648323, 29.930964, 27.907850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109600, 30.668108, 28.095810>,  <38.336769, 30.011393, 27.809994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109600, 30.668108, 28.095810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.808807, 30.433538, 28.216230>,  <37.628334, 30.292797, 28.288483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.808807, 30.433538, 28.216230>,  <38.109600, 30.668108, 28.095810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808807, 30.433538, 28.216230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033509, 0.490117, 0.871012,
		-0.658334, 0.644896, -0.388209,
		-0.751980, -0.586425, 0.301051,
		37.583214, 30.257610, 28.306545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217041, 31.288170, 27.741556>,  <38.109600, 30.668108, 28.095810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217041, 31.288170, 27.741556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.566135, 31.479008, 27.700140>,  <38.775593, 31.593510, 27.675291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.566135, 31.479008, 27.700140>,  <38.217041, 31.288170, 27.741556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566135, 31.479008, 27.700140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133425, -0.437102, -0.889460,
		-0.469613, 0.762446, -0.445129,
		0.872733, 0.477093, -0.103540,
		38.827953, 31.622135, 27.669079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139610, 31.696951, 27.109425>,  <38.217041, 31.288170, 27.741556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139610, 31.696951, 27.109425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.532818, 31.681639, 27.181206>,  <38.768742, 31.672451, 27.224274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.532818, 31.681639, 27.181206>,  <38.139610, 31.696951, 27.109425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532818, 31.681639, 27.181206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168282, -0.201757, -0.964871,
		0.073142, 0.978687, -0.191889,
		0.983022, -0.038281, 0.179453,
		38.827724, 31.670155, 27.235041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507549, 32.247749, 26.767246>,  <38.139610, 31.696951, 27.109425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507549, 32.247749, 26.767246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803936, 31.984735, 26.821825>,  <38.981766, 31.826927, 26.854572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803936, 31.984735, 26.821825>,  <38.507549, 32.247749, 26.767246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803936, 31.984735, 26.821825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257685, 0.090764, -0.961957,
		0.620138, 0.747935, 0.236690,
		0.740964, -0.657537, 0.136445,
		39.026226, 31.787474, 26.862759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155277, 32.476803, 26.362421>,  <38.507549, 32.247749, 26.767246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155277, 32.476803, 26.362421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.186371, 32.081310, 26.413597>,  <39.205029, 31.844015, 26.444302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.186371, 32.081310, 26.413597>,  <39.155277, 32.476803, 26.362421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186371, 32.081310, 26.413597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301359, -0.099021, -0.948355,
		0.950337, 0.112274, 0.290266,
		0.077733, -0.988731, 0.127939,
		39.209690, 31.784691, 26.451979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593376, 32.357750, 25.820423>,  <39.155277, 32.476803, 26.362421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593376, 32.357750, 25.820423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.450130, 32.004818, 25.942575>,  <39.364185, 31.793060, 26.015867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.450130, 32.004818, 25.942575>,  <39.593376, 32.357750, 25.820423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450130, 32.004818, 25.942575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077067, -0.353889, -0.932107,
		0.930493, -0.310263, 0.194730,
		-0.358111, -0.882326, 0.305380,
		39.342697, 31.740120, 26.034189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015430, 31.971476, 25.522520>,  <39.593376, 32.357750, 25.820423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015430, 31.971476, 25.522520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670399, 31.774847, 25.570387>,  <39.463379, 31.656870, 25.599108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670399, 31.774847, 25.570387>,  <40.015430, 31.971476, 25.522520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670399, 31.774847, 25.570387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026994, -0.280911, -0.959354,
		0.505210, -0.824284, 0.255576,
		-0.862574, -0.491574, 0.119669,
		39.411625, 31.627375, 25.606287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062542, 31.398649, 25.113737>,  <40.015430, 31.971476, 25.522520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062542, 31.398649, 25.113737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.669132, 31.416643, 25.183767>,  <39.433086, 31.427441, 25.225786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.669132, 31.416643, 25.183767>,  <40.062542, 31.398649, 25.113737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669132, 31.416643, 25.183767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179799, -0.343432, -0.921806,
		0.018659, -0.938100, 0.345863,
		-0.983526, 0.044986, 0.175078,
		39.374073, 31.430140, 25.236290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915047, 30.831690, 24.725767>,  <40.062542, 31.398649, 25.113737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915047, 30.831690, 24.725767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.583332, 31.048111, 24.781685>,  <39.384304, 31.177963, 24.815235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.583332, 31.048111, 24.781685>,  <39.915047, 30.831690, 24.725767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583332, 31.048111, 24.781685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332458, -0.276606, -0.901643,
		-0.449166, -0.794200, 0.409263,
		-0.829289, 0.541050, 0.139796,
		39.334545, 31.210426, 24.823624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363094, 30.419844, 24.450407>,  <39.915047, 30.831690, 24.725767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363094, 30.419844, 24.450407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.258461, 30.805338, 24.471531>,  <39.195683, 31.036634, 24.484205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.258461, 30.805338, 24.471531>,  <39.363094, 30.419844, 24.450407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258461, 30.805338, 24.471531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296033, -0.028030, -0.954766,
		-0.918662, -0.265384, 0.292630,
		-0.261582, 0.963736, 0.052812,
		39.179985, 31.094458, 24.487375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717426, 30.416874, 24.151913>,  <39.363094, 30.419844, 24.450407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717426, 30.416874, 24.151913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.815483, 30.801922, 24.105846>,  <38.874317, 31.032951, 24.078207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.815483, 30.801922, 24.105846>,  <38.717426, 30.416874, 24.151913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815483, 30.801922, 24.105846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444133, 0.005918, -0.895941,
		-0.861771, 0.270784, 0.428983,
		0.245145, 0.962622, -0.115164,
		38.889027, 31.090708, 24.071297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298389, 30.768818, 23.673708>,  <38.717426, 30.416874, 24.151913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298389, 30.768818, 23.673708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571766, 31.060421, 23.689016>,  <38.735790, 31.235382, 23.698202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571766, 31.060421, 23.689016>,  <38.298389, 30.768818, 23.673708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571766, 31.060421, 23.689016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220775, 0.256377, -0.941026,
		-0.695825, 0.634683, 0.336164,
		0.683437, 0.729006, 0.038271,
		38.776798, 31.279123, 23.700499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965271, 31.403368, 23.536373>,  <38.298389, 30.768818, 23.673708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965271, 31.403368, 23.536373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348373, 31.482082, 23.452492>,  <38.578236, 31.529310, 23.402163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348373, 31.482082, 23.452492>,  <37.965271, 31.403368, 23.536373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348373, 31.482082, 23.452492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249942, 0.208957, -0.945445,
		-0.142229, 0.957921, 0.249315,
		0.957758, 0.196784, -0.209705,
		38.635700, 31.541117, 23.389580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060123, 32.045338, 23.111477>,  <37.965271, 31.403368, 23.536373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060123, 32.045338, 23.111477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.403194, 31.846992, 23.057051>,  <38.609035, 31.727985, 23.024395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.403194, 31.846992, 23.057051>,  <38.060123, 32.045338, 23.111477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403194, 31.846992, 23.057051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153401, 0.005815, -0.988147,
		0.490777, 0.868381, -0.071078,
		0.857675, -0.495863, -0.136064,
		38.660496, 31.698233, 23.016232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370571, 32.444656, 22.700480>,  <38.060123, 32.045338, 23.111477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370571, 32.444656, 22.700480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.504372, 32.071266, 22.648752>,  <38.584652, 31.847231, 22.617716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.504372, 32.071266, 22.648752>,  <38.370571, 32.444656, 22.700480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504372, 32.071266, 22.648752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245040, 0.046347, -0.968404,
		0.909979, 0.355623, -0.213237,
		0.334504, -0.933480, -0.129317,
		38.604721, 31.791222, 22.609957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986351, 32.918255, 22.445396>,  <38.370571, 32.444656, 22.700480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986351, 32.918255, 22.445396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.029209, 33.314091, 22.406948>,  <39.054924, 33.551590, 22.383879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.029209, 33.314091, 22.406948>,  <38.986351, 32.918255, 22.445396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029209, 33.314091, 22.406948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209512, 0.072031, 0.975149,
		0.971918, -0.124624, -0.199612,
		0.107149, 0.989586, -0.096119,
		39.061356, 33.610966, 22.378113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575253, 33.058636, 22.879004>,  <38.986351, 32.918255, 22.445396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575253, 33.058636, 22.879004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.402157, 33.414330, 22.819674>,  <39.298302, 33.627747, 22.784075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.402157, 33.414330, 22.819674>,  <39.575253, 33.058636, 22.879004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402157, 33.414330, 22.819674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240396, 0.272390, 0.931672,
		0.868878, 0.367513, -0.331641,
		-0.432737, 0.889235, -0.148325,
		39.272335, 33.681099, 22.775177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981552, 33.606880, 23.168058>,  <39.575253, 33.058636, 22.879004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981552, 33.606880, 23.168058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.601879, 33.730999, 23.189108>,  <39.374077, 33.805470, 23.201738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.601879, 33.730999, 23.189108>,  <39.981552, 33.606880, 23.168058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601879, 33.730999, 23.189108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145671, 0.284918, 0.947419,
		0.278990, 0.906938, -0.315640,
		-0.949181, 0.310300, 0.052625,
		39.317123, 33.824089, 23.204895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938995, 34.233604, 23.704777>,  <39.981552, 33.606880, 23.168058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938995, 34.233604, 23.704777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.547970, 34.172852, 23.646393>,  <39.313354, 34.136398, 23.611362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.547970, 34.172852, 23.646393>,  <39.938995, 34.233604, 23.704777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547970, 34.172852, 23.646393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200941, 0.464438, 0.862508,
		-0.063210, 0.872484, -0.484537,
		-0.977562, -0.151883, -0.145961,
		39.254700, 34.127285, 23.602604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628094, 34.882011, 23.724482>,  <39.938995, 34.233604, 23.704777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628094, 34.882011, 23.724482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.362583, 34.596272, 23.813122>,  <39.203278, 34.424828, 23.866306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.362583, 34.596272, 23.813122>,  <39.628094, 34.882011, 23.724482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362583, 34.596272, 23.813122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103715, 0.381331, 0.918602,
		-0.740707, 0.586761, -0.327207,
		-0.663774, -0.714351, 0.221598,
		39.163452, 34.381966, 23.879601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176178, 35.270653, 23.973171>,  <39.628094, 34.882011, 23.724482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176178, 35.270653, 23.973171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.084576, 34.909271, 24.118128>,  <39.029613, 34.692444, 24.205101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.084576, 34.909271, 24.118128>,  <39.176178, 35.270653, 23.973171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084576, 34.909271, 24.118128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274354, 0.417095, 0.866465,
		-0.933963, 0.099000, -0.343382,
		-0.229003, -0.903455, 0.362390,
		39.015873, 34.638233, 24.226845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587494, 35.364323, 24.346834>,  <39.176178, 35.270653, 23.973171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587494, 35.364323, 24.346834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.743484, 35.029190, 24.499657>,  <38.837078, 34.828110, 24.591351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.743484, 35.029190, 24.499657>,  <38.587494, 35.364323, 24.346834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743484, 35.029190, 24.499657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291817, 0.281072, 0.914244,
		-0.873363, -0.468021, -0.134882,
		0.389974, -0.837828, 0.382055,
		38.860477, 34.777843, 24.614273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098743, 35.307243, 24.995127>,  <38.587494, 35.364323, 24.346834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098743, 35.307243, 24.995127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.411396, 35.062813, 25.045147>,  <38.598988, 34.916157, 25.075159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.411396, 35.062813, 25.045147>,  <38.098743, 35.307243, 24.995127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411396, 35.062813, 25.045147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038377, 0.152992, 0.987482,
		-0.622556, -0.776648, 0.096132,
		0.781634, -0.611074, 0.125051,
		38.645885, 34.879490, 25.082663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932907, 34.749817, 25.520891>,  <38.098743, 35.307243, 24.995127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932907, 34.749817, 25.520891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.326363, 34.821865, 25.519819>,  <38.562435, 34.865093, 25.519176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.326363, 34.821865, 25.519819>,  <37.932907, 34.749817, 25.520891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326363, 34.821865, 25.519819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011369, 0.076918, 0.996973,
		0.179778, -0.980633, 0.077708,
		0.983641, 0.180117, -0.002679,
		38.621456, 34.875900, 25.519016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163311, 34.289112, 26.048225>,  <37.932907, 34.749817, 25.520891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163311, 34.289112, 26.048225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.473583, 34.533020, 25.983105>,  <38.659748, 34.679363, 25.944033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.473583, 34.533020, 25.983105>,  <38.163311, 34.289112, 26.048225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473583, 34.533020, 25.983105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104395, 0.130441, 0.985945,
		0.622434, -0.781772, 0.037524,
		0.775679, 0.609768, -0.162804,
		38.706287, 34.715950, 25.934263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737434, 34.104099, 26.508141>,  <38.163311, 34.289112, 26.048225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737434, 34.104099, 26.508141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.817783, 34.483555, 26.410383>,  <38.865993, 34.711227, 26.351728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.817783, 34.483555, 26.410383>,  <38.737434, 34.104099, 26.508141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817783, 34.483555, 26.410383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026554, 0.244114, 0.969383,
		0.979257, -0.201213, 0.023846,
		0.200873, 0.948642, -0.244394,
		38.878044, 34.768147, 26.337065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295292, 34.198734, 26.880190>,  <38.737434, 34.104099, 26.508141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295292, 34.198734, 26.880190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.165226, 34.565075, 26.785971>,  <39.087185, 34.784878, 26.729439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.165226, 34.565075, 26.785971>,  <39.295292, 34.198734, 26.880190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165226, 34.565075, 26.785971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265970, 0.327602, 0.906607,
		0.907484, 0.232150, -0.350115,
		-0.325167, 0.915851, -0.235548,
		39.067677, 34.839828, 26.715305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829285, 34.579098, 27.044006>,  <39.295292, 34.198734, 26.880190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829285, 34.579098, 27.044006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.516991, 34.828815, 27.033335>,  <39.329617, 34.978645, 27.026932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.516991, 34.828815, 27.033335>,  <39.829285, 34.579098, 27.044006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516991, 34.828815, 27.033335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269172, 0.374537, 0.887282,
		0.563920, 0.685547, -0.460456,
		-0.780731, 0.624298, -0.026679,
		39.282772, 35.016106, 27.025331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998016, 35.162991, 27.375340>,  <39.829285, 34.579098, 27.044006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998016, 35.162991, 27.375340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.599300, 35.180058, 27.402449>,  <39.360073, 35.190296, 27.418715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.599300, 35.180058, 27.402449>,  <39.998016, 35.162991, 27.375340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599300, 35.180058, 27.402449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079632, 0.438077, 0.895403,
		0.008516, 0.897924, -0.440068,
		-0.996788, 0.042669, 0.067773,
		39.300262, 35.192860, 27.422781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.610611, 36.742577, 21.757933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.567272, 36.352184, 21.833530>,  <36.541267, 36.117947, 21.878889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.567272, 36.352184, 21.833530>,  <36.610611, 36.742577, 21.757933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567272, 36.352184, 21.833530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411712, -0.217097, -0.885077,
		0.904850, -0.018082, 0.425345,
		-0.108345, -0.975982, 0.188996,
		36.534767, 36.059391, 21.890228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258808, 36.454628, 21.515617>,  <36.610611, 36.742577, 21.757933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258808, 36.454628, 21.515617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.987965, 36.160313, 21.510881>,  <36.825459, 35.983723, 21.508039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.987965, 36.160313, 21.510881>,  <37.258808, 36.454628, 21.515617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987965, 36.160313, 21.510881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304235, -0.265248, -0.914923,
		0.670048, -0.623106, 0.403454,
		-0.677110, -0.735787, -0.011842,
		36.784832, 35.939575, 21.507328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499138, 36.075165, 21.029417>,  <37.258808, 36.454628, 21.515617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499138, 36.075165, 21.029417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.128788, 35.927052, 21.059484>,  <36.906578, 35.838184, 21.077524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.128788, 35.927052, 21.059484>,  <37.499138, 36.075165, 21.029417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128788, 35.927052, 21.059484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063179, -0.044423, -0.997013,
		0.372518, -0.927856, 0.017736,
		-0.925872, -0.370285, 0.075169,
		36.851025, 35.815968, 21.082035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525856, 35.399990, 20.785896>,  <37.499138, 36.075165, 21.029417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525856, 35.399990, 20.785896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.154629, 35.546425, 20.758593>,  <36.931892, 35.634285, 20.742210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.154629, 35.546425, 20.758593>,  <37.525856, 35.399990, 20.785896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154629, 35.546425, 20.758593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049087, -0.301959, -0.952056,
		-0.369155, -0.880225, 0.298210,
		-0.928071, 0.366094, -0.068262,
		36.876205, 35.656254, 20.738115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214691, 34.928684, 20.447794>,  <37.525856, 35.399990, 20.785896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214691, 34.928684, 20.447794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.960762, 35.228683, 20.373501>,  <36.808403, 35.408684, 20.328926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.960762, 35.228683, 20.373501>,  <37.214691, 34.928684, 20.447794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960762, 35.228683, 20.373501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152128, -0.357000, -0.921634,
		-0.757533, -0.556820, 0.340728,
		-0.634823, 0.750002, -0.185732,
		36.770313, 35.453686, 20.317781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661156, 34.641769, 20.125149>,  <37.214691, 34.928684, 20.447794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661156, 34.641769, 20.125149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.617554, 35.028915, 20.034504>,  <36.591393, 35.261204, 19.980116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.617554, 35.028915, 20.034504>,  <36.661156, 34.641769, 20.125149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617554, 35.028915, 20.034504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290282, -0.249029, -0.923970,
		-0.950713, -0.034934, 0.308098,
		-0.109003, 0.967866, -0.226614,
		36.584854, 35.319275, 19.966520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912437, 34.723396, 20.066174>,  <36.661156, 34.641769, 20.125149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912437, 34.723396, 20.066174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.136406, 34.988777, 19.867647>,  <36.270786, 35.148006, 19.748531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.136406, 34.988777, 19.867647>,  <35.912437, 34.723396, 20.066174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136406, 34.988777, 19.867647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217955, -0.459980, -0.860763,
		-0.799367, 0.590130, -0.112949,
		0.559917, 0.663448, -0.496316,
		36.304382, 35.187813, 19.718752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596012, 34.933037, 19.475603>,  <35.912437, 34.723396, 20.066174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596012, 34.933037, 19.475603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.967430, 35.051826, 19.386507>,  <36.190281, 35.123100, 19.333050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.967430, 35.051826, 19.386507>,  <35.596012, 34.933037, 19.475603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967430, 35.051826, 19.386507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104987, -0.365438, -0.924896,
		-0.356073, 0.882189, -0.308146,
		0.928542, 0.296979, -0.222741,
		36.245991, 35.140919, 19.319685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541138, 35.151394, 18.846073>,  <35.596012, 34.933037, 19.475603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541138, 35.151394, 18.846073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.936600, 35.102436, 18.880894>,  <36.173878, 35.073059, 18.901785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.936600, 35.102436, 18.880894>,  <35.541138, 35.151394, 18.846073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936600, 35.102436, 18.880894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050037, -0.278058, -0.959260,
		0.141615, 0.952734, -0.268779,
		0.988656, -0.122397, 0.087049,
		36.233196, 35.065716, 18.907009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687893, 35.279083, 18.202551>,  <35.541138, 35.151394, 18.846073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687893, 35.279083, 18.202551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998653, 35.081139, 18.358261>,  <36.185108, 34.962372, 18.451687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998653, 35.081139, 18.358261>,  <35.687893, 35.279083, 18.202551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998653, 35.081139, 18.358261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198666, -0.394016, -0.897376,
		0.597461, 0.774506, -0.207797,
		0.776899, -0.494865, 0.389278,
		36.231724, 34.932678, 18.475044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174370, 35.283230, 17.676163>,  <35.687893, 35.279083, 18.202551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174370, 35.283230, 17.676163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.294685, 34.969494, 17.893175>,  <36.366875, 34.781254, 18.023382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.294685, 34.969494, 17.893175>,  <36.174370, 35.283230, 17.676163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294685, 34.969494, 17.893175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163808, -0.517931, -0.839591,
		0.939518, 0.341409, -0.027306,
		0.300787, -0.784338, 0.542532,
		36.384922, 34.734192, 18.055935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678616, 34.981152, 17.291943>,  <36.174370, 35.283230, 17.676163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678616, 34.981152, 17.291943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.611095, 34.676456, 17.542145>,  <36.570583, 34.493637, 17.692266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.611095, 34.676456, 17.542145>,  <36.678616, 34.981152, 17.291943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611095, 34.676456, 17.542145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145133, -0.646902, -0.748635,
		0.974906, -0.035589, 0.219752,
		-0.168802, -0.761742, 0.625504,
		36.560455, 34.447933, 17.729795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998817, 34.470043, 16.877132>,  <36.678616, 34.981152, 17.291943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998817, 34.470043, 16.877132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.816208, 34.254478, 17.160303>,  <36.706642, 34.125141, 17.330206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.816208, 34.254478, 17.160303>,  <36.998817, 34.470043, 16.877132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816208, 34.254478, 17.160303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139845, -0.829254, -0.541092,
		0.878652, -0.148022, 0.453938,
		-0.456523, -0.538913, 0.707926,
		36.679253, 34.092804, 17.372681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674568, 34.807480, 16.674335>,  <36.998817, 34.470043, 16.877132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674568, 34.807480, 16.674335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.017529, 34.649082, 16.542856>,  <38.223305, 34.554043, 16.463968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.017529, 34.649082, 16.542856>,  <37.674568, 34.807480, 16.674335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017529, 34.649082, 16.542856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288689, -0.158656, 0.944186,
		-0.426046, -0.904441, -0.021712,
		0.857405, -0.395998, -0.328697,
		38.274750, 34.530281, 16.444246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893063, 34.359310, 17.302731>,  <37.674568, 34.807480, 16.674335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893063, 34.359310, 17.302731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.032631, 33.995831, 17.211071>,  <38.116371, 33.777740, 17.156075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.032631, 33.995831, 17.211071>,  <37.893063, 34.359310, 17.302731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032631, 33.995831, 17.211071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386869, -0.083041, 0.918388,
		-0.853571, -0.409099, 0.322574,
		0.348925, -0.908703, -0.229149,
		38.137310, 33.723221, 17.142326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554653, 33.892967, 17.741501>,  <37.893063, 34.359310, 17.302731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554653, 33.892967, 17.741501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.909878, 33.734650, 17.647955>,  <38.123013, 33.639660, 17.591827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.909878, 33.734650, 17.647955>,  <37.554653, 33.892967, 17.741501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909878, 33.734650, 17.647955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214907, -0.092288, 0.972264,
		-0.406403, -0.913689, 0.003102,
		0.888060, -0.395797, -0.233865,
		38.176296, 33.615910, 17.577795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719147, 33.538620, 18.242601>,  <37.554653, 33.892967, 17.741501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719147, 33.538620, 18.242601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.080753, 33.539185, 18.071606>,  <38.297718, 33.539524, 17.969009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.080753, 33.539185, 18.071606>,  <37.719147, 33.538620, 18.242601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080753, 33.539185, 18.071606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426803, -0.059645, 0.902375,
		-0.024216, -0.998219, -0.054526,
		0.904020, 0.001420, -0.427487,
		38.351959, 33.539608, 17.943359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203163, 32.884811, 18.509533>,  <37.719147, 33.538620, 18.242601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203163, 32.884811, 18.509533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.454826, 33.163704, 18.372110>,  <38.605824, 33.331039, 18.289656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.454826, 33.163704, 18.372110>,  <38.203163, 32.884811, 18.509533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454826, 33.163704, 18.372110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440558, 0.044268, 0.896632,
		0.640366, -0.715481, -0.279319,
		0.629158, 0.697229, -0.343558,
		38.643574, 33.372871, 18.269043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936325, 32.739449, 18.700449>,  <38.203163, 32.884811, 18.509533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936325, 32.739449, 18.700449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.939472, 33.129677, 18.612623>,  <38.941360, 33.363811, 18.559929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.939472, 33.129677, 18.612623>,  <38.936325, 32.739449, 18.700449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939472, 33.129677, 18.612623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650822, 0.161702, 0.741810,
		0.759189, -0.148736, -0.633648,
		0.007871, 0.975566, -0.219563,
		38.941833, 33.422348, 18.546755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573143, 32.939789, 18.881731>,  <38.936325, 32.739449, 18.700449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573143, 32.939789, 18.881731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.371487, 33.284718, 18.862810>,  <39.250492, 33.491676, 18.851458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.371487, 33.284718, 18.862810>,  <39.573143, 32.939789, 18.881731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371487, 33.284718, 18.862810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470845, 0.320359, 0.821995,
		0.723982, 0.392127, -0.567527,
		-0.504138, 0.862327, -0.047303,
		39.220245, 33.543415, 18.848619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010742, 33.406544, 19.164661>,  <39.573143, 32.939789, 18.881731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010742, 33.406544, 19.164661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.647934, 33.572922, 19.190908>,  <39.430248, 33.672749, 19.206656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.647934, 33.572922, 19.190908>,  <40.010742, 33.406544, 19.164661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647934, 33.572922, 19.190908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155402, 0.185823, 0.970216,
		0.391363, 0.890202, -0.233184,
		-0.907020, 0.415944, 0.065615,
		39.375828, 33.697704, 19.210592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112579, 34.154751, 19.455992>,  <40.010742, 33.406544, 19.164661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112579, 34.154751, 19.455992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.748051, 34.006653, 19.528008>,  <39.529335, 33.917793, 19.571217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.748051, 34.006653, 19.528008>,  <40.112579, 34.154751, 19.455992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748051, 34.006653, 19.528008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094728, 0.237005, 0.966879,
		-0.400651, 0.898192, -0.180915,
		-0.911320, -0.370244, 0.180040,
		39.474655, 33.895580, 19.582020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838570, 34.613510, 19.928682>,  <40.112579, 34.154751, 19.455992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838570, 34.613510, 19.928682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.588837, 34.302174, 19.955170>,  <39.438995, 34.115372, 19.971062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.588837, 34.302174, 19.955170>,  <39.838570, 34.613510, 19.928682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588837, 34.302174, 19.955170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064657, 0.135972, 0.988601,
		-0.778477, 0.612936, -0.135217,
		-0.624334, -0.778345, 0.066220,
		39.401535, 34.068668, 19.975037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268173, 34.758736, 20.353886>,  <39.838570, 34.613510, 19.928682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268173, 34.758736, 20.353886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.220562, 34.361679, 20.344961>,  <39.191998, 34.123444, 20.339605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.220562, 34.361679, 20.344961>,  <39.268173, 34.758736, 20.353886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220562, 34.361679, 20.344961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256501, 0.009031, 0.966502,
		-0.959187, 0.120761, -0.255688,
		-0.119025, -0.992641, -0.022313,
		39.184853, 34.063889, 20.338268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624401, 34.643471, 20.649824>,  <39.268173, 34.758736, 20.353886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624401, 34.643471, 20.649824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.817135, 34.294220, 20.679461>,  <38.932774, 34.084671, 20.697243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.817135, 34.294220, 20.679461>,  <38.624401, 34.643471, 20.649824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817135, 34.294220, 20.679461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252251, -0.057235, 0.965968,
		-0.839170, -0.484125, -0.247825,
		0.481833, -0.873125, 0.074091,
		38.961685, 34.032284, 20.701689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188614, 34.206539, 21.062366>,  <38.624401, 34.643471, 20.649824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188614, 34.206539, 21.062366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.565331, 34.073280, 21.080465>,  <38.791359, 33.993324, 21.091326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.565331, 34.073280, 21.080465>,  <38.188614, 34.206539, 21.062366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565331, 34.073280, 21.080465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067927, -0.056738, 0.996076,
		-0.329272, -0.941167, -0.076065,
		0.941789, -0.333146, 0.045249,
		38.847866, 33.973335, 21.094040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211285, 33.696987, 21.605579>,  <38.188614, 34.206539, 21.062366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211285, 33.696987, 21.605579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.605778, 33.756451, 21.576637>,  <38.842476, 33.792130, 21.559273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.605778, 33.756451, 21.576637>,  <38.211285, 33.696987, 21.605579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605778, 33.756451, 21.576637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088302, -0.103632, 0.990688,
		0.139782, -0.983443, -0.115333,
		0.986237, 0.148664, -0.072354,
		38.901649, 33.801048, 21.554932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561764, 33.067390, 21.841143>,  <38.211285, 33.696987, 21.605579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561764, 33.067390, 21.841143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.769085, 33.405037, 21.896029>,  <38.893478, 33.607624, 21.928959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.769085, 33.405037, 21.896029>,  <38.561764, 33.067390, 21.841143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769085, 33.405037, 21.896029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010318, -0.154263, 0.987976,
		0.855135, -0.513486, -0.071245,
		0.518303, 0.844118, 0.137214,
		38.924576, 33.658272, 21.937193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946846, 32.385136, 21.854305>,  <38.561764, 33.067390, 21.841143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946846, 32.385136, 21.854305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873219, 32.010120, 21.972380>,  <38.829041, 31.785110, 22.043224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873219, 32.010120, 21.972380>,  <38.946846, 32.385136, 21.854305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873219, 32.010120, 21.972380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372767, -0.211295, -0.903548,
		0.909485, -0.276351, -0.310591,
		-0.184070, -0.937542, 0.295184,
		38.817997, 31.728857, 22.060934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177673, 31.965744, 21.352921>,  <38.946846, 32.385136, 21.854305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177673, 31.965744, 21.352921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.935520, 31.715471, 21.549706>,  <38.790226, 31.565308, 21.667776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.935520, 31.715471, 21.549706>,  <39.177673, 31.965744, 21.352921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935520, 31.715471, 21.549706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246732, -0.440128, -0.863372,
		0.756724, -0.644057, 0.112072,
		-0.605386, -0.625682, 0.491965,
		38.753902, 31.527767, 21.697294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159573, 31.268135, 21.021299>,  <39.177673, 31.965744, 21.352921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159573, 31.268135, 21.021299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.814705, 31.246859, 21.222828>,  <38.607784, 31.234093, 21.343744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.814705, 31.246859, 21.222828>,  <39.159573, 31.268135, 21.021299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814705, 31.246859, 21.222828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440664, -0.411924, -0.797580,
		0.249959, -0.909665, 0.331709,
		-0.862169, -0.053190, 0.503821,
		38.556053, 31.230902, 21.373974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836746, 30.584541, 20.934534>,  <39.159573, 31.268135, 21.021299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836746, 30.584541, 20.934534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.546211, 30.844557, 21.023874>,  <38.371891, 31.000566, 21.077478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.546211, 30.844557, 21.023874>,  <38.836746, 30.584541, 20.934534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546211, 30.844557, 21.023874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531172, -0.324614, -0.782613,
		-0.436226, -0.687078, 0.581061,
		-0.726336, 0.650039, 0.223351,
		38.328312, 31.039568, 21.090879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262764, 30.266026, 20.714470>,  <38.836746, 30.584541, 20.934534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262764, 30.266026, 20.714470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.111977, 30.633612, 20.760763>,  <38.021503, 30.854164, 20.788540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.111977, 30.633612, 20.760763>,  <38.262764, 30.266026, 20.714470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111977, 30.633612, 20.760763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614876, -0.154841, -0.773273,
		-0.692692, -0.362663, 0.623421,
		-0.376969, 0.918967, 0.115735,
		37.998886, 30.909302, 20.795485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578835, 30.199463, 20.646523>,  <38.262764, 30.266026, 20.714470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578835, 30.199463, 20.646523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.677013, 30.580402, 20.574093>,  <37.735920, 30.808966, 20.530636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.677013, 30.580402, 20.574093>,  <37.578835, 30.199463, 20.646523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677013, 30.580402, 20.574093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404106, -0.069271, -0.912085,
		-0.881167, 0.297038, 0.367848,
		0.245442, 0.952350, -0.181074,
		37.750645, 30.866108, 20.519770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005836, 30.476471, 20.408573>,  <37.578835, 30.199463, 20.646523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005836, 30.476471, 20.408573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.278637, 30.734522, 20.270767>,  <37.442318, 30.889353, 20.188084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.278637, 30.734522, 20.270767>,  <37.005836, 30.476471, 20.408573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278637, 30.734522, 20.270767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483707, 0.044566, -0.874094,
		-0.548547, 0.762776, 0.342446,
		0.681999, 0.645126, -0.344513,
		37.483238, 30.928061, 20.167414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343040, 30.229851, 20.549538>,  <37.005836, 30.476471, 20.408573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343040, 30.229851, 20.549538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.211231, 29.854393, 20.508814>,  <36.132145, 29.629118, 20.484381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.211231, 29.854393, 20.508814>,  <36.343040, 30.229851, 20.549538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211231, 29.854393, 20.508814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225016, -0.182798, 0.957054,
		-0.916943, 0.292459, 0.271446,
		-0.329519, -0.938644, -0.101808,
		36.112377, 29.572800, 20.478271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841099, 30.109989, 21.002806>,  <36.343040, 30.229851, 20.549538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841099, 30.109989, 21.002806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998482, 29.752161, 20.918015>,  <36.092911, 29.537464, 20.867140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998482, 29.752161, 20.918015>,  <35.841099, 30.109989, 21.002806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998482, 29.752161, 20.918015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012826, -0.235897, 0.971694,
		-0.919254, -0.379601, -0.104289,
		0.393457, -0.894570, -0.211980,
		36.116520, 29.483789, 20.854420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423065, 29.717648, 21.330339>,  <35.841099, 30.109989, 21.002806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423065, 29.717648, 21.330339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.767803, 29.517746, 21.295750>,  <35.974644, 29.397806, 21.274996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.767803, 29.517746, 21.295750>,  <35.423065, 29.717648, 21.330339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767803, 29.517746, 21.295750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088290, -0.020066, 0.995893,
		-0.499435, -0.865936, 0.026829,
		0.861841, -0.499753, -0.086475,
		36.026356, 29.367821, 21.269808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456478, 29.328941, 21.873234>,  <35.423065, 29.717648, 21.330339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456478, 29.328941, 21.873234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.842663, 29.279299, 21.781603>,  <36.074375, 29.249514, 21.726625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.842663, 29.279299, 21.781603>,  <35.456478, 29.328941, 21.873234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842663, 29.279299, 21.781603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200405, -0.208082, 0.957361,
		-0.166476, -0.970207, -0.176025,
		0.965466, -0.124102, -0.229075,
		36.132301, 29.242067, 21.712879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683395, 28.698908, 22.043055>,  <35.456478, 29.328941, 21.873234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683395, 28.698908, 22.043055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.999416, 28.944124, 22.043188>,  <36.189030, 29.091253, 22.043268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.999416, 28.944124, 22.043188>,  <35.683395, 28.698908, 22.043055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999416, 28.944124, 22.043188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179864, -0.232318, 0.955865,
		0.586061, -0.755123, -0.293807,
		0.790052, 0.613041, 0.000333,
		36.236431, 29.128036, 22.043287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173386, 28.372717, 22.603687>,  <35.683395, 28.698908, 22.043055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173386, 28.372717, 22.603687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.299229, 28.744892, 22.528528>,  <36.374737, 28.968197, 22.483433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.299229, 28.744892, 22.528528>,  <36.173386, 28.372717, 22.603687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299229, 28.744892, 22.528528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336443, 0.075794, 0.938649,
		0.887595, -0.358527, -0.289194,
		0.314611, 0.930438, -0.187899,
		36.393612, 29.024023, 22.472158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844032, 28.368275, 22.843643>,  <36.173386, 28.372717, 22.603687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844032, 28.368275, 22.843643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.722507, 28.749346, 22.839529>,  <36.649593, 28.977989, 22.837061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.722507, 28.749346, 22.839529>,  <36.844032, 28.368275, 22.843643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722507, 28.749346, 22.839529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214829, 0.079018, 0.973450,
		0.928197, 0.293533, -0.228669,
		-0.303809, 0.952678, -0.010284,
		36.631363, 29.035149, 22.836443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.844131, 32.583332, 18.036898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.241165, 32.628220, 18.055590>,  <34.479385, 32.655151, 18.066805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.241165, 32.628220, 18.055590>,  <33.844131, 32.583332, 18.036898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241165, 32.628220, 18.055590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032639, -0.124262, 0.991713,
		0.117097, -0.985883, -0.119677,
		0.992584, 0.112220, 0.046728,
		34.538940, 32.661884, 18.069609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175369, 31.998724, 18.300438>,  <33.844131, 32.583332, 18.036898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175369, 31.998724, 18.300438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.347675, 32.342762, 18.409744>,  <34.451061, 32.549187, 18.475328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.347675, 32.342762, 18.409744>,  <34.175369, 31.998724, 18.300438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347675, 32.342762, 18.409744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186923, -0.211200, 0.959403,
		0.882892, -0.464359, 0.069794,
		0.430767, 0.860096, 0.273266,
		34.476906, 32.600792, 18.491724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473892, 31.854862, 18.954603>,  <34.175369, 31.998724, 18.300438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473892, 31.854862, 18.954603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.474373, 32.254730, 18.944361>,  <34.474663, 32.494652, 18.938215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.474373, 32.254730, 18.944361>,  <34.473892, 31.854862, 18.954603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474373, 32.254730, 18.944361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102851, 0.025596, 0.994367,
		0.994696, 0.001435, 0.102848,
		0.001205, 0.999671, -0.025608,
		34.474735, 32.554630, 18.936678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876781, 32.045834, 19.445862>,  <34.473892, 31.854862, 18.954603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876781, 32.045834, 19.445862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.671810, 32.383072, 19.380611>,  <34.548828, 32.585415, 19.341461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.671810, 32.383072, 19.380611>,  <34.876781, 32.045834, 19.445862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671810, 32.383072, 19.380611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058965, 0.154966, 0.986159,
		0.856702, 0.514956, -0.029697,
		-0.512430, 0.843093, -0.163124,
		34.518082, 32.636002, 19.331675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119408, 32.629204, 19.935839>,  <34.876781, 32.045834, 19.445862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119408, 32.629204, 19.935839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.743816, 32.734631, 19.847424>,  <34.518463, 32.797886, 19.794374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.743816, 32.734631, 19.847424>,  <35.119408, 32.629204, 19.935839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743816, 32.734631, 19.847424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128645, 0.326888, 0.936266,
		0.319024, 0.907567, -0.273033,
		-0.938975, 0.263567, -0.221039,
		34.462124, 32.813702, 19.781113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980141, 33.313522, 20.267157>,  <35.119408, 32.629204, 19.935839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980141, 33.313522, 20.267157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.617817, 33.154701, 20.208019>,  <34.400421, 33.059410, 20.172537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.617817, 33.154701, 20.208019>,  <34.980141, 33.313522, 20.267157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617817, 33.154701, 20.208019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336863, 0.463297, 0.819682,
		-0.256960, 0.792280, -0.553411,
		-0.905812, -0.397049, -0.147841,
		34.346073, 33.035587, 20.163668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447670, 33.859375, 20.372044>,  <34.980141, 33.313522, 20.267157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447670, 33.859375, 20.372044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.235912, 33.526340, 20.437220>,  <34.108860, 33.326519, 20.476326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.235912, 33.526340, 20.437220>,  <34.447670, 33.859375, 20.372044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235912, 33.526340, 20.437220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393849, 0.411299, 0.822020,
		-0.751418, 0.370995, -0.545649,
		-0.529390, -0.832584, 0.162942,
		34.077095, 33.276566, 20.486101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892254, 34.118935, 20.791252>,  <34.447670, 33.859375, 20.372044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892254, 34.118935, 20.791252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.876541, 33.721909, 20.837330>,  <33.867115, 33.483692, 20.864977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.876541, 33.721909, 20.837330>,  <33.892254, 34.118935, 20.791252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876541, 33.721909, 20.837330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071679, 0.117787, 0.990449,
		-0.996654, 0.030645, -0.075773,
		-0.039278, -0.992566, 0.115196,
		33.864758, 33.424137, 20.871889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417439, 34.071262, 21.246576>,  <33.892254, 34.118935, 20.791252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417439, 34.071262, 21.246576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.601570, 33.716232, 21.253651>,  <33.712048, 33.503216, 21.257895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.601570, 33.716232, 21.253651>,  <33.417439, 34.071262, 21.246576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601570, 33.716232, 21.253651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157684, -0.062142, 0.985532,
		-0.873632, -0.456458, -0.168562,
		0.460329, -0.887572, 0.017686,
		33.739670, 33.449959, 21.258957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904816, 33.651176, 21.602573>,  <33.417439, 34.071262, 21.246576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904816, 33.651176, 21.602573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.272739, 33.494946, 21.617496>,  <33.493496, 33.401207, 21.626450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.272739, 33.494946, 21.617496>,  <32.904816, 33.651176, 21.602573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272739, 33.494946, 21.617496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032008, 0.020071, 0.999286,
		-0.391051, -0.920350, 0.005960,
		0.919812, -0.390581, 0.037307,
		33.548683, 33.377769, 21.628689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883327, 32.950779, 22.030794>,  <32.904816, 33.651176, 21.602573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883327, 32.950779, 22.030794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.257156, 33.092892, 22.023306>,  <33.481453, 33.178158, 22.018814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.257156, 33.092892, 22.023306>,  <32.883327, 32.950779, 22.030794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257156, 33.092892, 22.023306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007216, 0.033676, 0.999407,
		0.355700, -0.934153, 0.028908,
		0.934572, 0.355280, -0.018719,
		33.537529, 33.199474, 22.017691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141186, 32.678493, 22.646523>,  <32.883327, 32.950779, 22.030794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141186, 32.678493, 22.646523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.366707, 32.991741, 22.541557>,  <33.502018, 33.179688, 22.478579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.366707, 32.991741, 22.541557>,  <33.141186, 32.678493, 22.646523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366707, 32.991741, 22.541557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182035, 0.192085, 0.964348,
		0.805601, -0.591467, -0.034257,
		0.563800, 0.783116, -0.262412,
		33.535847, 33.226677, 22.462833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499683, 31.979782, 22.765158>,  <33.141186, 32.678493, 22.646523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499683, 31.979782, 22.765158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.314186, 31.670208, 22.937653>,  <33.202888, 31.484463, 23.041149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.314186, 31.670208, 22.937653>,  <33.499683, 31.979782, 22.765158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314186, 31.670208, 22.937653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214773, -0.374017, -0.902211,
		0.859544, -0.511011, 0.007227,
		-0.463742, -0.773938, 0.431235,
		33.175064, 31.438026, 23.067022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732830, 31.379938, 22.473934>,  <33.499683, 31.979782, 22.765158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732830, 31.379938, 22.473934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.392433, 31.248119, 22.637503>,  <33.188194, 31.169027, 22.735643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.392433, 31.248119, 22.637503>,  <33.732830, 31.379938, 22.473934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392433, 31.248119, 22.637503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230499, -0.465266, -0.854633,
		0.471900, -0.821539, 0.319975,
		-0.850988, -0.329548, 0.408923,
		33.137138, 31.149256, 22.760180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681698, 30.695051, 22.333733>,  <33.732830, 31.379938, 22.473934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681698, 30.695051, 22.333733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.298531, 30.786272, 22.403454>,  <33.068630, 30.841005, 22.445286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.298531, 30.786272, 22.403454>,  <33.681698, 30.695051, 22.333733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298531, 30.786272, 22.403454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258585, -0.422059, -0.868907,
		-0.124589, -0.877416, 0.463270,
		-0.957920, 0.228051, 0.174303,
		33.011154, 30.854687, 22.455744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371223, 30.098215, 22.227470>,  <33.681698, 30.695051, 22.333733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371223, 30.098215, 22.227470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.058571, 30.347260, 22.242517>,  <32.870979, 30.496685, 22.251545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.058571, 30.347260, 22.242517>,  <33.371223, 30.098215, 22.227470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058571, 30.347260, 22.242517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484726, -0.568360, -0.664836,
		-0.392552, -0.537890, 0.746041,
		-0.781629, 0.622608, 0.037619,
		32.824081, 30.534042, 22.253803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804466, 29.706738, 22.403267>,  <33.371223, 30.098215, 22.227470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804466, 29.706738, 22.403267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.676697, 30.029284, 22.204172>,  <32.600037, 30.222813, 22.084715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.676697, 30.029284, 22.204172>,  <32.804466, 29.706738, 22.403267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676697, 30.029284, 22.204172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472296, -0.590837, -0.654101,
		-0.821526, 0.026144, 0.569571,
		-0.319423, 0.806367, -0.497736,
		32.580872, 30.271194, 22.054852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031792, 29.667406, 22.263479>,  <32.804466, 29.706738, 22.403267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031792, 29.667406, 22.263479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.151348, 29.914890, 21.972862>,  <32.223083, 30.063381, 21.798492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.151348, 29.914890, 21.972862>,  <32.031792, 29.667406, 22.263479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151348, 29.914890, 21.972862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299327, -0.662140, -0.687004,
		-0.906128, 0.422812, -0.012710,
		0.298890, 0.618709, -0.726543,
		32.241016, 30.100504, 21.754900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475115, 29.742973, 21.817127>,  <32.031792, 29.667406, 22.263479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475115, 29.742973, 21.817127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.784864, 29.877348, 21.602654>,  <31.970715, 29.957972, 21.473969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.784864, 29.877348, 21.602654>,  <31.475115, 29.742973, 21.817127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784864, 29.877348, 21.602654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397104, -0.401709, -0.825190,
		-0.492600, 0.851926, -0.177671,
		0.774373, 0.335934, -0.536185,
		32.017178, 29.978128, 21.441797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209602, 29.713591, 21.142328>,  <31.475115, 29.742973, 21.817127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209602, 29.713591, 21.142328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.599848, 29.765852, 21.071779>,  <31.833996, 29.797209, 21.029449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.599848, 29.765852, 21.071779>,  <31.209602, 29.713591, 21.142328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599848, 29.765852, 21.071779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103700, -0.433833, -0.895005,
		-0.193449, 0.891470, -0.409706,
		0.975614, 0.130652, -0.176371,
		31.892532, 29.805048, 21.018867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267427, 30.118610, 20.504826>,  <31.209602, 29.713591, 21.142328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267427, 30.118610, 20.504826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.623306, 29.937067, 20.524630>,  <31.836834, 29.828140, 20.536512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.623306, 29.937067, 20.524630>,  <31.267427, 30.118610, 20.504826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623306, 29.937067, 20.524630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028225, -0.162917, -0.986236,
		0.455679, 0.876054, -0.157758,
		0.889697, -0.453859, 0.049511,
		31.890215, 29.800909, 20.539482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680700, 30.252550, 19.818142>,  <31.267427, 30.118610, 20.504826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680700, 30.252550, 19.818142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.870319, 29.932699, 19.965586>,  <31.984091, 29.740789, 20.054052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.870319, 29.932699, 19.965586>,  <31.680700, 30.252550, 19.818142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870319, 29.932699, 19.965586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263009, -0.270929, -0.925972,
		0.840299, 0.535904, 0.081875,
		0.474050, -0.799627, 0.368609,
		32.012535, 29.692810, 20.076168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247807, 30.237478, 19.488308>,  <31.680700, 30.252550, 19.818142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247807, 30.237478, 19.488308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.217861, 29.856537, 19.606575>,  <32.199894, 29.627972, 19.677536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.217861, 29.856537, 19.606575>,  <32.247807, 30.237478, 19.488308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217861, 29.856537, 19.606575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256359, -0.304914, -0.917228,
		0.963678, 0.007131, 0.266971,
		-0.074862, -0.952353, 0.295667,
		32.195404, 29.570831, 19.695274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749275, 29.947527, 19.149437>,  <32.247807, 30.237478, 19.488308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749275, 29.947527, 19.149437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.552349, 29.617645, 19.260786>,  <32.434193, 29.419716, 19.327595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.552349, 29.617645, 19.260786>,  <32.749275, 29.947527, 19.149437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552349, 29.617645, 19.260786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133242, -0.387451, -0.912211,
		0.860159, -0.412003, 0.300633,
		-0.492314, -0.824703, 0.278373,
		32.404655, 29.370234, 19.344297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200302, 29.306730, 18.978853>,  <32.749275, 29.947527, 19.149437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200302, 29.306730, 18.978853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.815872, 29.201553, 19.012796>,  <32.585217, 29.138447, 19.033161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.815872, 29.201553, 19.012796>,  <33.200302, 29.306730, 18.978853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815872, 29.201553, 19.012796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066028, -0.516790, -0.853562,
		0.268292, -0.814732, 0.514034,
		-0.961072, -0.262945, 0.084856,
		32.527550, 29.122669, 19.038254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186935, 28.539434, 18.970062>,  <33.200302, 29.306730, 18.978853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186935, 28.539434, 18.970062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.846615, 28.717356, 18.858141>,  <32.642422, 28.824108, 18.790989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.846615, 28.717356, 18.858141>,  <33.186935, 28.539434, 18.970062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846615, 28.717356, 18.858141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123564, -0.348190, -0.929245,
		-0.510757, -0.825174, 0.241278,
		-0.850799, 0.444805, -0.279802,
		32.591373, 28.850798, 18.774200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898457, 28.747374, 19.254568>,  <33.186935, 28.539434, 18.970062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898457, 28.747374, 19.254568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.264069, 28.823696, 19.397758>,  <34.483437, 28.869490, 19.483673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.264069, 28.823696, 19.397758>,  <33.898457, 28.747374, 19.254568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264069, 28.823696, 19.397758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347140, 0.824481, 0.446905,
		-0.209872, -0.532752, 0.819835,
		0.914028, 0.190805, 0.357975,
		34.538277, 28.880938, 19.505152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476471, 28.344440, 18.929985>,  <33.898457, 28.747374, 19.254568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476471, 28.344440, 18.929985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.650002, 28.605242, 18.681246>,  <34.754120, 28.761723, 18.532003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.650002, 28.605242, 18.681246>,  <34.476471, 28.344440, 18.929985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650002, 28.605242, 18.681246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681648, 0.213827, 0.699738,
		0.589198, -0.727442, -0.351673,
		0.433822, 0.652001, -0.621846,
		34.780148, 28.800842, 18.494692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150616, 28.191778, 18.868614>,  <34.476471, 28.344440, 18.929985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150616, 28.191778, 18.868614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.138969, 28.580006, 18.772989>,  <35.131981, 28.812943, 18.715614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.138969, 28.580006, 18.772989>,  <35.150616, 28.191778, 18.868614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138969, 28.580006, 18.772989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694175, 0.191713, 0.693807,
		0.719218, -0.145751, -0.679325,
		-0.029113, 0.970568, -0.239060,
		35.130234, 28.871176, 18.701271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843845, 28.333508, 19.005972>,  <35.150616, 28.191778, 18.868614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843845, 28.333508, 19.005972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.670010, 28.693453, 18.991093>,  <35.565708, 28.909420, 18.982164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.670010, 28.693453, 18.991093>,  <35.843845, 28.333508, 19.005972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670010, 28.693453, 18.991093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531757, 0.289707, 0.795804,
		0.726890, 0.326066, -0.604411,
		-0.434587, 0.899862, -0.037197,
		35.539635, 28.963411, 18.979933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440865, 28.803156, 19.088875>,  <35.843845, 28.333508, 19.005972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440865, 28.803156, 19.088875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.102020, 29.002020, 19.163965>,  <35.898716, 29.121338, 19.209021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.102020, 29.002020, 19.163965>,  <36.440865, 28.803156, 19.088875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102020, 29.002020, 19.163965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426210, 0.424591, 0.798791,
		0.317422, 0.756672, -0.571569,
		-0.847106, 0.497162, 0.187727,
		35.847889, 29.151169, 19.220284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606419, 29.523623, 19.261559>,  <36.440865, 28.803156, 19.088875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606419, 29.523623, 19.261559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.261475, 29.420982, 19.436142>,  <36.054508, 29.359398, 19.540892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.261475, 29.420982, 19.436142>,  <36.606419, 29.523623, 19.261559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261475, 29.420982, 19.436142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318649, 0.394838, 0.861722,
		-0.393449, 0.882190, -0.258726,
		-0.862358, -0.256601, 0.436458,
		36.002766, 29.344002, 19.567080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436222, 30.115021, 19.728380>,  <36.606419, 29.523623, 19.261559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436222, 30.115021, 19.728380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.223400, 29.799623, 19.851795>,  <36.095707, 29.610384, 19.925844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.223400, 29.799623, 19.851795>,  <36.436222, 30.115021, 19.728380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223400, 29.799623, 19.851795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273329, 0.184945, 0.943974,
		-0.801381, 0.586576, 0.117119,
		-0.532052, -0.788495, 0.308540,
		36.063786, 29.563074, 19.944357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577694, 30.883324, 19.948410>,  <36.436222, 30.115021, 19.728380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577694, 30.883324, 19.948410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.954342, 30.971420, 19.846554>,  <37.180332, 31.024279, 19.785440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.954342, 30.971420, 19.846554>,  <36.577694, 30.883324, 19.948410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954342, 30.971420, 19.846554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308454, 0.261249, -0.914661,
		-0.134924, 0.939809, 0.313933,
		0.941622, 0.220244, -0.254639,
		37.236828, 31.037493, 19.770163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667984, 31.436323, 19.546883>,  <36.577694, 30.883324, 19.948410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667984, 31.436323, 19.546883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.995056, 31.218103, 19.473366>,  <37.191299, 31.087172, 19.429256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.995056, 31.218103, 19.473366>,  <36.667984, 31.436323, 19.546883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995056, 31.218103, 19.473366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114424, 0.158872, -0.980646,
		0.564192, 0.822881, 0.067482,
		0.817676, -0.545551, -0.183792,
		37.240360, 31.054438, 19.418228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997932, 31.766968, 18.971777>,  <36.667984, 31.436323, 19.546883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997932, 31.766968, 18.971777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.195484, 31.419161, 18.969944>,  <37.314014, 31.210476, 18.968845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.195484, 31.419161, 18.969944>,  <36.997932, 31.766968, 18.971777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195484, 31.419161, 18.969944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127149, 0.077429, -0.988857,
		0.860184, 0.487793, 0.148799,
		0.493879, -0.869519, -0.004581,
		37.343647, 31.158306, 18.968571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589268, 31.965361, 18.649416>,  <36.997932, 31.766968, 18.971777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589268, 31.965361, 18.649416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.601742, 31.568279, 18.602827>,  <37.609226, 31.330030, 18.574875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.601742, 31.568279, 18.602827>,  <37.589268, 31.965361, 18.649416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601742, 31.568279, 18.602827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267188, 0.120567, -0.956072,
		0.963140, -0.001303, 0.268999,
		0.031186, -0.992704, -0.116471,
		37.611099, 31.270468, 18.567886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081497, 31.910257, 18.146313>,  <37.589268, 31.965361, 18.649416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081497, 31.910257, 18.146313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.868580, 31.572361, 18.124104>,  <37.740829, 31.369623, 18.110777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.868580, 31.572361, 18.124104>,  <38.081497, 31.910257, 18.146313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868580, 31.572361, 18.124104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087714, 0.010202, -0.996094,
		0.842006, -0.535081, 0.068665,
		-0.532290, -0.844739, -0.055524,
		37.708893, 31.318939, 18.107447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509357, 31.489735, 17.796381>,  <38.081497, 31.910257, 18.146313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509357, 31.489735, 17.796381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.151581, 31.321993, 17.734259>,  <37.936916, 31.221348, 17.696985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.151581, 31.321993, 17.734259>,  <38.509357, 31.489735, 17.796381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151581, 31.321993, 17.734259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221929, -0.114751, -0.968287,
		0.388235, -0.900541, 0.195705,
		-0.894439, -0.419355, -0.155306,
		37.883247, 31.196186, 17.687668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578720, 30.940292, 17.256187>,  <38.509357, 31.489735, 17.796381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578720, 30.940292, 17.256187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.190937, 31.038284, 17.251457>,  <37.958267, 31.097080, 17.248619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.190937, 31.038284, 17.251457>,  <38.578720, 30.940292, 17.256187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190937, 31.038284, 17.251457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014451, 0.008914, -0.999856,
		-0.244839, -0.969487, -0.012182,
		-0.969456, 0.244980, -0.011827,
		37.900101, 31.111778, 17.247910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332989, 30.512299, 16.720320>,  <38.578720, 30.940292, 17.256187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332989, 30.512299, 16.720320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.040127, 30.782993, 16.751238>,  <37.864410, 30.945410, 16.769789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.040127, 30.782993, 16.751238>,  <38.332989, 30.512299, 16.720320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040127, 30.782993, 16.751238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247906, -0.159055, -0.955638,
		-0.634422, -0.718837, 0.284220,
		-0.732155, 0.676738, 0.077296,
		37.820480, 30.986015, 16.774427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630787, 30.162533, 16.571251>,  <38.332989, 30.512299, 16.720320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630787, 30.162533, 16.571251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.604366, 30.559486, 16.529655>,  <37.588516, 30.797659, 16.504698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.604366, 30.559486, 16.529655>,  <37.630787, 30.162533, 16.571251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604366, 30.559486, 16.529655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342170, -0.120421, -0.931890,
		-0.937314, -0.025967, 0.347518,
		-0.066047, 0.992383, -0.103988,
		37.584553, 30.857201, 16.498459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.574875, 32.773254, 32.257561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.530266, 33.162800, 32.178410>,  <38.503502, 33.396526, 32.130920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.530266, 33.162800, 32.178410>,  <38.574875, 32.773254, 32.257561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530266, 33.162800, 32.178410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116778, -0.184896, -0.975795,
		-0.986877, -0.131928, -0.093106,
		-0.111520, 0.973862, -0.197876,
		38.496811, 33.454960, 32.119045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105396, 32.801403, 31.650160>,  <38.574875, 32.773254, 32.257561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105396, 32.801403, 31.650160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.342514, 33.123184, 31.665405>,  <38.484783, 33.316254, 31.674553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.342514, 33.123184, 31.665405>,  <38.105396, 32.801403, 31.650160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342514, 33.123184, 31.665405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094939, -0.022808, -0.995222,
		-0.799740, 0.593579, -0.089894,
		0.592793, 0.804453, 0.038114,
		38.520351, 33.364521, 31.676840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710632, 33.244308, 31.237717>,  <38.105396, 32.801403, 31.650160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710632, 33.244308, 31.237717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.101685, 33.323868, 31.265074>,  <38.336315, 33.371605, 31.281488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.101685, 33.323868, 31.265074>,  <37.710632, 33.244308, 31.237717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101685, 33.323868, 31.265074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086381, -0.083210, -0.992781,
		-0.191775, 0.976481, -0.098530,
		0.977630, 0.198902, 0.068392,
		38.394974, 33.383537, 31.285591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750378, 33.773506, 30.777927>,  <37.710632, 33.244308, 31.237717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750378, 33.773506, 30.777927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.113640, 33.615883, 30.834448>,  <38.331596, 33.521309, 30.868361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.113640, 33.615883, 30.834448>,  <37.750378, 33.773506, 30.777927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113640, 33.615883, 30.834448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117932, -0.083045, -0.989543,
		0.401674, 0.915325, -0.028946,
		0.908158, -0.394060, 0.141303,
		38.386086, 33.497665, 30.876839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131584, 33.999107, 30.222687>,  <37.750378, 33.773506, 30.777927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131584, 33.999107, 30.222687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.376389, 33.713303, 30.358282>,  <38.523270, 33.541821, 30.439640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.376389, 33.713303, 30.358282>,  <38.131584, 33.999107, 30.222687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376389, 33.713303, 30.358282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221416, -0.256692, -0.940789,
		0.759222, 0.650831, 0.001106,
		0.612011, -0.714512, 0.338991,
		38.559994, 33.498947, 30.459980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825153, 34.164764, 29.864365>,  <38.131584, 33.999107, 30.222687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825153, 34.164764, 29.864365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.810257, 33.784237, 29.986746>,  <38.801319, 33.555920, 30.060175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.810257, 33.784237, 29.986746>,  <38.825153, 34.164764, 29.864365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810257, 33.784237, 29.986746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122166, -0.308206, -0.943443,
		0.991811, 0.002238, 0.127697,
		-0.037245, -0.951317, 0.305955,
		38.799084, 33.498840, 30.078533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338142, 33.791794, 29.436010>,  <38.825153, 34.164764, 29.864365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338142, 33.791794, 29.436010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.119328, 33.480732, 29.559948>,  <38.988037, 33.294094, 29.634310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.119328, 33.480732, 29.559948>,  <39.338142, 33.791794, 29.436010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119328, 33.480732, 29.559948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192551, -0.477103, -0.857495,
		0.814662, -0.409422, 0.410732,
		-0.547038, -0.777655, 0.309842,
		38.955215, 33.247437, 29.652901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763588, 33.186737, 29.482180>,  <39.338142, 33.791794, 29.436010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763588, 33.186737, 29.482180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.384163, 33.063557, 29.452814>,  <39.156506, 32.989651, 29.435194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.384163, 33.063557, 29.452814>,  <39.763588, 33.186737, 29.482180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384163, 33.063557, 29.452814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220726, -0.477092, -0.850684,
		0.226940, -0.823135, 0.520525,
		-0.948566, -0.307948, -0.073416,
		39.099594, 32.971172, 29.430790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832939, 32.381065, 29.368654>,  <39.763588, 33.186737, 29.482180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832939, 32.381065, 29.368654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.453117, 32.448093, 29.262625>,  <39.225224, 32.488312, 29.199007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.453117, 32.448093, 29.262625>,  <39.832939, 32.381065, 29.368654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453117, 32.448093, 29.262625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104123, -0.628840, -0.770531,
		-0.295809, -0.759262, 0.579671,
		-0.949556, 0.167573, -0.265073,
		39.168251, 32.498367, 29.183104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551739, 31.745497, 29.125200>,  <39.832939, 32.381065, 29.368654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551739, 31.745497, 29.125200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.290733, 32.007713, 28.973152>,  <39.134129, 32.165043, 28.881924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.290733, 32.007713, 28.973152>,  <39.551739, 31.745497, 29.125200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290733, 32.007713, 28.973152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043229, -0.468607, -0.882348,
		-0.756543, -0.592177, 0.277434,
		-0.652514, 0.655541, -0.380121,
		39.094978, 32.204376, 28.859116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128517, 31.304409, 28.741730>,  <39.551739, 31.745497, 29.125200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128517, 31.304409, 28.741730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.075573, 31.675411, 28.601892>,  <39.043808, 31.898012, 28.517990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.075573, 31.675411, 28.601892>,  <39.128517, 31.304409, 28.741730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075573, 31.675411, 28.601892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043097, -0.357749, -0.932823,
		-0.990265, -0.108399, 0.087324,
		-0.132357, 0.927505, -0.349594,
		39.035866, 31.953663, 28.497015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391960, 31.361259, 28.449305>,  <39.128517, 31.304409, 28.741730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391960, 31.361259, 28.449305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.663948, 31.593534, 28.270224>,  <38.827141, 31.732901, 28.162775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.663948, 31.593534, 28.270224>,  <38.391960, 31.361259, 28.449305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663948, 31.593534, 28.270224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172757, -0.466515, -0.867478,
		-0.712594, 0.667206, -0.216900,
		0.679974, 0.580689, -0.447700,
		38.867939, 31.767740, 28.135914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581776, 31.111538, 28.476339>,  <38.391960, 31.361259, 28.449305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581776, 31.111538, 28.476339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.474739, 30.740887, 28.581984>,  <37.410519, 30.518496, 28.645370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.474739, 30.740887, 28.581984>,  <37.581776, 31.111538, 28.476339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474739, 30.740887, 28.581984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026233, 0.266999, 0.963340,
		-0.963175, 0.264711, -0.047139,
		-0.267592, -0.926628, 0.264111,
		37.394463, 30.462898, 28.661217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940681, 31.155361, 28.922577>,  <37.581776, 31.111538, 28.476339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940681, 31.155361, 28.922577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.147984, 30.820387, 28.991995>,  <37.272366, 30.619402, 29.033646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.147984, 30.820387, 28.991995>,  <36.940681, 31.155361, 28.922577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147984, 30.820387, 28.991995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166721, 0.100100, 0.980910,
		-0.838820, -0.537293, -0.087741,
		0.518253, -0.837435, 0.173544,
		37.303459, 30.569157, 29.044058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448685, 30.757078, 29.463768>,  <36.940681, 31.155361, 28.922577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448685, 30.757078, 29.463768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.829449, 30.635336, 29.477806>,  <37.057907, 30.562290, 29.486229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.829449, 30.635336, 29.477806>,  <36.448685, 30.757078, 29.463768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829449, 30.635336, 29.477806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012399, 0.076184, 0.997017,
		-0.306123, -0.949507, 0.068746,
		0.951911, -0.304357, 0.035095,
		37.115021, 30.544029, 29.488335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398186, 30.210430, 29.910013>,  <36.448685, 30.757078, 29.463768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398186, 30.210430, 29.910013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.776779, 30.339315, 29.902468>,  <37.003933, 30.416647, 29.897940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.776779, 30.339315, 29.902468>,  <36.398186, 30.210430, 29.910013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776779, 30.339315, 29.902468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023147, -0.009462, 0.999687,
		0.321935, -0.946620, -0.016414,
		0.946479, 0.322214, -0.018865,
		37.060722, 30.435980, 29.896809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718502, 29.732189, 30.403660>,  <36.398186, 30.210430, 29.910013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718502, 29.732189, 30.403660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.936588, 30.063200, 30.350079>,  <37.067440, 30.261806, 30.317930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.936588, 30.063200, 30.350079>,  <36.718502, 29.732189, 30.403660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936588, 30.063200, 30.350079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029259, 0.140907, 0.989590,
		0.837786, -0.543458, 0.052612,
		0.545215, 0.827525, -0.133951,
		37.100151, 30.311457, 30.309893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234390, 29.739817, 30.971283>,  <36.718502, 29.732189, 30.403660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234390, 29.739817, 30.971283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.279270, 30.117325, 30.846889>,  <37.306198, 30.343830, 30.772253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.279270, 30.117325, 30.846889>,  <37.234390, 29.739817, 30.971283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279270, 30.117325, 30.846889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243434, 0.277316, 0.929428,
		0.963406, -0.179988, -0.198630,
		0.112202, 0.943769, -0.310983,
		37.312931, 30.400455, 30.753595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810123, 30.002417, 31.320210>,  <37.234390, 29.739817, 30.971283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810123, 30.002417, 31.320210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.624928, 30.334089, 31.194929>,  <37.513809, 30.533092, 31.119761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.624928, 30.334089, 31.194929>,  <37.810123, 30.002417, 31.320210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624928, 30.334089, 31.194929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247283, 0.460158, 0.852704,
		0.851170, 0.317345, -0.418092,
		-0.462990, 0.829184, -0.313199,
		37.486031, 30.582844, 31.100969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260101, 30.555054, 31.528851>,  <37.810123, 30.002417, 31.320210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260101, 30.555054, 31.528851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.906956, 30.741604, 31.506790>,  <37.695068, 30.853535, 31.493553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.906956, 30.741604, 31.506790>,  <38.260101, 30.555054, 31.528851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906956, 30.741604, 31.506790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160845, 0.410619, 0.897508,
		0.441224, 0.783508, -0.437535,
		-0.882865, 0.466378, -0.055152,
		37.642097, 30.881517, 31.490244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400162, 31.246990, 31.839485>,  <38.260101, 30.555054, 31.528851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400162, 31.246990, 31.839485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.001163, 31.220091, 31.848204>,  <37.761765, 31.203951, 31.853434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.001163, 31.220091, 31.848204>,  <38.400162, 31.246990, 31.839485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001163, 31.220091, 31.848204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012529, 0.471626, 0.881710,
		-0.069571, 0.879231, -0.471288,
		-0.997498, -0.067247, 0.021795,
		37.701916, 31.199917, 31.854742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169369, 31.936255, 32.017574>,  <38.400162, 31.246990, 31.839485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169369, 31.936255, 32.017574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.864441, 31.691376, 32.101562>,  <37.681484, 31.544449, 32.151955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.864441, 31.691376, 32.101562>,  <38.169369, 31.936255, 32.017574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864441, 31.691376, 32.101562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113497, 0.445852, 0.887882,
		-0.637176, 0.653015, -0.409363,
		-0.762316, -0.612198, 0.209971,
		37.635746, 31.507717, 32.164555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674374, 32.401855, 32.347397>,  <38.169369, 31.936255, 32.017574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674374, 32.401855, 32.347397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.594704, 32.020615, 32.438545>,  <37.546902, 31.791870, 32.493233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.594704, 32.020615, 32.438545>,  <37.674374, 32.401855, 32.347397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594704, 32.020615, 32.438545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116677, 0.253939, 0.960157,
		-0.972994, 0.164648, -0.161782,
		-0.199171, -0.953103, 0.227870,
		37.534954, 31.734684, 32.506905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106365, 32.544456, 32.863010>,  <37.674374, 32.401855, 32.347397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106365, 32.544456, 32.863010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.217701, 32.164955, 32.922871>,  <37.284504, 31.937254, 32.958786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.217701, 32.164955, 32.922871>,  <37.106365, 32.544456, 32.863010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217701, 32.164955, 32.922871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101246, 0.183925, 0.977712,
		-0.955131, -0.256984, 0.147251,
		0.278340, -0.948752, 0.149654,
		37.301205, 31.880329, 32.967766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676094, 32.262215, 33.423248>,  <37.106365, 32.544456, 32.863010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676094, 32.262215, 33.423248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.993866, 32.019306, 33.419327>,  <37.184528, 31.873560, 33.416973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.993866, 32.019306, 33.419327>,  <36.676094, 32.262215, 33.423248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993866, 32.019306, 33.419327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026628, 0.018698, 0.999470,
		-0.606771, -0.794271, 0.031024,
		0.794430, -0.607276, -0.009804,
		37.232197, 31.837124, 33.416386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477890, 31.711981, 33.887562>,  <36.676094, 32.262215, 33.423248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477890, 31.711981, 33.887562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869717, 31.773441, 33.835663>,  <37.104813, 31.810318, 33.804523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869717, 31.773441, 33.835663>,  <36.477890, 31.711981, 33.887562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869717, 31.773441, 33.835663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102614, 0.172951, 0.979570,
		0.172951, -0.972872, 0.153651,
		-0.979570, -0.153651, 0.129743,
		37.163589, 31.819536, 33.796741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741009, 31.617546, 33.865356>,  <36.477890, 31.711981, 33.887562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741009, 31.617546, 33.865356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363373, 31.704426, 33.964573>,  <35.136791, 31.756554, 34.024101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363373, 31.704426, 33.964573>,  <35.741009, 31.617546, 33.865356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363373, 31.704426, 33.964573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245133, 0.040672, -0.968636,
		-0.220479, -0.975279, 0.014846,
		-0.944086, 0.217203, 0.248040,
		35.080147, 31.769587, 34.038986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270245, 31.184513, 33.556919>,  <35.741009, 31.617546, 33.865356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270245, 31.184513, 33.556919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089977, 31.533710, 33.631512>,  <34.981815, 31.743229, 33.676270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089977, 31.533710, 33.631512>,  <35.270245, 31.184513, 33.556919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089977, 31.533710, 33.631512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281868, 0.059054, -0.957634,
		-0.847022, -0.484141, 0.219456,
		-0.450670, 0.872995, 0.186484,
		34.954777, 31.795609, 33.687458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570625, 31.147943, 33.457226>,  <35.270245, 31.184513, 33.556919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570625, 31.147943, 33.457226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687962, 31.522167, 33.378559>,  <34.758362, 31.746702, 33.331360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687962, 31.522167, 33.378559>,  <34.570625, 31.147943, 33.457226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687962, 31.522167, 33.378559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419816, -0.058762, -0.905705,
		-0.858899, 0.348243, 0.375526,
		0.293338, 0.935561, -0.196669,
		34.775963, 31.802835, 33.319557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945824, 31.481829, 33.196918>,  <34.570625, 31.147943, 33.457226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945824, 31.481829, 33.196918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.290119, 31.639153, 33.067657>,  <34.496696, 31.733547, 32.990101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.290119, 31.639153, 33.067657>,  <33.945824, 31.481829, 33.196918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290119, 31.639153, 33.067657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322411, -0.070041, -0.944005,
		-0.393923, 0.916733, 0.066520,
		0.860742, 0.393312, -0.323156,
		34.548340, 31.757147, 32.970711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757362, 31.731833, 32.545784>,  <33.945824, 31.481829, 33.196918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757362, 31.731833, 32.545784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.155464, 31.758734, 32.517681>,  <34.394325, 31.774876, 32.500820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.155464, 31.758734, 32.517681>,  <33.757362, 31.731833, 32.545784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155464, 31.758734, 32.517681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062858, -0.106434, -0.992331,
		-0.074216, 0.992043, -0.101702,
		0.995259, 0.067254, -0.070257,
		34.454041, 31.778910, 32.496605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938026, 32.246155, 31.958853>,  <33.757362, 31.731833, 32.545784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938026, 32.246155, 31.958853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249706, 31.999685, 32.004765>,  <34.436714, 31.851803, 32.032310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249706, 31.999685, 32.004765>,  <33.938026, 32.246155, 31.958853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249706, 31.999685, 32.004765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106722, -0.050022, -0.993030,
		0.617622, 0.786019, 0.026782,
		0.779201, -0.616175, 0.114780,
		34.483467, 31.814833, 32.039200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401569, 32.549412, 31.515232>,  <33.938026, 32.246155, 31.958853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401569, 32.549412, 31.515232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496868, 32.166172, 31.578833>,  <34.554047, 31.936228, 31.616993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496868, 32.166172, 31.578833>,  <34.401569, 32.549412, 31.515232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496868, 32.166172, 31.578833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000277, -0.163782, -0.986497,
		0.971204, 0.234990, -0.039287,
		0.238251, -0.958100, 0.159000,
		34.568344, 31.878742, 31.626534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931477, 32.417770, 30.942411>,  <34.401569, 32.549412, 31.515232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931477, 32.417770, 30.942411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858562, 32.048439, 31.077606>,  <34.814812, 31.826839, 31.158724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858562, 32.048439, 31.077606>,  <34.931477, 32.417770, 30.942411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858562, 32.048439, 31.077606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112252, -0.321958, -0.940076,
		0.976817, -0.209304, -0.044957,
		-0.182287, -0.923328, 0.337989,
		34.803875, 31.771441, 31.179003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313774, 31.944857, 30.487867>,  <34.931477, 32.417770, 30.942411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313774, 31.944857, 30.487867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039265, 31.713518, 30.664295>,  <34.874557, 31.574715, 30.770151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039265, 31.713518, 30.664295>,  <35.313774, 31.944857, 30.487867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039265, 31.713518, 30.664295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171671, -0.460483, -0.870910,
		0.706791, -0.673404, 0.216733,
		-0.686276, -0.578345, 0.441069,
		34.833382, 31.540014, 30.796616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415493, 31.335407, 30.154490>,  <35.313774, 31.944857, 30.487867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415493, 31.335407, 30.154490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.052872, 31.289661, 30.317009>,  <34.835297, 31.262215, 30.414520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.052872, 31.289661, 30.317009>,  <35.415493, 31.335407, 30.154490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052872, 31.289661, 30.317009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314183, -0.459970, -0.830491,
		0.281863, -0.880539, 0.381057,
		-0.906555, -0.114363, 0.406300,
		34.780907, 31.255352, 30.438898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242569, 30.611645, 29.977789>,  <35.415493, 31.335407, 30.154490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242569, 30.611645, 29.977789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.928562, 30.854076, 30.029051>,  <34.740158, 30.999535, 30.059807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.928562, 30.854076, 30.029051>,  <35.242569, 30.611645, 29.977789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928562, 30.854076, 30.029051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325896, -0.228117, -0.917472,
		-0.526825, -0.761993, 0.376593,
		-0.785014, 0.606077, 0.128153,
		34.693058, 31.035900, 30.067497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702763, 30.167030, 29.829920>,  <35.242569, 30.611645, 29.977789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702763, 30.167030, 29.829920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575562, 30.544144, 29.789841>,  <34.499241, 30.770411, 29.765793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575562, 30.544144, 29.789841>,  <34.702763, 30.167030, 29.829920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575562, 30.544144, 29.789841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316682, -0.205239, -0.926061,
		-0.893639, -0.262754, 0.363827,
		-0.317998, 0.942781, -0.100200,
		34.480164, 30.826979, 29.759781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011086, 30.114473, 29.499836>,  <34.702763, 30.167030, 29.829920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011086, 30.114473, 29.499836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113117, 30.497423, 29.445620>,  <34.174335, 30.727194, 29.413090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113117, 30.497423, 29.445620>,  <34.011086, 30.114473, 29.499836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113117, 30.497423, 29.445620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509363, 0.013894, -0.860440,
		-0.821879, 0.288518, 0.491195,
		0.255077, 0.957374, -0.135541,
		34.189640, 30.784636, 29.404957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479259, 30.447983, 29.223511>,  <34.011086, 30.114473, 29.499836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479259, 30.447983, 29.223511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.789482, 30.681217, 29.126740>,  <33.975616, 30.821157, 29.068676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.789482, 30.681217, 29.126740>,  <33.479259, 30.447983, 29.223511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789482, 30.681217, 29.126740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343306, 0.067951, -0.936762,
		-0.529772, 0.809565, 0.252876,
		0.775553, 0.583085, -0.241930,
		34.022148, 30.856142, 29.054161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183517, 31.067171, 29.055731>,  <33.479259, 30.447983, 29.223511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183517, 31.067171, 29.055731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.542431, 31.052511, 28.879757>,  <33.757778, 31.043715, 28.774174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.542431, 31.052511, 28.879757>,  <33.183517, 31.067171, 29.055731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542431, 31.052511, 28.879757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439604, 0.017045, -0.898030,
		0.040412, 0.999183, -0.000818,
		0.897282, -0.036651, -0.439934,
		33.811615, 31.041515, 28.747776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173115, 31.581692, 28.562923>,  <33.183517, 31.067171, 29.055731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173115, 31.581692, 28.562923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.485497, 31.356335, 28.455074>,  <33.672928, 31.221121, 28.390366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.485497, 31.356335, 28.455074>,  <33.173115, 31.581692, 28.562923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485497, 31.356335, 28.455074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201892, 0.180802, -0.962575,
		0.591055, 0.806164, 0.027454,
		0.780956, -0.563392, -0.269622,
		33.719784, 31.187317, 28.374187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487213, 31.913809, 28.107988>,  <33.173115, 31.581692, 28.562923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487213, 31.913809, 28.107988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621830, 31.544109, 28.035873>,  <33.702599, 31.322290, 27.992603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621830, 31.544109, 28.035873>,  <33.487213, 31.913809, 28.107988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621830, 31.544109, 28.035873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136081, 0.141713, -0.980510,
		0.931784, 0.354516, -0.078080,
		0.336542, -0.924248, -0.180289,
		33.722794, 31.266834, 27.981787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943394, 32.044323, 27.590517>,  <33.487213, 31.913809, 28.107988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943394, 32.044323, 27.590517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887005, 31.648722, 27.572618>,  <33.853172, 31.411362, 27.561880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887005, 31.648722, 27.572618>,  <33.943394, 32.044323, 27.590517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887005, 31.648722, 27.572618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014711, 0.043098, -0.998962,
		0.989905, -0.141480, 0.008474,
		-0.140968, -0.989002, -0.044744,
		33.844715, 31.352020, 27.559195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519238, 31.730213, 27.129036>,  <33.943394, 32.044323, 27.590517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519238, 31.730213, 27.129036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189568, 31.503752, 27.123421>,  <33.991764, 31.367874, 27.120050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189568, 31.503752, 27.123421>,  <34.519238, 31.730213, 27.129036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189568, 31.503752, 27.123421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012431, 0.042872, -0.999003,
		0.566193, -0.823183, -0.042372,
		-0.824179, -0.566156, -0.014040,
		33.942314, 31.333904, 27.119209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586216, 31.265165, 26.620592>,  <34.519238, 31.730213, 27.129036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586216, 31.265165, 26.620592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189384, 31.281965, 26.667953>,  <33.951286, 31.292046, 26.696371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189384, 31.281965, 26.667953>,  <34.586216, 31.265165, 26.620592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189384, 31.281965, 26.667953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123025, -0.133733, -0.983352,
		-0.025464, -0.990127, 0.137840,
		-0.992077, 0.041998, 0.118405,
		33.891762, 31.294565, 26.703474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410095, 30.700760, 26.164879>,  <34.586216, 31.265165, 26.620592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410095, 30.700760, 26.164879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.072636, 30.894825, 26.256853>,  <33.870159, 31.011265, 26.312038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.072636, 30.894825, 26.256853>,  <34.410095, 30.700760, 26.164879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072636, 30.894825, 26.256853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305789, -0.082185, -0.948546,
		-0.441305, -0.870551, 0.217694,
		-0.843649, 0.485166, 0.229936,
		33.819542, 31.040375, 26.325834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981331, 30.317221, 25.828514>,  <34.410095, 30.700760, 26.164879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981331, 30.317221, 25.828514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847164, 30.687855, 25.896557>,  <33.766666, 30.910234, 25.937382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847164, 30.687855, 25.896557>,  <33.981331, 30.317221, 25.828514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847164, 30.687855, 25.896557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259297, 0.082791, -0.962243,
		-0.905683, -0.366858, 0.212491,
		-0.335414, 0.926585, 0.170107,
		33.746540, 30.965830, 25.947590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392750, 30.358126, 25.473068>,  <33.981331, 30.317221, 25.828514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392750, 30.358126, 25.473068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.480419, 30.743851, 25.532482>,  <33.533020, 30.975286, 25.568130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.480419, 30.743851, 25.532482>,  <33.392750, 30.358126, 25.473068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480419, 30.743851, 25.532482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311507, 0.213429, -0.925965,
		-0.924623, 0.156676, 0.347168,
		0.219172, 0.964313, 0.148535,
		33.546169, 31.033144, 25.577044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774525, 30.723637, 25.310501>,  <33.392750, 30.358126, 25.473068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774525, 30.723637, 25.310501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.089451, 30.967962, 25.276926>,  <33.278404, 31.114557, 25.256781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.089451, 30.967962, 25.276926>,  <32.774525, 30.723637, 25.310501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089451, 30.967962, 25.276926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272767, 0.222977, -0.935884,
		-0.552936, 0.759728, 0.342162,
		0.787312, 0.610815, -0.083937,
		33.325645, 31.151207, 25.251745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523251, 31.047720, 24.738005>,  <32.774525, 30.723637, 25.310501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523251, 31.047720, 24.738005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904408, 31.168234, 24.751978>,  <33.133102, 31.240541, 24.760363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904408, 31.168234, 24.751978>,  <32.523251, 31.047720, 24.738005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904408, 31.168234, 24.751978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048927, 0.266360, -0.962631,
		-0.299330, 0.915577, 0.268554,
		0.952894, 0.301284, 0.034933,
		33.190277, 31.258619, 24.762457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530819, 31.736357, 24.442757>,  <32.523251, 31.047720, 24.738005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530819, 31.736357, 24.442757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.883053, 31.551151, 24.402376>,  <33.094391, 31.440027, 24.378147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.883053, 31.551151, 24.402376>,  <32.530819, 31.736357, 24.442757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883053, 31.551151, 24.402376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027117, 0.163446, -0.986180,
		0.473115, 0.871150, 0.131372,
		0.880583, -0.463014, -0.100952,
		33.147228, 31.412247, 24.372091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876530, 32.195572, 24.013067>,  <32.530819, 31.736357, 24.442757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876530, 32.195572, 24.013067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029125, 31.827089, 23.982504>,  <33.120682, 31.605999, 23.964167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029125, 31.827089, 23.982504>,  <32.876530, 32.195572, 24.013067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029125, 31.827089, 23.982504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000523, 0.082443, -0.996596,
		0.924373, 0.380232, 0.030969,
		0.381490, -0.921209, -0.076407,
		33.143574, 31.550726, 23.959581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106617, 32.239452, 23.351517>,  <32.876530, 32.195572, 24.013067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106617, 32.239452, 23.351517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.135479, 31.847635, 23.426657>,  <33.152798, 31.612545, 23.471741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.135479, 31.847635, 23.426657>,  <33.106617, 32.239452, 23.351517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135479, 31.847635, 23.426657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098586, -0.194422, -0.975951,
		0.992509, 0.051905, -0.110599,
		0.072160, -0.979544, 0.187849,
		33.157127, 31.553772, 23.483011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736732, 32.701565, 23.165108>,  <33.106617, 32.239452, 23.351517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736732, 32.701565, 23.165108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771935, 33.070736, 23.015198>,  <33.793056, 33.292240, 22.925253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771935, 33.070736, 23.015198>,  <33.736732, 32.701565, 23.165108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771935, 33.070736, 23.015198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302808, 0.333642, 0.892743,
		0.948980, -0.192046, -0.250110,
		0.088001, 0.922931, -0.374773,
		33.798336, 33.347614, 22.902765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431778, 32.888885, 23.183609>,  <33.736732, 32.701565, 23.165108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431778, 32.888885, 23.183609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.218155, 33.226009, 23.210287>,  <34.089981, 33.428284, 23.226294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.218155, 33.226009, 23.210287>,  <34.431778, 32.888885, 23.183609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218155, 33.226009, 23.210287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398432, 0.181323, 0.899096,
		0.745677, 0.506743, -0.432641,
		-0.534058, 0.842813, 0.066695,
		34.057938, 33.478855, 23.230295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870392, 33.338406, 23.546286>,  <34.431778, 32.888885, 23.183609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870392, 33.338406, 23.546286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.507378, 33.506081, 23.556557>,  <34.289570, 33.606686, 23.562719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.507378, 33.506081, 23.556557>,  <34.870392, 33.338406, 23.546286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507378, 33.506081, 23.556557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169648, 0.309981, 0.935484,
		0.384187, 0.853341, -0.352434,
		-0.907535, 0.419191, 0.025676,
		34.235119, 33.631840, 23.564260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960857, 34.006226, 23.839123>,  <34.870392, 33.338406, 23.546286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960857, 34.006226, 23.839123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.567268, 33.950760, 23.883980>,  <34.331116, 33.917480, 23.910894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.567268, 33.950760, 23.883980>,  <34.960857, 34.006226, 23.839123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567268, 33.950760, 23.883980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065270, 0.305197, 0.950050,
		-0.165961, 0.942140, -0.291254,
		-0.983970, -0.138661, 0.112144,
		34.272076, 33.909161, 23.917624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707005, 34.608089, 24.125042>,  <34.960857, 34.006226, 23.839123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707005, 34.608089, 24.125042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485901, 34.288929, 24.221214>,  <34.353241, 34.097431, 24.278917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485901, 34.288929, 24.221214>,  <34.707005, 34.608089, 24.125042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485901, 34.288929, 24.221214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000132, 0.288431, 0.957500,
		-0.833343, 0.529296, -0.159327,
		-0.552756, -0.797905, 0.240432,
		34.320072, 34.049557, 24.293344>
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
