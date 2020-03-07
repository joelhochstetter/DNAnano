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
	<2.906823, -0.319038, 0.770425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.075977, 0.027203, 0.663168>,  <3.177470, 0.234947, 0.598814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.075977, 0.027203, 0.663168>,  <2.906823, -0.319038, 0.770425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.075977, 0.027203, 0.663168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465689, 0.461429, 0.755127,
		0.777368, -0.194462, 0.598233,
		0.422886, 0.865602, -0.268142,
		3.202843, 0.286883, 0.582725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.470017, -0.018672, 1.160273>,  <2.906823, -0.319038, 0.770425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.470017, -0.018672, 1.160273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.228123, 0.246586, 0.983849>,  <3.082986, 0.405741, 0.877994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.228123, 0.246586, 0.983849>,  <3.470017, -0.018672, 1.160273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.228123, 0.246586, 0.983849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230314, 0.384523, 0.893922,
		0.762398, 0.642169, -0.079804,
		-0.604736, 0.663144, -0.441060,
		3.046702, 0.445529, 0.851530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.586643, 0.630837, 1.419970>,  <3.470017, -0.018672, 1.160273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.586643, 0.630837, 1.419970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.202288, 0.624912, 1.309355>,  <2.971674, 0.621357, 1.242985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.202288, 0.624912, 1.309355>,  <3.586643, 0.630837, 1.419970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.202288, 0.624912, 1.309355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272019, 0.237803, 0.932446,
		0.051951, 0.971201, -0.232531,
		-0.960889, -0.014812, -0.276539,
		2.914021, 0.620469, 1.226393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.254533, 1.312861, 1.595528>,  <3.586643, 0.630837, 1.419970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.254533, 1.312861, 1.595528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.988068, 1.014580, 1.590553>,  <2.828189, 0.835611, 1.587568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.988068, 1.014580, 1.590553>,  <3.254533, 1.312861, 1.595528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.988068, 1.014580, 1.590553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206935, 0.168789, 0.963685,
		-0.716523, 0.644544, -0.266754,
		-0.666162, -0.745703, -0.012438,
		2.788219, 0.790869, 1.586822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.756910, 1.567093, 2.029973>,  <3.254533, 1.312861, 1.595528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.756910, 1.567093, 2.029973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.660664, 1.179222, 2.012869>,  <2.602916, 0.946499, 2.002606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.660664, 1.179222, 2.012869>,  <2.756910, 1.567093, 2.029973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.660664, 1.179222, 2.012869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414577, 0.062839, 0.907842,
		-0.877628, 0.236168, -0.417126,
		-0.240615, -0.969678, -0.042761,
		2.588479, 0.888319, 2.000041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.130019, 1.481947, 2.379459>,  <2.756910, 1.567093, 2.029973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.130019, 1.481947, 2.379459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.271475, 1.108257, 2.398060>,  <2.356348, 0.884043, 2.409220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.271475, 1.108257, 2.398060>,  <2.130019, 1.481947, 2.379459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.271475, 1.108257, 2.398060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297103, -0.065047, 0.952627,
		-0.886944, -0.350702, -0.300565,
		0.353639, -0.934225, 0.046502,
		2.377567, 0.827990, 2.412010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.485129, 1.061735, 2.575133>,  <2.130019, 1.481947, 2.379459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.485129, 1.061735, 2.575133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.829523, 0.888683, 2.682117>,  <2.036160, 0.784852, 2.746308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.829523, 0.888683, 2.682117>,  <1.485129, 1.061735, 2.575133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.829523, 0.888683, 2.682117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338561, -0.095041, 0.936132,
		-0.379578, -0.896549, -0.228300,
		0.860986, -0.432629, 0.267461,
		2.087819, 0.758895, 2.762356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.342257, 0.586989, 3.095196>,  <1.485129, 1.061735, 2.575133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.342257, 0.586989, 3.095196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.738939, 0.613590, 3.139189>,  <1.976949, 0.629551, 3.165584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.738939, 0.613590, 3.139189>,  <1.342257, 0.586989, 3.095196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.738939, 0.613590, 3.139189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108251, -0.029089, 0.993698,
		0.069285, -0.997362, -0.021648,
		0.991707, 0.066505, 0.109981,
		2.036451, 0.633541, 3.172183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.057269, 1.217346, 4.596332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.156395, 0.840981, 4.504012>,  <2.215870, 0.615161, 4.448620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.156395, 0.840981, 4.504012>,  <2.057269, 1.217346, 4.596332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.156395, 0.840981, 4.504012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140895, 0.270700, -0.952297,
		0.958508, 0.203474, 0.199653,
		0.247814, -0.940914, -0.230799,
		2.230739, 0.558706, 4.434772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.589704, 1.309514, 4.214312>,  <2.057269, 1.217346, 4.596332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.589704, 1.309514, 4.214312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.453888, 0.954567, 4.089545>,  <2.372398, 0.741599, 4.014685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.453888, 0.954567, 4.089545>,  <2.589704, 1.309514, 4.214312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.453888, 0.954567, 4.089545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457222, 0.134091, -0.879186,
		0.821986, -0.441134, 0.360194,
		-0.339540, -0.887367, -0.311917,
		2.352026, 0.688357, 3.995970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.020736, 1.266169, 3.630961>,  <2.589704, 1.309514, 4.214312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.020736, 1.266169, 3.630961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.738197, 0.983868, 3.609096>,  <2.568674, 0.814487, 3.595976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.738197, 0.983868, 3.609096>,  <3.020736, 1.266169, 3.630961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.738197, 0.983868, 3.609096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273254, -0.200613, -0.940791,
		0.653000, -0.679460, 0.334552,
		-0.706345, -0.705753, -0.054665,
		2.526294, 0.772142, 3.592696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.286310, 0.677400, 3.257769>,  <3.020736, 1.266169, 3.630961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.286310, 0.677400, 3.257769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.888874, 0.639816, 3.232621>,  <2.650413, 0.617266, 3.217532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.888874, 0.639816, 3.232621>,  <3.286310, 0.677400, 3.257769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.888874, 0.639816, 3.232621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081477, -0.209604, -0.974386,
		0.078376, -0.973261, 0.215916,
		-0.993589, -0.093961, -0.062870,
		2.590797, 0.611628, 3.213760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.223197, 0.030198, 2.879611>,  <3.286310, 0.677400, 3.257769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.223197, 0.030198, 2.879611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.898830, 0.262268, 2.849111>,  <2.704211, 0.401510, 2.830811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.898830, 0.262268, 2.849111>,  <3.223197, 0.030198, 2.879611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.898830, 0.262268, 2.849111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148086, -0.329531, -0.932459,
		-0.566116, -0.744853, 0.353138,
		-0.810915, 0.580175, -0.076250,
		2.655556, 0.436320, 2.826236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.829822, -0.348874, 2.500030>,  <3.223197, 0.030198, 2.879611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.829822, -0.348874, 2.500030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.654236, 0.008987, 2.466796>,  <2.548884, 0.223704, 2.446856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.654236, 0.008987, 2.466796>,  <2.829822, -0.348874, 2.500030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.654236, 0.008987, 2.466796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055915, -0.119491, -0.991259,
		-0.896762, -0.430483, 0.102477,
		-0.438966, 0.894654, -0.083084,
		2.522546, 0.277384, 2.441871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.197256, -0.331305, 2.073463>,  <2.829822, -0.348874, 2.500030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.197256, -0.331305, 2.073463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.297798, 0.054184, 2.037551>,  <2.358124, 0.285477, 2.016003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.297798, 0.054184, 2.037551>,  <2.197256, -0.331305, 2.073463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.297798, 0.054184, 2.037551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019667, -0.087655, -0.995957,
		-0.967695, 0.252106, -0.003079,
		0.251356, 0.963722, -0.089782,
		2.373205, 0.343300, 2.010617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.872172, -0.137574, 1.469940>,  <2.197256, -0.331305, 2.073463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.872172, -0.137574, 1.469940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.141708, 0.153641, 1.520377>,  <2.303431, 0.328370, 1.550640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.141708, 0.153641, 1.520377>,  <1.872172, -0.137574, 1.469940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.141708, 0.153641, 1.520377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248961, -0.063042, -0.966460,
		-0.695669, 0.682634, -0.223733,
		0.673842, 0.728037, 0.126093,
		2.343861, 0.372052, 1.558205>
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
