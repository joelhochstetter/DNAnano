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
	<36.835968, 52.718063, 50.134457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766792, 52.471100, 50.441414>,  <36.725288, 52.322922, 50.625587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766792, 52.471100, 50.441414>,  <36.835968, 52.718063, 50.134457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766792, 52.471100, 50.441414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966349, -0.257000, 0.011000,
		0.190430, 0.743475, 0.641078,
		-0.172935, -0.617410, 0.767397,
		36.714912, 52.285877, 50.671635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273575, 53.134670, 49.519028>,  <36.835968, 52.718063, 50.134457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273575, 53.134670, 49.519028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557529, 53.113297, 49.799942>,  <37.727901, 53.100471, 49.968491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557529, 53.113297, 49.799942>,  <37.273575, 53.134670, 49.519028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557529, 53.113297, 49.799942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540978, -0.679858, 0.495113,
		0.450999, -0.731395, -0.511528,
		0.709889, -0.053430, 0.702284,
		37.770496, 53.097267, 50.010628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890270, 53.551815, 49.738358>,  <37.273575, 53.134670, 49.519028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890270, 53.551815, 49.738358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239799, 53.361137, 49.776737>,  <38.449516, 53.246731, 49.799767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239799, 53.361137, 49.776737>,  <37.890270, 53.551815, 49.738358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239799, 53.361137, 49.776737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328881, 0.434057, -0.838708,
		0.358157, 0.764435, 0.536062,
		0.873820, -0.476690, 0.095948,
		38.501945, 53.218132, 49.805523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288502, 54.008492, 49.382233>,  <37.890270, 53.551815, 49.738358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288502, 54.008492, 49.382233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542850, 53.700512, 49.403587>,  <38.695457, 53.515724, 49.416401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542850, 53.700512, 49.403587>,  <38.288502, 54.008492, 49.382233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542850, 53.700512, 49.403587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448514, 0.312343, -0.837423,
		0.628098, 0.556435, 0.543942,
		0.635868, -0.769949, 0.053388,
		38.733612, 53.469528, 49.419605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987511, 54.265244, 49.119572>,  <38.288502, 54.008492, 49.382233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987511, 54.265244, 49.119572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945015, 53.869858, 49.076385>,  <38.919518, 53.632626, 49.050476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945015, 53.869858, 49.076385>,  <38.987511, 54.265244, 49.119572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945015, 53.869858, 49.076385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514097, 0.038334, -0.856875,
		0.851127, -0.146541, 0.504092,
		-0.106243, -0.988462, -0.107963,
		38.913143, 53.573318, 49.043995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552956, 54.034386, 48.803375>,  <38.987511, 54.265244, 49.119572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552956, 54.034386, 48.803375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283615, 53.745159, 48.741684>,  <39.122013, 53.571625, 48.704670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283615, 53.745159, 48.741684>,  <39.552956, 54.034386, 48.803375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283615, 53.745159, 48.741684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302631, -0.079234, -0.949809,
		0.674551, -0.686224, 0.272173,
		-0.673347, -0.723062, -0.154225,
		39.081612, 53.528240, 48.695415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238689, 54.186863, 48.970863>,  <39.552956, 54.034386, 48.803375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238689, 54.186863, 48.970863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041111, 54.526737, 48.897053>,  <39.922562, 54.730663, 48.852768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041111, 54.526737, 48.897053>,  <40.238689, 54.186863, 48.970863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041111, 54.526737, 48.897053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831756, 0.399907, -0.385041,
		-0.253372, -0.343667, -0.904265,
		-0.493948, 0.849686, -0.184522,
		39.892925, 54.781643, 48.841698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565517, 54.779175, 49.414097>,  <40.238689, 54.186863, 48.970863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565517, 54.779175, 49.414097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861214, 54.580528, 49.596039>,  <41.038631, 54.461342, 49.705204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861214, 54.580528, 49.596039>,  <40.565517, 54.779175, 49.414097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861214, 54.580528, 49.596039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448130, -0.141422, -0.882711,
		0.502692, 0.856374, 0.118002,
		0.739243, -0.496612, 0.454859,
		41.082985, 54.431545, 49.732498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153393, 54.799999, 48.921989>,  <40.565517, 54.779175, 49.414097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153393, 54.799999, 48.921989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257256, 54.508904, 49.175911>,  <41.319572, 54.334248, 49.328266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257256, 54.508904, 49.175911>,  <41.153393, 54.799999, 48.921989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257256, 54.508904, 49.175911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427588, -0.502768, -0.751261,
		0.865880, 0.466504, 0.180625,
		0.259654, -0.727735, 0.634808,
		41.335152, 54.290585, 49.366352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825275, 54.591496, 48.812466>,  <41.153393, 54.799999, 48.921989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825275, 54.591496, 48.812466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689220, 54.275719, 49.016853>,  <41.607586, 54.086254, 49.139484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689220, 54.275719, 49.016853>,  <41.825275, 54.591496, 48.812466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689220, 54.275719, 49.016853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512420, -0.611206, -0.603203,
		0.788501, 0.056660, 0.612418,
		-0.340136, -0.789441, 0.510970,
		41.587181, 54.038887, 49.170143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812603, 55.260910, 48.502029>,  <41.825275, 54.591496, 48.812466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812603, 55.260910, 48.502029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150047, 55.259556, 48.716805>,  <42.352516, 55.258743, 48.845669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150047, 55.259556, 48.716805>,  <41.812603, 55.260910, 48.502029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150047, 55.259556, 48.716805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525302, -0.201952, -0.826604,
		0.111236, 0.979390, -0.168590,
		0.843614, -0.003387, 0.536940,
		42.403133, 55.258541, 48.877888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210060, 55.594337, 48.013554>,  <41.812603, 55.260910, 48.502029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210060, 55.594337, 48.013554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427906, 55.395065, 48.283432>,  <42.558613, 55.275501, 48.445358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427906, 55.395065, 48.283432>,  <42.210060, 55.594337, 48.013554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427906, 55.395065, 48.283432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647218, -0.261977, -0.715875,
		0.533388, 0.826550, 0.179753,
		0.544615, -0.498179, 0.674694,
		42.591290, 55.245613, 48.485840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957993, 55.759056, 47.992744>,  <42.210060, 55.594337, 48.013554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957993, 55.759056, 47.992744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973545, 55.384106, 48.131203>,  <42.982876, 55.159134, 48.214279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973545, 55.384106, 48.131203>,  <42.957993, 55.759056, 47.992744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973545, 55.384106, 48.131203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661696, -0.235421, -0.711854,
		0.748764, 0.256721, 0.611103,
		0.038882, -0.937375, 0.346146,
		42.985210, 55.102894, 48.235046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815098, 56.457405, 48.342186>,  <42.957993, 55.759056, 47.992744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815098, 56.457405, 48.342186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757133, 56.695747, 48.658150>,  <42.722355, 56.838753, 48.847729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757133, 56.695747, 48.658150>,  <42.815098, 56.457405, 48.342186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757133, 56.695747, 48.658150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989436, 0.090602, 0.113173,
		-0.004133, 0.797967, -0.602687,
		-0.144913, 0.595853, 0.789911,
		42.713661, 56.874504, 48.895123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072460, 57.084900, 48.182983>,  <42.815098, 56.457405, 48.342186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072460, 57.084900, 48.182983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121429, 57.024490, 48.575352>,  <43.150810, 56.988243, 48.810772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121429, 57.024490, 48.575352>,  <43.072460, 57.084900, 48.182983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121429, 57.024490, 48.575352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992475, 0.016444, -0.121335,
		0.002195, 0.988393, 0.151904,
		0.122425, -0.151027, 0.980919,
		43.158157, 56.979183, 48.869629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520466, 57.586933, 48.399448>,  <43.072460, 57.084900, 48.182983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520466, 57.586933, 48.399448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562401, 57.290646, 48.664883>,  <43.587563, 57.112873, 48.824142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562401, 57.290646, 48.664883>,  <43.520466, 57.586933, 48.399448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562401, 57.290646, 48.664883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982919, 0.178667, 0.044148,
		-0.151261, 0.647621, 0.746798,
		0.104837, -0.740720, 0.663584,
		43.593853, 57.068428, 48.863956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822304, 57.955013, 48.978626>,  <43.520466, 57.586933, 48.399448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822304, 57.955013, 48.978626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898758, 57.564541, 48.937569>,  <43.944630, 57.330257, 48.912933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898758, 57.564541, 48.937569>,  <43.822304, 57.955013, 48.978626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898758, 57.564541, 48.937569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976066, 0.177975, 0.124980,
		-0.103734, -0.124077, 0.986835,
		0.191140, -0.976181, -0.102645,
		43.956100, 57.271687, 48.906776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174168, 57.784962, 49.540947>,  <43.822304, 57.955013, 48.978626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174168, 57.784962, 49.540947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263256, 57.588276, 49.204231>,  <44.316711, 57.470264, 49.002201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263256, 57.588276, 49.204231>,  <44.174168, 57.784962, 49.540947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263256, 57.588276, 49.204231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967676, 0.216299, 0.129686,
		0.118311, -0.843466, 0.523993,
		0.222725, -0.491712, -0.841792,
		44.330074, 57.440762, 48.951694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758202, 57.332817, 49.691425>,  <44.174168, 57.784962, 49.540947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758202, 57.332817, 49.691425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748699, 57.402287, 49.297619>,  <44.742996, 57.443970, 49.061337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748699, 57.402287, 49.297619>,  <44.758202, 57.332817, 49.691425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748699, 57.402287, 49.297619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946786, 0.320102, 0.033621,
		0.320984, -0.931328, -0.172038,
		-0.023757, 0.173675, -0.984516,
		44.741573, 57.454388, 49.002262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.058655, 56.858406, 49.247093>,  <44.758202, 57.332817, 49.691425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.058655, 56.858406, 49.247093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088806, 57.236191, 49.119156>,  <45.106899, 57.462864, 49.042393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088806, 57.236191, 49.119156>,  <45.058655, 56.858406, 49.247093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088806, 57.236191, 49.119156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965420, 0.011151, 0.260461,
		0.249563, -0.328421, -0.910965,
		0.075383, 0.944466, -0.319847,
		45.111420, 57.519531, 49.023201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560291, 56.991734, 48.705395>,  <45.058655, 56.858406, 49.247093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560291, 56.991734, 48.705395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493172, 57.308754, 48.939899>,  <45.452900, 57.498966, 49.080601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493172, 57.308754, 48.939899>,  <45.560291, 56.991734, 48.705395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493172, 57.308754, 48.939899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964099, 0.007778, 0.265429,
		0.205807, 0.609754, -0.765404,
		-0.167799, 0.792553, 0.586263,
		45.442833, 57.546520, 49.115780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980156, 57.466503, 48.550163>,  <45.560291, 56.991734, 48.705395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980156, 57.466503, 48.550163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901512, 57.485722, 48.941887>,  <45.854328, 57.497253, 49.176922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901512, 57.485722, 48.941887>,  <45.980156, 57.466503, 48.550163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.901512, 57.485722, 48.941887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980471, 0.004773, 0.196607,
		0.004773, 0.998834, -0.048047,
		-0.196607, 0.048047, 0.979304,
		45.842529, 57.500137, 49.235680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.260632, 58.012539, 48.756733>,  <45.980156, 57.466503, 48.550163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.260632, 58.012539, 48.756733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.229347, 57.760101, 49.065434>,  <46.210579, 57.608639, 49.250656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.229347, 57.760101, 49.065434>,  <46.260632, 58.012539, 48.756733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.229347, 57.760101, 49.065434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969608, 0.131863, 0.206088,
		-0.231827, 0.764417, 0.601600,
		-0.078208, -0.631093, 0.771754,
		46.205883, 57.570774, 49.296959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.366520, 58.363007, 49.550217>,  <46.260632, 58.012539, 48.756733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.366520, 58.363007, 49.550217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.485111, 57.987442, 49.480316>,  <46.556267, 57.762100, 49.438377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.485111, 57.987442, 49.480316>,  <46.366520, 58.363007, 49.550217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.485111, 57.987442, 49.480316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927469, 0.239413, 0.287197,
		-0.227817, -0.247220, 0.941797,
		0.296479, -0.938916, -0.174747,
		46.574055, 57.705769, 49.427891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.578979, 58.074097, 50.246429>,  <46.366520, 58.363007, 49.550217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.578979, 58.074097, 50.246429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755180, 57.957794, 49.906685>,  <46.860901, 57.888012, 49.702839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755180, 57.957794, 49.906685>,  <46.578979, 58.074097, 50.246429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.755180, 57.957794, 49.906685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890604, 0.260685, 0.372650,
		0.113068, -0.920601, 0.373779,
		0.440500, -0.290754, -0.849366,
		46.887329, 57.870567, 49.651875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.019352, 57.440517, 50.303951>,  <46.578979, 58.074097, 50.246429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.019352, 57.440517, 50.303951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.167431, 57.676025, 50.016533>,  <47.256279, 57.817329, 49.844082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.167431, 57.676025, 50.016533>,  <47.019352, 57.440517, 50.303951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.167431, 57.676025, 50.016533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916259, -0.103981, 0.386855,
		0.153052, -0.801588, -0.577955,
		0.370195, 0.588766, -0.718548,
		47.278488, 57.852654, 49.800968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.481255, 57.033989, 49.954025>,  <47.019352, 57.440517, 50.303951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.481255, 57.033989, 49.954025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.576706, 57.421982, 49.935272>,  <47.633976, 57.654778, 49.924023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.576706, 57.421982, 49.935272>,  <47.481255, 57.033989, 49.954025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.576706, 57.421982, 49.935272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951168, -0.223718, 0.212674,
		0.195802, -0.095340, -0.975998,
		0.238625, 0.969980, -0.046880,
		47.648293, 57.712975, 49.921207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.935135, 57.189903, 49.342747>,  <47.481255, 57.033989, 49.954025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.935135, 57.189903, 49.342747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.981331, 57.444496, 49.647785>,  <48.009048, 57.597252, 49.830807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.981331, 57.444496, 49.647785>,  <47.935135, 57.189903, 49.342747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.981331, 57.444496, 49.647785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933915, -0.331072, 0.134885,
		0.338325, 0.696619, -0.632659,
		0.115492, 0.636485, 0.762593,
		48.015980, 57.635441, 49.876564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.440948, 57.756710, 49.214058>,  <47.935135, 57.189903, 49.342747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.440948, 57.756710, 49.214058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.420639, 57.665928, 49.603088>,  <48.408451, 57.611458, 49.836506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.420639, 57.665928, 49.603088>,  <48.440948, 57.756710, 49.214058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.420639, 57.665928, 49.603088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990014, -0.139669, 0.019094,
		0.131506, 0.963838, 0.231780,
		-0.050776, -0.226955, 0.972581,
		48.405407, 57.597843, 49.894863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.725876, 58.167835, 49.788593>,  <48.440948, 57.756710, 49.214058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.725876, 58.167835, 49.788593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.754429, 57.769608, 49.813095>,  <48.771561, 57.530670, 49.827797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.754429, 57.769608, 49.813095>,  <48.725876, 58.167835, 49.788593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.754429, 57.769608, 49.813095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932542, 0.044826, -0.358268,
		0.353934, 0.082695, 0.931607,
		0.071387, -0.995566, 0.061251,
		48.775845, 57.470936, 49.831470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.212109, 58.088322, 50.327358>,  <48.725876, 58.167835, 49.788593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.212109, 58.088322, 50.327358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.192726, 57.808830, 50.041859>,  <49.181099, 57.641136, 49.870560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.192726, 57.808830, 50.041859>,  <49.212109, 58.088322, 50.327358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.192726, 57.808830, 50.041859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985198, 0.084205, -0.149312,
		0.164429, -0.710415, 0.684305,
		-0.048451, -0.698728, -0.713745,
		49.178192, 57.599213, 49.827736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.699654, 57.647182, 50.556438>,  <49.212109, 58.088322, 50.327358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.699654, 57.647182, 50.556438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.630966, 57.653839, 50.162437>,  <49.589756, 57.657833, 49.926037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.630966, 57.653839, 50.162437>,  <49.699654, 57.647182, 50.556438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.630966, 57.653839, 50.162437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946058, 0.281638, -0.160168,
		0.274749, -0.959376, -0.064109,
		-0.171717, 0.016645, -0.985006,
		49.579453, 57.658833, 49.866936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.944614, 57.106529, 49.991623>,  <49.699654, 57.647182, 50.556438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.944614, 57.106529, 49.991623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.969349, 57.481407, 49.854313>,  <49.984192, 57.706333, 49.771927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.969349, 57.481407, 49.854313>,  <49.944614, 57.106529, 49.991623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.969349, 57.481407, 49.854313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975260, -0.129872, -0.178886,
		-0.212233, -0.323720, -0.922042,
		0.061838, 0.937197, -0.343275,
		49.987900, 57.762566, 49.751331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.184860, 57.096466, 49.200150>,  <49.944614, 57.106529, 49.991623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.184860, 57.096466, 49.200150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.288143, 57.408211, 49.428513>,  <50.350113, 57.595257, 49.565529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.288143, 57.408211, 49.428513>,  <50.184860, 57.096466, 49.200150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.288143, 57.408211, 49.428513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965593, -0.227143, -0.126632,
		0.030985, 0.583957, -0.811193,
		0.258204, 0.779359, 0.570903,
		50.365604, 57.642017, 49.599785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.699944, 57.663097, 48.866348>,  <50.184860, 57.096466, 49.200150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.699944, 57.663097, 48.866348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.733387, 57.654507, 49.264854>,  <50.753452, 57.649353, 49.503960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.733387, 57.654507, 49.264854>,  <50.699944, 57.663097, 48.866348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.733387, 57.654507, 49.264854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996459, -0.007107, -0.083774,
		0.008880, 0.999744, 0.020806,
		0.083605, -0.021476, 0.996267,
		50.758469, 57.648064, 49.563736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.278568, 57.889896, 48.988514>,  <50.699944, 57.663097, 48.866348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.278568, 57.889896, 48.988514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.201988, 57.743477, 49.352791>,  <51.156040, 57.655624, 49.571358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.201988, 57.743477, 49.352791>,  <51.278568, 57.889896, 48.988514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.201988, 57.743477, 49.352791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979080, -0.136373, 0.151015,
		0.068914, 0.920548, 0.384502,
		-0.191453, -0.366051, 0.910688,
		51.144554, 57.633663, 49.625996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.759796, 58.162453, 49.360195>,  <51.278568, 57.889896, 48.988514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.759796, 58.162453, 49.360195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.646049, 57.828606, 49.548897>,  <51.577801, 57.628300, 49.662117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.646049, 57.828606, 49.548897>,  <51.759796, 58.162453, 49.360195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.646049, 57.828606, 49.548897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958310, -0.261764, 0.114549,
		0.027884, 0.484661, 0.874257,
		-0.284367, -0.834615, 0.471755,
		51.560741, 57.578220, 49.690422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.217628, 58.154549, 50.027061>,  <51.759796, 58.162453, 49.360195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.217628, 58.154549, 50.027061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.085045, 57.814087, 49.864250>,  <52.005493, 57.609810, 49.766563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.085045, 57.814087, 49.864250>,  <52.217628, 58.154549, 50.027061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.085045, 57.814087, 49.864250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936594, -0.348834, -0.033248,
		-0.113687, -0.392243, 0.912809,
		-0.331460, -0.851152, -0.407031,
		51.985607, 57.558743, 49.742142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.762184, 57.474403, 49.961868>,  <52.217628, 58.154549, 50.027061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.762184, 57.474403, 49.961868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.084785, 57.326649, 50.146519>,  <53.278347, 57.237995, 50.257309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.084785, 57.326649, 50.146519>,  <52.762184, 57.474403, 49.961868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.084785, 57.326649, 50.146519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154640, 0.885413, 0.438327,
		-0.570641, -0.282129, 0.771215,
		0.806508, -0.369388, 0.461625,
		53.326736, 57.215832, 50.285007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.759079, 57.623833, 50.785717>,  <52.762184, 57.474403, 49.961868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.759079, 57.623833, 50.785717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.122314, 57.601551, 50.619698>,  <53.340256, 57.588181, 50.520084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.122314, 57.601551, 50.619698>,  <52.759079, 57.623833, 50.785717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.122314, 57.601551, 50.619698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189817, 0.938206, 0.289376,
		0.373282, -0.341564, 0.862551,
		0.908091, -0.055708, -0.415050,
		53.394741, 57.584839, 50.495182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.274750, 57.809032, 51.253624>,  <52.759079, 57.623833, 50.785717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.274750, 57.809032, 51.253624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.428776, 57.884876, 50.892342>,  <53.521191, 57.930382, 50.675571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.428776, 57.884876, 50.892342>,  <53.274750, 57.809032, 51.253624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.428776, 57.884876, 50.892342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197277, 0.939137, 0.281254,
		0.901560, -0.286481, 0.324219,
		0.385060, 0.189607, -0.903204,
		53.544292, 57.941757, 50.621380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.874634, 58.119450, 51.392647>,  <53.274750, 57.809032, 51.253624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.874634, 58.119450, 51.392647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.717651, 58.235119, 51.043396>,  <53.623463, 58.304520, 50.833843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.717651, 58.235119, 51.043396>,  <53.874634, 58.119450, 51.392647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.717651, 58.235119, 51.043396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136717, 0.957085, 0.255531,
		0.909552, -0.019087, -0.415151,
		-0.392458, 0.289177, -0.873129,
		53.599915, 58.321873, 50.781456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.267490, 58.576859, 50.885662>,  <53.874634, 58.119450, 51.392647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.267490, 58.576859, 50.885662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.872608, 58.640545, 50.882095>,  <53.635681, 58.678757, 50.879955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.872608, 58.640545, 50.882095>,  <54.267490, 58.576859, 50.885662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.872608, 58.640545, 50.882095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150766, 0.950097, 0.273103,
		0.051958, 0.268263, -0.961944,
		-0.987203, 0.159218, -0.008920,
		53.576447, 58.688309, 50.879417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.706017, 58.429214, 51.329655>,  <54.267490, 58.576859, 50.885662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.706017, 58.429214, 51.329655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.019829, 58.213058, 51.451302>,  <55.208118, 58.083366, 51.524288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.019829, 58.213058, 51.451302>,  <54.706017, 58.429214, 51.329655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.019829, 58.213058, 51.451302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615467, -0.618839, 0.488098,
		-0.075563, -0.570104, -0.818091,
		0.784532, -0.540390, 0.304118,
		55.255188, 58.050941, 51.542538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.778698, 57.682095, 51.123116>,  <54.706017, 58.429214, 51.329655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.778698, 57.682095, 51.123116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.944481, 57.734119, 51.483406>,  <55.043949, 57.765335, 51.699581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.944481, 57.734119, 51.483406>,  <54.778698, 57.682095, 51.123116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.944481, 57.734119, 51.483406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550757, -0.752070, 0.362018,
		0.724494, -0.646123, -0.240070,
		0.414458, 0.130060, 0.900727,
		55.068817, 57.773136, 51.753624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.945038, 56.974693, 51.324966>,  <54.778698, 57.682095, 51.123116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.945038, 56.974693, 51.324966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.855194, 57.199184, 51.643608>,  <54.801289, 57.333878, 51.834793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.855194, 57.199184, 51.643608>,  <54.945038, 56.974693, 51.324966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.855194, 57.199184, 51.643608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688067, -0.670213, 0.278171,
		0.690010, -0.485637, 0.536696,
		-0.224610, 0.561223, 0.796604,
		54.787811, 57.367550, 51.882591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.113506, 56.905571, 52.074005>,  <54.945038, 56.974693, 51.324966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.113506, 56.905571, 52.074005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.027039, 56.580685, 52.290737>,  <54.975159, 56.385754, 52.420776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.027039, 56.580685, 52.290737>,  <55.113506, 56.905571, 52.074005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.027039, 56.580685, 52.290737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830981, -0.444399, -0.334635,
		0.512584, 0.377913, 0.770999,
		-0.216168, -0.812214, 0.541830,
		54.962189, 56.337021, 52.453285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.638725, 56.690311, 52.537537>,  <55.113506, 56.905571, 52.074005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.638725, 56.690311, 52.537537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.433441, 56.375008, 52.401730>,  <55.310272, 56.185825, 52.320248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.433441, 56.375008, 52.401730>,  <55.638725, 56.690311, 52.537537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.433441, 56.375008, 52.401730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846380, -0.399218, -0.352515,
		0.142331, -0.468272, 0.872046,
		-0.513209, -0.788255, -0.339514,
		55.279480, 56.138531, 52.299873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.989788, 56.040253, 52.702156>,  <55.638725, 56.690311, 52.537537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.989788, 56.040253, 52.702156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.784477, 56.076279, 52.360764>,  <55.661289, 56.097893, 52.155926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.784477, 56.076279, 52.360764>,  <55.989788, 56.040253, 52.702156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.784477, 56.076279, 52.360764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834073, -0.181906, -0.520799,
		-0.202160, -0.979182, 0.018245,
		-0.513277, 0.090067, -0.853484,
		55.630493, 56.103298, 52.104717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.383514, 56.445465, 53.271313>,  <55.989788, 56.040253, 52.702156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.383514, 56.445465, 53.271313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.484665, 56.623924, 53.614708>,  <56.545357, 56.730999, 53.820747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.484665, 56.623924, 53.614708>,  <56.383514, 56.445465, 53.271313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.484665, 56.623924, 53.614708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791457, 0.414961, -0.448780,
		-0.556463, 0.792944, -0.248173,
		0.252875, 0.446147, 0.858491,
		56.560528, 56.757767, 53.872253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.565353, 57.173729, 53.188324>,  <56.383514, 56.445465, 53.271313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.565353, 57.173729, 53.188324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.749619, 57.033623, 53.514538>,  <56.860176, 56.949558, 53.710266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.749619, 57.033623, 53.514538>,  <56.565353, 57.173729, 53.188324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.749619, 57.033623, 53.514538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883810, 0.265561, -0.385172,
		-0.081660, 0.898214, 0.431906,
		0.460664, -0.350269, 0.815536,
		56.887817, 56.928543, 53.759197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.853561, 57.713562, 53.601616>,  <56.565353, 57.173729, 53.188324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.853561, 57.713562, 53.601616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.037918, 57.358959, 53.585197>,  <57.148533, 57.146198, 53.575348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.037918, 57.358959, 53.585197>,  <56.853561, 57.713562, 53.601616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.037918, 57.358959, 53.585197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825989, 0.445426, -0.345453,
		0.324528, 0.125316, 0.937538,
		0.460895, -0.886505, -0.041043,
		57.176186, 57.093006, 53.572884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.602867, 57.944172, 53.623993>,  <56.853561, 57.713562, 53.601616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.602867, 57.944172, 53.623993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.994400, 57.868813, 53.655983>,  <58.229321, 57.823597, 53.675179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.994400, 57.868813, 53.655983>,  <57.602867, 57.944172, 53.623993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.994400, 57.868813, 53.655983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195699, 0.747088, -0.635264,
		0.059931, 0.637468, 0.768142,
		0.978831, -0.188397, 0.079978,
		58.288048, 57.812294, 53.679977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.977283, 58.540401, 53.678146>,  <57.602867, 57.944172, 53.623993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.977283, 58.540401, 53.678146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.246597, 58.280319, 53.537338>,  <58.408184, 58.124268, 53.452854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.246597, 58.280319, 53.537338>,  <57.977283, 58.540401, 53.678146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.246597, 58.280319, 53.537338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420832, 0.728450, -0.540611,
		0.607939, 0.215844, 0.764082,
		0.673284, -0.650209, -0.352019,
		58.448582, 58.085258, 53.431732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.599266, 58.870792, 53.668346>,  <57.977283, 58.540401, 53.678146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.599266, 58.870792, 53.668346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.668465, 58.581367, 53.401054>,  <58.709984, 58.407715, 53.240677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.668465, 58.581367, 53.401054>,  <58.599266, 58.870792, 53.668346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.668465, 58.581367, 53.401054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538072, 0.637698, -0.551198,
		0.824956, -0.264206, 0.499644,
		0.172992, -0.723558, -0.668234,
		58.720364, 58.364300, 53.200584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.332283, 58.807552, 53.596790>,  <58.599266, 58.870792, 53.668346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.332283, 58.807552, 53.596790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.148781, 58.687218, 53.262356>,  <59.038681, 58.615017, 53.061695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.148781, 58.687218, 53.262356>,  <59.332283, 58.807552, 53.596790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.148781, 58.687218, 53.262356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660980, 0.513316, -0.547368,
		0.593845, -0.803744, -0.036639,
		-0.458751, -0.300834, -0.836090,
		59.011154, 58.596966, 53.011528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.802612, 58.523155, 53.109905>,  <59.332283, 58.807552, 53.596790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.802612, 58.523155, 53.109905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.491165, 58.711845, 52.944382>,  <59.304298, 58.825058, 52.845070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.491165, 58.711845, 52.944382>,  <59.802612, 58.523155, 53.109905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.491165, 58.711845, 52.944382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626377, 0.623765, -0.467513,
		0.037578, -0.623210, -0.781152,
		-0.778614, 0.471727, -0.413805,
		59.257580, 58.853363, 52.820240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.182465, 57.916332, 52.802212>,  <59.802612, 58.523155, 53.109905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.182465, 57.916332, 52.802212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.340530, 58.168640, 53.069336>,  <60.435371, 58.320026, 53.229610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.340530, 58.168640, 53.069336>,  <60.182465, 57.916332, 52.802212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.340530, 58.168640, 53.069336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918120, -0.294929, -0.264712,
		0.029985, 0.717737, -0.695669,
		0.395166, 0.630770, 0.667812,
		60.459080, 58.357872, 53.269680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.872227, 58.074089, 52.667671>,  <60.182465, 57.916332, 52.802212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.872227, 58.074089, 52.667671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.860535, 58.108704, 53.065998>,  <60.853519, 58.129471, 53.304996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.860535, 58.108704, 53.065998>,  <60.872227, 58.074089, 52.667671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.860535, 58.108704, 53.065998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753303, -0.652930, 0.078845,
		0.657024, 0.752459, -0.046103,
		-0.029226, 0.086533, 0.995820,
		60.851768, 58.134663, 53.364742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.484131, 58.309704, 52.975418>,  <60.872227, 58.074089, 52.667671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.484131, 58.309704, 52.975418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.312485, 58.099388, 53.269192>,  <61.209496, 57.973198, 53.445457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.312485, 58.099388, 53.269192>,  <61.484131, 58.309704, 52.975418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.312485, 58.099388, 53.269192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792157, -0.609750, 0.026315,
		0.433987, 0.593082, 0.678166,
		-0.429119, -0.525793, 0.734437,
		61.183750, 57.941650, 53.489525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.725876, 58.448452, 53.733883>,  <61.484131, 58.309704, 52.975418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.725876, 58.448452, 53.733883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.609650, 58.085461, 53.612518>,  <61.539913, 57.867664, 53.539700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.609650, 58.085461, 53.612518>,  <61.725876, 58.448452, 53.733883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.609650, 58.085461, 53.612518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911330, -0.359103, 0.201306,
		-0.291635, -0.218013, 0.931353,
		-0.290564, -0.907478, -0.303409,
		61.522480, 57.813217, 53.521496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.709797, 57.895466, 54.254284>,  <61.725876, 58.448452, 53.733883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.709797, 57.895466, 54.254284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.839066, 57.710056, 53.924267>,  <61.916626, 57.598812, 53.726257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.839066, 57.710056, 53.924267>,  <61.709797, 57.895466, 54.254284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.839066, 57.710056, 53.924267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828441, -0.282844, 0.483410,
		-0.457433, -0.839728, 0.292595,
		0.323174, -0.463525, -0.825047,
		61.936016, 57.570999, 53.676754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.962204, 57.227074, 54.413727>,  <61.709797, 57.895466, 54.254284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.962204, 57.227074, 54.413727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.134483, 57.396255, 54.094826>,  <62.237850, 57.497765, 53.903484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.134483, 57.396255, 54.094826>,  <61.962204, 57.227074, 54.413727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.134483, 57.396255, 54.094826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901499, -0.160163, 0.402053,
		0.042358, -0.891886, -0.450272,
		0.430703, 0.422951, -0.797251,
		62.263695, 57.523140, 53.855652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.736938, 57.474140, 54.451851>,  <61.962204, 57.227074, 54.413727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.736938, 57.474140, 54.451851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.710144, 57.451729, 54.850323>,  <62.694065, 57.438282, 55.089405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.710144, 57.451729, 54.850323>,  <62.736938, 57.474140, 54.451851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.710144, 57.451729, 54.850323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988903, 0.128962, 0.073752,
		-0.132601, 0.990066, 0.046764,
		-0.066988, -0.056025, 0.996180,
		62.690048, 57.434921, 55.149178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.194935, 57.955719, 54.749920>,  <62.736938, 57.474140, 54.451851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.194935, 57.955719, 54.749920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.141785, 57.654110, 55.007225>,  <63.109894, 57.473145, 55.161610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.141785, 57.654110, 55.007225>,  <63.194935, 57.955719, 54.749920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.141785, 57.654110, 55.007225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982631, -0.015390, 0.184933,
		-0.129545, 0.656664, 0.742974,
		-0.132873, -0.754026, 0.643265,
		63.101921, 57.427902, 55.200203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.474384, 58.087006, 55.500675>,  <63.194935, 57.955719, 54.749920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.474384, 58.087006, 55.500675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.483429, 57.696014, 55.416756>,  <63.488853, 57.461418, 55.366402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.483429, 57.696014, 55.416756>,  <63.474384, 58.087006, 55.500675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.483429, 57.696014, 55.416756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986251, -0.012557, 0.164779,
		-0.163703, -0.210641, 0.963759,
		0.022608, -0.977483, -0.209800,
		63.490211, 57.402771, 55.353817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.993996, 58.407543, 54.888992>,  <63.474384, 58.087006, 55.500675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.993996, 58.407543, 54.888992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.046387, 58.723747, 55.128304>,  <64.077820, 58.913471, 55.271893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.046387, 58.723747, 55.128304>,  <63.993996, 58.407543, 54.888992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.046387, 58.723747, 55.128304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721256, -0.490016, 0.489565,
		0.680173, 0.367393, -0.634340,
		0.130974, 0.790511, 0.598280,
		64.085678, 58.960899, 55.307789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.654518, 58.768013, 54.742508>,  <63.993996, 58.407543, 54.888992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.654518, 58.768013, 54.742508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.509216, 58.770676, 55.115173>,  <64.422035, 58.772274, 55.338772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.509216, 58.770676, 55.115173>,  <64.654518, 58.768013, 54.742508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.509216, 58.770676, 55.115173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784472, -0.537294, 0.309708,
		0.502641, 0.843369, 0.189950,
		-0.363257, 0.006661, 0.931665,
		64.400238, 58.772675, 55.394672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.255119, 59.014652, 55.172398>,  <64.654518, 58.768013, 54.742508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.255119, 59.014652, 55.172398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.000336, 58.791191, 55.384888>,  <64.847466, 58.657116, 55.512383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.000336, 58.791191, 55.384888>,  <65.255119, 59.014652, 55.172398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.000336, 58.791191, 55.384888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770834, -0.470737, 0.429211,
		0.010286, 0.682871, 0.730466,
		-0.636953, -0.558653, 0.531223,
		64.809250, 58.623596, 55.544254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.177330, 59.167706, 55.842144>,  <65.255119, 59.014652, 55.172398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.177330, 59.167706, 55.842144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.142845, 58.770126, 55.814903>,  <65.122154, 58.531578, 55.798557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.142845, 58.770126, 55.814903>,  <65.177330, 59.167706, 55.842144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.142845, 58.770126, 55.814903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498390, -0.102217, 0.860906,
		-0.862656, 0.040279, 0.504185,
		-0.086213, -0.993946, -0.068103,
		65.116982, 58.471943, 55.794472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.147003, 59.469360, 56.545177>,  <65.177330, 59.167706, 55.842144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.147003, 59.469360, 56.545177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.519417, 59.601288, 56.482689>,  <65.742867, 59.680443, 56.445194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.519417, 59.601288, 56.482689>,  <65.147003, 59.469360, 56.545177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.519417, 59.601288, 56.482689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268593, -0.329447, 0.905164,
		0.247071, -0.884695, -0.395311,
		0.931028, 0.329818, -0.156226,
		65.798729, 59.700233, 56.435822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.593849, 58.906933, 56.811760>,  <65.147003, 59.469360, 56.545177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.593849, 58.906933, 56.811760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.776955, 59.262035, 56.792404>,  <65.886818, 59.475098, 56.780788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.776955, 59.262035, 56.792404>,  <65.593849, 58.906933, 56.811760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.776955, 59.262035, 56.792404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269824, -0.086859, 0.958984,
		0.847138, -0.452050, -0.279299,
		0.457769, 0.887753, -0.048393,
		65.914284, 59.528362, 56.777885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.561905, 59.635593, 57.195644>,  <65.593849, 58.906933, 56.811760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.561905, 59.635593, 57.195644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.851654, 59.848267, 57.020103>,  <66.025505, 59.975868, 56.914780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.851654, 59.848267, 57.020103>,  <65.561905, 59.635593, 57.195644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.851654, 59.848267, 57.020103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646526, -0.302928, 0.700171,
		0.239327, -0.790918, -0.563179,
		0.724380, 0.531680, -0.438850,
		66.068970, 60.007771, 56.888447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.237411, 59.189632, 57.183449>,  <65.561905, 59.635593, 57.195644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.237411, 59.189632, 57.183449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.295197, 59.585365, 57.190918>,  <66.329872, 59.822803, 57.195400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.295197, 59.585365, 57.190918>,  <66.237411, 59.189632, 57.183449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.295197, 59.585365, 57.190918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765378, -0.123686, 0.631584,
		0.627156, -0.076956, -0.775082,
		0.144471, 0.989333, 0.018670,
		66.338539, 59.882164, 57.196518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.921814, 59.303017, 56.949867>,  <66.237411, 59.189632, 57.183449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.921814, 59.303017, 56.949867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.781418, 59.535652, 57.243416>,  <66.697182, 59.675232, 57.419544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.781418, 59.535652, 57.243416>,  <66.921814, 59.303017, 56.949867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.781418, 59.535652, 57.243416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751966, -0.291963, 0.591021,
		0.557993, 0.759285, -0.334859,
		-0.350987, 0.581588, 0.733869,
		66.676125, 59.710129, 57.463577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.381294, 59.811550, 57.327835>,  <66.921814, 59.303017, 56.949867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.381294, 59.811550, 57.327835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.111404, 59.680470, 57.592369>,  <66.949471, 59.601822, 57.751091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.111404, 59.680470, 57.592369>,  <67.381294, 59.811550, 57.327835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.111404, 59.680470, 57.592369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728771, -0.437628, 0.526663,
		0.116831, 0.837312, 0.534096,
		-0.674717, -0.327703, 0.661338,
		66.908989, 59.582157, 57.790771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.494644, 60.136551, 58.077938>,  <67.381294, 59.811550, 57.327835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.494644, 60.136551, 58.077938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.380516, 59.770714, 57.963318>,  <67.312042, 59.551212, 57.894547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.380516, 59.770714, 57.963318>,  <67.494644, 60.136551, 58.077938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.380516, 59.770714, 57.963318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882470, -0.367344, 0.293776,
		-0.373949, -0.169054, 0.911912,
		-0.285322, -0.914592, -0.286553,
		67.294922, 59.496338, 57.877354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.582962, 59.538704, 58.693928>,  <67.494644, 60.136551, 58.077938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.582962, 59.538704, 58.693928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.622986, 59.438065, 58.308868>,  <67.647003, 59.377682, 58.077835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.622986, 59.438065, 58.308868>,  <67.582962, 59.538704, 58.693928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.622986, 59.438065, 58.308868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865316, -0.455570, 0.209009,
		-0.491138, -0.853906, 0.172129,
		0.100057, -0.251598, -0.962646,
		67.653000, 59.362587, 58.020073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.654053, 58.840435, 58.601303>,  <67.582962, 59.538704, 58.693928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.654053, 58.840435, 58.601303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.844345, 59.017754, 58.297417>,  <67.958519, 59.124146, 58.115086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.844345, 59.017754, 58.297417>,  <67.654053, 58.840435, 58.601303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.844345, 59.017754, 58.297417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815016, -0.546990, 0.191184,
		-0.330809, -0.710135, -0.621509,
		0.475726, 0.443294, -0.759720,
		67.987061, 59.150742, 58.069500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.993248, 58.402206, 58.164398>,  <67.654053, 58.840435, 58.601303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.993248, 58.402206, 58.164398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.179535, 58.749954, 58.230492>,  <68.291306, 58.958603, 58.270145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.179535, 58.749954, 58.230492>,  <67.993248, 58.402206, 58.164398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.179535, 58.749954, 58.230492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867964, -0.485150, 0.106150,
		0.172445, 0.093979, -0.980526,
		0.465727, 0.869366, 0.165232,
		68.319252, 59.010765, 58.280060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.679062, 58.422935, 57.837627>,  <67.993248, 58.402206, 58.164398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.679062, 58.422935, 57.837627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.698517, 58.724060, 58.100204>,  <68.710190, 58.904736, 58.257751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.698517, 58.724060, 58.100204>,  <68.679062, 58.422935, 57.837627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.698517, 58.724060, 58.100204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983761, -0.149782, 0.098889,
		0.172768, 0.640972, -0.747868,
		0.048632, 0.752808, 0.656441,
		68.713104, 58.949902, 58.297138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.193626, 58.855106, 57.694324>,  <68.679062, 58.422935, 57.837627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.193626, 58.855106, 57.694324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.132973, 58.904442, 58.086609>,  <69.096581, 58.934044, 58.321980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.132973, 58.904442, 58.086609>,  <69.193626, 58.855106, 57.694324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.132973, 58.904442, 58.086609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984755, 0.104417, 0.139120,
		-0.085244, 0.986856, -0.137294,
		-0.151628, 0.123342, 0.980712,
		69.087486, 58.941444, 58.380821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.715225, 59.349060, 57.838776>,  <69.193626, 58.855106, 57.694324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.715225, 59.349060, 57.838776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.634979, 59.101158, 58.142265>,  <69.586830, 58.952419, 58.324360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.634979, 59.101158, 58.142265>,  <69.715225, 59.349060, 57.838776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.634979, 59.101158, 58.142265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979488, -0.141836, 0.143127,
		0.018911, 0.771874, 0.635494,
		-0.200612, -0.619753, 0.758724,
		69.574799, 58.915234, 58.369881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.484665, 59.243462, 58.036228>,  <69.715225, 59.349060, 57.838776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.484665, 59.243462, 58.036228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.491180, 59.009361, 57.711952>,  <70.495087, 58.868900, 57.517387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.491180, 59.009361, 57.711952>,  <70.484665, 59.243462, 58.036228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.491180, 59.009361, 57.711952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872453, -0.387753, 0.297444,
		-0.488426, -0.712132, 0.504290,
		0.016279, -0.585249, -0.810690,
		70.496063, 58.833786, 57.468746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.549568, 58.559227, 58.187943>,  <70.484665, 59.243462, 58.036228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.549568, 58.559227, 58.187943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.703636, 58.643661, 57.828590>,  <70.796082, 58.694321, 57.612980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.703636, 58.643661, 57.828590>,  <70.549568, 58.559227, 58.187943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.703636, 58.643661, 57.828590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910987, -0.242514, 0.333601,
		-0.147450, -0.946905, -0.285708,
		0.385177, 0.211087, -0.898377,
		70.819191, 58.706989, 57.559078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.864105, 57.977394, 58.057030>,  <70.549568, 58.559227, 58.187943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.864105, 57.977394, 58.057030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.995300, 58.334797, 57.934341>,  <71.074020, 58.549236, 57.860729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.995300, 58.334797, 57.934341>,  <70.864105, 57.977394, 58.057030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.995300, 58.334797, 57.934341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767680, -0.062880, 0.637741,
		0.550536, -0.444634, -0.706548,
		0.327989, 0.893502, -0.306719,
		71.093697, 58.602848, 57.842327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.380089, 57.857826, 57.571880>,  <70.864105, 57.977394, 58.057030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.380089, 57.857826, 57.571880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.419930, 58.191780, 57.788414>,  <71.443832, 58.392151, 57.918335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.419930, 58.191780, 57.788414>,  <71.380089, 57.857826, 57.571880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.419930, 58.191780, 57.788414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722603, -0.434706, 0.537471,
		0.684049, 0.337634, -0.646592,
		0.099609, 0.834885, 0.541336,
		71.449814, 58.442245, 57.950813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.038910, 57.982273, 57.558506>,  <71.380089, 57.857826, 57.571880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.038910, 57.982273, 57.558506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.874847, 58.148270, 57.883362>,  <71.776413, 58.247868, 58.078274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.874847, 58.148270, 57.883362>,  <72.038910, 57.982273, 57.558506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.874847, 58.148270, 57.883362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710955, -0.412273, 0.569714,
		0.571245, 0.811059, -0.125944,
		-0.410149, 0.414987, 0.812135,
		71.751801, 58.272766, 58.127003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.669136, 58.049412, 58.048828>,  <72.038910, 57.982273, 57.558506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.669136, 58.049412, 58.048828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.323990, 58.086643, 58.247543>,  <72.116905, 58.108982, 58.366772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.323990, 58.086643, 58.247543>,  <72.669136, 58.049412, 58.048828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.323990, 58.086643, 58.247543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439721, -0.346402, 0.828644,
		0.249217, 0.933457, 0.257970,
		-0.862865, 0.093078, 0.496790,
		72.065132, 58.114567, 58.396580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.753357, 58.446815, 58.733921>,  <72.669136, 58.049412, 58.048828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.753357, 58.446815, 58.733921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.461586, 58.173401, 58.744591>,  <72.286522, 58.009350, 58.750992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.461586, 58.173401, 58.744591>,  <72.753357, 58.446815, 58.733921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.461586, 58.173401, 58.744591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404452, -0.399500, 0.822690,
		-0.551686, 0.610879, 0.567864,
		-0.729426, -0.683540, 0.026673,
		72.242760, 57.968338, 58.752594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.431610, 58.483936, 59.451679>,  <72.753357, 58.446815, 58.733921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.431610, 58.483936, 59.451679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.384346, 58.129009, 59.273369>,  <72.355988, 57.916054, 59.166382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.384346, 58.129009, 59.273369>,  <72.431610, 58.483936, 59.451679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.384346, 58.129009, 59.273369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423543, -0.451065, 0.785590,
		-0.898138, -0.095984, 0.429110,
		-0.118153, -0.887315, -0.445772,
		72.348900, 57.862816, 59.139637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.458176, 58.043095, 59.976593>,  <72.431610, 58.483936, 59.451679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.458176, 58.043095, 59.976593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.486893, 57.757698, 59.697800>,  <72.504120, 57.586460, 59.530525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.486893, 57.757698, 59.697800>,  <72.458176, 58.043095, 59.976593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.486893, 57.757698, 59.697800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216103, -0.671057, 0.709212,
		-0.973728, -0.201531, 0.106015,
		0.071786, -0.713490, -0.696979,
		72.508430, 57.543652, 59.488705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.930801, 57.593388, 60.100647>,  <72.458176, 58.043095, 59.976593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.930801, 57.593388, 60.100647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.273842, 57.455307, 59.948143>,  <72.479668, 57.372459, 59.856640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.273842, 57.455307, 59.948143>,  <71.930801, 57.593388, 60.100647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.273842, 57.455307, 59.948143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072114, -0.653264, 0.753688,
		-0.509242, -0.673855, -0.535343,
		0.857597, -0.345203, -0.381264,
		72.531120, 57.351746, 59.833763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.873840, 56.881676, 59.974560>,  <71.930801, 57.593388, 60.100647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.873840, 56.881676, 59.974560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.256348, 56.973564, 60.046967>,  <72.485855, 57.028698, 60.090412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.256348, 56.973564, 60.046967>,  <71.873840, 56.881676, 59.974560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.256348, 56.973564, 60.046967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046840, -0.490639, 0.870103,
		0.288694, -0.840536, -0.458426,
		0.956275, 0.229721, 0.181016,
		72.543228, 57.042480, 60.101273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.184975, 56.279335, 60.143398>,  <71.873840, 56.881676, 59.974560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.184975, 56.279335, 60.143398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.401711, 56.583588, 60.286430>,  <72.531754, 56.766140, 60.372250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.401711, 56.583588, 60.286430>,  <72.184975, 56.279335, 60.143398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.401711, 56.583588, 60.286430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028934, -0.442071, 0.896513,
		0.839990, -0.475412, -0.261535,
		0.541830, 0.760629, 0.357580,
		72.564262, 56.811775, 60.393703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.807014, 56.082428, 60.506180>,  <72.184975, 56.279335, 60.143398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.807014, 56.082428, 60.506180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.719208, 56.433594, 60.676392>,  <72.666519, 56.644291, 60.778519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.719208, 56.433594, 60.676392>,  <72.807014, 56.082428, 60.506180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.719208, 56.433594, 60.676392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251269, -0.370582, 0.894166,
		0.942695, 0.303214, -0.139241,
		-0.219524, 0.877912, 0.425534,
		72.653351, 56.696968, 60.804050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.415909, 56.239647, 60.874992>,  <72.807014, 56.082428, 60.506180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.415909, 56.239647, 60.874992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.068878, 56.382771, 61.013145>,  <72.860664, 56.468647, 61.096039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.068878, 56.382771, 61.013145>,  <73.415909, 56.239647, 60.874992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.068878, 56.382771, 61.013145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217122, -0.352295, 0.910355,
		0.447415, 0.864788, 0.227951,
		-0.867570, 0.357813, 0.345387,
		72.808609, 56.490116, 61.116760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.546417, 56.715137, 61.496662>,  <73.415909, 56.239647, 60.874992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.546417, 56.715137, 61.496662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.202026, 56.512703, 61.476257>,  <72.995392, 56.391243, 61.464012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.202026, 56.512703, 61.476257>,  <73.546417, 56.715137, 61.496662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.202026, 56.512703, 61.476257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255638, -0.517229, 0.816777,
		-0.439748, 0.690180, 0.574694,
		-0.860971, -0.506089, -0.051014,
		72.943733, 56.360878, 61.460953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.086090, 57.164799, 61.292400>,  <73.546417, 56.715137, 61.496662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.086090, 57.164799, 61.292400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.331223, 57.480854, 61.296700>,  <73.478302, 57.670486, 61.299278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.331223, 57.480854, 61.296700>,  <73.086090, 57.164799, 61.292400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.331223, 57.480854, 61.296700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751170, 0.578287, 0.318319,
		0.245302, -0.203148, 0.947923,
		0.612838, 0.790136, 0.010744,
		73.515076, 57.717896, 61.299923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.607468, 57.522465, 60.884312>,  <73.086090, 57.164799, 61.292400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.607468, 57.522465, 60.884312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.916435, 57.556641, 60.632576>,  <73.101814, 57.577145, 60.481533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.916435, 57.556641, 60.632576>,  <72.607468, 57.522465, 60.884312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.916435, 57.556641, 60.632576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577516, -0.506822, 0.640005,
		-0.264284, -0.857807, -0.440819,
		0.772418, 0.085437, -0.629342,
		73.148163, 57.582272, 60.443775>
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
