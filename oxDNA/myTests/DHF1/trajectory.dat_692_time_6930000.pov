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
	<5.180327, 1.027013, 0.263896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.067290, 0.756548, -0.008265>,  <4.999468, 0.594269, -0.171561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.067290, 0.756548, -0.008265>,  <5.180327, 1.027013, 0.263896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.067290, 0.756548, -0.008265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904553, -0.048237, 0.423624,
		-0.319259, 0.735172, -0.597992,
		-0.282592, -0.676162, -0.680402,
		4.982513, 0.553699, -0.212385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.474785, 1.213833, 0.147060>,  <5.180327, 1.027013, 0.263896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.474785, 1.213833, 0.147060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.527594, 0.839018, 0.017735>,  <4.559279, 0.614129, -0.059861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.527594, 0.839018, 0.017735>,  <4.474785, 1.213833, 0.147060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.527594, 0.839018, 0.017735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898155, -0.251081, 0.360938,
		-0.419390, 0.242733, -0.874753,
		0.132022, -0.937037, -0.323313,
		4.567200, 0.557907, -0.079259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.795219, 0.975793, -0.160696>,  <4.474785, 1.213833, 0.147060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.795219, 0.975793, -0.160696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.013220, 0.653982, -0.066284>,  <4.144021, 0.460896, -0.009637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.013220, 0.653982, -0.066284>,  <3.795219, 0.975793, -0.160696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.013220, 0.653982, -0.066284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740419, -0.329742, 0.585705,
		-0.393388, -0.493968, -0.775398,
		0.545001, -0.804528, 0.236027,
		4.176721, 0.412624, 0.004525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.402491, 0.414400, -0.143807>,  <3.795219, 0.975793, -0.160696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.402491, 0.414400, -0.143807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.698293, 0.320904, 0.108700>,  <3.875774, 0.264806, 0.260204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.698293, 0.320904, 0.108700>,  <3.402491, 0.414400, -0.143807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.698293, 0.320904, 0.108700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629947, -0.570850, 0.526590,
		0.237274, -0.787081, -0.569390,
		0.739505, -0.233739, 0.631267,
		3.920144, 0.250782, 0.298080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.298328, -0.308543, 0.011641>,  <3.402491, 0.414400, -0.143807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.298328, -0.308543, 0.011641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.518273, -0.140635, 0.300486>,  <3.650240, -0.039890, 0.473792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.518273, -0.140635, 0.300486>,  <3.298328, -0.308543, 0.011641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.518273, -0.140635, 0.300486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536038, -0.485670, 0.690499,
		0.640558, -0.766758, -0.042039,
		0.549862, 0.419770, 0.722111,
		3.683232, -0.014703, 0.517119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.558637, -0.865644, 0.441094>,  <3.298328, -0.308543, 0.011641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.558637, -0.865644, 0.441094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.562193, -0.531729, 0.661293>,  <3.564326, -0.331379, 0.793413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.562193, -0.531729, 0.661293>,  <3.558637, -0.865644, 0.441094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.562193, -0.531729, 0.661293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501422, -0.472584, 0.724735,
		0.865157, -0.282474, 0.414381,
		0.008889, 0.834789, 0.550498,
		3.564860, -0.281292, 0.826442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.600247, -1.127175, 1.066280>,  <3.558637, -0.865644, 0.441094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.600247, -1.127175, 1.066280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.457966, -0.758362, 1.127378>,  <3.372597, -0.537074, 1.164037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.457966, -0.758362, 1.127378>,  <3.600247, -1.127175, 1.066280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.457966, -0.758362, 1.127378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564763, -0.342275, 0.750926,
		0.744660, 0.180841, 0.642478,
		-0.355702, 0.922033, 0.152746,
		3.351255, -0.481752, 1.173202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.767467, -0.830682, 1.752492>,  <3.600247, -1.127175, 1.066280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.767467, -0.830682, 1.752492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.415164, -0.726282, 1.594431>,  <3.203782, -0.663642, 1.499594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.415164, -0.726282, 1.594431>,  <3.767467, -0.830682, 1.752492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.415164, -0.726282, 1.594431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472714, -0.534641, 0.700501,
		-0.028434, 0.803765, 0.594267,
		-0.880757, 0.261001, -0.395153,
		3.150937, -0.647982, 1.475885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.185704, -0.915536, 2.299714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.982285, -0.586239, 2.198799>,  <1.860233, -0.388661, 2.138250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.982285, -0.586239, 2.198799>,  <2.185704, -0.915536, 2.299714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.982285, -0.586239, 2.198799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746061, 0.275031, -0.606424,
		-0.429848, -0.496618, -0.754056,
		-0.508550, 0.823243, -0.252286,
		1.829720, -0.339266, 2.123113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.867521, -0.899639, 1.696072>,  <2.185704, -0.915536, 2.299714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.867521, -0.899639, 1.696072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.027130, -0.557958, 1.829409>,  <2.122896, -0.352949, 1.909411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.027130, -0.557958, 1.829409>,  <1.867521, -0.899639, 1.696072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.027130, -0.557958, 1.829409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805286, -0.152601, -0.572911,
		-0.438515, 0.497040, -0.748769,
		0.399023, 0.854204, 0.333342,
		2.146837, -0.301697, 1.929411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.176637, -0.381217, 1.185480>,  <1.867521, -0.899639, 1.696072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.176637, -0.381217, 1.185480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.363522, -0.286294, 1.526161>,  <2.475652, -0.229340, 1.730570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.363522, -0.286294, 1.526161>,  <2.176637, -0.381217, 1.185480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.363522, -0.286294, 1.526161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826886, 0.223752, -0.515940,
		-0.313007, 0.945315, -0.091687,
		0.467211, 0.237307, 0.851704,
		2.503685, -0.215102, 1.781672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.444144, 0.292070, 1.081837>,  <2.176637, -0.381217, 1.185480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.444144, 0.292070, 1.081837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.676357, 0.068359, 1.318544>,  <2.815686, -0.065867, 1.460569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.676357, 0.068359, 1.318544>,  <2.444144, 0.292070, 1.081837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.676357, 0.068359, 1.318544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785788, 0.194389, -0.587154,
		0.213347, 0.805868, 0.552322,
		0.580534, -0.559276, 0.591770,
		2.850518, -0.099423, 1.496075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.927100, 0.686875, 1.394742>,  <2.444144, 0.292070, 1.081837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.927100, 0.686875, 1.394742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.069454, 0.315935, 1.348495>,  <3.154866, 0.093371, 1.320748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.069454, 0.315935, 1.348495>,  <2.927100, 0.686875, 1.394742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.069454, 0.315935, 1.348495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844907, 0.372150, -0.384236,
		0.399348, 0.039059, 0.915967,
		0.355885, -0.927351, -0.115616,
		3.176220, 0.037730, 1.313811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.537745, 0.743467, 1.577321>,  <2.927100, 0.686875, 1.394742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.537745, 0.743467, 1.577321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.575520, 0.413610, 1.354235>,  <3.598184, 0.215696, 1.220383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.575520, 0.413610, 1.354235>,  <3.537745, 0.743467, 1.577321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.575520, 0.413610, 1.354235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720692, 0.443111, -0.533156,
		0.686794, -0.351593, 0.636158,
		0.094435, -0.824642, -0.557716,
		3.603850, 0.166218, 1.186920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.279978, 0.728418, 1.456772>,  <3.537745, 0.743467, 1.577321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.279978, 0.728418, 1.456772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.129982, 0.467330, 1.193459>,  <4.039984, 0.310677, 1.035470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.129982, 0.467330, 1.193459>,  <4.279978, 0.728418, 1.456772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.129982, 0.467330, 1.193459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753198, 0.199455, -0.626826,
		0.540441, -0.730871, 0.416834,
		-0.374990, -0.652721, -0.658284,
		4.017485, 0.271514, 0.995973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.873837, 0.264264, 1.201756>,  <4.279978, 0.728418, 1.456772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.873837, 0.264264, 1.201756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.575745, 0.291537, 0.936432>,  <4.396889, 0.307901, 0.777238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.575745, 0.291537, 0.936432>,  <4.873837, 0.264264, 1.201756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.575745, 0.291537, 0.936432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661414, 0.201818, -0.722358,
		0.084615, -0.977047, -0.195499,
		-0.745233, 0.068184, -0.663310,
		4.352175, 0.311992, 0.737439>
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
