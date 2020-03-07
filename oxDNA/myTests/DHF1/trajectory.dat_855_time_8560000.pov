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
	<2.316412, 3.137698, 3.752291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.647072, 3.234253, 3.548965>,  <2.845468, 3.292186, 3.426970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.647072, 3.234253, 3.548965>,  <2.316412, 3.137698, 3.752291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.647072, 3.234253, 3.548965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131930, 0.795004, 0.592084,
		0.547033, -0.556507, 0.625343,
		0.826649, 0.241388, -0.508313,
		2.895067, 3.306669, 3.396472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.893910, 3.575400, 3.318195>,  <2.316412, 3.137698, 3.752291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.893910, 3.575400, 3.318195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.073532, 3.869850, 3.115623>,  <2.181305, 4.046520, 2.994081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.073532, 3.869850, 3.115623>,  <1.893910, 3.575400, 3.318195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.073532, 3.869850, 3.115623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717719, 0.634769, 0.286266,
		0.532192, 0.234923, 0.813378,
		0.449057, 0.736125, -0.506427,
		2.208249, 4.090688, 2.963695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.975315, 4.186035, 3.672247>,  <1.893910, 3.575400, 3.318195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.975315, 4.186035, 3.672247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.968796, 4.323341, 3.296608>,  <1.964884, 4.405725, 3.071225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.968796, 4.323341, 3.296608>,  <1.975315, 4.186035, 3.672247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.968796, 4.323341, 3.296608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626285, 0.728645, 0.277208,
		0.779424, 0.592660, 0.203106,
		-0.016298, 0.343265, -0.939097,
		1.963906, 4.426321, 3.014879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.919058, 4.797953, 3.882076>,  <1.975315, 4.186035, 3.672247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.919058, 4.797953, 3.882076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.803131, 4.783760, 3.499506>,  <1.733575, 4.775244, 3.269964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.803131, 4.783760, 3.499506>,  <1.919058, 4.797953, 3.882076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.803131, 4.783760, 3.499506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617453, 0.770470, 0.158518,
		0.731272, 0.636488, -0.245203,
		-0.289816, -0.035482, -0.956424,
		1.716186, 4.773116, 3.212579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.041655, 5.409028, 3.602040>,  <1.919058, 4.797953, 3.882076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.041655, 5.409028, 3.602040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.764580, 5.251984, 3.360035>,  <1.598335, 5.157757, 3.214832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.764580, 5.251984, 3.360035>,  <2.041655, 5.409028, 3.602040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.764580, 5.251984, 3.360035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581285, 0.800482, 0.146067,
		0.426955, 0.452864, -0.782703,
		-0.692688, -0.392609, -0.605013,
		1.556773, 5.134201, 3.178531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.823997, 5.971228, 3.095773>,  <2.041655, 5.409028, 3.602040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.823997, 5.971228, 3.095773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.525253, 5.705551, 3.108755>,  <1.346007, 5.546145, 3.116545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.525253, 5.705551, 3.108755>,  <1.823997, 5.971228, 3.095773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.525253, 5.705551, 3.108755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657638, 0.744962, 0.111998,
		-0.098567, 0.062302, -0.993178,
		-0.746858, -0.664191, 0.032456,
		1.301196, 5.506294, 3.118492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.213709, 6.335568, 2.707647>,  <1.823997, 5.971228, 3.095773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.213709, 6.335568, 2.707647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.036415, 6.050293, 2.924868>,  <0.930039, 5.879128, 3.055200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.036415, 6.050293, 2.924868>,  <1.213709, 6.335568, 2.707647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.036415, 6.050293, 2.924868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797366, 0.590478, 0.124669,
		-0.409572, -0.377753, -0.830393,
		-0.443235, -0.713189, 0.543051,
		0.903445, 5.836336, 3.087783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.567245, 6.269080, 2.395351>,  <1.213709, 6.335568, 2.707647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.567245, 6.269080, 2.395351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.505203, 6.102791, 2.753819>,  <0.467978, 6.003017, 2.968899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.505203, 6.102791, 2.753819>,  <0.567245, 6.269080, 2.395351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.505203, 6.102791, 2.753819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852929, 0.514062, 0.090846,
		-0.498452, -0.750277, -0.434315,
		-0.155105, -0.415722, 0.896169,
		0.458672, 5.978074, 3.022669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.433086, 1.813563, 3.120388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.601051, 1.502136, 3.306937>,  <-0.701831, 1.315280, 3.418867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.601051, 1.502136, 3.306937>,  <-0.433086, 1.813563, 3.120388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.601051, 1.502136, 3.306937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896087, -0.437138, 0.077060,
		0.143873, 0.450269, 0.881225,
		-0.419915, -0.778568, 0.466373,
		-0.727026, 1.268566, 3.446849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.157964, 1.797629, 3.806008>,  <-0.433086, 1.813563, 3.120388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.157964, 1.797629, 3.806008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.285233, 1.440285, 3.679090>,  <-0.361593, 1.225878, 3.602939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.285233, 1.440285, 3.679090>,  <-0.157964, 1.797629, 3.806008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.285233, 1.440285, 3.679090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917320, -0.374609, 0.134880,
		-0.239358, -0.248147, 0.938686,
		-0.318170, -0.893360, -0.317295,
		-0.380684, 1.172277, 3.583901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.184366, 1.248895, 4.235766>,  <-0.157964, 1.797629, 3.806008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.184366, 1.248895, 4.235766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.057861, 1.116280, 3.880224>,  <-0.018042, 1.036711, 3.666899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.057861, 1.116280, 3.880224>,  <0.184366, 1.248895, 4.235766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.057861, 1.116280, 3.880224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854748, -0.506059, -0.115369,
		-0.411563, -0.796233, 0.443429,
		-0.316262, -0.331538, -0.888854,
		-0.037017, 1.016818, 3.613568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.411166, 0.517558, 4.198330>,  <0.184366, 1.248895, 4.235766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.411166, 0.517558, 4.198330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.369125, 0.621170, 3.814277>,  <0.343901, 0.683337, 3.583845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.369125, 0.621170, 3.814277>,  <0.411166, 0.517558, 4.198330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.369125, 0.621170, 3.814277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659129, -0.704804, -0.262298,
		-0.744649, -0.660420, -0.096657,
		-0.105103, 0.259030, -0.960134,
		0.337595, 0.698879, 3.526237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.279572, -0.058194, 3.722460>,  <0.411166, 0.517558, 4.198330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.279572, -0.058194, 3.722460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.465050, 0.209679, 3.490420>,  <0.576336, 0.370402, 3.351197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.465050, 0.209679, 3.490420>,  <0.279572, -0.058194, 3.722460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.465050, 0.209679, 3.490420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723387, -0.664201, -0.188544,
		-0.511566, -0.332208, -0.792425,
		0.463694, 0.669683, -0.580098,
		0.604158, 0.410583, 3.316391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.456566, -0.418410, 3.073892>,  <0.279572, -0.058194, 3.722460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.456566, -0.418410, 3.073892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.707146, -0.107788, 3.046993>,  <0.857494, 0.078585, 3.030854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.707146, -0.107788, 3.046993>,  <0.456566, -0.418410, 3.073892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.707146, -0.107788, 3.046993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722116, -0.610676, -0.324996,
		-0.293443, 0.155034, -0.943321,
		0.626450, 0.776556, -0.067246,
		0.895081, 0.125179, 3.026819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.715456, -0.389248, 2.355806>,  <0.456566, -0.418410, 3.073892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.715456, -0.389248, 2.355806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.971680, -0.220268, 2.612312>,  <1.125414, -0.118880, 2.766216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.971680, -0.220268, 2.612312>,  <0.715456, -0.389248, 2.355806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.971680, -0.220268, 2.612312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734765, -0.579874, -0.351947,
		0.223173, 0.696622, -0.681845,
		0.640558, 0.422450, 0.641265,
		1.163847, -0.093533, 2.804692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.326423, -0.123077, 1.935584>,  <0.715456, -0.389248, 2.355806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.326423, -0.123077, 1.935584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.460899, -0.180458, 2.307906>,  <1.541585, -0.214887, 2.531299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.460899, -0.180458, 2.307906>,  <1.326423, -0.123077, 1.935584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.460899, -0.180458, 2.307906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613016, -0.716971, -0.331910,
		0.714973, 0.682183, -0.153100,
		0.336191, -0.143454, 0.930804,
		1.561757, -0.223494, 2.587147>
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
