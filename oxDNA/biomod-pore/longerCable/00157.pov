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
	<24.222195, 34.669025, 34.958305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.173359, 34.995789, 35.183784>,  <24.144058, 35.191845, 35.319073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.173359, 34.995789, 35.183784>,  <24.222195, 34.669025, 34.958305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.173359, 34.995789, 35.183784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751512, -0.447077, 0.485131,
		0.648325, -0.364400, 0.668497,
		-0.122088, 0.816906, 0.563702,
		24.136732, 35.240860, 35.352894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.103479, 34.405186, 35.615757>,  <24.222195, 34.669025, 34.958305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.103479, 34.405186, 35.615757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.955513, 34.775963, 35.640854>,  <23.866734, 34.998428, 35.655910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.955513, 34.775963, 35.640854>,  <24.103479, 34.405186, 35.615757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.955513, 34.775963, 35.640854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600812, -0.290182, 0.744862,
		0.708652, 0.237842, 0.664262,
		-0.369916, 0.926944, 0.062740,
		23.844538, 35.054047, 35.659676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.656311, 34.956554, 35.616383>,  <24.103479, 34.405186, 35.615757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.656311, 34.956554, 35.616383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.516809, 35.290489, 35.446011>,  <24.433107, 35.490849, 35.343788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.516809, 35.290489, 35.446011>,  <24.656311, 34.956554, 35.616383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.516809, 35.290489, 35.446011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874128, 0.125828, -0.469113,
		-0.338038, -0.535926, -0.773637,
		-0.348755, 0.834836, -0.425933,
		24.412184, 35.540939, 35.318230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307070, 35.221817, 35.779453>,  <24.656311, 34.956554, 35.616383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.307070, 35.221817, 35.779453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981899, 35.108284, 35.982861>,  <24.786797, 35.040165, 36.104904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981899, 35.108284, 35.982861>,  <25.307070, 35.221817, 35.779453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.981899, 35.108284, 35.982861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156656, -0.734423, -0.660365,
		0.560898, -0.616491, 0.552568,
		-0.812928, -0.283834, 0.508514,
		24.738022, 35.023132, 36.135414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996799, 34.914886, 35.615513>,  <25.307070, 35.221817, 35.779453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996799, 34.914886, 35.615513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004797, 35.152203, 35.937408>,  <26.009596, 35.294594, 36.130547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004797, 35.152203, 35.937408>,  <25.996799, 34.914886, 35.615513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.004797, 35.152203, 35.937408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848788, 0.415285, -0.327256,
		-0.528355, 0.689598, -0.495274,
		0.019996, 0.593290, 0.804741,
		26.010796, 35.330189, 36.178829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580149, 35.340191, 35.617542>,  <25.996799, 34.914886, 35.615513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580149, 35.340191, 35.617542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921171, 35.514820, 35.732468>,  <27.125786, 35.619598, 35.801422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921171, 35.514820, 35.732468>,  <26.580149, 35.340191, 35.617542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921171, 35.514820, 35.732468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296710, -0.048248, 0.953748,
		0.430241, -0.898375, 0.088401,
		0.852558, 0.436571, 0.287316,
		27.176939, 35.645790, 35.818661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695168, 35.158188, 36.295776>,  <26.580149, 35.340191, 35.617542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695168, 35.158188, 36.295776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926437, 35.480072, 36.241871>,  <27.065199, 35.673203, 36.209526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926437, 35.480072, 36.241871>,  <26.695168, 35.158188, 36.295776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926437, 35.480072, 36.241871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246468, 0.329704, 0.911344,
		0.777798, -0.493700, 0.388961,
		0.578173, 0.804708, -0.134762,
		27.099890, 35.721485, 36.201443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522778, 35.508755, 36.978027>,  <26.695168, 35.158188, 36.295776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522778, 35.508755, 36.978027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820274, 35.675285, 36.768833>,  <26.998774, 35.775204, 36.643314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820274, 35.675285, 36.768833>,  <26.522778, 35.508755, 36.978027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820274, 35.675285, 36.768833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253907, 0.547795, 0.797152,
		0.618366, -0.725667, 0.301711,
		0.743743, 0.416325, -0.522990,
		27.043398, 35.800182, 36.611935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094137, 35.645794, 37.480358>,  <26.522778, 35.508755, 36.978027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094137, 35.645794, 37.480358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146864, 35.895176, 37.172092>,  <27.178499, 36.044804, 36.987133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146864, 35.895176, 37.172092>,  <27.094137, 35.645794, 37.480358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146864, 35.895176, 37.172092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303436, 0.714754, 0.630122,
		0.943690, -0.316909, -0.094961,
		0.131818, 0.623455, -0.770668,
		27.186409, 36.082211, 36.940891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791075, 35.944656, 37.503208>,  <27.094137, 35.645794, 37.480358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791075, 35.944656, 37.503208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600863, 36.212032, 37.274452>,  <27.486734, 36.372459, 37.137199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600863, 36.212032, 37.274452>,  <27.791075, 35.944656, 37.503208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600863, 36.212032, 37.274452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163870, 0.706028, 0.688963,
		0.864301, 0.233909, -0.445276,
		-0.475532, 0.668439, -0.571890,
		27.458202, 36.412563, 37.102886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125055, 36.560814, 37.658611>,  <27.791075, 35.944656, 37.503208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125055, 36.560814, 37.658611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783440, 36.696293, 37.500671>,  <27.578470, 36.777580, 37.405907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783440, 36.696293, 37.500671>,  <28.125055, 36.560814, 37.658611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783440, 36.696293, 37.500671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119143, 0.866187, 0.485310,
		0.506383, 0.367430, -0.780110,
		-0.854038, 0.338697, -0.394845,
		27.527227, 36.797901, 37.382217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714987, 36.615200, 38.360100>,  <28.125055, 36.560814, 37.658611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714987, 36.615200, 38.360100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570337, 36.892841, 38.111118>,  <27.483547, 37.059425, 37.961731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570337, 36.892841, 38.111118>,  <27.714987, 36.615200, 38.360100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570337, 36.892841, 38.111118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369323, 0.506373, 0.779222,
		0.856055, 0.511671, 0.073232,
		-0.361622, 0.694103, -0.622455,
		27.461851, 37.101074, 37.924381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042278, 37.286484, 38.495335>,  <27.714987, 36.615200, 38.360100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042278, 37.286484, 38.495335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678102, 37.329048, 38.335449>,  <27.459597, 37.354588, 38.239517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678102, 37.329048, 38.335449>,  <28.042278, 37.286484, 38.495335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678102, 37.329048, 38.335449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307385, 0.472582, 0.825942,
		0.276787, 0.874839, -0.397549,
		-0.910441, 0.106409, -0.399717,
		27.404970, 37.360970, 38.215534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245115, 37.105404, 38.698753>,  <28.042278, 37.286484, 38.495335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245115, 37.105404, 38.698753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020409, 37.359184, 38.486378>,  <26.885586, 37.511452, 38.358952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020409, 37.359184, 38.486378>,  <27.245115, 37.105404, 38.698753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020409, 37.359184, 38.486378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052118, -0.613358, -0.788084,
		-0.825654, -0.470389, 0.311496,
		-0.561764, 0.634450, -0.530938,
		26.851879, 37.549519, 38.327095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673386, 36.732460, 38.281796>,  <27.245115, 37.105404, 38.698753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673386, 36.732460, 38.281796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769272, 37.059799, 38.072861>,  <26.826803, 37.256203, 37.947498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769272, 37.059799, 38.072861>,  <26.673386, 36.732460, 38.281796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769272, 37.059799, 38.072861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021291, -0.542326, -0.839898,
		-0.970610, 0.190214, -0.147427,
		0.239714, 0.818352, -0.522337,
		26.841187, 37.305305, 37.916161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.315531, 36.942978, 37.596657>,  <26.673386, 36.732460, 38.281796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.315531, 36.942978, 37.596657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691374, 37.078011, 37.574116>,  <26.916880, 37.159031, 37.560589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691374, 37.078011, 37.574116>,  <26.315531, 36.942978, 37.596657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691374, 37.078011, 37.574116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142027, -0.534403, -0.833212,
		-0.311394, 0.774888, -0.550075,
		0.939608, 0.337582, -0.056355,
		26.973255, 37.179287, 37.557209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447170, 37.228802, 36.916790>,  <26.315531, 36.942978, 37.596657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447170, 37.228802, 36.916790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800261, 37.119904, 37.069984>,  <27.012114, 37.054565, 37.161903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800261, 37.119904, 37.069984>,  <26.447170, 37.228802, 36.916790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800261, 37.119904, 37.069984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175543, -0.564988, -0.806209,
		0.435871, 0.778891, -0.450937,
		0.882724, -0.272245, 0.382991,
		27.065077, 37.038231, 37.184883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907864, 37.226368, 36.277592>,  <26.447170, 37.228802, 36.916790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907864, 37.226368, 36.277592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053593, 36.973824, 36.551426>,  <27.141029, 36.822296, 36.715725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053593, 36.973824, 36.551426>,  <26.907864, 37.226368, 36.277592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053593, 36.973824, 36.551426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154249, -0.684042, -0.712947,
		0.918410, 0.365339, -0.151824,
		0.364321, -0.631359, 0.684584,
		27.162889, 36.784416, 36.756802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398037, 36.898327, 35.969967>,  <26.907864, 37.226368, 36.277592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398037, 36.898327, 35.969967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332848, 36.644688, 36.272320>,  <27.293734, 36.492504, 36.453732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332848, 36.644688, 36.272320>,  <27.398037, 36.898327, 35.969967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332848, 36.644688, 36.272320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184000, -0.772216, -0.608134,
		0.969321, 0.039972, 0.242526,
		-0.162975, -0.634102, 0.755880,
		27.283955, 36.454456, 36.499084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960449, 36.439224, 35.957485>,  <27.398037, 36.898327, 35.969967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960449, 36.439224, 35.957485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647165, 36.254059, 36.123520>,  <27.459196, 36.142960, 36.223141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647165, 36.254059, 36.123520>,  <27.960449, 36.439224, 35.957485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647165, 36.254059, 36.123520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140170, -0.781872, -0.607477,
		0.605754, -0.417599, 0.677255,
		-0.783208, -0.462912, 0.415087,
		27.412203, 36.115185, 36.248047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802116, 35.830540, 36.389423>,  <27.960449, 36.439224, 35.957485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802116, 35.830540, 36.389423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935259, 35.469383, 36.280609>,  <28.015144, 35.252689, 36.215321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935259, 35.469383, 36.280609>,  <27.802116, 35.830540, 36.389423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935259, 35.469383, 36.280609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881644, 0.195634, 0.429455,
		-0.334531, -0.382781, 0.861143,
		0.332856, -0.902888, -0.272031,
		28.035116, 35.198517, 36.199001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841978, 35.345036, 36.922451>,  <27.802116, 35.830540, 36.389423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841978, 35.345036, 36.922451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147562, 35.265324, 36.676964>,  <28.330912, 35.217495, 36.529671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147562, 35.265324, 36.676964>,  <27.841978, 35.345036, 36.922451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147562, 35.265324, 36.676964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644975, 0.264271, 0.717055,
		0.019289, -0.943634, 0.330426,
		0.763960, -0.199285, -0.613718,
		28.376751, 35.205540, 36.492847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183861, 34.686356, 37.191330>,  <27.841978, 35.345036, 36.922451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183861, 34.686356, 37.191330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376213, 34.980537, 37.000389>,  <28.491625, 35.157047, 36.885826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376213, 34.980537, 37.000389>,  <28.183861, 34.686356, 37.191330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376213, 34.980537, 37.000389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368272, 0.324653, 0.871192,
		0.795696, -0.594731, -0.114729,
		0.480878, 0.735456, -0.477348,
		28.520477, 35.201176, 36.857185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479746, 34.132317, 36.982887>,  <28.183861, 34.686356, 37.191330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479746, 34.132317, 36.982887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733978, 33.917107, 37.204361>,  <28.886517, 33.787979, 37.337246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733978, 33.917107, 37.204361>,  <28.479746, 34.132317, 36.982887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733978, 33.917107, 37.204361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519997, -0.231767, -0.822123,
		0.570651, 0.810438, 0.132467,
		0.635579, -0.538028, 0.553684,
		28.924652, 33.755699, 37.370464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226400, 34.413879, 37.063744>,  <28.479746, 34.132317, 36.982887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226400, 34.413879, 37.063744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220787, 34.015842, 37.102921>,  <29.217419, 33.777020, 37.126427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220787, 34.015842, 37.102921>,  <29.226400, 34.413879, 37.063744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220787, 34.015842, 37.102921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575517, -0.088134, -0.813027,
		0.817669, 0.044957, 0.573930,
		-0.014032, -0.995094, 0.097938,
		29.216578, 33.717316, 37.132301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854605, 34.181313, 36.767212>,  <29.226400, 34.413879, 37.063744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854605, 34.181313, 36.767212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598902, 33.874397, 36.746769>,  <29.445480, 33.690247, 36.734505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598902, 33.874397, 36.746769>,  <29.854605, 34.181313, 36.767212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598902, 33.874397, 36.746769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314247, -0.199998, -0.928035,
		0.701853, -0.609314, 0.368969,
		-0.639258, -0.767292, -0.051106,
		29.407124, 33.644211, 36.731438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046392, 33.483624, 36.405769>,  <29.854605, 34.181313, 36.767212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046392, 33.483624, 36.405769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269142, 33.242046, 36.177681>,  <30.402792, 33.097099, 36.040829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269142, 33.242046, 36.177681>,  <30.046392, 33.483624, 36.405769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269142, 33.242046, 36.177681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160413, -0.595389, 0.787261,
		-0.814960, -0.529875, -0.234676,
		0.556873, -0.603941, -0.570218,
		30.436205, 33.060863, 36.006615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701305, 32.866604, 36.452869>,  <30.046392, 33.483624, 36.405769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701305, 32.866604, 36.452869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095617, 32.834000, 36.394096>,  <30.332205, 32.814438, 36.358833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095617, 32.834000, 36.394096>,  <29.701305, 32.866604, 36.452869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095617, 32.834000, 36.394096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093602, -0.459826, 0.883062,
		-0.139547, -0.884260, -0.445658,
		0.985782, -0.081514, -0.146936,
		30.391352, 32.809547, 36.350014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727638, 32.125580, 36.342804>,  <29.701305, 32.866604, 36.452869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727638, 32.125580, 36.342804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016014, 32.354465, 36.499172>,  <30.189039, 32.491795, 36.592995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016014, 32.354465, 36.499172>,  <29.727638, 32.125580, 36.342804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016014, 32.354465, 36.499172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010315, -0.555179, 0.831667,
		0.692922, -0.603613, -0.394348,
		0.720939, 0.572212, 0.390922,
		30.232296, 32.526131, 36.616447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310497, 31.663694, 35.982975>,  <29.727638, 32.125580, 36.342804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310497, 31.663694, 35.982975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940784, 31.771446, 35.874802>,  <28.718956, 31.836098, 35.809898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940784, 31.771446, 35.874802>,  <29.310497, 31.663694, 35.982975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940784, 31.771446, 35.874802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111235, -0.487648, -0.865925,
		-0.365140, -0.830442, 0.420761,
		-0.924283, 0.269380, -0.270433,
		28.663500, 31.852261, 35.793671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689724, 32.048359, 35.351070>,  <29.310497, 31.663694, 35.982975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689724, 32.048359, 35.351070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317564, 31.905582, 35.384411>,  <29.094267, 31.819918, 35.404415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317564, 31.905582, 35.384411>,  <29.689724, 32.048359, 35.351070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317564, 31.905582, 35.384411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359599, 0.844814, -0.396204,
		0.071001, -0.398603, -0.914371,
		-0.930402, -0.356938, 0.083354,
		29.038443, 31.798500, 35.409416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335732, 32.229477, 34.760559>,  <29.689724, 32.048359, 35.351070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335732, 32.229477, 34.760559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045109, 32.196171, 35.033379>,  <28.870735, 32.176186, 35.197071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045109, 32.196171, 35.033379>,  <29.335732, 32.229477, 34.760559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045109, 32.196171, 35.033379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554675, 0.656924, -0.510672,
		-0.405529, -0.749345, -0.523478,
		-0.726555, -0.083268, 0.682045,
		28.827143, 32.171192, 35.237991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755886, 31.849171, 34.544456>,  <29.335732, 32.229477, 34.760559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755886, 31.849171, 34.544456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661974, 32.131134, 34.812183>,  <28.605627, 32.300312, 34.972820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.661974, 32.131134, 34.812183>,  <28.755886, 31.849171, 34.544456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661974, 32.131134, 34.812183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378268, 0.568031, -0.730927,
		-0.895428, -0.424788, 0.133281,
		-0.234781, 0.704908, 0.669315,
		28.591539, 32.342606, 35.012978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016363, 32.117916, 34.471951>,  <28.755886, 31.849171, 34.544456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016363, 32.117916, 34.471951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280392, 32.406971, 34.554024>,  <28.438808, 32.580402, 34.603268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280392, 32.406971, 34.554024>,  <28.016363, 32.117916, 34.471951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280392, 32.406971, 34.554024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302166, 0.505481, -0.808198,
		-0.687749, 0.471471, 0.552011,
		0.660074, 0.722636, 0.205181,
		28.478415, 32.623760, 34.615578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060658, 32.351574, 33.739532>,  <28.016363, 32.117916, 34.471951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060658, 32.351574, 33.739532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214407, 32.139408, 33.437294>,  <28.306656, 32.012108, 33.255951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214407, 32.139408, 33.437294>,  <28.060658, 32.351574, 33.739532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214407, 32.139408, 33.437294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017289, 0.822461, -0.568559,
		0.923016, 0.205475, 0.325301,
		0.384372, -0.530413, -0.755593,
		28.329720, 31.980284, 33.210617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281565, 32.848179, 33.325851>,  <28.060658, 32.351574, 33.739532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281565, 32.848179, 33.325851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321854, 32.538300, 33.076145>,  <28.346027, 32.352371, 32.926323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321854, 32.538300, 33.076145>,  <28.281565, 32.848179, 33.325851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321854, 32.538300, 33.076145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283760, 0.623759, -0.728289,
		0.953591, -0.103786, 0.282654,
		0.100722, -0.774695, -0.624261,
		28.352070, 32.305889, 32.888866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474367, 33.148155, 32.770878>,  <28.281565, 32.848179, 33.325851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474367, 33.148155, 32.770878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449375, 32.769096, 32.645615>,  <28.434380, 32.541660, 32.570457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449375, 32.769096, 32.645615>,  <28.474367, 33.148155, 32.770878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449375, 32.769096, 32.645615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346824, 0.273598, -0.897138,
		0.935847, -0.164661, 0.311572,
		-0.062479, -0.947645, -0.313154,
		28.430632, 32.484802, 32.551670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000822, 33.707165, 32.689175>,  <28.474367, 33.148155, 32.770878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000822, 33.707165, 32.689175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.981079, 33.534603, 33.049500>,  <27.969233, 33.431065, 33.265694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.981079, 33.534603, 33.049500>,  <28.000822, 33.707165, 32.689175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.981079, 33.534603, 33.049500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867237, 0.428879, 0.252910,
		-0.495444, 0.793697, 0.352960,
		-0.049357, -0.431403, 0.900808,
		27.966272, 33.405182, 33.319740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084284, 34.257725, 33.222965>,  <28.000822, 33.707165, 32.689175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084284, 34.257725, 33.222965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193392, 33.891941, 33.342541>,  <28.258856, 33.672470, 33.414288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193392, 33.891941, 33.342541>,  <28.084284, 34.257725, 33.222965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193392, 33.891941, 33.342541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824911, 0.382203, 0.416465,
		-0.495094, 0.132998, 0.858599,
		0.272770, -0.914457, 0.298938,
		28.275223, 33.617603, 33.432220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203108, 34.164776, 33.962948>,  <28.084284, 34.257725, 33.222965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203108, 34.164776, 33.962948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440380, 33.952778, 33.720547>,  <28.582743, 33.825581, 33.575104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440380, 33.952778, 33.720547>,  <28.203108, 34.164776, 33.962948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440380, 33.952778, 33.720547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804781, 0.370221, 0.463966,
		-0.021542, -0.762919, 0.646135,
		0.593181, -0.529992, -0.606007,
		28.618334, 33.793781, 33.538746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195835, 34.548439, 34.589073>,  <28.203108, 34.164776, 33.962948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195835, 34.548439, 34.589073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890663, 34.304714, 34.502647>,  <27.707560, 34.158482, 34.450794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890663, 34.304714, 34.502647>,  <28.195835, 34.548439, 34.589073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890663, 34.304714, 34.502647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520215, -0.777037, 0.354386,
		-0.383818, 0.157972, 0.909796,
		-0.762928, -0.609309, -0.216061,
		27.661785, 34.121922, 34.437828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034115, 34.205734, 35.176529>,  <28.195835, 34.548439, 34.589073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034115, 34.205734, 35.176529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921843, 33.985695, 34.861923>,  <27.854479, 33.853672, 34.673161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921843, 33.985695, 34.861923>,  <28.034115, 34.205734, 35.176529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921843, 33.985695, 34.861923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469827, -0.793315, 0.387188,
		-0.836948, -0.260852, 0.481118,
		-0.280679, -0.550098, -0.786518,
		27.837639, 33.820667, 34.625969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663256, 33.772274, 35.308964>,  <28.034115, 34.205734, 35.176529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663256, 33.772274, 35.308964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781067, 33.435516, 35.128094>,  <28.851753, 33.233459, 35.019573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781067, 33.435516, 35.128094>,  <28.663256, 33.772274, 35.308964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781067, 33.435516, 35.128094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328615, 0.533530, -0.779331,
		0.897365, 0.080945, 0.433801,
		0.294529, -0.841899, -0.452172,
		28.869425, 33.182945, 34.992443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322767, 33.797642, 35.008995>,  <28.663256, 33.772274, 35.308964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322767, 33.797642, 35.008995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090561, 33.539864, 34.809921>,  <28.951237, 33.385197, 34.690475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090561, 33.539864, 34.809921>,  <29.322767, 33.797642, 35.008995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090561, 33.539864, 34.809921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168799, 0.502698, -0.847821,
		0.796561, -0.576183, -0.183042,
		-0.580515, -0.644444, -0.497689,
		28.916407, 33.346531, 34.660614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686995, 33.667393, 34.423714>,  <29.322767, 33.797642, 35.008995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686995, 33.667393, 34.423714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291809, 33.640736, 34.367870>,  <29.054699, 33.624741, 34.334366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291809, 33.640736, 34.367870>,  <29.686995, 33.667393, 34.423714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291809, 33.640736, 34.367870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056483, 0.684738, -0.726597,
		0.144016, -0.725736, -0.672731,
		-0.987962, -0.066644, -0.139605,
		28.995420, 33.620743, 34.325989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952534, 34.344807, 34.387100>,  <29.686995, 33.667393, 34.423714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952534, 34.344807, 34.387100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791405, 34.618443, 34.630329>,  <29.694727, 34.782623, 34.776268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791405, 34.618443, 34.630329>,  <29.952534, 34.344807, 34.387100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791405, 34.618443, 34.630329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910607, -0.232506, -0.341666,
		-0.092349, -0.691348, 0.716596,
		-0.402823, 0.684090, 0.608074,
		29.670557, 34.823669, 34.812752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483402, 34.006683, 34.053383>,  <29.952534, 34.344807, 34.387100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483402, 34.006683, 34.053383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802219, 34.034248, 33.813393>,  <30.993509, 34.050785, 33.669399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802219, 34.034248, 33.813393>,  <30.483402, 34.006683, 34.053383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802219, 34.034248, 33.813393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603806, 0.071403, -0.793927,
		-0.011870, 0.995064, 0.098520,
		0.797043, 0.068911, -0.599978,
		31.041332, 34.054920, 33.633400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341434, 34.578537, 33.424412>,  <30.483402, 34.006683, 34.053383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341434, 34.578537, 33.424412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593979, 34.282516, 33.331711>,  <30.745504, 34.104904, 33.276089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593979, 34.282516, 33.331711>,  <30.341434, 34.578537, 33.424412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593979, 34.282516, 33.331711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503345, -0.163722, -0.848433,
		0.589940, 0.652319, -0.475868,
		0.631359, -0.740050, -0.231756,
		30.783386, 34.060501, 33.262184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588238, 34.635761, 32.712257>,  <30.341434, 34.578537, 33.424412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588238, 34.635761, 32.712257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618141, 34.256531, 32.835907>,  <30.636084, 34.028992, 32.910095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618141, 34.256531, 32.835907>,  <30.588238, 34.635761, 32.712257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618141, 34.256531, 32.835907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345930, -0.315397, -0.883661,
		0.935277, -0.040874, -0.351548,
		0.074759, -0.948079, 0.309123,
		30.640570, 33.972107, 32.928642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060642, 34.258823, 32.438164>,  <30.588238, 34.635761, 32.712257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060642, 34.258823, 32.438164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774273, 34.002132, 32.548172>,  <30.602451, 33.848118, 32.614178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774273, 34.002132, 32.548172>,  <31.060642, 34.258823, 32.438164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774273, 34.002132, 32.548172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081358, -0.314549, -0.945748,
		0.693424, -0.699457, 0.172983,
		-0.715922, -0.641732, 0.275023,
		30.559496, 33.809612, 32.630680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341515, 33.565159, 32.290150>,  <31.060642, 34.258823, 32.438164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341515, 33.565159, 32.290150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942549, 33.538624, 32.279083>,  <30.703169, 33.522701, 32.272446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942549, 33.538624, 32.279083>,  <31.341515, 33.565159, 32.290150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942549, 33.538624, 32.279083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059678, -0.549824, -0.833146,
		0.040062, -0.832642, 0.552360,
		-0.997414, -0.066341, -0.027664,
		30.643324, 33.518723, 32.270782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712738, 33.003002, 32.508144>,  <31.341515, 33.565159, 32.290150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712738, 33.003002, 32.508144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832504, 32.697086, 32.736336>,  <31.904364, 32.513538, 32.873249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832504, 32.697086, 32.736336>,  <31.712738, 33.003002, 32.508144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832504, 32.697086, 32.736336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912493, 0.404216, 0.062978,
		-0.278762, 0.501702, 0.818894,
		0.299414, -0.764790, 0.570480,
		31.922329, 32.467648, 32.907478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195301, 33.197105, 33.020630>,  <31.712738, 33.003002, 32.508144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195301, 33.197105, 33.020630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263138, 32.802925, 33.024952>,  <32.303841, 32.566418, 33.027546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263138, 32.802925, 33.024952>,  <32.195301, 33.197105, 33.020630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263138, 32.802925, 33.024952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932167, 0.163962, 0.322770,
		-0.319847, -0.044667, 0.946416,
		0.169593, -0.985455, 0.010806,
		32.314014, 32.507290, 33.028194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820686, 32.646870, 33.048725>,  <32.195301, 33.197105, 33.020630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820686, 32.646870, 33.048725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105255, 32.422207, 33.217690>,  <33.275997, 32.287411, 33.319069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105255, 32.422207, 33.217690>,  <32.820686, 32.646870, 33.048725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105255, 32.422207, 33.217690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065069, 0.651122, 0.756179,
		-0.699750, -0.510474, 0.499766,
		0.711418, -0.561655, 0.422407,
		33.318680, 32.253712, 33.344410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681927, 32.435783, 33.750721>,  <32.820686, 32.646870, 33.048725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681927, 32.435783, 33.750721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079811, 32.462833, 33.719795>,  <33.318542, 32.479061, 33.701241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079811, 32.462833, 33.719795>,  <32.681927, 32.435783, 33.750721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079811, 32.462833, 33.719795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019608, 0.613877, 0.789158,
		0.100826, -0.786500, 0.609304,
		0.994711, 0.067620, -0.077316,
		33.378223, 32.483120, 33.696602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965153, 32.416512, 34.531719>,  <32.681927, 32.435783, 33.750721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965153, 32.416512, 34.531719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244446, 32.584499, 34.299824>,  <33.412022, 32.685291, 34.160686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244446, 32.584499, 34.299824>,  <32.965153, 32.416512, 34.531719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244446, 32.584499, 34.299824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354500, 0.500731, 0.789682,
		0.621936, -0.756899, 0.200747,
		0.698230, 0.419967, -0.579743,
		33.453915, 32.710491, 34.125900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575962, 32.745571, 34.873917>,  <32.965153, 32.416512, 34.531719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575962, 32.745571, 34.873917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682919, 32.374741, 34.979015>,  <33.747093, 32.152245, 35.042076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682919, 32.374741, 34.979015>,  <33.575962, 32.745571, 34.873917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682919, 32.374741, 34.979015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601696, 0.373622, 0.705952,
		-0.752638, -0.030668, 0.657719,
		0.267389, -0.927074, 0.262749,
		33.763134, 32.096619, 35.057838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352867, 33.465813, 34.822086>,  <33.575962, 32.745571, 34.873917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352867, 33.465813, 34.822086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752441, 33.469696, 34.804008>,  <33.992184, 33.472027, 34.793163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752441, 33.469696, 34.804008>,  <33.352867, 33.465813, 34.822086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752441, 33.469696, 34.804008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033639, -0.517891, -0.854785,
		-0.031708, 0.855391, -0.517011,
		0.998931, 0.009712, -0.045196,
		34.052120, 33.472610, 34.790451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600094, 33.939507, 34.336327>,  <33.352867, 33.465813, 34.822086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600094, 33.939507, 34.336327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834427, 33.620300, 34.392857>,  <33.975025, 33.428776, 34.426777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834427, 33.620300, 34.392857>,  <33.600094, 33.939507, 34.336327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834427, 33.620300, 34.392857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203988, -0.313970, -0.927260,
		0.784339, 0.514391, -0.346719,
		0.585833, -0.798013, 0.141330,
		34.010178, 33.380898, 34.435257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964611, 33.827576, 33.732162>,  <33.600094, 33.939507, 34.336327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964611, 33.827576, 33.732162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923290, 33.493870, 33.948803>,  <33.898499, 33.293644, 34.078785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923290, 33.493870, 33.948803>,  <33.964611, 33.827576, 33.732162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923290, 33.493870, 33.948803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184418, -0.519005, -0.834640,
		0.977404, -0.186098, -0.100242,
		-0.103299, -0.834267, 0.541597,
		33.892300, 33.243591, 34.111282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448025, 33.252651, 33.519009>,  <33.964611, 33.827576, 33.732162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448025, 33.252651, 33.519009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151993, 33.062359, 33.709152>,  <33.974373, 32.948181, 33.823238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151993, 33.062359, 33.709152>,  <34.448025, 33.252651, 33.519009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151993, 33.062359, 33.709152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192297, -0.527623, -0.827427,
		0.644443, -0.703770, 0.299000,
		-0.740077, -0.475733, 0.475356,
		33.929970, 32.919640, 33.851761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664124, 32.579575, 33.485470>,  <34.448025, 33.252651, 33.519009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664124, 32.579575, 33.485470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268757, 32.577740, 33.546139>,  <34.031536, 32.576637, 33.582539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268757, 32.577740, 33.546139>,  <34.664124, 32.579575, 33.485470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268757, 32.577740, 33.546139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091463, -0.779539, -0.619639,
		0.121079, -0.626336, 0.770092,
		-0.988420, -0.004590, 0.151673,
		33.972229, 32.576363, 33.591640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312798, 31.889994, 33.650105>,  <34.664124, 32.579575, 33.485470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312798, 31.889994, 33.650105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057224, 32.127552, 33.454533>,  <33.903881, 32.270088, 33.337189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057224, 32.127552, 33.454533>,  <34.312798, 31.889994, 33.650105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057224, 32.127552, 33.454533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076476, -0.681475, -0.727835,
		-0.765453, -0.427644, 0.480834,
		-0.638931, 0.593896, -0.488933,
		33.865543, 32.305721, 33.307854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708534, 31.472492, 33.399471>,  <34.312798, 31.889994, 33.650105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708534, 31.472492, 33.399471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750191, 31.775755, 33.141991>,  <33.775185, 31.957712, 32.987503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750191, 31.775755, 33.141991>,  <33.708534, 31.472492, 33.399471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750191, 31.775755, 33.141991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112226, -0.652046, -0.749827,
		-0.988211, 0.005846, -0.152988,
		0.104138, 0.758157, -0.643703,
		33.781433, 32.003201, 32.948879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409939, 31.305082, 32.786812>,  <33.708534, 31.472492, 33.399471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409939, 31.305082, 32.786812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672836, 31.589005, 32.685455>,  <33.830574, 31.759357, 32.624641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672836, 31.589005, 32.685455>,  <33.409939, 31.305082, 32.786812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672836, 31.589005, 32.685455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135859, -0.442281, -0.886527,
		-0.741335, 0.548235, -0.387119,
		0.657240, 0.709807, -0.253396,
		33.870007, 31.801947, 32.609436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367714, 31.802435, 32.096626>,  <33.409939, 31.305082, 32.786812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367714, 31.802435, 32.096626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738663, 31.702873, 32.208359>,  <33.961231, 31.643135, 32.275398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738663, 31.702873, 32.208359>,  <33.367714, 31.802435, 32.096626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738663, 31.702873, 32.208359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228947, -0.212953, -0.949860,
		0.295909, 0.944827, -0.140500,
		0.927373, -0.248905, 0.279330,
		34.016876, 31.628202, 32.292156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780319, 32.188263, 32.100483>,  <33.367714, 31.802435, 32.096626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780319, 32.188263, 32.100483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545555, 31.944996, 32.314274>,  <32.404697, 31.799036, 32.442551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545555, 31.944996, 32.314274>,  <32.780319, 32.188263, 32.100483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545555, 31.944996, 32.314274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807259, 0.490252, -0.328611,
		-0.062180, -0.624330, -0.778682,
		-0.586913, -0.608165, 0.534480,
		32.369480, 31.762547, 32.474617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154068, 32.948326, 31.930803>,  <32.780319, 32.188263, 32.100483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154068, 32.948326, 31.930803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378338, 33.272648, 31.998022>,  <33.512901, 33.467239, 32.038353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378338, 33.272648, 31.998022>,  <33.154068, 32.948326, 31.930803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378338, 33.272648, 31.998022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716153, 0.576699, -0.393119,
		-0.415655, 0.100065, 0.904001,
		0.560674, 0.810805, 0.168046,
		33.546539, 33.515888, 32.048435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708832, 33.476490, 32.181305>,  <33.154068, 32.948326, 31.930803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708832, 33.476490, 32.181305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021305, 33.674335, 32.028931>,  <33.208790, 33.793045, 31.937508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021305, 33.674335, 32.028931>,  <32.708832, 33.476490, 32.181305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021305, 33.674335, 32.028931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623050, 0.656316, -0.425510,
		0.039548, 0.569741, 0.820872,
		0.781182, 0.494617, -0.380933,
		33.255661, 33.822720, 31.914650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469322, 34.117767, 32.133678>,  <32.708832, 33.476490, 32.181305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469322, 34.117767, 32.133678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796398, 34.137043, 31.904226>,  <32.992645, 34.148609, 31.766554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796398, 34.137043, 31.904226>,  <32.469322, 34.117767, 32.133678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796398, 34.137043, 31.904226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427901, 0.717457, -0.549687,
		0.385068, 0.694934, 0.607281,
		0.817694, 0.048190, -0.573633,
		33.041706, 34.151501, 31.732136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512291, 34.790661, 32.059647>,  <32.469322, 34.117767, 32.133678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512291, 34.790661, 32.059647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728607, 34.637154, 31.760244>,  <32.858398, 34.545048, 31.580603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728607, 34.637154, 31.760244>,  <32.512291, 34.790661, 32.059647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728607, 34.637154, 31.760244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433351, 0.635565, -0.638955,
		0.720935, 0.669911, 0.177404,
		0.540795, -0.383767, -0.748508,
		32.890846, 34.522022, 31.535692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829277, 35.338814, 31.652111>,  <32.512291, 34.790661, 32.059647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829277, 35.338814, 31.652111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835255, 35.026825, 31.401857>,  <32.838840, 34.839630, 31.251705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835255, 35.026825, 31.401857>,  <32.829277, 35.338814, 31.652111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835255, 35.026825, 31.401857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299382, 0.593510, -0.747072,
		0.954017, 0.198468, -0.224640,
		0.014943, -0.779972, -0.625636,
		32.839737, 34.792831, 31.214167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096809, 35.645477, 31.151562>,  <32.829277, 35.338814, 31.652111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096809, 35.645477, 31.151562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961826, 35.306831, 30.986940>,  <32.880836, 35.103645, 30.888168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961826, 35.306831, 30.986940>,  <33.096809, 35.645477, 31.151562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961826, 35.306831, 30.986940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236471, 0.499416, -0.833465,
		0.911157, -0.183936, -0.368729,
		-0.337454, -0.846611, -0.411551,
		32.860592, 35.052849, 30.863476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351528, 35.628845, 30.435825>,  <33.096809, 35.645477, 31.151562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351528, 35.628845, 30.435825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028515, 35.397129, 30.480230>,  <32.834709, 35.258099, 30.506872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028515, 35.397129, 30.480230>,  <33.351528, 35.628845, 30.435825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028515, 35.397129, 30.480230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424330, 0.439838, -0.791509,
		0.409676, -0.686278, -0.600989,
		-0.807533, -0.579280, 0.111017,
		32.786255, 35.223343, 30.513533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180107, 35.294922, 29.739695>,  <33.351528, 35.628845, 30.435825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180107, 35.294922, 29.739695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832764, 35.243237, 29.931219>,  <32.624359, 35.212223, 30.046133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832764, 35.243237, 29.931219>,  <33.180107, 35.294922, 29.739695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832764, 35.243237, 29.931219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494148, 0.143476, -0.857457,
		0.042093, -0.981183, -0.188437,
		-0.868358, -0.129209, 0.478811,
		32.572258, 35.204472, 30.074862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811573, 34.853615, 29.347816>,  <33.180107, 35.294922, 29.739695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811573, 34.853615, 29.347816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535599, 35.062622, 29.548203>,  <32.370014, 35.188026, 29.668434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535599, 35.062622, 29.548203>,  <32.811573, 34.853615, 29.347816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535599, 35.062622, 29.548203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366572, 0.344563, -0.864234,
		-0.624192, -0.779905, -0.046186,
		-0.689934, 0.522518, 0.500965,
		32.328617, 35.219376, 29.698492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248108, 34.830662, 29.031637>,  <32.811573, 34.853615, 29.347816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248108, 34.830662, 29.031637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176929, 35.158730, 29.249132>,  <32.134224, 35.355572, 29.379629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176929, 35.158730, 29.249132>,  <32.248108, 34.830662, 29.031637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176929, 35.158730, 29.249132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479388, 0.410302, -0.775783,
		-0.859373, -0.398710, 0.320169,
		-0.177947, 0.820172, 0.543739,
		32.123547, 35.404781, 29.412254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573328, 34.959412, 28.945292>,  <32.248108, 34.830662, 29.031637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573328, 34.959412, 28.945292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676674, 35.323647, 29.074339>,  <31.738682, 35.542187, 29.151768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676674, 35.323647, 29.074339>,  <31.573328, 34.959412, 28.945292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676674, 35.323647, 29.074339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578480, 0.413293, -0.703243,
		-0.773698, -0.004935, 0.633536,
		0.258365, 0.910585, 0.322618,
		31.754183, 35.596821, 29.171124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008036, 35.373924, 28.890932>,  <31.573328, 34.959412, 28.945292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008036, 35.373924, 28.890932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318335, 35.625332, 28.913498>,  <31.504513, 35.776176, 28.927038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318335, 35.625332, 28.913498>,  <31.008036, 35.373924, 28.890932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318335, 35.625332, 28.913498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425181, 0.586647, -0.689250,
		-0.466303, 0.510696, 0.722324,
		0.775746, 0.628518, 0.056417,
		31.551058, 35.813889, 28.930424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656118, 35.986614, 28.820339>,  <31.008036, 35.373924, 28.890932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656118, 35.986614, 28.820339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036360, 36.089771, 28.751234>,  <31.264505, 36.151665, 28.709770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036360, 36.089771, 28.751234>,  <30.656118, 35.986614, 28.820339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036360, 36.089771, 28.751234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305603, 0.679969, -0.666519,
		-0.054413, 0.686393, 0.725193,
		0.950603, 0.257889, -0.172764,
		31.321541, 36.167137, 28.699404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633823, 36.713181, 28.714340>,  <30.656118, 35.986614, 28.820339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633823, 36.713181, 28.714340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969261, 36.573509, 28.547085>,  <31.170523, 36.489708, 28.446732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969261, 36.573509, 28.547085>,  <30.633823, 36.713181, 28.714340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969261, 36.573509, 28.547085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092173, 0.665549, -0.740641,
		0.536903, 0.659637, 0.525940,
		0.838593, -0.349175, -0.418136,
		31.220839, 36.468758, 28.421644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833153, 37.347889, 28.419338>,  <30.633823, 36.713181, 28.714340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833153, 37.347889, 28.419338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063633, 37.072311, 28.243452>,  <31.201921, 36.906963, 28.137920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063633, 37.072311, 28.243452>,  <30.833153, 37.347889, 28.419338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063633, 37.072311, 28.243452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064052, 0.574415, -0.816054,
		0.814794, 0.442046, 0.375107,
		0.576201, -0.688943, -0.439716,
		31.236494, 36.865627, 28.111538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472553, 37.715424, 28.142529>,  <30.833153, 37.347889, 28.419338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472553, 37.715424, 28.142529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448107, 37.378086, 27.928970>,  <31.433439, 37.175686, 27.800835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448107, 37.378086, 27.928970>,  <31.472553, 37.715424, 28.142529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448107, 37.378086, 27.928970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228137, 0.508933, -0.830024,
		0.971709, -0.172527, 0.161294,
		-0.061114, -0.843340, -0.533895,
		31.429773, 37.125084, 27.768803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969536, 37.810638, 27.659729>,  <31.472553, 37.715424, 28.142529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969536, 37.810638, 27.659729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746351, 37.513481, 27.511789>,  <31.612440, 37.335186, 27.423025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746351, 37.513481, 27.511789>,  <31.969536, 37.810638, 27.659729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746351, 37.513481, 27.511789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063397, 0.406210, -0.911578,
		0.827441, -0.532074, -0.179553,
		-0.557963, -0.742894, -0.369847,
		31.578962, 37.290611, 27.400835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299236, 37.580853, 27.066364>,  <31.969536, 37.810638, 27.659729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299236, 37.580853, 27.066364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916658, 37.469074, 27.032597>,  <31.687111, 37.402008, 27.012337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916658, 37.469074, 27.032597>,  <32.299236, 37.580853, 27.066364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916658, 37.469074, 27.032597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068802, 0.496834, -0.865114,
		0.283692, -0.821625, -0.494420,
		-0.956444, -0.279443, -0.084419,
		31.629725, 37.385242, 27.007271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141773, 37.616402, 26.328205>,  <32.299236, 37.580853, 27.066364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141773, 37.616402, 26.328205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782637, 37.571266, 26.498455>,  <31.567156, 37.544186, 26.600605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782637, 37.571266, 26.498455>,  <32.141773, 37.616402, 26.328205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782637, 37.571266, 26.498455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435670, 0.367869, -0.821501,
		-0.063875, -0.923005, -0.379448,
		-0.897837, -0.112841, 0.425624,
		31.513285, 37.537415, 26.626143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591106, 37.089695, 25.954714>,  <32.141773, 37.616402, 26.328205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591106, 37.089695, 25.954714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409498, 37.394081, 26.140100>,  <31.300533, 37.576714, 26.251333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409498, 37.394081, 26.140100>,  <31.591106, 37.089695, 25.954714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409498, 37.394081, 26.140100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257537, 0.385886, -0.885871,
		-0.852960, -0.521562, 0.020777,
		-0.454019, 0.760963, 0.463467,
		31.273293, 37.622372, 26.279140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111921, 37.253407, 25.488909>,  <31.591106, 37.089695, 25.954714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111921, 37.253407, 25.488909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112352, 37.576862, 25.724230>,  <31.112612, 37.770935, 25.865423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112352, 37.576862, 25.724230>,  <31.111921, 37.253407, 25.488909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112352, 37.576862, 25.724230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260055, 0.568290, -0.780652,
		-0.965593, -0.152149, 0.210903,
		0.001079, 0.808639, 0.588304,
		31.112677, 37.819454, 25.900721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502068, 37.647129, 25.296207>,  <31.111921, 37.253407, 25.488909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502068, 37.647129, 25.296207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731358, 37.895859, 25.509655>,  <30.868933, 38.045097, 25.637724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731358, 37.895859, 25.509655>,  <30.502068, 37.647129, 25.296207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731358, 37.895859, 25.509655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249848, 0.752862, -0.608913,
		-0.780377, 0.215721, 0.586921,
		0.573226, 0.621822, 0.533619,
		30.903326, 38.082405, 25.669741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088551, 38.201145, 25.308121>,  <30.502068, 37.647129, 25.296207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088551, 38.201145, 25.308121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461958, 38.324326, 25.381561>,  <30.686003, 38.398235, 25.425625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461958, 38.324326, 25.381561>,  <30.088551, 38.201145, 25.308121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461958, 38.324326, 25.381561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159855, 0.815882, -0.555682,
		-0.320919, 0.489390, 0.810869,
		0.933519, 0.307951, 0.183601,
		30.742014, 38.416710, 25.436642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093388, 38.930489, 25.417267>,  <30.088551, 38.201145, 25.308121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093388, 38.930489, 25.417267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478008, 38.864002, 25.329821>,  <30.708780, 38.824112, 25.277353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478008, 38.864002, 25.329821>,  <30.093388, 38.930489, 25.417267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478008, 38.864002, 25.329821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007496, 0.811635, -0.584117,
		0.274527, 0.560019, 0.781674,
		0.961550, -0.166215, -0.218617,
		30.766474, 38.814137, 25.264235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367775, 39.536797, 25.415129>,  <30.093388, 38.930489, 25.417267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367775, 39.536797, 25.415129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630861, 39.311520, 25.215040>,  <30.788713, 39.176353, 25.094988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630861, 39.311520, 25.215040>,  <30.367775, 39.536797, 25.415129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630861, 39.311520, 25.215040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118874, 0.733354, -0.669373,
		0.743825, 0.380795, 0.549289,
		0.657718, -0.563193, -0.500221,
		30.828176, 39.142563, 25.064974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937414, 39.856010, 25.313791>,  <30.367775, 39.536797, 25.415129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937414, 39.856010, 25.313791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971424, 39.598000, 25.010025>,  <30.991831, 39.443195, 24.827765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971424, 39.598000, 25.010025>,  <30.937414, 39.856010, 25.313791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971424, 39.598000, 25.010025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160656, 0.761080, -0.628448,
		0.983341, -0.068570, 0.168339,
		0.085026, -0.645023, -0.759418,
		30.996931, 39.404491, 24.782200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256918, 40.108242, 24.836922>,  <30.937414, 39.856010, 25.313791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256918, 40.108242, 24.836922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144901, 39.799587, 24.608480>,  <31.077692, 39.614395, 24.471416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144901, 39.799587, 24.608480>,  <31.256918, 40.108242, 24.836922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144901, 39.799587, 24.608480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006972, 0.593255, -0.804984,
		0.959963, -0.229409, -0.160755,
		-0.280040, -0.771635, -0.571102,
		31.060890, 39.568096, 24.437149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841223, 39.971836, 24.278450>,  <31.256918, 40.108242, 24.836922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841223, 39.971836, 24.278450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474924, 39.851017, 24.172485>,  <31.255146, 39.778526, 24.108908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474924, 39.851017, 24.172485>,  <31.841223, 39.971836, 24.278450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474924, 39.851017, 24.172485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065250, 0.538805, -0.839900,
		0.396425, -0.786419, -0.473700,
		-0.915745, -0.302048, -0.264910,
		31.200201, 39.760403, 24.093012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850218, 39.879364, 23.550591>,  <31.841223, 39.971836, 24.278450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850218, 39.879364, 23.550591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455299, 39.910309, 23.606104>,  <31.218348, 39.928875, 23.639412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455299, 39.910309, 23.606104>,  <31.850218, 39.879364, 23.550591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455299, 39.910309, 23.606104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081782, 0.501459, -0.861307,
		-0.136223, -0.861716, -0.488763,
		-0.987297, 0.077358, 0.138783,
		31.159111, 39.933517, 23.647739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635136, 39.753696, 22.919987>,  <31.850218, 39.879364, 23.550591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635136, 39.753696, 22.919987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312981, 39.921154, 23.087839>,  <31.119688, 40.021629, 23.188551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312981, 39.921154, 23.087839>,  <31.635136, 39.753696, 22.919987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312981, 39.921154, 23.087839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217691, 0.449562, -0.866317,
		-0.551329, -0.789069, -0.270936,
		-0.805386, 0.418645, 0.419630,
		31.071365, 40.046749, 23.213728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077784, 39.579052, 22.476084>,  <31.635136, 39.753696, 22.919987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077784, 39.579052, 22.476084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995838, 39.910286, 22.684813>,  <30.946671, 40.109028, 22.810051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995838, 39.910286, 22.684813>,  <31.077784, 39.579052, 22.476084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995838, 39.910286, 22.684813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133145, 0.504599, -0.853026,
		-0.969692, -0.244234, 0.006881,
		-0.204865, 0.828088, 0.521824,
		30.934378, 40.158714, 22.841360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665556, 39.859035, 21.992832>,  <31.077784, 39.579052, 22.476084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665556, 39.859035, 21.992832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751837, 40.155525, 22.247093>,  <30.803606, 40.333420, 22.399651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751837, 40.155525, 22.247093>,  <30.665556, 39.859035, 21.992832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751837, 40.155525, 22.247093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059671, 0.639755, -0.766259,
		-0.974634, 0.203214, 0.093767,
		0.215703, 0.741227, 0.635653,
		30.816547, 40.377892, 22.437790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307339, 40.446960, 21.786079>,  <30.665556, 39.859035, 21.992832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307339, 40.446960, 21.786079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603378, 40.604507, 22.004114>,  <30.781002, 40.699036, 22.134935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603378, 40.604507, 22.004114>,  <30.307339, 40.446960, 21.786079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603378, 40.604507, 22.004114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186265, 0.658778, -0.728915,
		-0.646186, 0.641002, 0.414199,
		0.740101, 0.393863, 0.545089,
		30.825409, 40.722668, 22.167641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180925, 41.142544, 21.806547>,  <30.307339, 40.446960, 21.786079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180925, 41.142544, 21.806547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566179, 41.122917, 21.912352>,  <30.797331, 41.111141, 21.975834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566179, 41.122917, 21.912352>,  <30.180925, 41.142544, 21.806547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566179, 41.122917, 21.912352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195167, 0.804150, -0.561474,
		-0.185158, 0.592399, 0.784079,
		0.963134, -0.049065, 0.264511,
		30.855120, 41.108196, 21.991705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360882, 41.777355, 22.058558>,  <30.180925, 41.142544, 21.806547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360882, 41.777355, 22.058558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728884, 41.628742, 22.008678>,  <30.949686, 41.539574, 21.978750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728884, 41.628742, 22.008678>,  <30.360882, 41.777355, 22.058558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728884, 41.628742, 22.008678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298207, 0.870123, -0.392376,
		0.254285, 0.323802, 0.911313,
		0.920006, -0.371535, -0.124700,
		31.004885, 41.517281, 21.971268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875843, 42.272850, 22.328594>,  <30.360882, 41.777355, 22.058558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875843, 42.272850, 22.328594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090464, 42.050850, 22.074324>,  <31.219236, 41.917648, 21.921761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090464, 42.050850, 22.074324>,  <30.875843, 42.272850, 22.328594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090464, 42.050850, 22.074324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387576, 0.831213, -0.398584,
		0.749599, -0.032514, 0.661093,
		0.536550, -0.555002, -0.635678,
		31.251429, 41.884350, 21.883619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593590, 42.486858, 22.327358>,  <30.875843, 42.272850, 22.328594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593590, 42.486858, 22.327358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530869, 42.314327, 21.971972>,  <31.493237, 42.210808, 21.758739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530869, 42.314327, 21.971972>,  <31.593590, 42.486858, 22.327358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530869, 42.314327, 21.971972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341474, 0.820435, -0.458567,
		0.926719, -0.375292, 0.018641,
		-0.156802, -0.431328, -0.888465,
		31.483828, 42.184929, 21.705433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195591, 42.578407, 22.057705>,  <31.593590, 42.486858, 22.327358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195591, 42.578407, 22.057705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909203, 42.505814, 21.788054>,  <31.737370, 42.462257, 21.626263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909203, 42.505814, 21.788054>,  <32.195591, 42.578407, 22.057705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909203, 42.505814, 21.788054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096886, 0.930448, -0.353384,
		0.691375, -0.318326, -0.648590,
		-0.715970, -0.181481, -0.674130,
		31.694412, 42.451370, 21.585815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464481, 42.872799, 21.376022>,  <32.195591, 42.578407, 22.057705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464481, 42.872799, 21.376022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067665, 42.845074, 21.333981>,  <31.829575, 42.828438, 21.308756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067665, 42.845074, 21.333981>,  <32.464481, 42.872799, 21.376022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067665, 42.845074, 21.333981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015245, 0.894796, -0.446216,
		0.124978, -0.441063, -0.888732,
		-0.992042, -0.069316, -0.105105,
		31.770052, 42.824280, 21.302448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406342, 43.279144, 20.830490>,  <32.464481, 42.872799, 21.376022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406342, 43.279144, 20.830490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035873, 43.271828, 20.981155>,  <31.813593, 43.267437, 21.071554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035873, 43.271828, 20.981155>,  <32.406342, 43.279144, 20.830490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035873, 43.271828, 20.981155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127229, 0.955418, -0.266438,
		-0.354997, -0.294689, -0.887206,
		-0.926170, -0.018293, 0.376664,
		31.758022, 43.266338, 21.094154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932673, 43.586082, 20.275480>,  <32.406342, 43.279144, 20.830490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932673, 43.586082, 20.275480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753885, 43.624073, 20.631277>,  <31.646612, 43.646866, 20.844755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753885, 43.624073, 20.631277>,  <31.932673, 43.586082, 20.275480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753885, 43.624073, 20.631277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299465, 0.921089, -0.248829,
		-0.842936, -0.377591, -0.383255,
		-0.446968, 0.094975, 0.889494,
		31.619795, 43.652565, 20.898125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277956, 43.931477, 20.092796>,  <31.932673, 43.586082, 20.275480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277956, 43.931477, 20.092796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266680, 43.973721, 20.490398>,  <31.259914, 43.999069, 20.728960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266680, 43.973721, 20.490398>,  <31.277956, 43.931477, 20.092796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266680, 43.973721, 20.490398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238873, 0.964881, -0.109294,
		-0.970642, -0.240522, -0.001972,
		-0.028190, 0.105614, 0.994008,
		31.258223, 44.005405, 20.788601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785290, 44.370079, 20.187300>,  <31.277956, 43.931477, 20.092796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785290, 44.370079, 20.187300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008055, 44.389328, 20.518970>,  <31.141714, 44.400875, 20.717974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008055, 44.389328, 20.518970>,  <30.785290, 44.370079, 20.187300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008055, 44.389328, 20.518970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049823, 0.998458, -0.024480,
		-0.829077, -0.027679, 0.558450,
		0.556911, 0.048120, 0.829177,
		31.175129, 44.403763, 20.767723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327499, 44.745934, 20.720774>,  <30.785290, 44.370079, 20.187300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327499, 44.745934, 20.720774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718166, 44.770374, 20.803131>,  <30.952566, 44.785038, 20.852545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718166, 44.770374, 20.803131>,  <30.327499, 44.745934, 20.720774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718166, 44.770374, 20.803131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075888, 0.995017, 0.064678,
		-0.200914, -0.078793, 0.976435,
		0.976665, 0.061105, 0.205892,
		31.011166, 44.788704, 20.864899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306973, 45.334099, 21.199198>,  <30.327499, 44.745934, 20.720774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306973, 45.334099, 21.199198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676857, 45.281956, 21.056133>,  <30.898787, 45.250671, 20.970295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676857, 45.281956, 21.056133>,  <30.306973, 45.334099, 21.199198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676857, 45.281956, 21.056133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158642, 0.986029, 0.050786,
		0.346043, -0.103703, 0.932469,
		0.924709, -0.130354, -0.357661,
		30.954269, 45.242851, 20.948835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794285, 45.655903, 21.628704>,  <30.306973, 45.334099, 21.199198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794285, 45.655903, 21.628704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968363, 45.634567, 21.269203>,  <31.072809, 45.621765, 21.053503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968363, 45.634567, 21.269203>,  <30.794285, 45.655903, 21.628704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968363, 45.634567, 21.269203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357987, 0.926192, 0.118379,
		0.826105, -0.373260, 0.422170,
		0.435196, -0.053338, -0.898754,
		31.098921, 45.618565, 20.999577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557383, 45.845856, 21.609859>,  <30.794285, 45.655903, 21.628704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557383, 45.845856, 21.609859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381168, 45.940338, 21.263418>,  <31.275440, 45.997028, 21.055553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381168, 45.940338, 21.263418>,  <31.557383, 45.845856, 21.609859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381168, 45.940338, 21.263418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272667, 0.954393, 0.121596,
		0.855324, -0.182590, -0.484852,
		-0.440538, 0.236208, -0.866102,
		31.249006, 46.011200, 21.003588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857977, 46.305790, 21.067507>,  <31.557383, 45.845856, 21.609859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857977, 46.305790, 21.067507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469641, 46.377037, 21.003332>,  <31.236639, 46.419785, 20.964828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469641, 46.377037, 21.003332>,  <31.857977, 46.305790, 21.067507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469641, 46.377037, 21.003332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162861, 0.981175, 0.103791,
		0.175902, 0.074637, -0.981574,
		-0.970843, 0.178117, -0.160435,
		31.178389, 46.430473, 20.955202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769812, 46.163326, 20.329657>,  <31.857977, 46.305790, 21.067507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769812, 46.163326, 20.329657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106209, 46.374016, 20.280186>,  <32.308048, 46.500431, 20.250504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106209, 46.374016, 20.280186>,  <31.769812, 46.163326, 20.329657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106209, 46.374016, 20.280186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459623, -0.574911, 0.676922,
		0.285446, -0.626131, -0.725590,
		0.840992, 0.526722, -0.123678,
		32.358505, 46.532032, 20.243082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339653, 45.718884, 20.155060>,  <31.769812, 46.163326, 20.329657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339653, 45.718884, 20.155060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453823, 46.032871, 20.375010>,  <32.522324, 46.221264, 20.506979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453823, 46.032871, 20.375010>,  <32.339653, 45.718884, 20.155060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453823, 46.032871, 20.375010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600080, -0.593731, 0.536085,
		0.747286, 0.176957, -0.640507,
		0.285425, 0.784965, 0.549875,
		32.539452, 46.268360, 20.539972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021545, 45.602692, 20.317730>,  <32.339653, 45.718884, 20.155060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021545, 45.602692, 20.317730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906425, 45.842934, 20.616110>,  <32.837353, 45.987080, 20.795137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906425, 45.842934, 20.616110>,  <33.021545, 45.602692, 20.317730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906425, 45.842934, 20.616110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556684, -0.528886, 0.640611,
		0.779279, 0.599626, -0.182136,
		-0.287798, 0.600607, 0.745952,
		32.820087, 46.023117, 20.839895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589104, 45.757858, 20.763426>,  <33.021545, 45.602692, 20.317730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589104, 45.757858, 20.763426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298767, 45.857872, 21.019749>,  <33.124565, 45.917881, 21.173542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298767, 45.857872, 21.019749>,  <33.589104, 45.757858, 20.763426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298767, 45.857872, 21.019749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470635, -0.498887, 0.727746,
		0.501654, 0.829816, 0.244437,
		-0.725842, 0.250036, 0.640809,
		33.081013, 45.932884, 21.211992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849686, 45.832100, 21.527679>,  <33.589104, 45.757858, 20.763426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849686, 45.832100, 21.527679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457741, 45.768330, 21.575756>,  <33.222572, 45.730068, 21.604603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457741, 45.768330, 21.575756>,  <33.849686, 45.832100, 21.527679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457741, 45.768330, 21.575756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198601, -0.716362, 0.668867,
		-0.020536, 0.679270, 0.733601,
		-0.979865, -0.159430, 0.120193,
		33.163780, 45.720501, 21.611814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758968, 45.786083, 22.219889>,  <33.849686, 45.832100, 21.527679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758968, 45.786083, 22.219889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433395, 45.622833, 22.054504>,  <33.238052, 45.524883, 21.955275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433395, 45.622833, 22.054504>,  <33.758968, 45.786083, 22.219889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433395, 45.622833, 22.054504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088381, -0.790384, 0.606203,
		-0.574199, 0.456866, 0.679389,
		-0.813931, -0.408127, -0.413459,
		33.189217, 45.500397, 21.930466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184937, 45.717934, 22.769674>,  <33.758968, 45.786083, 22.219889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184937, 45.717934, 22.769674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160671, 45.463852, 22.461689>,  <33.146111, 45.311405, 22.276897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160671, 45.463852, 22.461689>,  <33.184937, 45.717934, 22.769674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160671, 45.463852, 22.461689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089373, -0.764827, 0.638006,
		-0.994149, 0.107520, -0.010370,
		-0.060667, -0.635200, -0.769961,
		33.142471, 45.273293, 22.230701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591694, 45.133495, 22.992311>,  <33.184937, 45.717934, 22.769674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591694, 45.133495, 22.992311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839687, 45.004833, 22.706051>,  <32.988483, 44.927635, 22.534294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839687, 45.004833, 22.706051>,  <32.591694, 45.133495, 22.992311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839687, 45.004833, 22.706051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167413, -0.836872, 0.521170,
		-0.766544, -0.442928, -0.465001,
		0.619986, -0.321653, -0.715651,
		33.025684, 44.908337, 22.491356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348328, 44.509640, 22.996120>,  <32.591694, 45.133495, 22.992311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348328, 44.509640, 22.996120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699707, 44.532501, 22.806358>,  <32.910534, 44.546219, 22.692501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699707, 44.532501, 22.806358>,  <32.348328, 44.509640, 22.996120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699707, 44.532501, 22.806358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365258, -0.720434, 0.589544,
		-0.308079, -0.691164, -0.653743,
		0.878450, 0.057159, -0.474403,
		32.963242, 44.549648, 22.664038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438919, 43.890186, 22.731627>,  <32.348328, 44.509640, 22.996120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438919, 43.890186, 22.731627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794155, 44.066280, 22.784540>,  <33.007298, 44.171936, 22.816288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794155, 44.066280, 22.784540>,  <32.438919, 43.890186, 22.731627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794155, 44.066280, 22.784540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380816, -0.865780, 0.324661,
		0.257456, -0.237950, -0.936534,
		0.888085, 0.440233, 0.132284,
		33.060581, 44.198349, 22.824226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961029, 43.390816, 22.685553>,  <32.438919, 43.890186, 22.731627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961029, 43.390816, 22.685553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149704, 43.688469, 22.874773>,  <33.262909, 43.867062, 22.988306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149704, 43.688469, 22.874773>,  <32.961029, 43.390816, 22.685553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149704, 43.688469, 22.874773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430473, -0.662535, 0.612976,
		0.769550, -0.085495, -0.632837,
		0.471683, 0.744135, 0.473051,
		33.291210, 43.911709, 23.016687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555511, 43.118572, 22.829901>,  <32.961029, 43.390816, 22.685553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555511, 43.118572, 22.829901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560474, 43.423809, 23.088369>,  <33.563450, 43.606953, 23.243450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560474, 43.423809, 23.088369>,  <33.555511, 43.118572, 22.829901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560474, 43.423809, 23.088369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480261, -0.571349, 0.665514,
		0.877038, 0.302076, -0.373570,
		0.012403, 0.763092, 0.646170,
		33.564194, 43.652737, 23.282221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219986, 43.084984, 23.131952>,  <33.555511, 43.118572, 22.829901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219986, 43.084984, 23.131952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002434, 43.302414, 23.387676>,  <33.871902, 43.432873, 23.541111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002434, 43.302414, 23.387676>,  <34.219986, 43.084984, 23.131952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002434, 43.302414, 23.387676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291976, -0.591661, 0.751457,
		0.786732, 0.595364, 0.163079,
		-0.543878, 0.543579, 0.639311,
		33.839272, 43.465488, 23.579470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627567, 43.073753, 23.646919>,  <34.219986, 43.084984, 23.131952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627567, 43.073753, 23.646919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298073, 43.208118, 23.829624>,  <34.100376, 43.288738, 23.939247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298073, 43.208118, 23.829624>,  <34.627567, 43.073753, 23.646919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298073, 43.208118, 23.829624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220644, -0.552184, 0.803996,
		0.522286, 0.763059, 0.380735,
		-0.823732, 0.335909, 0.456762,
		34.050953, 43.308891, 23.966652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808132, 43.080067, 24.335291>,  <34.627567, 43.073753, 23.646919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808132, 43.080067, 24.335291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409325, 43.096645, 24.361330>,  <34.170040, 43.106590, 24.376953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409325, 43.096645, 24.361330>,  <34.808132, 43.080067, 24.335291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409325, 43.096645, 24.361330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032064, -0.544809, 0.837947,
		0.070193, 0.837535, 0.541856,
		-0.997018, 0.041444, 0.065097,
		34.110218, 43.109077, 24.380859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659267, 43.263847, 25.001814>,  <34.808132, 43.080067, 24.335291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659267, 43.263847, 25.001814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333145, 43.076550, 24.865566>,  <34.137470, 42.964169, 24.783817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333145, 43.076550, 24.865566>,  <34.659267, 43.263847, 25.001814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333145, 43.076550, 24.865566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035849, -0.546307, 0.836817,
		-0.577920, 0.694473, 0.428621,
		-0.815305, -0.468248, -0.340618,
		34.088554, 42.936073, 24.763380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238380, 43.086502, 25.565077>,  <34.659267, 43.263847, 25.001814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238380, 43.086502, 25.565077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072594, 42.830170, 25.306602>,  <33.973122, 42.676373, 25.151518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072594, 42.830170, 25.306602>,  <34.238380, 43.086502, 25.565077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072594, 42.830170, 25.306602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123456, -0.663889, 0.737570,
		-0.901652, 0.385474, 0.196046,
		-0.414467, -0.640828, -0.646186,
		33.948254, 42.637920, 25.112747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608860, 42.887981, 25.893278>,  <34.238380, 43.086502, 25.565077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608860, 42.887981, 25.893278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696373, 42.604168, 25.625338>,  <33.748882, 42.433880, 25.464573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696373, 42.604168, 25.625338>,  <33.608860, 42.887981, 25.893278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696373, 42.604168, 25.625338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020673, -0.682957, 0.730166,
		-0.975555, -0.173595, -0.134750,
		0.218782, -0.709532, -0.669850,
		33.762009, 42.391308, 25.424383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208652, 42.333714, 26.033140>,  <33.608860, 42.887981, 25.893278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208652, 42.333714, 26.033140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487228, 42.154110, 25.809227>,  <33.654373, 42.046349, 25.674879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487228, 42.154110, 25.809227>,  <33.208652, 42.333714, 26.033140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487228, 42.154110, 25.809227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022244, -0.793196, 0.608561,
		-0.717266, -0.411376, -0.562404,
		0.696444, -0.449010, -0.559782,
		33.696159, 42.019405, 25.641293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047428, 41.592678, 26.063147>,  <33.208652, 42.333714, 26.033140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047428, 41.592678, 26.063147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424065, 41.609623, 25.929516>,  <33.650047, 41.619789, 25.849339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424065, 41.609623, 25.929516>,  <33.047428, 41.592678, 26.063147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424065, 41.609623, 25.929516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236965, -0.788216, 0.567946,
		-0.239265, -0.613939, -0.752218,
		0.941594, 0.042359, -0.334075,
		33.706543, 41.622330, 25.829294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184963, 41.016548, 25.819399>,  <33.047428, 41.592678, 26.063147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184963, 41.016548, 25.819399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543751, 41.160400, 25.922249>,  <33.759022, 41.246712, 25.983959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543751, 41.160400, 25.922249>,  <33.184963, 41.016548, 25.819399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543751, 41.160400, 25.922249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221157, -0.868609, 0.443404,
		0.382803, -0.340855, -0.858650,
		0.896968, 0.359633, 0.257124,
		33.812840, 41.268291, 25.999386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659592, 40.529652, 25.552322>,  <33.184963, 41.016548, 25.819399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659592, 40.529652, 25.552322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806683, 40.723392, 25.869858>,  <33.894939, 40.839638, 26.060379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806683, 40.723392, 25.869858>,  <33.659592, 40.529652, 25.552322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806683, 40.723392, 25.869858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058224, -0.863968, 0.500169,
		0.928109, -0.137706, -0.345907,
		0.367729, 0.484352, 0.793838,
		33.917000, 40.868698, 26.108009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964771, 40.004829, 25.909298>,  <33.659592, 40.529652, 25.552322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964771, 40.004829, 25.909298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972607, 40.308952, 26.169004>,  <33.977310, 40.491425, 26.324829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972607, 40.308952, 26.169004>,  <33.964771, 40.004829, 25.909298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972607, 40.308952, 26.169004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277006, -0.619843, 0.734208,
		0.960668, -0.194235, 0.198466,
		0.019592, 0.760307, 0.649268,
		33.978485, 40.537045, 26.363785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468964, 39.832993, 26.441547>,  <33.964771, 40.004829, 25.909298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468964, 39.832993, 26.441547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228531, 40.101025, 26.615763>,  <34.084270, 40.261845, 26.720291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228531, 40.101025, 26.615763>,  <34.468964, 39.832993, 26.441547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228531, 40.101025, 26.615763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033687, -0.565731, 0.823902,
		0.798480, 0.480557, 0.362622,
		-0.601078, 0.670085, 0.435536,
		34.048206, 40.302052, 26.746424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809910, 39.979088, 27.014120>,  <34.468964, 39.832993, 26.441547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809910, 39.979088, 27.014120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430302, 40.083755, 27.084431>,  <34.202538, 40.146557, 27.126617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430302, 40.083755, 27.084431>,  <34.809910, 39.979088, 27.014120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430302, 40.083755, 27.084431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025561, -0.491906, 0.870273,
		0.314186, 0.830397, 0.460139,
		-0.949017, 0.261666, 0.175776,
		34.145596, 40.162254, 27.137163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758179, 40.123287, 27.767397>,  <34.809910, 39.979088, 27.014120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758179, 40.123287, 27.767397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374210, 40.078701, 27.664541>,  <34.143829, 40.051949, 27.602827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374210, 40.078701, 27.664541>,  <34.758179, 40.123287, 27.767397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374210, 40.078701, 27.664541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197928, -0.379954, 0.903581,
		-0.198421, 0.918265, 0.342665,
		-0.959924, -0.111467, -0.257141,
		34.086235, 40.045261, 27.587399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297211, 40.277779, 28.267757>,  <34.758179, 40.123287, 27.767397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297211, 40.277779, 28.267757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039413, 40.054409, 28.058842>,  <33.884735, 39.920387, 27.933493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039413, 40.054409, 28.058842>,  <34.297211, 40.277779, 28.267757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039413, 40.054409, 28.058842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312740, -0.430805, 0.846523,
		-0.697724, 0.708921, 0.103010,
		-0.644495, -0.558424, -0.522291,
		33.846066, 39.886883, 27.902155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637104, 40.164543, 28.699360>,  <34.297211, 40.277779, 28.267757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637104, 40.164543, 28.699360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607815, 39.875397, 28.424522>,  <33.590240, 39.701908, 28.259619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607815, 39.875397, 28.424522>,  <33.637104, 40.164543, 28.699360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607815, 39.875397, 28.424522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266486, -0.649714, 0.711939,
		-0.961053, 0.235232, -0.145060,
		-0.073223, -0.722868, -0.687096,
		33.585850, 39.658535, 28.218393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021732, 39.837971, 28.814489>,  <33.637104, 40.164543, 28.699360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021732, 39.837971, 28.814489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258835, 39.569996, 28.635679>,  <33.401096, 39.409210, 28.528393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258835, 39.569996, 28.635679>,  <33.021732, 39.837971, 28.814489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258835, 39.569996, 28.635679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148067, -0.636236, 0.757152,
		-0.791656, -0.382615, -0.476327,
		0.592754, -0.669932, -0.447027,
		33.436661, 39.369015, 28.501572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640774, 39.247280, 28.870304>,  <33.021732, 39.837971, 28.814489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640774, 39.247280, 28.870304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009769, 39.116241, 28.788626>,  <33.231167, 39.037621, 28.739618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009769, 39.116241, 28.788626>,  <32.640774, 39.247280, 28.870304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009769, 39.116241, 28.788626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118159, -0.743215, 0.658537,
		-0.367493, -0.583366, -0.724316,
		0.922490, -0.327592, -0.204196,
		33.286518, 39.017963, 28.727367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586868, 38.475674, 28.610491>,  <32.640774, 39.247280, 28.870304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586868, 38.475674, 28.610491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962242, 38.521255, 28.740938>,  <33.187466, 38.548603, 28.819206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962242, 38.521255, 28.740938>,  <32.586868, 38.475674, 28.610491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962242, 38.521255, 28.740938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085447, -0.838129, 0.538738,
		0.334722, -0.533436, -0.776793,
		0.938435, 0.113953, 0.326121,
		33.243774, 38.555443, 28.838774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935753, 37.850151, 28.574453>,  <32.586868, 38.475674, 28.610491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935753, 37.850151, 28.574453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153080, 38.056183, 28.839632>,  <33.283478, 38.179802, 28.998739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153080, 38.056183, 28.839632>,  <32.935753, 37.850151, 28.574453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153080, 38.056183, 28.839632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059439, -0.811286, 0.581620,
		0.837420, -0.276600, -0.471402,
		0.543318, 0.515080, 0.662946,
		33.316074, 38.210709, 29.038515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475178, 37.379551, 28.773710>,  <32.935753, 37.850151, 28.574453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475178, 37.379551, 28.773710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515354, 37.651051, 29.064699>,  <33.539459, 37.813950, 29.239292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515354, 37.651051, 29.064699>,  <33.475178, 37.379551, 28.773710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515354, 37.651051, 29.064699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435257, -0.687466, 0.581327,
		0.894686, 0.258250, -0.364478,
		0.100439, 0.678747, 0.727472,
		33.545486, 37.854675, 29.282940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174664, 37.432701, 28.996185>,  <33.475178, 37.379551, 28.773710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174664, 37.432701, 28.996185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973686, 37.553852, 29.320116>,  <33.853100, 37.626541, 29.514475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973686, 37.553852, 29.320116>,  <34.174664, 37.432701, 28.996185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973686, 37.553852, 29.320116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547313, -0.613670, 0.569085,
		0.669329, 0.729160, 0.142564,
		-0.502441, 0.302878, 0.809826,
		33.822952, 37.644714, 29.563065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686211, 37.616421, 29.453745>,  <34.174664, 37.432701, 28.996185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686211, 37.616421, 29.453745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342670, 37.563393, 29.651653>,  <34.136547, 37.531574, 29.770399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342670, 37.563393, 29.651653>,  <34.686211, 37.616421, 29.453745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342670, 37.563393, 29.651653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501907, -0.410693, 0.761197,
		0.102287, 0.902085, 0.419262,
		-0.858852, -0.132570, 0.494771,
		34.085014, 37.523621, 29.800085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901768, 37.758160, 30.131849>,  <34.686211, 37.616421, 29.453745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901768, 37.758160, 30.131849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560818, 37.556854, 30.188671>,  <34.356247, 37.436073, 30.222765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560818, 37.556854, 30.188671>,  <34.901768, 37.758160, 30.131849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560818, 37.556854, 30.188671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330317, -0.307582, 0.892347,
		-0.405389, 0.807541, 0.428412,
		-0.852379, -0.503260, 0.142054,
		34.305103, 37.405876, 30.231287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862797, 37.879860, 30.823446>,  <34.901768, 37.758160, 30.131849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862797, 37.879860, 30.823446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614082, 37.580250, 30.731928>,  <34.464855, 37.400486, 30.677017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614082, 37.580250, 30.731928>,  <34.862797, 37.879860, 30.823446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614082, 37.580250, 30.731928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278704, -0.484625, 0.829134,
		-0.731921, 0.451777, 0.510089,
		-0.621785, -0.749024, -0.228795,
		34.427547, 37.355541, 30.663290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766411, 37.610676, 31.491943>,  <34.862797, 37.879860, 30.823446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766411, 37.610676, 31.491943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620972, 37.348347, 31.227308>,  <34.533707, 37.190948, 31.068527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620972, 37.348347, 31.227308>,  <34.766411, 37.610676, 31.491943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620972, 37.348347, 31.227308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190137, -0.747492, 0.636477,
		-0.911945, 0.105631, 0.396483,
		-0.363599, -0.655818, -0.661587,
		34.511890, 37.151600, 31.028831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268078, 37.186035, 31.821577>,  <34.766411, 37.610676, 31.491943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268078, 37.186035, 31.821577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420391, 36.959900, 31.528893>,  <34.511780, 36.824219, 31.353283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420391, 36.959900, 31.528893>,  <34.268078, 37.186035, 31.821577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420391, 36.959900, 31.528893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278503, -0.684457, 0.673761,
		-0.881726, -0.460340, -0.103182,
		0.380783, -0.565336, -0.731710,
		34.534626, 36.790298, 31.309380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942165, 36.557644, 31.935268>,  <34.268078, 37.186035, 31.821577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942165, 36.557644, 31.935268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270294, 36.499065, 31.714134>,  <34.467171, 36.463917, 31.581453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270294, 36.499065, 31.714134>,  <33.942165, 36.557644, 31.935268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270294, 36.499065, 31.714134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296293, -0.717988, 0.629845,
		-0.489167, -0.680476, -0.545589,
		0.820321, -0.146445, -0.552836,
		34.516392, 36.455132, 31.548283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061756, 35.847542, 31.886461>,  <33.942165, 36.557644, 31.935268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061756, 35.847542, 31.886461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428650, 35.992832, 31.821035>,  <34.648785, 36.080006, 31.781780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428650, 35.992832, 31.821035>,  <34.061756, 35.847542, 31.886461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428650, 35.992832, 31.821035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359709, -0.578807, 0.731842,
		0.171150, -0.730104, -0.661555,
		0.917233, 0.363222, -0.163562,
		34.703819, 36.101799, 31.771967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486713, 35.255405, 31.843304>,  <34.061756, 35.847542, 31.886461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486713, 35.255405, 31.843304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730667, 35.566856, 31.902332>,  <34.877041, 35.753727, 31.937750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730667, 35.566856, 31.902332>,  <34.486713, 35.255405, 31.843304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730667, 35.566856, 31.902332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593135, -0.571976, 0.566599,
		0.525577, -0.258031, -0.810672,
		0.609885, 0.778630, 0.147570,
		34.913631, 35.800446, 31.946604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110363, 34.877689, 31.918558>,  <34.486713, 35.255405, 31.843304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110363, 34.877689, 31.918558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165024, 35.252026, 32.048500>,  <35.197819, 35.476627, 32.126465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165024, 35.252026, 32.048500>,  <35.110363, 34.877689, 31.918558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165024, 35.252026, 32.048500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661764, -0.330260, 0.673051,
		0.737154, 0.123006, -0.664435,
		0.136647, 0.935841, 0.324853,
		35.206017, 35.532780, 32.145958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912167, 35.045181, 31.997927>,  <35.110363, 34.877689, 31.918558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912167, 35.045181, 31.997927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697445, 35.282909, 32.237469>,  <35.568611, 35.425545, 32.381195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697445, 35.282909, 32.237469>,  <35.912167, 35.045181, 31.997927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697445, 35.282909, 32.237469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520132, -0.325751, 0.789525,
		0.664304, 0.735306, -0.134258,
		-0.536808, 0.594316, 0.598854,
		35.536404, 35.461205, 32.417126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418022, 34.968487, 31.387239>,  <35.912167, 35.045181, 31.997927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418022, 34.968487, 31.387239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785770, 34.853199, 31.280146>,  <37.006420, 34.784027, 31.215889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785770, 34.853199, 31.280146>,  <36.418022, 34.968487, 31.387239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785770, 34.853199, 31.280146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082609, 0.523969, -0.847722,
		0.384611, 0.801492, 0.457914,
		0.919375, -0.288215, -0.267735,
		37.061584, 34.766735, 31.199825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957619, 35.599453, 31.359453>,  <36.418022, 34.968487, 31.387239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957619, 35.599453, 31.359453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055672, 35.303310, 31.109083>,  <37.114502, 35.125626, 30.958860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055672, 35.303310, 31.109083>,  <36.957619, 35.599453, 31.359453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055672, 35.303310, 31.109083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194830, 0.594835, -0.779880,
		0.949711, 0.313124, 0.001571,
		0.245134, -0.740354, -0.625927,
		37.129211, 35.081203, 30.921305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076195, 35.938496, 30.788818>,  <36.957619, 35.599453, 31.359453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076195, 35.938496, 30.788818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093685, 35.586658, 30.599335>,  <37.104179, 35.375557, 30.485643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093685, 35.586658, 30.599335>,  <37.076195, 35.938496, 30.788818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093685, 35.586658, 30.599335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087374, 0.468980, -0.878876,
		0.995215, 0.079824, -0.056345,
		0.043731, -0.879594, -0.473711,
		37.106804, 35.322781, 30.457222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628330, 35.982906, 30.373339>,  <37.076195, 35.938496, 30.788818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628330, 35.982906, 30.373339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410206, 35.688732, 30.212456>,  <37.279331, 35.512230, 30.115925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410206, 35.688732, 30.212456>,  <37.628330, 35.982906, 30.373339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410206, 35.688732, 30.212456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058304, 0.445391, -0.893436,
		0.836202, -0.510654, -0.199999,
		-0.545314, -0.735432, -0.402209,
		37.246613, 35.468102, 30.091793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832047, 35.831112, 29.721422>,  <37.628330, 35.982906, 30.373339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832047, 35.831112, 29.721422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464207, 35.676125, 29.695486>,  <37.243504, 35.583130, 29.679924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464207, 35.676125, 29.695486>,  <37.832047, 35.831112, 29.721422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464207, 35.676125, 29.695486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125000, 0.445050, -0.886739,
		0.372440, -0.807340, -0.457702,
		-0.919600, -0.387469, -0.064837,
		37.188328, 35.559883, 29.676035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754875, 35.576809, 29.053610>,  <37.832047, 35.831112, 29.721422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754875, 35.576809, 29.053610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381874, 35.662834, 29.169672>,  <37.158073, 35.714451, 29.239309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381874, 35.662834, 29.169672>,  <37.754875, 35.576809, 29.053610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381874, 35.662834, 29.169672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165460, 0.459731, -0.872508,
		-0.321038, -0.861623, -0.393115,
		-0.932501, 0.215064, 0.290155,
		37.102123, 35.727352, 29.256718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479298, 35.407761, 28.479780>,  <37.754875, 35.576809, 29.053610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479298, 35.407761, 28.479780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240868, 35.656086, 28.683460>,  <37.097809, 35.805080, 28.805668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240868, 35.656086, 28.683460>,  <37.479298, 35.407761, 28.479780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240868, 35.656086, 28.683460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088325, 0.579632, -0.810078,
		-0.798056, -0.527842, -0.290670,
		-0.596074, 0.620814, 0.509200,
		37.062046, 35.842331, 28.836220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853497, 35.592030, 28.017183>,  <37.479298, 35.407761, 28.479780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853497, 35.592030, 28.017183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881840, 35.876659, 28.296795>,  <36.898846, 36.047436, 28.464561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881840, 35.876659, 28.296795>,  <36.853497, 35.592030, 28.017183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881840, 35.876659, 28.296795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058720, 0.702549, -0.709208,
		-0.995757, 0.009205, 0.091563,
		0.070856, 0.711576, 0.699028,
		36.903095, 36.090134, 28.506504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562881, 36.183399, 27.631655>,  <36.853497, 35.592030, 28.017183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562881, 36.183399, 27.631655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713463, 36.350449, 27.962440>,  <36.803810, 36.450680, 28.160912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713463, 36.350449, 27.962440>,  <36.562881, 36.183399, 27.631655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713463, 36.350449, 27.962440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081559, 0.904105, -0.419455,
		-0.922839, 0.090459, 0.374415,
		0.376453, 0.417627, 0.826965,
		36.826397, 36.475739, 28.210529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175293, 36.748062, 27.773252>,  <36.562881, 36.183399, 27.631655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175293, 36.748062, 27.773252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514690, 36.843849, 27.962023>,  <36.718330, 36.901321, 28.075285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514690, 36.843849, 27.962023>,  <36.175293, 36.748062, 27.773252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514690, 36.843849, 27.962023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045066, 0.921218, -0.386428,
		-0.527284, 0.306614, 0.792439,
		0.848493, 0.239469, 0.471925,
		36.769238, 36.915691, 28.103600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095829, 37.401047, 27.848419>,  <36.175293, 36.748062, 27.773252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095829, 37.401047, 27.848419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485020, 37.361568, 27.931915>,  <36.718536, 37.337883, 27.982014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485020, 37.361568, 27.931915>,  <36.095829, 37.401047, 27.848419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485020, 37.361568, 27.931915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163510, 0.932824, -0.321097,
		-0.163026, 0.346551, 0.923756,
		0.972978, -0.098696, 0.208740,
		36.776913, 37.331959, 27.994537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332386, 37.995220, 28.210985>,  <36.095829, 37.401047, 27.848419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332386, 37.995220, 28.210985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652740, 37.843567, 28.025585>,  <36.844955, 37.752575, 27.914345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652740, 37.843567, 28.025585>,  <36.332386, 37.995220, 28.210985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652740, 37.843567, 28.025585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102450, 0.849377, -0.517747,
		0.589983, 0.367173, 0.719100,
		0.800890, -0.379134, -0.463501,
		36.893009, 37.729828, 27.886536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757801, 38.498501, 28.246164>,  <36.332386, 37.995220, 28.210985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757801, 38.498501, 28.246164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892792, 38.274918, 27.943197>,  <36.973785, 38.140770, 27.761417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892792, 38.274918, 27.943197>,  <36.757801, 38.498501, 28.246164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892792, 38.274918, 27.943197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066339, 0.816743, -0.573176,
		0.938993, 0.143188, 0.312713,
		0.337478, -0.558953, -0.757417,
		36.994034, 38.107231, 27.715973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191593, 38.892342, 27.969576>,  <36.757801, 38.498501, 28.246164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191593, 38.892342, 27.969576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152531, 38.623535, 27.675949>,  <37.129093, 38.462250, 27.499773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152531, 38.623535, 27.675949>,  <37.191593, 38.892342, 27.969576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152531, 38.623535, 27.675949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037347, 0.734600, -0.677471,
		0.994519, -0.093576, -0.046642,
		-0.097658, -0.672016, -0.734069,
		37.123234, 38.421928, 27.455729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696384, 39.118340, 27.415548>,  <37.191593, 38.892342, 27.969576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696384, 39.118340, 27.415548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400032, 38.893009, 27.269251>,  <37.222221, 38.757812, 27.181473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400032, 38.893009, 27.269251>,  <37.696384, 39.118340, 27.415548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400032, 38.893009, 27.269251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147447, 0.667683, -0.729698,
		0.655254, -0.486691, -0.577732,
		-0.740879, -0.563322, -0.365740,
		37.177769, 38.724010, 27.159529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821815, 38.903210, 26.634445>,  <37.696384, 39.118340, 27.415548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821815, 38.903210, 26.634445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430950, 38.909119, 26.719240>,  <37.196430, 38.912663, 26.770117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430950, 38.909119, 26.719240>,  <37.821815, 38.903210, 26.634445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430950, 38.909119, 26.719240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142951, 0.692427, -0.707185,
		-0.157229, -0.721337, -0.674501,
		-0.977161, 0.014769, 0.211985,
		37.137802, 38.913548, 26.782835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628445, 38.946316, 25.949158>,  <37.821815, 38.903210, 26.634445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628445, 38.946316, 25.949158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309654, 39.018970, 26.179581>,  <37.118382, 39.062561, 26.317835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309654, 39.018970, 26.179581>,  <37.628445, 38.946316, 25.949158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309654, 39.018970, 26.179581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320835, 0.680750, -0.658516,
		-0.511762, -0.709639, -0.484264,
		-0.796972, 0.181635, 0.576059,
		37.070564, 39.073460, 26.352398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970444, 39.013844, 25.482325>,  <37.628445, 38.946316, 25.949158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970444, 39.013844, 25.482325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897648, 39.213535, 25.821182>,  <36.853970, 39.333351, 26.024496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897648, 39.213535, 25.821182>,  <36.970444, 39.013844, 25.482325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897648, 39.213535, 25.821182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355692, 0.769765, -0.530042,
		-0.916714, -0.397783, 0.037485,
		-0.181987, 0.499230, 0.847142,
		36.843052, 39.363304, 26.075325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357567, 39.250599, 25.301147>,  <36.970444, 39.013844, 25.482325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357567, 39.250599, 25.301147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475510, 39.491650, 25.597769>,  <36.546276, 39.636280, 25.775742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475510, 39.491650, 25.597769>,  <36.357567, 39.250599, 25.301147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475510, 39.491650, 25.597769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475136, 0.765780, -0.433389,
		-0.829038, -0.224550, 0.512126,
		0.294859, 0.602626, 0.741553,
		36.563969, 39.672436, 25.820234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768158, 39.611427, 25.362518>,  <36.357567, 39.250599, 25.301147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768158, 39.611427, 25.362518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051868, 39.827732, 25.543407>,  <36.222095, 39.957516, 25.651941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051868, 39.827732, 25.543407>,  <35.768158, 39.611427, 25.362518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051868, 39.827732, 25.543407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408204, 0.838076, -0.361936,
		-0.574720, 0.072112, 0.815167,
		0.709272, 0.540767, 0.452222,
		36.264648, 39.989964, 25.679073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429516, 40.154938, 25.738398>,  <35.768158, 39.611427, 25.362518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429516, 40.154938, 25.738398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809509, 40.257507, 25.667095>,  <36.037506, 40.319050, 25.624313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809509, 40.257507, 25.667095>,  <35.429516, 40.154938, 25.738398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809509, 40.257507, 25.667095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309007, 0.854394, -0.417763,
		0.045178, 0.451951, 0.890898,
		0.949986, 0.256421, -0.178256,
		36.094505, 40.334435, 25.613619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507877, 40.894592, 25.936617>,  <35.429516, 40.154938, 25.738398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507877, 40.894592, 25.936617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778553, 40.794559, 25.659616>,  <35.940956, 40.734539, 25.493416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778553, 40.794559, 25.659616>,  <35.507877, 40.894592, 25.936617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778553, 40.794559, 25.659616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228694, 0.822638, -0.520544,
		0.699855, 0.510615, 0.499475,
		0.676685, -0.250079, -0.692501,
		35.981560, 40.719536, 25.451866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770168, 41.539639, 25.662340>,  <35.507877, 40.894592, 25.936617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770168, 41.539639, 25.662340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870064, 41.246983, 25.408623>,  <35.930000, 41.071388, 25.256392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870064, 41.246983, 25.408623>,  <35.770168, 41.539639, 25.662340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870064, 41.246983, 25.408623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016957, 0.651645, -0.758335,
		0.968164, 0.200144, 0.150337,
		0.249743, -0.731643, -0.634293,
		35.944988, 41.027489, 25.218334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961693, 41.921570, 25.140135>,  <35.770168, 41.539639, 25.662340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961693, 41.921570, 25.140135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917191, 41.552872, 24.991533>,  <35.890491, 41.331654, 24.902372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917191, 41.552872, 24.991533>,  <35.961693, 41.921570, 25.140135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917191, 41.552872, 24.991533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133375, 0.384291, -0.913527,
		0.984802, -0.052083, -0.165691,
		-0.111253, -0.921742, -0.371504,
		35.883816, 41.276348, 24.880083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411858, 41.904110, 24.532684>,  <35.961693, 41.921570, 25.140135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411858, 41.904110, 24.532684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137791, 41.615997, 24.489338>,  <35.973351, 41.443130, 24.463329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137791, 41.615997, 24.489338>,  <36.411858, 41.904110, 24.532684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137791, 41.615997, 24.489338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059682, 0.203789, -0.977194,
		0.725941, -0.663069, -0.182617,
		-0.685163, -0.720284, -0.108366,
		35.932243, 41.399914, 24.456829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371677, 41.819595, 23.829531>,  <36.411858, 41.904110, 24.532684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371677, 41.819595, 23.829531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054653, 41.593811, 23.921824>,  <35.864441, 41.458340, 23.977200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054653, 41.593811, 23.921824>,  <36.371677, 41.819595, 23.829531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054653, 41.593811, 23.921824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185449, -0.137344, -0.973009,
		0.580913, -0.813955, 0.004175,
		-0.792559, -0.564459, 0.230732,
		35.816887, 41.424473, 23.991043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361931, 41.162102, 23.406261>,  <36.371677, 41.819595, 23.829531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361931, 41.162102, 23.406261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992401, 41.258011, 23.525631>,  <35.770683, 41.315556, 23.597252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992401, 41.258011, 23.525631>,  <36.361931, 41.162102, 23.406261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992401, 41.258011, 23.525631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334614, -0.127088, -0.933746,
		-0.185967, -0.962473, 0.197640,
		-0.923823, 0.239780, 0.298423,
		35.715252, 41.329945, 23.615158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876411, 40.722141, 23.041172>,  <36.361931, 41.162102, 23.406261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876411, 40.722141, 23.041172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636353, 41.016262, 23.167126>,  <35.492317, 41.192734, 23.242699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636353, 41.016262, 23.167126>,  <35.876411, 40.722141, 23.041172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636353, 41.016262, 23.167126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410987, 0.054264, -0.910025,
		-0.686233, -0.675560, 0.269634,
		-0.600145, 0.735305, 0.314884,
		35.456310, 41.236855, 23.261591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067413, 40.531879, 22.875332>,  <35.876411, 40.722141, 23.041172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067413, 40.531879, 22.875332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147205, 40.923126, 22.898983>,  <35.195080, 41.157875, 22.913174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147205, 40.923126, 22.898983>,  <35.067413, 40.531879, 22.875332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147205, 40.923126, 22.898983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466671, 0.147887, -0.871979,
		-0.861641, 0.146348, 0.485959,
		0.199480, 0.978116, 0.059129,
		35.207050, 41.216560, 22.916721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399113, 40.891552, 22.734245>,  <35.067413, 40.531879, 22.875332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399113, 40.891552, 22.734245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674618, 41.178345, 22.691269>,  <34.839920, 41.350422, 22.665483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674618, 41.178345, 22.691269>,  <34.399113, 40.891552, 22.734245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674618, 41.178345, 22.691269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529878, 0.396695, -0.749575,
		-0.494815, 0.573206, 0.653142,
		0.688758, 0.716986, -0.107439,
		34.881245, 41.393440, 22.659037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066120, 41.541252, 22.719809>,  <34.399113, 40.891552, 22.734245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066120, 41.541252, 22.719809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415302, 41.590458, 22.530994>,  <34.624813, 41.619984, 22.417706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415302, 41.590458, 22.530994>,  <34.066120, 41.541252, 22.719809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415302, 41.590458, 22.530994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482071, 0.365465, -0.796268,
		0.074558, 0.922660, 0.378337,
		0.872954, 0.123018, -0.472036,
		34.677189, 41.627361, 22.389383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977123, 42.258812, 22.482977>,  <34.066120, 41.541252, 22.719809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977123, 42.258812, 22.482977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282459, 42.112648, 22.269892>,  <34.465660, 42.024952, 22.142040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282459, 42.112648, 22.269892>,  <33.977123, 42.258812, 22.482977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282459, 42.112648, 22.269892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360380, 0.443517, -0.820621,
		0.536128, 0.818396, 0.206870,
		0.763343, -0.365406, -0.532715,
		34.511463, 42.003025, 22.110077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201847, 42.807446, 22.123711>,  <33.977123, 42.258812, 22.482977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201847, 42.807446, 22.123711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326080, 42.483810, 21.924145>,  <34.400620, 42.289631, 21.804405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326080, 42.483810, 21.924145>,  <34.201847, 42.807446, 22.123711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326080, 42.483810, 21.924145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194478, 0.459683, -0.866528,
		0.930439, 0.366157, -0.014580,
		0.310583, -0.809087, -0.498916,
		34.419254, 42.241085, 21.774469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731159, 42.986702, 21.640419>,  <34.201847, 42.807446, 22.123711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731159, 42.986702, 21.640419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585682, 42.641003, 21.501390>,  <34.498398, 42.433582, 21.417974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585682, 42.641003, 21.501390>,  <34.731159, 42.986702, 21.640419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585682, 42.641003, 21.501390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191573, 0.434538, -0.880043,
		0.911608, -0.253478, -0.323604,
		-0.363689, -0.864249, -0.347569,
		34.476574, 42.381729, 21.397120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836216, 43.067154, 20.914642>,  <34.731159, 42.986702, 21.640419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836216, 43.067154, 20.914642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601723, 42.745880, 20.957012>,  <34.461025, 42.553116, 20.982435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601723, 42.745880, 20.957012>,  <34.836216, 43.067154, 20.914642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601723, 42.745880, 20.957012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394524, 0.168835, -0.903242,
		0.707589, -0.571300, -0.415853,
		-0.586233, -0.803188, 0.105926,
		34.425854, 42.504925, 20.988791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009041, 42.666584, 20.364815>,  <34.836216, 43.067154, 20.914642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009041, 42.666584, 20.364815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640461, 42.539688, 20.454510>,  <34.419312, 42.463551, 20.508327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640461, 42.539688, 20.454510>,  <35.009041, 42.666584, 20.364815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640461, 42.539688, 20.454510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312594, 0.262737, -0.912828,
		0.230670, -0.911223, -0.341267,
		-0.921454, -0.317240, 0.224237,
		34.364025, 42.444515, 20.521782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819355, 42.182854, 19.893377>,  <35.009041, 42.666584, 20.364815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819355, 42.182854, 19.893377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487808, 42.343056, 20.049625>,  <34.288879, 42.439175, 20.143373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487808, 42.343056, 20.049625>,  <34.819355, 42.182854, 19.893377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487808, 42.343056, 20.049625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267434, 0.329625, -0.905443,
		-0.491390, -0.854953, -0.166106,
		-0.828864, 0.400503, 0.390618,
		34.239151, 42.463207, 20.166811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322105, 41.883305, 19.354673>,  <34.819355, 42.182854, 19.893377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322105, 41.883305, 19.354673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579426, 41.930431, 19.052074>,  <34.733818, 41.958706, 18.870516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579426, 41.930431, 19.052074>,  <34.322105, 41.883305, 19.354673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579426, 41.930431, 19.052074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716587, -0.440560, 0.540749,
		-0.269575, -0.889959, -0.367836,
		0.643298, 0.117814, -0.756497,
		34.772415, 41.965775, 18.825125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757153, 41.369877, 19.367794>,  <34.322105, 41.883305, 19.354673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757153, 41.369877, 19.367794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973228, 41.575985, 19.101652>,  <35.102875, 41.699650, 18.941967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973228, 41.575985, 19.101652>,  <34.757153, 41.369877, 19.367794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973228, 41.575985, 19.101652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841211, -0.352925, 0.409643,
		-0.023742, -0.780985, -0.624098,
		0.540185, 0.515273, -0.665352,
		35.135284, 41.730568, 18.902046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223244, 40.947613, 18.999195>,  <34.757153, 41.369877, 19.367794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223244, 40.947613, 18.999195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366184, 41.321056, 18.988819>,  <35.451946, 41.545124, 18.982594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366184, 41.321056, 18.988819>,  <35.223244, 40.947613, 18.999195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366184, 41.321056, 18.988819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837033, -0.307814, 0.452357,
		0.414341, -0.183360, -0.891460,
		0.357348, 0.933611, -0.025938,
		35.473389, 41.601139, 18.981037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007107, 40.956673, 18.704920>,  <35.223244, 40.947613, 18.999195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007107, 40.956673, 18.704920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929707, 41.280121, 18.927156>,  <35.883266, 41.474190, 19.060499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929707, 41.280121, 18.927156>,  <36.007107, 40.956673, 18.704920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929707, 41.280121, 18.927156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826220, -0.171076, 0.536743,
		0.529072, 0.562902, -0.634999,
		-0.193500, 0.808625, 0.555593,
		35.871658, 41.522709, 19.093834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687965, 41.270657, 18.847395>,  <36.007107, 40.956673, 18.704920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687965, 41.270657, 18.847395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450230, 41.443970, 19.118399>,  <36.307587, 41.547958, 19.281002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450230, 41.443970, 19.118399>,  <36.687965, 41.270657, 18.847395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450230, 41.443970, 19.118399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660375, -0.217863, 0.718638,
		0.458978, 0.874529, -0.156644,
		-0.594343, 0.433283, 0.677511,
		36.271927, 41.573956, 19.321651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076569, 41.709373, 19.369419>,  <36.687965, 41.270657, 18.847395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076569, 41.709373, 19.369419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728233, 41.639400, 19.553173>,  <36.519230, 41.597416, 19.663425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728233, 41.639400, 19.553173>,  <37.076569, 41.709373, 19.369419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728233, 41.639400, 19.553173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491565, -0.307671, 0.814679,
		-0.001177, 0.935273, 0.353925,
		-0.870840, -0.174936, 0.459385,
		36.466980, 41.586918, 19.690989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253334, 41.922321, 20.023235>,  <37.076569, 41.709373, 19.369419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253334, 41.922321, 20.023235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924599, 41.699276, 20.069977>,  <36.727360, 41.565449, 20.098021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924599, 41.699276, 20.069977>,  <37.253334, 41.922321, 20.023235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924599, 41.699276, 20.069977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367596, -0.362290, 0.856515,
		-0.435271, 0.746868, 0.502720,
		-0.821834, -0.557615, 0.116852,
		36.678047, 41.531990, 20.105032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989838, 42.111275, 20.628700>,  <37.253334, 41.922321, 20.023235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989838, 42.111275, 20.628700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850033, 41.741589, 20.567165>,  <36.766151, 41.519775, 20.530245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850033, 41.741589, 20.567165>,  <36.989838, 42.111275, 20.628700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850033, 41.741589, 20.567165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296046, -0.264716, 0.917759,
		-0.888931, 0.275225, 0.366132,
		-0.349511, -0.924217, -0.153835,
		36.745178, 41.464325, 20.521015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490944, 41.981335, 21.222342>,  <36.989838, 42.111275, 20.628700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490944, 41.981335, 21.222342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614090, 41.635498, 21.063494>,  <36.687977, 41.427998, 20.968185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614090, 41.635498, 21.063494>,  <36.490944, 41.981335, 21.222342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614090, 41.635498, 21.063494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348523, -0.285900, 0.892632,
		-0.885298, -0.413214, 0.213312,
		0.307862, -0.864590, -0.397122,
		36.706448, 41.376122, 20.944357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371578, 41.512623, 21.737297>,  <36.490944, 41.981335, 21.222342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371578, 41.512623, 21.737297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611629, 41.286503, 21.510923>,  <36.755661, 41.150829, 21.375099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611629, 41.286503, 21.510923>,  <36.371578, 41.512623, 21.737297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611629, 41.286503, 21.510923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354145, -0.446616, 0.821654,
		-0.717239, -0.693519, -0.067827,
		0.600125, -0.565302, -0.565936,
		36.791668, 41.116913, 21.341143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416622, 40.922958, 22.044504>,  <36.371578, 41.512623, 21.737297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416622, 40.922958, 22.044504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725170, 40.893307, 21.791679>,  <36.910297, 40.875515, 21.639984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725170, 40.893307, 21.791679>,  <36.416622, 40.922958, 22.044504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725170, 40.893307, 21.791679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575199, -0.343742, 0.742286,
		-0.272286, -0.936134, -0.222516,
		0.771367, -0.074123, -0.632059,
		36.956581, 40.871071, 21.602062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527599, 40.216824, 22.004742>,  <36.416622, 40.922958, 22.044504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527599, 40.216824, 22.004742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856010, 40.425152, 21.911224>,  <37.053059, 40.550148, 21.855114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856010, 40.425152, 21.911224>,  <36.527599, 40.216824, 22.004742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856010, 40.425152, 21.911224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491287, -0.435996, 0.754019,
		0.290774, -0.733931, -0.613837,
		0.821028, 0.520819, -0.233795,
		37.102318, 40.581398, 21.841085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004517, 39.737553, 22.005005>,  <36.527599, 40.216824, 22.004742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004517, 39.737553, 22.005005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214859, 40.076683, 22.032328>,  <37.341064, 40.280163, 22.048721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214859, 40.076683, 22.032328>,  <37.004517, 39.737553, 22.005005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214859, 40.076683, 22.032328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669103, -0.461909, 0.582187,
		0.525147, -0.260439, -0.810181,
		0.525854, 0.847828, 0.068309,
		37.372616, 40.331032, 22.052820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665779, 39.550735, 22.072803>,  <37.004517, 39.737553, 22.005005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665779, 39.550735, 22.072803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657696, 39.927757, 22.206182>,  <37.652847, 40.153969, 22.286209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657696, 39.927757, 22.206182>,  <37.665779, 39.550735, 22.072803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657696, 39.927757, 22.206182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596720, -0.256228, 0.760442,
		0.802195, 0.214342, -0.557262,
		-0.020209, 0.942552, 0.333447,
		37.651634, 40.210522, 22.306217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407204, 39.711555, 22.247900>,  <37.665779, 39.550735, 22.072803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407204, 39.711555, 22.247900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161911, 39.953564, 22.451035>,  <38.014736, 40.098770, 22.572916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161911, 39.953564, 22.451035>,  <38.407204, 39.711555, 22.247900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161911, 39.953564, 22.451035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445448, -0.266054, 0.854863,
		0.652322, 0.750444, -0.106353,
		-0.613231, 0.605021, 0.507836,
		37.977943, 40.135071, 22.603386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969585, 40.108334, 22.658215>,  <38.407204, 39.711555, 22.247900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969585, 40.108334, 22.658215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601021, 40.125160, 22.812735>,  <38.379883, 40.135254, 22.905447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601021, 40.125160, 22.812735>,  <38.969585, 40.108334, 22.658215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601021, 40.125160, 22.812735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363297, -0.259496, 0.894806,
		0.137882, 0.964828, 0.223822,
		-0.921414, 0.042063, 0.386299,
		38.324596, 40.137779, 22.928625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024933, 40.445335, 23.295038>,  <38.969585, 40.108334, 22.658215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024933, 40.445335, 23.295038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689007, 40.231251, 23.331394>,  <38.487450, 40.102798, 23.353207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689007, 40.231251, 23.331394>,  <39.024933, 40.445335, 23.295038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689007, 40.231251, 23.331394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326250, -0.363763, 0.872489,
		-0.433905, 0.762381, 0.480106,
		-0.839814, -0.535212, 0.090888,
		38.437061, 40.070686, 23.358660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900299, 40.557327, 23.975069>,  <39.024933, 40.445335, 23.295038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900299, 40.557327, 23.975069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662220, 40.255222, 23.865290>,  <38.519371, 40.073959, 23.799421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662220, 40.255222, 23.865290>,  <38.900299, 40.557327, 23.975069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662220, 40.255222, 23.865290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147913, -0.438666, 0.886394,
		-0.789849, 0.486985, 0.372805,
		-0.595197, -0.755260, -0.274449,
		38.483662, 40.028645, 23.782955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605274, 40.334309, 24.577290>,  <38.900299, 40.557327, 23.975069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605274, 40.334309, 24.577290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499371, 40.013588, 24.362995>,  <38.435829, 39.821156, 24.234419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499371, 40.013588, 24.362995>,  <38.605274, 40.334309, 24.577290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499371, 40.013588, 24.362995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191263, -0.588187, 0.785783,
		-0.945156, 0.105578, 0.309084,
		-0.264760, -0.801804, -0.535735,
		38.419941, 39.773048, 24.202274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154934, 40.020081, 24.951244>,  <38.605274, 40.334309, 24.577290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154934, 40.020081, 24.951244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330555, 39.751869, 24.712038>,  <38.435928, 39.590942, 24.568514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330555, 39.751869, 24.712038>,  <38.154934, 40.020081, 24.951244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330555, 39.751869, 24.712038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112958, -0.619124, 0.777127,
		-0.891331, -0.408752, -0.196089,
		0.439055, -0.670527, -0.598016,
		38.462273, 39.550713, 24.532633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892967, 39.420216, 25.248735>,  <38.154934, 40.020081, 24.951244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892967, 39.420216, 25.248735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195652, 39.294212, 25.019594>,  <38.377262, 39.218613, 24.882109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195652, 39.294212, 25.019594>,  <37.892967, 39.420216, 25.248735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195652, 39.294212, 25.019594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199006, -0.723681, 0.660819,
		-0.622724, -0.614051, -0.484930,
		0.756711, -0.315004, -0.572853,
		38.422665, 39.199711, 24.847738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753643, 38.684006, 24.974415>,  <37.892967, 39.420216, 25.248735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753643, 38.684006, 24.974415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149578, 38.736183, 24.951754>,  <38.387138, 38.767490, 24.938156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149578, 38.736183, 24.951754>,  <37.753643, 38.684006, 24.974415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149578, 38.736183, 24.951754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141512, -0.863976, 0.483239,
		0.014087, -0.486345, -0.873654,
		0.989836, 0.130440, -0.056653,
		38.446529, 38.775314, 24.934757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016628, 38.024796, 24.989832>,  <37.753643, 38.684006, 24.974415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016628, 38.024796, 24.989832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317516, 38.259819, 25.109121>,  <38.498047, 38.400833, 25.180695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317516, 38.259819, 25.109121>,  <38.016628, 38.024796, 24.989832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317516, 38.259819, 25.109121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261317, -0.681502, 0.683570,
		0.604882, -0.436262, -0.666178,
		0.752218, 0.587563, 0.298225,
		38.543182, 38.436089, 25.198589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537334, 37.562714, 25.102135>,  <38.016628, 38.024796, 24.989832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537334, 37.562714, 25.102135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652954, 37.880711, 25.315464>,  <38.722328, 38.071510, 25.443460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652954, 37.880711, 25.315464>,  <38.537334, 37.562714, 25.102135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652954, 37.880711, 25.315464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456107, -0.604173, 0.653407,
		0.841674, 0.054384, -0.537240,
		0.289051, 0.794995, 0.533322,
		38.739670, 38.119209, 25.475460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166912, 37.340309, 25.295446>,  <38.537334, 37.562714, 25.102135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166912, 37.340309, 25.295446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082020, 37.639858, 25.546572>,  <39.031086, 37.819588, 25.697247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082020, 37.639858, 25.546572>,  <39.166912, 37.340309, 25.295446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082020, 37.639858, 25.546572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429338, -0.505670, 0.748309,
		0.877854, 0.428358, -0.214200,
		-0.212230, 0.748870, 0.627815,
		39.018353, 37.864521, 25.734917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815090, 37.527374, 25.713757>,  <39.166912, 37.340309, 25.295446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815090, 37.527374, 25.713757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492294, 37.630814, 25.926130>,  <39.298615, 37.692875, 26.053555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492294, 37.630814, 25.926130>,  <39.815090, 37.527374, 25.713757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492294, 37.630814, 25.926130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385410, -0.450576, 0.805258,
		0.447462, 0.854465, 0.263947,
		-0.806993, 0.258594, 0.530935,
		39.250198, 37.708393, 26.085411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087399, 37.680134, 26.318672>,  <39.815090, 37.527374, 25.713757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087399, 37.680134, 26.318672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702854, 37.680943, 26.428791>,  <39.472130, 37.681427, 26.494862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702854, 37.680943, 26.428791>,  <40.087399, 37.680134, 26.318672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702854, 37.680943, 26.428791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240068, -0.483318, 0.841885,
		0.134758, 0.875442, 0.464156,
		-0.961357, 0.002022, 0.275297,
		39.414448, 37.681549, 26.511379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067207, 37.918167, 27.041176>,  <40.087399, 37.680134, 26.318672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067207, 37.918167, 27.041176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739555, 37.702801, 26.962040>,  <39.542965, 37.573582, 26.914558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739555, 37.702801, 26.962040>,  <40.067207, 37.918167, 27.041176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739555, 37.702801, 26.962040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133708, -0.514618, 0.846930,
		-0.557811, 0.667291, 0.493528,
		-0.819127, -0.538415, -0.197838,
		39.493816, 37.541275, 26.902689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723011, 37.852787, 27.692587>,  <40.067207, 37.918167, 27.041176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723011, 37.852787, 27.692587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597420, 37.544670, 27.470573>,  <39.522064, 37.359798, 27.337366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597420, 37.544670, 27.470573>,  <39.723011, 37.852787, 27.692587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597420, 37.544670, 27.470573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079113, -0.603790, 0.793208,
		-0.946128, 0.205141, 0.250518,
		-0.313980, -0.770296, -0.555033,
		39.503227, 37.313580, 27.304064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399872, 37.427670, 28.214161>,  <39.723011, 37.852787, 27.692587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399872, 37.427670, 28.214161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434559, 37.179306, 27.902533>,  <39.455372, 37.030289, 27.715555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434559, 37.179306, 27.902533>,  <39.399872, 37.427670, 28.214161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434559, 37.179306, 27.902533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048762, -0.783727, 0.619189,
		-0.995039, -0.015707, -0.098242,
		0.086720, -0.620907, -0.779072,
		39.460575, 36.993034, 27.668812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926865, 36.982803, 28.366226>,  <39.399872, 37.427670, 28.214161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926865, 36.982803, 28.366226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144424, 36.788124, 28.092787>,  <39.274960, 36.671318, 27.928724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144424, 36.788124, 28.092787>,  <38.926865, 36.982803, 28.366226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144424, 36.788124, 28.092787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019949, -0.821895, 0.569290,
		-0.838917, -0.295996, -0.456732,
		0.543893, -0.486699, -0.683597,
		39.307594, 36.642117, 27.887709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634544, 36.417866, 28.282743>,  <38.926865, 36.982803, 28.366226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634544, 36.417866, 28.282743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999889, 36.330051, 28.145586>,  <39.219097, 36.277363, 28.063292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999889, 36.330051, 28.145586>,  <38.634544, 36.417866, 28.282743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999889, 36.330051, 28.145586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001266, -0.843703, 0.536809,
		-0.407151, -0.489866, -0.770882,
		0.913360, -0.219539, -0.342894,
		39.273899, 36.264191, 28.042717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599716, 35.755733, 28.172859>,  <38.634544, 36.417866, 28.282743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599716, 35.755733, 28.172859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988411, 35.835884, 28.222775>,  <39.221630, 35.883976, 28.252724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988411, 35.835884, 28.222775>,  <38.599716, 35.755733, 28.172859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988411, 35.835884, 28.222775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120176, -0.874935, 0.469091,
		0.203178, -0.440837, -0.874289,
		0.971739, 0.200377, 0.124790,
		39.279934, 35.895996, 28.260212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885086, 35.063206, 27.974279>,  <38.599716, 35.755733, 28.172859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885086, 35.063206, 27.974279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136395, 35.307266, 28.167355>,  <39.287182, 35.453701, 28.283199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136395, 35.307266, 28.167355>,  <38.885086, 35.063206, 27.974279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136395, 35.307266, 28.167355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233491, -0.739705, 0.631125,
		0.742127, -0.283817, -0.607203,
		0.628275, 0.610151, 0.482686,
		39.324879, 35.490311, 28.312160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357456, 34.625439, 28.164341>,  <38.885086, 35.063206, 27.974279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357456, 34.625439, 28.164341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421051, 34.914967, 28.432909>,  <39.459206, 35.088684, 28.594049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421051, 34.914967, 28.432909>,  <39.357456, 34.625439, 28.164341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421051, 34.914967, 28.432909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139674, -0.689718, 0.710479,
		0.977351, -0.019174, -0.210752,
		0.158982, 0.723824, 0.671419,
		39.468746, 35.132114, 28.634335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828327, 34.364212, 28.487825>,  <39.357456, 34.625439, 28.164341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828327, 34.364212, 28.487825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696056, 34.659760, 28.722679>,  <39.616695, 34.837090, 28.863592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696056, 34.659760, 28.722679>,  <39.828327, 34.364212, 28.487825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696056, 34.659760, 28.722679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056541, -0.605507, 0.793829,
		0.942050, 0.295695, 0.158448,
		-0.330673, 0.738868, 0.587136,
		39.596855, 34.881420, 28.898821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244808, 34.393166, 29.047937>,  <39.828327, 34.364212, 28.487825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244808, 34.393166, 29.047937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894215, 34.553928, 29.153948>,  <39.683857, 34.650387, 29.217554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894215, 34.553928, 29.153948>,  <40.244808, 34.393166, 29.047937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894215, 34.553928, 29.153948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104150, -0.695768, 0.710676,
		0.470023, 0.595296, 0.651691,
		-0.876488, 0.401908, 0.265026,
		39.631268, 34.674500, 29.233456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329784, 34.596790, 29.710684>,  <40.244808, 34.393166, 29.047937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329784, 34.596790, 29.710684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939255, 34.525017, 29.662367>,  <39.704937, 34.481953, 29.633377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939255, 34.525017, 29.662367>,  <40.329784, 34.596790, 29.710684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939255, 34.525017, 29.662367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041411, -0.393064, 0.918578,
		-0.212302, 0.901834, 0.376328,
		-0.976326, -0.179431, -0.120794,
		39.646358, 34.471188, 29.626129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051262, 34.605415, 30.465519>,  <40.329784, 34.596790, 29.710684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051262, 34.605415, 30.465519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717045, 34.483082, 30.282944>,  <39.516514, 34.409683, 30.173399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717045, 34.483082, 30.282944>,  <40.051262, 34.605415, 30.465519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717045, 34.483082, 30.282944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284364, -0.470112, 0.835543,
		-0.470112, 0.827926, 0.305831,
		-0.835543, -0.305831, -0.456438,
		39.466381, 34.391331, 30.146013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587090, 34.709991, 31.014889>,  <40.051262, 34.605415, 30.465519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587090, 34.709991, 31.014889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412632, 34.448383, 30.767654>,  <39.307957, 34.291416, 30.619314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412632, 34.448383, 30.767654>,  <39.587090, 34.709991, 31.014889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412632, 34.448383, 30.767654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138645, -0.629817, 0.764269,
		-0.889130, 0.419029, 0.184016,
		-0.436148, -0.654022, -0.618086,
		39.281788, 34.252178, 30.582230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867279, 34.485760, 31.252718>,  <39.587090, 34.709991, 31.014889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867279, 34.485760, 31.252718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031654, 34.197056, 31.029938>,  <39.130280, 34.023834, 30.896271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031654, 34.197056, 31.029938>,  <38.867279, 34.485760, 31.252718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031654, 34.197056, 31.029938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146439, -0.655241, 0.741091,
		-0.899825, -0.222983, -0.374957,
		0.410938, -0.721761, -0.556949,
		39.154934, 33.980526, 30.862854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368465, 33.829819, 31.268089>,  <38.867279, 34.485760, 31.252718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368465, 33.829819, 31.268089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767345, 33.829857, 31.238184>,  <39.006672, 33.829880, 31.220242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767345, 33.829857, 31.238184>,  <38.368465, 33.829819, 31.268089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767345, 33.829857, 31.238184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057528, -0.639639, 0.766520,
		-0.047750, -0.768675, -0.637854,
		0.997201, 0.000093, -0.074764,
		39.066505, 33.829884, 31.215755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517826, 33.166546, 31.180826>,  <38.368465, 33.829819, 31.268089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517826, 33.166546, 31.180826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858768, 33.320580, 31.322363>,  <39.063332, 33.412998, 31.407286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858768, 33.320580, 31.322363>,  <38.517826, 33.166546, 31.180826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858768, 33.320580, 31.322363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039833, -0.722446, 0.690279,
		0.521446, -0.574267, -0.631119,
		0.852354, 0.385082, 0.353842,
		39.114475, 33.436104, 31.428516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884323, 32.628773, 31.194845>,  <38.517826, 33.166546, 31.180826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884323, 32.628773, 31.194845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067467, 32.890789, 31.435274>,  <39.177353, 33.048000, 31.579531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067467, 32.890789, 31.435274>,  <38.884323, 32.628773, 31.194845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067467, 32.890789, 31.435274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044218, -0.692042, 0.720502,
		0.887926, -0.303309, -0.345820,
		0.457856, 0.655043, 0.601070,
		39.204823, 33.087303, 31.615595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396114, 32.277367, 31.435099>,  <38.884323, 32.628773, 31.194845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396114, 32.277367, 31.435099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319496, 32.569214, 31.697691>,  <39.273525, 32.744320, 31.855247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319496, 32.569214, 31.697691>,  <39.396114, 32.277367, 31.435099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319496, 32.569214, 31.697691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088985, -0.653203, 0.751935,
		0.977441, 0.202449, 0.060195,
		-0.191548, 0.729616, 0.656483,
		39.262032, 32.788097, 31.894636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913422, 32.220852, 31.880117>,  <39.396114, 32.277367, 31.435099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913422, 32.220852, 31.880117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638969, 32.425957, 32.086536>,  <39.474297, 32.549019, 32.210388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638969, 32.425957, 32.086536>,  <39.913422, 32.220852, 31.880117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638969, 32.425957, 32.086536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061458, -0.665970, 0.743442,
		0.724879, 0.541813, 0.425429,
		-0.686130, 0.512759, 0.516046,
		39.433132, 32.579784, 32.241352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246902, 32.249741, 32.472416>,  <39.913422, 32.220852, 31.880117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246902, 32.249741, 32.472416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869438, 32.343590, 32.565762>,  <39.642960, 32.399899, 32.621769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869438, 32.343590, 32.565762>,  <40.246902, 32.249741, 32.472416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869438, 32.343590, 32.565762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030214, -0.641164, 0.766809,
		0.329536, 0.730657, 0.597952,
		-0.943660, 0.234625, 0.233362,
		39.586342, 32.413979, 32.635769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191086, 32.274925, 33.221268>,  <40.246902, 32.249741, 32.472416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191086, 32.274925, 33.221268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820827, 32.198368, 33.090702>,  <39.598671, 32.152435, 33.012363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820827, 32.198368, 33.090702>,  <40.191086, 32.274925, 33.221268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820827, 32.198368, 33.090702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208060, -0.463085, 0.861547,
		-0.316047, 0.865403, 0.388833,
		-0.925648, -0.191389, -0.326412,
		39.543133, 32.140953, 32.992779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781120, 32.337429, 33.793606>,  <40.191086, 32.274925, 33.221268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781120, 32.337429, 33.793606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508854, 32.185665, 33.542931>,  <39.345493, 32.094604, 33.392525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508854, 32.185665, 33.542931>,  <39.781120, 32.337429, 33.793606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508854, 32.185665, 33.542931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487108, -0.404548, 0.773994,
		-0.547187, 0.832098, 0.090549,
		-0.680670, -0.379413, -0.626685,
		39.304653, 32.071842, 33.354923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181709, 32.368279, 34.158344>,  <39.781120, 32.337429, 33.793606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181709, 32.368279, 34.158344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080101, 32.106556, 33.873428>,  <39.019135, 31.949522, 33.702480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080101, 32.106556, 33.873428>,  <39.181709, 32.368279, 34.158344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080101, 32.106556, 33.873428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583940, -0.483330, 0.652231,
		-0.771030, 0.581615, -0.259300,
		-0.254020, -0.654306, -0.712290,
		39.003895, 31.910265, 33.659740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482040, 32.237694, 34.187668>,  <39.181709, 32.368279, 34.158344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482040, 32.237694, 34.187668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616425, 31.913534, 33.995670>,  <38.697056, 31.719040, 33.880474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616425, 31.913534, 33.995670>,  <38.482040, 32.237694, 34.187668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616425, 31.913534, 33.995670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303543, -0.575577, 0.759323,
		-0.891624, -0.109402, -0.439360,
		0.335957, -0.810396, -0.479990,
		38.717213, 31.670416, 33.851673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935566, 31.817268, 34.241093>,  <38.482040, 32.237694, 34.187668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935566, 31.817268, 34.241093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269253, 31.600445, 34.200588>,  <38.469463, 31.470350, 34.176285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269253, 31.600445, 34.200588>,  <37.935566, 31.817268, 34.241093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269253, 31.600445, 34.200588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282774, -0.578160, 0.765356,
		-0.473412, -0.609840, -0.635591,
		0.834218, -0.542058, -0.101261,
		38.519520, 31.437828, 34.170208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758041, 31.092739, 34.298897>,  <37.935566, 31.817268, 34.241093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758041, 31.092739, 34.298897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144283, 31.115360, 34.400417>,  <38.376026, 31.128933, 34.461330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144283, 31.115360, 34.400417>,  <37.758041, 31.092739, 34.298897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144283, 31.115360, 34.400417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195106, -0.487654, 0.850957,
		0.171893, -0.871203, -0.459845,
		0.965601, 0.056555, 0.253801,
		38.433964, 31.132326, 34.476559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947598, 30.495642, 34.624630>,  <37.758041, 31.092739, 34.298897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947598, 30.495642, 34.624630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252651, 30.727762, 34.738926>,  <38.435684, 30.867035, 34.807503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252651, 30.727762, 34.738926>,  <37.947598, 30.495642, 34.624630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252651, 30.727762, 34.738926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044259, -0.393894, 0.918090,
		0.645318, -0.712810, -0.274712,
		0.762631, 0.580301, 0.285736,
		38.481441, 30.901852, 34.824646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370708, 30.020117, 34.969570>,  <37.947598, 30.495642, 34.624630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370708, 30.020117, 34.969570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459229, 30.388206, 35.098698>,  <38.512341, 30.609060, 35.176174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459229, 30.388206, 35.098698>,  <38.370708, 30.020117, 34.969570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459229, 30.388206, 35.098698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167526, -0.361977, 0.917010,
		0.960709, -0.148851, -0.234266,
		0.221297, 0.920226, 0.322819,
		38.525620, 30.664274, 35.195541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033405, 30.081707, 35.353580>,  <38.370708, 30.020117, 34.969570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033405, 30.081707, 35.353580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774170, 30.353678, 35.490799>,  <38.618629, 30.516861, 35.573132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774170, 30.353678, 35.490799>,  <39.033405, 30.081707, 35.353580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774170, 30.353678, 35.490799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171076, -0.308961, 0.935562,
		0.742103, 0.665012, 0.083914,
		-0.648086, 0.679928, 0.343049,
		38.579742, 30.557655, 35.593712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162674, 30.108051, 35.990955>,  <39.033405, 30.081707, 35.353580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162674, 30.108051, 35.990955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809258, 30.294556, 36.008629>,  <38.597206, 30.406458, 36.019234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809258, 30.294556, 36.008629>,  <39.162674, 30.108051, 35.990955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809258, 30.294556, 36.008629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067237, -0.219643, 0.973261,
		0.463497, 0.856948, 0.225414,
		-0.883544, 0.466259, 0.044185,
		38.544193, 30.434433, 36.021885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260143, 30.756437, 36.395874>,  <39.162674, 30.108051, 35.990955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260143, 30.756437, 36.395874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917271, 30.551517, 36.417011>,  <38.711548, 30.428566, 36.429691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917271, 30.551517, 36.417011>,  <39.260143, 30.756437, 36.395874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917271, 30.551517, 36.417011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062749, -0.002052, 0.998027,
		-0.511181, 0.858804, 0.033905,
		-0.857180, -0.512300, 0.052840,
		38.660118, 30.397827, 36.432865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009243, 30.967909, 37.072453>,  <39.260143, 30.756437, 36.395874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009243, 30.967909, 37.072453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793198, 30.639181, 36.999905>,  <38.663570, 30.441944, 36.956375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793198, 30.639181, 36.999905>,  <39.009243, 30.967909, 37.072453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793198, 30.639181, 36.999905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251937, -0.047736, 0.966566,
		-0.802999, 0.567746, -0.181263,
		-0.540111, -0.821818, -0.181368,
		38.631165, 30.392635, 36.945496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311237, 31.097265, 37.290043>,  <39.009243, 30.967909, 37.072453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311237, 31.097265, 37.290043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348755, 30.699043, 37.286644>,  <38.371265, 30.460110, 37.284603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348755, 30.699043, 37.286644>,  <38.311237, 31.097265, 37.290043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348755, 30.699043, 37.286644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318838, -0.038125, 0.947042,
		-0.943157, -0.086121, -0.320996,
		0.093798, -0.995555, -0.008499,
		38.376896, 30.400377, 37.284096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730324, 30.822517, 37.693157>,  <38.311237, 31.097265, 37.290043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730324, 30.822517, 37.693157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937405, 30.480789, 37.711586>,  <38.061653, 30.275753, 37.722645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937405, 30.480789, 37.711586>,  <37.730324, 30.822517, 37.693157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937405, 30.480789, 37.711586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216082, -0.078454, 0.973218,
		-0.827824, -0.513793, -0.225219,
		0.517702, -0.854319, 0.046075,
		38.092716, 30.224493, 37.725410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348316, 30.123375, 37.890072>,  <37.730324, 30.822517, 37.693157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348316, 30.123375, 37.890072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732372, 30.105070, 38.000366>,  <37.962807, 30.094088, 38.066544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732372, 30.105070, 38.000366>,  <37.348316, 30.123375, 37.890072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732372, 30.105070, 38.000366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276545, -0.012256, 0.960923,
		-0.040604, -0.998877, -0.024426,
		0.960143, -0.045772, 0.275737,
		38.020416, 30.091341, 38.083088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367401, 30.046392, 38.677441>,  <37.348316, 30.123375, 37.890072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367401, 30.046392, 38.677441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756130, 30.087128, 38.592403>,  <37.989368, 30.111568, 38.541382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756130, 30.087128, 38.592403>,  <37.367401, 30.046392, 38.677441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756130, 30.087128, 38.592403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223033, -0.105244, 0.969113,
		0.076320, -0.989218, -0.124992,
		0.971818, 0.101840, -0.212596,
		38.047676, 30.117680, 38.528625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683250, 29.321590, 38.700386>,  <37.367401, 30.046392, 38.677441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683250, 29.321590, 38.700386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902119, 29.643934, 38.790890>,  <38.033440, 29.837341, 38.845192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902119, 29.643934, 38.790890>,  <37.683250, 29.321590, 38.700386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902119, 29.643934, 38.790890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151952, -0.361461, 0.919922,
		0.823112, -0.468975, -0.320234,
		0.547172, 0.805859, 0.226261,
		38.066269, 29.885693, 38.858768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434273, 29.135954, 38.743885>,  <37.683250, 29.321590, 38.700386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434273, 29.135954, 38.743885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307629, 29.444862, 38.964199>,  <38.231644, 29.630207, 39.096386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307629, 29.444862, 38.964199>,  <38.434273, 29.135954, 38.743885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307629, 29.444862, 38.964199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379236, -0.429172, 0.819751,
		0.869449, 0.468415, -0.156993,
		-0.316606, 0.772269, 0.550782,
		38.212646, 29.676542, 39.129433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677101, 28.700670, 38.220387>,  <38.434273, 29.135954, 38.743885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677101, 28.700670, 38.220387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968349, 28.437357, 38.296814>,  <39.143097, 28.279369, 38.342670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968349, 28.437357, 38.296814>,  <38.677101, 28.700670, 38.220387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968349, 28.437357, 38.296814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235289, -0.501836, -0.832346,
		0.643805, 0.561089, -0.520283,
		0.728117, -0.658285, 0.191067,
		39.186783, 28.239872, 38.354134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967514, 29.322691, 37.776161>,  <38.677101, 28.700670, 38.220387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967514, 29.322691, 37.776161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666832, 29.581881, 37.727043>,  <38.486423, 29.737394, 37.697571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666832, 29.581881, 37.727043>,  <38.967514, 29.322691, 37.776161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666832, 29.581881, 37.727043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296849, 0.166168, -0.940356,
		-0.588920, -0.743317, -0.317259,
		-0.751701, 0.647972, -0.122794,
		38.441322, 29.776272, 37.690205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528057, 29.104168, 37.116669>,  <38.967514, 29.322691, 37.776161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528057, 29.104168, 37.116669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456352, 29.492502, 37.180344>,  <38.413330, 29.725504, 37.218548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456352, 29.492502, 37.180344>,  <38.528057, 29.104168, 37.116669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456352, 29.492502, 37.180344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062222, 0.150296, -0.986681,
		-0.981833, -0.186776, 0.033466,
		-0.179258, 0.970838, 0.159187,
		38.402576, 29.783754, 37.228100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914238, 29.313986, 36.791798>,  <38.528057, 29.104168, 37.116669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914238, 29.313986, 36.791798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113369, 29.659561, 36.822201>,  <38.232849, 29.866905, 36.840443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113369, 29.659561, 36.822201>,  <37.914238, 29.313986, 36.791798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113369, 29.659561, 36.822201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008491, 0.082778, -0.996532,
		-0.867232, 0.496750, 0.033874,
		0.497831, 0.863937, 0.076006,
		38.262718, 29.918743, 36.845001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528130, 29.832851, 36.435265>,  <37.914238, 29.313986, 36.791798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528130, 29.832851, 36.435265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896004, 29.989880, 36.432156>,  <38.116730, 30.084097, 36.430290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896004, 29.989880, 36.432156>,  <37.528130, 29.832851, 36.435265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896004, 29.989880, 36.432156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177424, 0.397840, -0.900136,
		-0.350275, 0.829224, 0.435541,
		0.919689, 0.392570, -0.007771,
		38.171909, 30.107651, 36.429825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421555, 30.558090, 36.292747>,  <37.528130, 29.832851, 36.435265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421555, 30.558090, 36.292747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765560, 30.382713, 36.188332>,  <37.971966, 30.277487, 36.125683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765560, 30.382713, 36.188332>,  <37.421555, 30.558090, 36.292747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765560, 30.382713, 36.188332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085822, 0.379997, -0.920998,
		0.502996, 0.814477, 0.289176,
		0.860017, -0.438440, -0.261037,
		38.023567, 30.251181, 36.110020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723267, 31.156813, 36.093662>,  <37.421555, 30.558090, 36.292747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723267, 31.156813, 36.093662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088093, 30.993076, 36.103291>,  <38.306988, 30.894835, 36.109066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088093, 30.993076, 36.103291>,  <37.723267, 31.156813, 36.093662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088093, 30.993076, 36.103291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213393, 0.423702, -0.880307,
		0.350146, 0.808033, 0.473794,
		0.912064, -0.409340, 0.024071,
		38.361713, 30.870274, 36.110512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180084, 31.691969, 35.860348>,  <37.723267, 31.156813, 36.093662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180084, 31.691969, 35.860348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381924, 31.355909, 35.780827>,  <38.503029, 31.154274, 35.733112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381924, 31.355909, 35.780827>,  <38.180084, 31.691969, 35.860348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381924, 31.355909, 35.780827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195224, 0.335344, -0.921646,
		0.840991, 0.426252, 0.333233,
		0.504601, -0.840151, -0.198806,
		38.533302, 31.103865, 35.721184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823814, 31.854149, 35.524433>,  <38.180084, 31.691969, 35.860348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823814, 31.854149, 35.524433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768860, 31.468206, 35.434834>,  <38.735886, 31.236641, 35.381073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768860, 31.468206, 35.434834>,  <38.823814, 31.854149, 35.524433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768860, 31.468206, 35.434834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398026, 0.153306, -0.904473,
		0.907028, -0.213425, 0.362975,
		-0.137391, -0.964856, -0.224002,
		38.727642, 31.178749, 35.367634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529984, 31.541498, 35.222935>,  <38.823814, 31.854149, 35.524433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529984, 31.541498, 35.222935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202732, 31.351707, 35.092987>,  <39.006382, 31.237833, 35.015018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202732, 31.351707, 35.092987>,  <39.529984, 31.541498, 35.222935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202732, 31.351707, 35.092987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284105, 0.157661, -0.945742,
		0.499950, -0.866035, 0.005813,
		-0.818129, -0.474475, -0.324868,
		38.957294, 31.209366, 34.995525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770706, 31.187906, 34.625607>,  <39.529984, 31.541498, 35.222935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770706, 31.187906, 34.625607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371807, 31.173677, 34.599575>,  <39.132469, 31.165140, 34.583958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371807, 31.173677, 34.599575>,  <39.770706, 31.187906, 34.625607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371807, 31.173677, 34.599575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058905, 0.153274, -0.986426,
		0.045063, -0.987543, -0.150757,
		-0.997246, -0.035571, -0.065079,
		39.072632, 31.163006, 34.580051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601879, 30.721245, 34.084541>,  <39.770706, 31.187906, 34.625607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601879, 30.721245, 34.084541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275932, 30.952429, 34.102211>,  <39.080364, 31.091139, 34.112812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275932, 30.952429, 34.102211>,  <39.601879, 30.721245, 34.084541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275932, 30.952429, 34.102211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119007, 0.241402, -0.963101,
		-0.567299, -0.779542, -0.265492,
		-0.814868, 0.577962, 0.044177,
		39.031471, 31.125816, 34.115463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141209, 30.534479, 33.496418>,  <39.601879, 30.721245, 34.084541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141209, 30.534479, 33.496418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069332, 30.910315, 33.612957>,  <39.026207, 31.135817, 33.682880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069332, 30.910315, 33.612957>,  <39.141209, 30.534479, 33.496418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069332, 30.910315, 33.612957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201647, 0.325056, -0.923946,
		-0.962835, -0.107274, -0.247875,
		-0.179688, 0.939591, 0.291344,
		39.015427, 31.192192, 33.700359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738907, 30.804823, 32.929356>,  <39.141209, 30.534479, 33.496418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738907, 30.804823, 32.929356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870937, 31.122322, 33.133717>,  <38.950153, 31.312822, 33.256332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870937, 31.122322, 33.133717>,  <38.738907, 30.804823, 32.929356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870937, 31.122322, 33.133717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090587, 0.565369, -0.819848,
		-0.939599, 0.224328, 0.258516,
		0.330072, 0.793747, 0.510899,
		38.969959, 31.360447, 33.286987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719028, 31.327957, 32.441422>,  <38.738907, 30.804823, 32.929356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719028, 31.327957, 32.441422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883492, 31.552797, 32.728474>,  <38.982170, 31.687702, 32.900707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883492, 31.552797, 32.728474>,  <38.719028, 31.327957, 32.441422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883492, 31.552797, 32.728474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113354, 0.749615, -0.652095,
		-0.904491, 0.349457, 0.244491,
		0.411153, 0.562100, 0.717632,
		39.006836, 31.721428, 32.943764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337368, 31.921974, 32.565968>,  <38.719028, 31.327957, 32.441422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337368, 31.921974, 32.565968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713543, 32.003971, 32.674458>,  <38.939247, 32.053169, 32.739552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713543, 32.003971, 32.674458>,  <38.337368, 31.921974, 32.565968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713543, 32.003971, 32.674458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012783, 0.818532, -0.574318,
		-0.339738, 0.536641, 0.772396,
		0.940434, 0.204991, 0.271226,
		38.995674, 32.065468, 32.755825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472431, 32.622478, 33.036705>,  <38.337368, 31.921974, 32.565968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472431, 32.622478, 33.036705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777431, 32.518887, 32.799545>,  <38.960430, 32.456730, 32.657249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777431, 32.518887, 32.799545>,  <38.472431, 32.622478, 33.036705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777431, 32.518887, 32.799545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068638, 0.943600, -0.323894,
		0.643341, 0.206273, 0.737268,
		0.762497, -0.258979, -0.592898,
		39.006180, 32.441193, 32.621677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703014, 33.311069, 32.996914>,  <38.472431, 32.622478, 33.036705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703014, 33.311069, 32.996914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943096, 33.077831, 32.777916>,  <39.087147, 32.937889, 32.646519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943096, 33.077831, 32.777916>,  <38.703014, 33.311069, 32.996914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943096, 33.077831, 32.777916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292102, 0.797016, -0.528623,
		0.744598, 0.157361, 0.648700,
		0.600209, -0.583098, -0.547491,
		39.123158, 32.902901, 32.613670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243664, 33.768890, 32.807808>,  <38.703014, 33.311069, 32.996914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243664, 33.768890, 32.807808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266327, 33.459377, 32.555443>,  <39.279926, 33.273670, 32.404026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266327, 33.459377, 32.555443>,  <39.243664, 33.768890, 32.807808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266327, 33.459377, 32.555443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214365, 0.626615, -0.749267,
		0.975109, -0.092791, 0.201377,
		0.056661, -0.773785, -0.630909,
		39.283325, 33.227242, 32.366169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860775, 33.860035, 32.503281>,  <39.243664, 33.768890, 32.807808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860775, 33.860035, 32.503281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656395, 33.640217, 32.238880>,  <39.533768, 33.508324, 32.080238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656395, 33.640217, 32.238880>,  <39.860775, 33.860035, 32.503281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656395, 33.640217, 32.238880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157394, 0.696149, -0.700431,
		0.845079, -0.461923, -0.269201,
		-0.510949, -0.549548, -0.661005,
		39.503109, 33.475353, 32.040577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216888, 33.902958, 31.870386>,  <39.860775, 33.860035, 32.503281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216888, 33.902958, 31.870386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870731, 33.771454, 31.719118>,  <39.663036, 33.692551, 31.628357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870731, 33.771454, 31.719118>,  <40.216888, 33.902958, 31.870386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870731, 33.771454, 31.719118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172382, 0.513310, -0.840712,
		0.470504, -0.792738, -0.387545,
		-0.865396, -0.328753, -0.378169,
		39.611115, 33.672829, 31.605667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318512, 33.970421, 31.133474>,  <40.216888, 33.902958, 31.870386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318512, 33.970421, 31.133474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924221, 33.915115, 31.171906>,  <39.687649, 33.881931, 31.194963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924221, 33.915115, 31.171906>,  <40.318512, 33.970421, 31.133474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924221, 33.915115, 31.171906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153619, 0.505009, -0.849333,
		0.068915, -0.851967, -0.519040,
		-0.985724, -0.138266, 0.096076,
		39.628506, 33.873634, 31.200727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695316, 34.548927, 31.234968>,  <40.318512, 33.970421, 31.133474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695316, 34.548927, 31.234968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905407, 34.688938, 31.545223>,  <41.031464, 34.772945, 31.731377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905407, 34.688938, 31.545223>,  <40.695316, 34.548927, 31.234968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905407, 34.688938, 31.545223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022063, 0.905577, -0.423607,
		-0.850675, 0.239604, 0.467912,
		0.525228, 0.350029, 0.775638,
		41.062977, 34.793945, 31.777914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332558, 35.035366, 31.688158>,  <40.695316, 34.548927, 31.234968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332558, 35.035366, 31.688158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723228, 35.103642, 31.636065>,  <40.957630, 35.144608, 31.604809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723228, 35.103642, 31.636065>,  <40.332558, 35.035366, 31.688158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723228, 35.103642, 31.636065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214701, 0.776759, -0.592072,
		0.000097, 0.606225, 0.795293,
		0.976680, 0.170693, -0.130233,
		41.016232, 35.154850, 31.596994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523388, 35.617310, 31.888294>,  <40.332558, 35.035366, 31.688158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523388, 35.617310, 31.888294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821136, 35.563995, 31.626564>,  <40.999786, 35.532009, 31.469526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821136, 35.563995, 31.626564>,  <40.523388, 35.617310, 31.888294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821136, 35.563995, 31.626564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358423, 0.747014, -0.559913,
		0.563418, 0.651311, 0.508287,
		0.744375, -0.133284, -0.654326,
		41.044449, 35.524010, 31.430265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048344, 35.598724, 32.403923>,  <40.523388, 35.617310, 31.888294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048344, 35.598724, 32.403923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141537, 35.663139, 32.787544>,  <41.197453, 35.701790, 33.017715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141537, 35.663139, 32.787544>,  <41.048344, 35.598724, 32.403923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141537, 35.663139, 32.787544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540516, -0.841275, 0.009952,
		0.808431, 0.516065, -0.283049,
		0.232986, 0.161038, 0.959054,
		41.211433, 35.711452, 33.075260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879833, 35.417061, 32.442471>,  <41.048344, 35.598724, 32.403923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879833, 35.417061, 32.442471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655132, 35.379967, 32.771309>,  <41.520313, 35.357712, 32.968613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655132, 35.379967, 32.771309>,  <41.879833, 35.417061, 32.442471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655132, 35.379967, 32.771309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246825, -0.967229, 0.059551,
		0.789630, 0.236366, 0.566229,
		-0.561748, -0.092736, 0.822094,
		41.486607, 35.352146, 33.017937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006615, 35.207977, 33.158730>,  <41.879833, 35.417061, 32.442471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006615, 35.207977, 33.158730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210823, 34.997444, 32.886745>,  <42.333347, 34.871124, 32.723553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210823, 34.997444, 32.886745>,  <42.006615, 35.207977, 33.158730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210823, 34.997444, 32.886745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745961, -0.664414, -0.045776,
		-0.427683, 0.530596, -0.731816,
		0.510517, -0.526329, -0.679963,
		42.363979, 34.839546, 32.682758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266998, 35.912437, 33.395092>,  <42.006615, 35.207977, 33.158730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266998, 35.912437, 33.395092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564068, 36.175961, 33.443096>,  <42.742310, 36.334076, 33.471897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564068, 36.175961, 33.443096>,  <42.266998, 35.912437, 33.395092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564068, 36.175961, 33.443096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597466, -0.732830, 0.325570,
		0.302436, -0.170091, -0.937871,
		0.742676, 0.658810, 0.120011,
		42.786869, 36.373604, 33.479099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990910, 35.620926, 33.039036>,  <42.266998, 35.912437, 33.395092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990910, 35.620926, 33.039036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019226, 35.876190, 33.345692>,  <43.036217, 36.029350, 33.529686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019226, 35.876190, 33.345692>,  <42.990910, 35.620926, 33.039036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019226, 35.876190, 33.345692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674424, -0.596895, 0.434590,
		0.734943, 0.486276, -0.472647,
		0.070790, 0.638163, 0.766640,
		43.040462, 36.067638, 33.575684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769169, 35.856007, 33.169598>,  <42.990910, 35.620926, 33.039036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769169, 35.856007, 33.169598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537628, 35.866825, 33.495590>,  <43.398705, 35.873314, 33.691185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537628, 35.866825, 33.495590>,  <43.769169, 35.856007, 33.169598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537628, 35.866825, 33.495590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672144, -0.550049, 0.495650,
		0.461684, 0.834695, 0.300221,
		-0.578853, 0.027042, 0.814984,
		43.363972, 35.874939, 33.740086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128239, 36.131706, 33.702114>,  <43.769169, 35.856007, 33.169598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128239, 36.131706, 33.702114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.847954, 35.883209, 33.842438>,  <43.679783, 35.734112, 33.926632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.847954, 35.883209, 33.842438>,  <44.128239, 36.131706, 33.702114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.847954, 35.883209, 33.842438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705410, -0.529708, 0.470963,
		-0.106756, 0.577472, 0.809401,
		-0.700714, -0.621238, 0.350805,
		43.637741, 35.696838, 33.947678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081867, 36.158611, 34.437248>,  <44.128239, 36.131706, 33.702114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081867, 36.158611, 34.437248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981548, 35.793785, 34.307484>,  <43.921356, 35.574890, 34.229626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981548, 35.793785, 34.307484>,  <44.081867, 36.158611, 34.437248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981548, 35.793785, 34.307484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699080, -0.402457, 0.591029,
		-0.669616, -0.078557, 0.738541,
		-0.250802, -0.912062, -0.324409,
		43.906307, 35.520168, 34.210159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221027, 35.621880, 34.996910>,  <44.081867, 36.158611, 34.437248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221027, 35.621880, 34.996910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215393, 35.487976, 34.620029>,  <44.212013, 35.407635, 34.393902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215393, 35.487976, 34.620029>,  <44.221027, 35.621880, 34.996910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215393, 35.487976, 34.620029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891008, -0.431827, 0.140110,
		-0.453770, -0.837532, 0.304358,
		-0.014084, -0.334763, -0.942197,
		44.211166, 35.387547, 34.337372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638748, 35.061817, 35.050331>,  <44.221027, 35.621880, 34.996910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638748, 35.061817, 35.050331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576687, 35.126202, 34.660458>,  <44.539448, 35.164833, 34.426533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576687, 35.126202, 34.660458>,  <44.638748, 35.061817, 35.050331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576687, 35.126202, 34.660458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879264, -0.427284, -0.210530,
		-0.450357, -0.889674, -0.075233,
		-0.155157, 0.160963, -0.974688,
		44.530140, 35.174492, 34.368050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838665, 34.538589, 34.695835>,  <44.638748, 35.061817, 35.050331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838665, 34.538589, 34.695835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.924038, 34.833447, 34.439377>,  <44.975262, 35.010361, 34.285500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.924038, 34.833447, 34.439377>,  <44.838665, 34.538589, 34.695835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.924038, 34.833447, 34.439377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929730, -0.354835, -0.098463,
		-0.300082, -0.575079, -0.761075,
		0.213432, 0.737141, -0.641147,
		44.988068, 35.054588, 34.247032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136250, 34.286350, 34.010952>,  <44.838665, 34.538589, 34.695835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136250, 34.286350, 34.010952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292152, 34.648979, 34.075706>,  <45.385693, 34.866558, 34.114559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292152, 34.648979, 34.075706>,  <45.136250, 34.286350, 34.010952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292152, 34.648979, 34.075706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888068, -0.323472, -0.326650,
		-0.243768, 0.271079, -0.931178,
		0.389758, 0.906577, 0.161884,
		45.409081, 34.920952, 34.124271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405846, 34.512154, 33.380962>,  <45.136250, 34.286350, 34.010952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405846, 34.512154, 33.380962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.590752, 34.627590, 33.716351>,  <45.701694, 34.696850, 33.917583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.590752, 34.627590, 33.716351>,  <45.405846, 34.512154, 33.380962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.590752, 34.627590, 33.716351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854403, -0.397980, -0.334076,
		0.237283, 0.870821, -0.430544,
		0.462268, 0.288587, 0.838466,
		45.729431, 34.714165, 33.967892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.072002, 34.872364, 33.288872>,  <45.405846, 34.512154, 33.380962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.072002, 34.872364, 33.288872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060982, 34.662281, 33.629082>,  <46.054371, 34.536232, 33.833206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060982, 34.662281, 33.629082>,  <46.072002, 34.872364, 33.288872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060982, 34.662281, 33.629082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688859, -0.626540, -0.364583,
		0.724372, 0.575848, 0.379058,
		-0.027551, -0.525211, 0.850526,
		46.052715, 34.504719, 33.884239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.696190, 35.007767, 33.783291>,  <46.072002, 34.872364, 33.288872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.696190, 35.007767, 33.783291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.786854, 34.654991, 33.948608>,  <46.841251, 34.443325, 34.047798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.786854, 34.654991, 33.948608>,  <46.696190, 35.007767, 33.783291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.786854, 34.654991, 33.948608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635979, 0.455400, 0.623010,
		-0.737671, 0.121637, 0.664113,
		0.226656, -0.881938, 0.413294,
		46.854851, 34.390411, 34.072598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.043377, 35.406555, 34.130669>,  <46.696190, 35.007767, 33.783291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.043377, 35.406555, 34.130669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120975, 35.040413, 34.271801>,  <47.167534, 34.820728, 34.356480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120975, 35.040413, 34.271801>,  <47.043377, 35.406555, 34.130669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.120975, 35.040413, 34.271801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630426, 0.391893, 0.670062,
		-0.751617, 0.092447, 0.653089,
		0.193996, -0.915354, 0.352835,
		47.179173, 34.765808, 34.377651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.135006, 35.598804, 34.834843>,  <47.043377, 35.406555, 34.130669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.135006, 35.598804, 34.834843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.353294, 35.276741, 34.741966>,  <47.484268, 35.083504, 34.686241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.353294, 35.276741, 34.741966>,  <47.135006, 35.598804, 34.834843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.353294, 35.276741, 34.741966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780597, 0.387684, 0.490276,
		-0.304732, -0.448801, 0.840069,
		0.545717, -0.805158, -0.232193,
		47.517010, 35.035194, 34.672310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.381767, 35.136120, 35.463177>,  <47.135006, 35.598804, 34.834843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.381767, 35.136120, 35.463177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616257, 35.161289, 35.140099>,  <47.756950, 35.176392, 34.946251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616257, 35.161289, 35.140099>,  <47.381767, 35.136120, 35.463177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.616257, 35.161289, 35.140099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689014, 0.485694, 0.537923,
		0.426143, -0.871861, 0.241372,
		0.586227, 0.062923, -0.807700,
		47.792126, 35.180168, 34.897789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.099010, 36.330765, 23.230551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.779587, 36.511776, 23.389305>,  <32.587933, 36.620384, 23.484558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.779587, 36.511776, 23.389305>,  <33.099010, 36.330765, 23.230551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779587, 36.511776, 23.389305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213737, -0.403214, 0.889795,
		0.562689, 0.795383, 0.225268,
		-0.798560, 0.452530, 0.396887,
		32.540020, 36.647533, 23.508371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286232, 36.396065, 23.908316>,  <33.099010, 36.330765, 23.230551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286232, 36.396065, 23.908316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.893158, 36.457592, 23.949638>,  <32.657314, 36.494507, 23.974432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.893158, 36.457592, 23.949638>,  <33.286232, 36.396065, 23.908316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893158, 36.457592, 23.949638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058169, -0.273255, 0.960181,
		0.175921, 0.949564, 0.259576,
		-0.982684, 0.153816, 0.103307,
		32.598354, 36.503738, 23.980631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207390, 36.786572, 24.550268>,  <33.286232, 36.396065, 23.908316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207390, 36.786572, 24.550268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.851292, 36.615292, 24.488163>,  <32.637634, 36.512524, 24.450899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.851292, 36.615292, 24.488163>,  <33.207390, 36.786572, 24.550268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851292, 36.615292, 24.488163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031089, -0.397205, 0.917203,
		-0.454421, 0.811708, 0.366922,
		-0.890244, -0.428204, -0.155263,
		32.584217, 36.486832, 24.441584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785267, 36.908192, 25.230909>,  <33.207390, 36.786572, 24.550268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785267, 36.908192, 25.230909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.599785, 36.609032, 25.040913>,  <32.488495, 36.429535, 24.926914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.599785, 36.609032, 25.040913>,  <32.785267, 36.908192, 25.230909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599785, 36.609032, 25.040913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038791, -0.518463, 0.854220,
		-0.885138, 0.414535, 0.211404,
		-0.463710, -0.747901, -0.474992,
		32.460670, 36.384663, 24.898415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189751, 36.760063, 25.646990>,  <32.785267, 36.908192, 25.230909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189751, 36.760063, 25.646990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.223392, 36.426655, 25.428572>,  <32.243576, 36.226608, 25.297522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.223392, 36.426655, 25.428572>,  <32.189751, 36.760063, 25.646990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223392, 36.426655, 25.428572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101844, -0.552307, 0.827396,
		-0.991239, -0.013976, -0.131341,
		0.084105, -0.833524, -0.546045,
		32.248623, 36.176598, 25.264759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656576, 36.228928, 25.972290>,  <32.189751, 36.760063, 25.646990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656576, 36.228928, 25.972290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.945646, 36.029869, 25.780420>,  <32.119087, 35.910435, 25.665298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.945646, 36.029869, 25.780420>,  <31.656576, 36.228928, 25.972290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945646, 36.029869, 25.780420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185671, -0.528707, 0.828248,
		-0.665785, -0.687615, -0.289684,
		0.722673, -0.497649, -0.479675,
		32.162449, 35.880573, 25.636518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604591, 35.575619, 26.306273>,  <31.656576, 36.228928, 25.972290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604591, 35.575619, 26.306273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.957655, 35.573925, 26.118277>,  <32.169495, 35.572910, 26.005478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.957655, 35.573925, 26.118277>,  <31.604591, 35.575619, 26.306273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957655, 35.573925, 26.118277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405691, -0.498055, 0.766392,
		-0.237327, -0.867135, -0.437896,
		0.882661, -0.004235, -0.469991,
		32.222454, 35.572655, 25.977280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802227, 34.914387, 26.234213>,  <31.604591, 35.575619, 26.306273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802227, 34.914387, 26.234213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.133278, 35.138542, 26.221571>,  <32.331909, 35.273037, 26.213985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.133278, 35.138542, 26.221571>,  <31.802227, 34.914387, 26.234213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133278, 35.138542, 26.221571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342578, -0.459737, 0.819318,
		0.444608, -0.688916, -0.572467,
		0.827626, 0.560390, -0.031605,
		32.381565, 35.306660, 26.212090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405533, 34.439857, 26.250639>,  <31.802227, 34.914387, 26.234213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405533, 34.439857, 26.250639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.523994, 34.805782, 26.360485>,  <32.595070, 35.025337, 26.426394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.523994, 34.805782, 26.360485>,  <32.405533, 34.439857, 26.250639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523994, 34.805782, 26.360485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657313, -0.403803, 0.636303,
		0.692988, -0.007935, -0.720906,
		0.296153, 0.914811, 0.274615,
		32.612839, 35.080227, 26.442869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124191, 34.487961, 26.151495>,  <32.405533, 34.439857, 26.250639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124191, 34.487961, 26.151495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.019398, 34.752548, 26.432583>,  <32.956520, 34.911301, 26.601236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.019398, 34.752548, 26.432583>,  <33.124191, 34.487961, 26.151495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019398, 34.752548, 26.432583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785542, -0.276823, 0.553438,
		0.560613, 0.697010, -0.447090,
		-0.261987, 0.661472, 0.702721,
		32.940804, 34.950989, 26.643398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713207, 34.655209, 26.429224>,  <33.124191, 34.487961, 26.151495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713207, 34.655209, 26.429224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.481133, 34.835732, 26.700432>,  <33.341888, 34.944046, 26.863157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.481133, 34.835732, 26.700432>,  <33.713207, 34.655209, 26.429224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481133, 34.835732, 26.700432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699173, -0.151034, 0.698818,
		0.417783, 0.879497, -0.227910,
		-0.580186, 0.451303, 0.678020,
		33.307076, 34.971123, 26.903837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153370, 35.119835, 26.825886>,  <33.713207, 34.655209, 26.429224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153370, 35.119835, 26.825886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847439, 35.050770, 27.074154>,  <33.663879, 35.009331, 27.223114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847439, 35.050770, 27.074154>,  <34.153370, 35.119835, 26.825886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847439, 35.050770, 27.074154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642634, -0.136519, 0.753912,
		-0.045439, 0.975474, 0.215372,
		-0.764824, -0.172663, 0.620670,
		33.617992, 34.998970, 27.260355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308304, 35.510849, 27.417376>,  <34.153370, 35.119835, 26.825886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308304, 35.510849, 27.417376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.053848, 35.215317, 27.506330>,  <33.901173, 35.037998, 27.559704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.053848, 35.215317, 27.506330>,  <34.308304, 35.510849, 27.417376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053848, 35.215317, 27.506330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558119, -0.241614, 0.793805,
		-0.532752, 0.629093, 0.566054,
		-0.636144, -0.738826, 0.222389,
		33.863007, 34.993668, 27.573048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319782, 35.455616, 28.128191>,  <34.308304, 35.510849, 27.417376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319782, 35.455616, 28.128191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156254, 35.098614, 28.051983>,  <34.058136, 34.884411, 28.006258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156254, 35.098614, 28.051983>,  <34.319782, 35.455616, 28.128191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156254, 35.098614, 28.051983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429662, -0.372416, 0.822616,
		-0.805142, 0.254445, 0.535728,
		-0.408824, -0.892505, -0.190522,
		34.033607, 34.830864, 27.994825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002918, 35.316666, 28.717150>,  <34.319782, 35.455616, 28.128191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002918, 35.316666, 28.717150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.036884, 34.963291, 28.532829>,  <34.057266, 34.751266, 28.422237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.036884, 34.963291, 28.532829>,  <34.002918, 35.316666, 28.717150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036884, 34.963291, 28.532829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363310, -0.403178, 0.839913,
		-0.927791, -0.238736, 0.286723,
		0.084917, -0.883432, -0.460800,
		34.062359, 34.698261, 28.394588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906296, 34.860332, 29.314465>,  <34.002918, 35.316666, 28.717150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906296, 34.860332, 29.314465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.050610, 34.616512, 29.032106>,  <34.137196, 34.470219, 28.862692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.050610, 34.616512, 29.032106>,  <33.906296, 34.860332, 29.314465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050610, 34.616512, 29.032106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434214, -0.560057, 0.705545,
		-0.825406, -0.561056, 0.062617,
		0.360781, -0.609550, -0.705893,
		34.158844, 34.433647, 28.820339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786713, 34.083557, 29.535437>,  <33.906296, 34.860332, 29.314465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786713, 34.083557, 29.535437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.089180, 34.099094, 29.274149>,  <34.270660, 34.108418, 29.117376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.089180, 34.099094, 29.274149>,  <33.786713, 34.083557, 29.535437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089180, 34.099094, 29.274149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512817, -0.655249, 0.554678,
		-0.406474, -0.754414, -0.515402,
		0.756173, 0.038845, -0.653218,
		34.316032, 34.110748, 29.078184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044956, 33.298290, 29.544729>,  <33.786713, 34.083557, 29.535437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044956, 33.298290, 29.544729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.308365, 33.564602, 29.404390>,  <34.466408, 33.724388, 29.320187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.308365, 33.564602, 29.404390>,  <34.044956, 33.298290, 29.544729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308365, 33.564602, 29.404390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751879, -0.562134, 0.344505,
		0.032142, -0.490656, -0.870760,
		0.658517, 0.665779, -0.350846,
		34.505920, 33.764336, 29.299137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517067, 32.919888, 29.186451>,  <34.044956, 33.298290, 29.544729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517067, 32.919888, 29.186451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.691582, 33.267738, 29.278889>,  <34.796291, 33.476448, 29.334351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.691582, 33.267738, 29.278889>,  <34.517067, 32.919888, 29.186451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691582, 33.267738, 29.278889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823030, -0.489478, 0.288154,
		0.363702, 0.064480, -0.929281,
		0.436283, 0.869628, 0.231093,
		34.822468, 33.528625, 29.348217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056110, 32.838940, 28.898596>,  <34.517067, 32.919888, 29.186451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056110, 32.838940, 28.898596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.141850, 33.115540, 29.174532>,  <35.193295, 33.281502, 29.340094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.141850, 33.115540, 29.174532>,  <35.056110, 32.838940, 28.898596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141850, 33.115540, 29.174532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676929, -0.614308, 0.405453,
		0.704146, 0.380065, -0.599774,
		0.214348, 0.691503, 0.689840,
		35.206154, 33.322990, 29.381483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739002, 32.841690, 28.928205>,  <35.056110, 32.838940, 28.898596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739002, 32.841690, 28.928205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.595291, 32.987267, 29.271942>,  <35.509064, 33.074612, 29.478184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.595291, 32.987267, 29.271942>,  <35.739002, 32.841690, 28.928205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595291, 32.987267, 29.271942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474378, -0.721765, 0.504005,
		0.803668, 0.588732, 0.086671,
		-0.359280, 0.363938, 0.859341,
		35.487507, 33.096447, 29.529745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294746, 33.069500, 29.315498>,  <35.739002, 32.841690, 28.928205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294746, 33.069500, 29.315498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.983463, 32.928593, 29.523458>,  <35.796692, 32.844048, 29.648235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.983463, 32.928593, 29.523458>,  <36.294746, 33.069500, 29.315498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983463, 32.928593, 29.523458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563771, -0.756610, 0.331214,
		0.276685, 0.550859, 0.787400,
		-0.778208, -0.352272, 0.519902,
		35.750000, 32.822910, 29.679428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939350, 33.413349, 29.336126>,  <36.294746, 33.069500, 29.315498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939350, 33.413349, 29.336126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023251, 33.049736, 29.192089>,  <37.073593, 32.831570, 29.105667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023251, 33.049736, 29.192089>,  <36.939350, 33.413349, 29.336126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023251, 33.049736, 29.192089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561279, 0.189613, -0.805614,
		0.800605, 0.371094, -0.470447,
		0.209756, -0.909031, -0.360092,
		37.086178, 32.777027, 29.084061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954262, 33.520504, 28.684788>,  <36.939350, 33.413349, 29.336126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954262, 33.520504, 28.684788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.898865, 33.124542, 28.696896>,  <36.865627, 32.886967, 28.704161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.898865, 33.124542, 28.696896>,  <36.954262, 33.520504, 28.684788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898865, 33.124542, 28.696896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577787, 0.055936, -0.814268,
		0.804352, -0.130256, -0.579699,
		-0.138489, -0.989901, 0.030267,
		36.857319, 32.827572, 28.705976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026600, 33.373333, 28.063488>,  <36.954262, 33.520504, 28.684788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026600, 33.373333, 28.063488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872372, 33.018421, 28.164732>,  <36.779835, 32.805473, 28.225479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872372, 33.018421, 28.164732>,  <37.026600, 33.373333, 28.063488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872372, 33.018421, 28.164732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410557, -0.080686, -0.908258,
		0.826305, -0.454110, -0.333171,
		-0.385567, -0.887284, 0.253110,
		36.756702, 32.752235, 28.240665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186306, 32.855396, 27.507652>,  <37.026600, 33.373333, 28.063488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186306, 32.855396, 27.507652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.861347, 32.725857, 27.701614>,  <36.666370, 32.648132, 27.817991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.861347, 32.725857, 27.701614>,  <37.186306, 32.855396, 27.507652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861347, 32.725857, 27.701614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500090, -0.040694, -0.865017,
		0.299872, -0.945232, -0.128896,
		-0.812396, -0.323854, 0.484904,
		36.617630, 32.628700, 27.847086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992840, 32.305458, 27.180328>,  <37.186306, 32.855396, 27.507652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992840, 32.305458, 27.180328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.662586, 32.430260, 27.368366>,  <36.464436, 32.505142, 27.481190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.662586, 32.430260, 27.368366>,  <36.992840, 32.305458, 27.180328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662586, 32.430260, 27.368366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522332, -0.107661, -0.845919,
		-0.213317, -0.943962, 0.251857,
		-0.825631, 0.312002, 0.470096,
		36.414898, 32.523861, 27.509396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470776, 31.830650, 27.117477>,  <36.992840, 32.305458, 27.180328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470776, 31.830650, 27.117477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.286625, 32.179714, 27.182619>,  <36.176136, 32.389153, 27.221704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.286625, 32.179714, 27.182619>,  <36.470776, 31.830650, 27.117477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286625, 32.179714, 27.182619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629871, -0.191832, -0.752638,
		-0.625556, -0.449071, 0.637977,
		-0.460372, 0.872660, 0.162855,
		36.148514, 32.441513, 27.231476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794403, 31.776253, 26.772287>,  <36.470776, 31.830650, 27.117477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794403, 31.776253, 26.772287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770573, 32.163528, 26.869495>,  <35.756275, 32.395893, 26.927820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770573, 32.163528, 26.869495>,  <35.794403, 31.776253, 26.772287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770573, 32.163528, 26.869495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523143, 0.177059, -0.833649,
		-0.850160, -0.176802, 0.495953,
		-0.059577, 0.968190, 0.243021,
		35.752701, 32.453987, 26.942402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076313, 31.983643, 26.675577>,  <35.794403, 31.776253, 26.772287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076313, 31.983643, 26.675577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287308, 32.322563, 26.650797>,  <35.413906, 32.525917, 26.635929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287308, 32.322563, 26.650797>,  <35.076313, 31.983643, 26.675577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287308, 32.322563, 26.650797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559623, 0.291674, -0.775724,
		-0.639203, 0.443853, 0.628024,
		0.527486, 0.847302, -0.061952,
		35.445553, 32.576756, 26.632212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631432, 32.515640, 26.676456>,  <35.076313, 31.983643, 26.675577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631432, 32.515640, 26.676456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.954659, 32.700348, 26.530142>,  <35.148594, 32.811172, 26.442352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.954659, 32.700348, 26.530142>,  <34.631432, 32.515640, 26.676456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954659, 32.700348, 26.530142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530444, 0.300259, -0.792763,
		-0.256246, 0.834632, 0.487573,
		0.808064, 0.461772, -0.365786,
		35.197079, 32.838879, 26.420406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410969, 33.217484, 26.419764>,  <34.631432, 32.515640, 26.676456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410969, 33.217484, 26.419764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776081, 33.167015, 26.264372>,  <34.995148, 33.136734, 26.171137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776081, 33.167015, 26.264372>,  <34.410969, 33.217484, 26.419764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776081, 33.167015, 26.264372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286144, 0.481178, -0.828607,
		0.291476, 0.867495, 0.403105,
		0.912778, -0.126173, -0.388480,
		35.049915, 33.129162, 26.147827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524441, 33.842949, 26.189072>,  <34.410969, 33.217484, 26.419764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524441, 33.842949, 26.189072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.775024, 33.608147, 25.983948>,  <34.925373, 33.467266, 25.860872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.775024, 33.608147, 25.983948>,  <34.524441, 33.842949, 26.189072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775024, 33.608147, 25.983948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192093, 0.521347, -0.831443,
		0.755416, 0.619369, 0.213840,
		0.626455, -0.587008, -0.512811,
		34.962959, 33.432045, 25.830105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033646, 34.289875, 25.879025>,  <34.524441, 33.842949, 26.189072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033646, 34.289875, 25.879025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026196, 33.963970, 25.647224>,  <35.021725, 33.768429, 25.508144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026196, 33.963970, 25.647224>,  <35.033646, 34.289875, 25.879025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026196, 33.963970, 25.647224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221117, 0.568604, -0.792336,
		0.975070, 0.113382, -0.190746,
		-0.018622, -0.814760, -0.579499,
		35.020607, 33.719543, 25.473375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500488, 34.468014, 25.345537>,  <35.033646, 34.289875, 25.879025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500488, 34.468014, 25.345537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.250217, 34.183193, 25.218090>,  <35.100056, 34.012302, 25.141623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.250217, 34.183193, 25.218090>,  <35.500488, 34.468014, 25.345537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250217, 34.183193, 25.218090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175885, 0.526691, -0.831662,
		0.759997, -0.464310, -0.454776,
		-0.625675, -0.712048, -0.318618,
		35.062515, 33.969578, 25.122505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696339, 34.319740, 24.676254>,  <35.500488, 34.468014, 25.345537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696339, 34.319740, 24.676254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324566, 34.172935, 24.691483>,  <35.101501, 34.084850, 24.700619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324566, 34.172935, 24.691483>,  <35.696339, 34.319740, 24.676254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324566, 34.172935, 24.691483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169639, 0.333400, -0.927398,
		0.327646, -0.868427, -0.372133,
		-0.929447, -0.366987, 0.038082,
		35.045734, 34.062832, 24.702904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542435, 34.232521, 24.009150>,  <35.696339, 34.319740, 24.676254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542435, 34.232521, 24.009150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.184284, 34.194408, 24.183149>,  <34.969395, 34.171539, 24.287548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.184284, 34.194408, 24.183149>,  <35.542435, 34.232521, 24.009150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184284, 34.194408, 24.183149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445071, 0.223565, -0.867139,
		-0.014627, -0.970020, -0.242583,
		-0.895376, -0.095283, 0.434998,
		34.915672, 34.165825, 24.313648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127937, 33.799637, 23.558212>,  <35.542435, 34.232521, 24.009150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127937, 33.799637, 23.558212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.883213, 34.022251, 23.783049>,  <34.736378, 34.155819, 23.917952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.883213, 34.022251, 23.783049>,  <35.127937, 33.799637, 23.558212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883213, 34.022251, 23.783049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370201, 0.426516, -0.825249,
		-0.699026, -0.712985, -0.054916,
		-0.611812, 0.556540, 0.562093,
		34.699669, 34.189213, 23.951677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554974, 33.744694, 23.112726>,  <35.127937, 33.799637, 23.558212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554974, 33.744694, 23.112726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.496796, 34.059410, 23.352661>,  <34.461887, 34.248241, 23.496622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.496796, 34.059410, 23.352661>,  <34.554974, 33.744694, 23.112726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496796, 34.059410, 23.352661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278956, 0.549074, -0.787846,
		-0.949226, -0.281916, 0.139620,
		-0.145445, 0.786792, 0.599837,
		34.453163, 34.295448, 23.532612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977955, 33.961575, 22.818193>,  <34.554974, 33.744694, 23.112726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977955, 33.961575, 22.818193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.112640, 34.272514, 23.030739>,  <34.193451, 34.459080, 23.158266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.112640, 34.272514, 23.030739>,  <33.977955, 33.961575, 22.818193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112640, 34.272514, 23.030739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243830, 0.617051, -0.748195,
		-0.909489, 0.122367, 0.397312,
		0.336716, 0.777351, 0.531364,
		34.213654, 34.505718, 23.190147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.461979, 34.513145, 22.814043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.823357, 34.674759, 22.871370>,  <34.040184, 34.771729, 22.905766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.823357, 34.674759, 22.871370>,  <33.461979, 34.513145, 22.814043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823357, 34.674759, 22.871370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164615, 0.635629, -0.754240,
		-0.395836, 0.657823, 0.640767,
		0.903447, 0.404035, 0.143317,
		34.094391, 34.795971, 22.914366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279285, 35.123581, 22.597338>,  <33.461979, 34.513145, 22.814043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279285, 35.123581, 22.597338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.678478, 35.140610, 22.616203>,  <33.917992, 35.150826, 22.627522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.678478, 35.140610, 22.616203>,  <33.279285, 35.123581, 22.597338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678478, 35.140610, 22.616203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001194, 0.754763, -0.655997,
		-0.063523, 0.654615, 0.753289,
		0.997980, 0.042570, 0.047163,
		33.977871, 35.153381, 22.630352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453194, 35.807491, 22.815474>,  <33.279285, 35.123581, 22.597338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453194, 35.807491, 22.815474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.782421, 35.670269, 22.634422>,  <33.979958, 35.587936, 22.525791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.782421, 35.670269, 22.634422>,  <33.453194, 35.807491, 22.815474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782421, 35.670269, 22.634422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005849, 0.802037, -0.597246,
		0.567913, 0.488926, 0.662137,
		0.823068, -0.343056, -0.452628,
		34.029343, 35.567352, 22.498634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915283, 36.383812, 22.910656>,  <33.453194, 35.807491, 22.815474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915283, 36.383812, 22.910656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.021687, 36.146198, 22.606983>,  <34.085529, 36.003628, 22.424780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.021687, 36.146198, 22.606983>,  <33.915283, 36.383812, 22.910656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021687, 36.146198, 22.606983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137854, 0.802905, -0.579948,
		0.954064, 0.049613, 0.295467,
		0.266005, -0.594039, -0.759183,
		34.101486, 35.967987, 22.379229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471157, 36.730827, 22.594833>,  <33.915283, 36.383812, 22.910656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471157, 36.730827, 22.594833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353008, 36.462078, 22.323147>,  <34.282120, 36.300827, 22.160135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353008, 36.462078, 22.323147>,  <34.471157, 36.730827, 22.594833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353008, 36.462078, 22.323147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047885, 0.699633, -0.712896,
		0.954181, -0.243094, -0.174479,
		-0.295373, -0.671878, -0.679217,
		34.264397, 36.260513, 22.119381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804039, 36.894314, 21.860279>,  <34.471157, 36.730827, 22.594833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804039, 36.894314, 21.860279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.510948, 36.644402, 21.752378>,  <34.335094, 36.494453, 21.687639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.510948, 36.644402, 21.752378>,  <34.804039, 36.894314, 21.860279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510948, 36.644402, 21.752378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128460, 0.516239, -0.846756,
		0.668294, -0.585784, -0.458519,
		-0.732722, -0.624783, -0.269749,
		34.291130, 36.456966, 21.671453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033504, 36.528271, 21.193401>,  <34.804039, 36.894314, 21.860279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033504, 36.528271, 21.193401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635300, 36.509815, 21.226473>,  <34.396378, 36.498741, 21.246315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635300, 36.509815, 21.226473>,  <35.033504, 36.528271, 21.193401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635300, 36.509815, 21.226473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093927, 0.591301, -0.800962,
		-0.011930, -0.805130, -0.592978,
		-0.995507, -0.046141, 0.082678,
		34.336647, 36.495972, 21.251276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704475, 36.229973, 20.588085>,  <35.033504, 36.528271, 21.193401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704475, 36.229973, 20.588085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419472, 36.456085, 20.754356>,  <34.248470, 36.591751, 20.854120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419472, 36.456085, 20.754356>,  <34.704475, 36.229973, 20.588085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419472, 36.456085, 20.754356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090357, 0.513569, -0.853278,
		-0.695820, -0.645529, -0.314846,
		-0.712510, 0.565279, 0.415679,
		34.205719, 36.625668, 20.879061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449860, 36.522423, 20.022301>,  <34.704475, 36.229973, 20.588085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449860, 36.522423, 20.022301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222061, 36.727390, 20.279392>,  <34.085384, 36.850372, 20.433647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222061, 36.727390, 20.279392>,  <34.449860, 36.522423, 20.022301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222061, 36.727390, 20.279392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181101, 0.684483, -0.706177,
		-0.801798, -0.518562, -0.297009,
		-0.569494, 0.512422, 0.642729,
		34.051212, 36.881115, 20.472212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805836, 36.459568, 19.795982>,  <34.449860, 36.522423, 20.022301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805836, 36.459568, 19.795982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.869629, 36.795765, 20.003107>,  <33.907906, 36.997482, 20.127382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.869629, 36.795765, 20.003107>,  <33.805836, 36.459568, 19.795982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869629, 36.795765, 20.003107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289483, 0.541287, -0.789435,
		-0.943803, -0.023993, 0.329637,
		0.159487, 0.840495, 0.517814,
		33.917477, 37.047913, 20.158451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291363, 36.879093, 19.569860>,  <33.805836, 36.459568, 19.795982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291363, 36.879093, 19.569860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524094, 37.131451, 19.775173>,  <33.663731, 37.282864, 19.898361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524094, 37.131451, 19.775173>,  <33.291363, 36.879093, 19.569860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524094, 37.131451, 19.775173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191497, 0.719621, -0.667439,
		-0.790450, 0.290040, 0.539505,
		0.581823, 0.630891, 0.513282,
		33.698639, 37.320717, 19.929157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953529, 37.587509, 19.597565>,  <33.291363, 36.879093, 19.569860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953529, 37.587509, 19.597565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.349567, 37.633389, 19.629927>,  <33.587193, 37.660915, 19.649343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.349567, 37.633389, 19.629927>,  <32.953529, 37.587509, 19.597565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349567, 37.633389, 19.629927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051110, 0.831426, -0.553280,
		-0.130730, 0.543667, 0.829057,
		0.990100, 0.114703, 0.080906,
		33.646599, 37.667801, 19.654198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012836, 38.326843, 19.738476>,  <32.953529, 37.587509, 19.597565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012836, 38.326843, 19.738476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.366676, 38.200645, 19.601097>,  <33.578979, 38.124928, 19.518671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.366676, 38.200645, 19.601097>,  <33.012836, 38.326843, 19.738476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366676, 38.200645, 19.601097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037071, 0.781683, -0.622573,
		0.464881, 0.537994, 0.703170,
		0.884597, -0.315490, -0.343445,
		33.632057, 38.105999, 19.498064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323284, 38.991764, 19.627205>,  <33.012836, 38.326843, 19.738476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323284, 38.991764, 19.627205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551689, 38.723320, 19.438080>,  <33.688732, 38.562252, 19.324604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551689, 38.723320, 19.438080>,  <33.323284, 38.991764, 19.627205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551689, 38.723320, 19.438080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296157, 0.705557, -0.643802,
		0.765659, 0.227593, 0.601637,
		0.571014, -0.671112, -0.472813,
		33.722992, 38.521988, 19.296236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061489, 39.277218, 19.565830>,  <33.323284, 38.991764, 19.627205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061489, 39.277218, 19.565830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.010796, 39.026588, 19.258232>,  <33.980381, 38.876213, 19.073673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.010796, 39.026588, 19.258232>,  <34.061489, 39.277218, 19.565830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010796, 39.026588, 19.258232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361065, 0.692923, -0.624091,
		0.923889, -0.356748, 0.138418,
		-0.126730, -0.626569, -0.768993,
		33.972778, 38.838619, 19.027534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755039, 39.281166, 19.138062>,  <34.061489, 39.277218, 19.565830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755039, 39.281166, 19.138062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452801, 39.170231, 18.900688>,  <34.271458, 39.103672, 18.758265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452801, 39.170231, 18.900688>,  <34.755039, 39.281166, 19.138062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452801, 39.170231, 18.900688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246928, 0.718522, -0.650194,
		0.606718, -0.637818, -0.474428,
		-0.755593, -0.277334, -0.593436,
		34.226124, 39.087032, 18.722658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036850, 39.398682, 18.481436>,  <34.755039, 39.281166, 19.138062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036850, 39.398682, 18.481436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.648403, 39.368225, 18.390980>,  <34.415337, 39.349953, 18.336706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.648403, 39.368225, 18.390980>,  <35.036850, 39.398682, 18.481436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648403, 39.368225, 18.390980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106341, 0.710298, -0.695822,
		0.213605, -0.699771, -0.681684,
		-0.971115, -0.076141, -0.226138,
		34.357067, 39.345383, 18.323139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982632, 39.326775, 17.785938>,  <35.036850, 39.398682, 18.481436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982632, 39.326775, 17.785938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621517, 39.466354, 17.886503>,  <34.404846, 39.550102, 17.946842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621517, 39.466354, 17.886503>,  <34.982632, 39.326775, 17.785938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621517, 39.466354, 17.886503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055760, 0.674590, -0.736084,
		-0.426456, -0.650509, -0.628469,
		-0.902788, 0.348951, 0.251411,
		34.350681, 39.571041, 17.961926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632172, 39.362568, 17.135649>,  <34.982632, 39.326775, 17.785938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632172, 39.362568, 17.135649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.406792, 39.576580, 17.387447>,  <34.271564, 39.704987, 17.538527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.406792, 39.576580, 17.387447>,  <34.632172, 39.362568, 17.135649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406792, 39.576580, 17.387447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078228, 0.793091, -0.604059,
		-0.822441, -0.291111, -0.488718,
		-0.563446, 0.535034, 0.629497,
		34.237759, 39.737091, 17.576296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238777, 39.851246, 16.766874>,  <34.632172, 39.362568, 17.135649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238777, 39.851246, 16.766874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224194, 40.022175, 17.128220>,  <34.215443, 40.124733, 17.345028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224194, 40.022175, 17.128220>,  <34.238777, 39.851246, 16.766874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224194, 40.022175, 17.128220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133780, 0.897917, -0.419343,
		-0.990340, 0.105565, -0.089900,
		-0.036455, 0.427319, 0.903365,
		34.213257, 40.150372, 17.399229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591507, 40.282135, 16.745495>,  <34.238777, 39.851246, 16.766874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591507, 40.282135, 16.745495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.869003, 40.411083, 17.003117>,  <34.035500, 40.488453, 17.157690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.869003, 40.411083, 17.003117>,  <33.591507, 40.282135, 16.745495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869003, 40.411083, 17.003117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246706, 0.946501, -0.208020,
		-0.676657, -0.014581, 0.736154,
		0.693738, 0.322372, 0.644053,
		34.077126, 40.507793, 17.196333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217091, 40.896439, 17.029806>,  <33.591507, 40.282135, 16.745495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217091, 40.896439, 17.029806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.607014, 40.937424, 17.109060>,  <33.840965, 40.962017, 17.156612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.607014, 40.937424, 17.109060>,  <33.217091, 40.896439, 17.029806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607014, 40.937424, 17.109060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082811, 0.991009, -0.105084,
		-0.207122, 0.086029, 0.974525,
		0.974804, 0.102466, 0.198136,
		33.899456, 40.968163, 17.168501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313347, 41.563110, 17.298592>,  <33.217091, 40.896439, 17.029806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313347, 41.563110, 17.298592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687122, 41.434673, 17.236996>,  <33.911388, 41.357609, 17.200037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687122, 41.434673, 17.236996>,  <33.313347, 41.563110, 17.298592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687122, 41.434673, 17.236996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342983, 0.927831, 0.146604,
		0.095804, -0.189810, 0.977135,
		0.934443, -0.321095, -0.153991,
		33.967457, 41.338345, 17.190798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868805, 42.016525, 17.496485>,  <33.313347, 41.563110, 17.298592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868805, 42.016525, 17.496485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.674747, 42.280216, 17.726284>,  <33.558311, 42.438431, 17.864164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.674747, 42.280216, 17.726284>,  <33.868805, 42.016525, 17.496485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674747, 42.280216, 17.726284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288891, -0.740941, 0.606257,
		0.825333, 0.128155, 0.549911,
		-0.485147, 0.659229, 0.574500,
		33.529205, 42.477985, 17.898634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765053, 41.684566, 18.055756>,  <33.868805, 42.016525, 17.496485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765053, 41.684566, 18.055756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.518417, 41.977074, 18.172419>,  <33.370438, 42.152576, 18.242416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.518417, 41.977074, 18.172419>,  <33.765053, 41.684566, 18.055756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518417, 41.977074, 18.172419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403569, -0.611667, 0.680438,
		0.675981, 0.301846, 0.672264,
		-0.616589, 0.731268, 0.291659,
		33.333439, 42.196453, 18.259916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770817, 41.647594, 18.790760>,  <33.765053, 41.684566, 18.055756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770817, 41.647594, 18.790760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.439911, 41.846058, 18.685343>,  <33.241367, 41.965137, 18.622091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.439911, 41.846058, 18.685343>,  <33.770817, 41.647594, 18.790760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439911, 41.846058, 18.685343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533333, -0.546103, 0.646009,
		0.176603, 0.674978, 0.716391,
		-0.827265, 0.496162, -0.263544,
		33.191730, 41.994907, 18.606279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486572, 41.815407, 19.426588>,  <33.770817, 41.647594, 18.790760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486572, 41.815407, 19.426588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.195827, 41.785652, 19.153490>,  <33.021381, 41.767799, 18.989632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.195827, 41.785652, 19.153490>,  <33.486572, 41.815407, 19.426588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195827, 41.785652, 19.153490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601255, -0.411513, 0.684945,
		-0.331911, 0.908363, 0.254386,
		-0.726861, -0.074390, -0.682744,
		32.977768, 41.763336, 18.948668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860302, 42.043362, 19.727409>,  <33.486572, 41.815407, 19.426588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860302, 42.043362, 19.727409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.757454, 41.829887, 19.405149>,  <32.695744, 41.701805, 19.211794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.757454, 41.829887, 19.405149>,  <32.860302, 42.043362, 19.727409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757454, 41.829887, 19.405149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559485, -0.597543, 0.574386,
		-0.787949, 0.598437, -0.144946,
		-0.257122, -0.533682, -0.805650,
		32.680317, 41.669785, 19.163454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180386, 42.004391, 19.810722>,  <32.860302, 42.043362, 19.727409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180386, 42.004391, 19.810722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.252941, 41.708652, 19.551352>,  <32.296474, 41.531208, 19.395729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.252941, 41.708652, 19.551352>,  <32.180386, 42.004391, 19.810722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252941, 41.708652, 19.551352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547229, -0.623736, 0.558116,
		-0.817092, 0.253604, -0.517732,
		0.181387, -0.739350, -0.648429,
		32.307358, 41.486847, 19.356823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552773, 41.653210, 19.675102>,  <32.180386, 42.004391, 19.810722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552773, 41.653210, 19.675102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.819935, 41.376801, 19.564545>,  <31.980232, 41.210957, 19.498209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.819935, 41.376801, 19.564545>,  <31.552773, 41.653210, 19.675102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819935, 41.376801, 19.564545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556405, -0.710267, 0.431200,
		-0.494282, -0.134213, -0.858878,
		0.667906, -0.691019, -0.276395,
		32.020306, 41.169495, 19.481627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161421, 41.042797, 19.637888>,  <31.552773, 41.653210, 19.675102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161421, 41.042797, 19.637888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.535351, 40.901318, 19.650515>,  <31.759708, 40.816429, 19.658091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.535351, 40.901318, 19.650515>,  <31.161421, 41.042797, 19.637888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535351, 40.901318, 19.650515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303143, -0.748582, 0.589686,
		-0.184939, -0.560824, -0.807015,
		0.934827, -0.353697, 0.031568,
		31.815800, 40.795208, 19.659985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230461, 40.268745, 19.370718>,  <31.161421, 41.042797, 19.637888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230461, 40.268745, 19.370718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.543442, 40.356815, 19.603714>,  <31.731230, 40.409657, 19.743511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.543442, 40.356815, 19.603714>,  <31.230461, 40.268745, 19.370718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543442, 40.356815, 19.603714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245150, -0.750955, 0.613162,
		0.572428, -0.622566, -0.533609,
		0.782451, 0.220177, 0.582489,
		31.778177, 40.422867, 19.778461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523176, 39.523788, 19.447090>,  <31.230461, 40.268745, 19.370718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523176, 39.523788, 19.447090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.682674, 39.758099, 19.729330>,  <31.778374, 39.898685, 19.898674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.682674, 39.758099, 19.729330>,  <31.523176, 39.523788, 19.447090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682674, 39.758099, 19.729330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059137, -0.751389, 0.657205,
		0.915154, -0.303784, -0.264971,
		0.398744, 0.585774, 0.705601,
		31.802298, 39.933830, 19.941010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976999, 39.107552, 19.721889>,  <31.523176, 39.523788, 19.447090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976999, 39.107552, 19.721889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.957094, 39.381592, 20.012589>,  <31.945150, 39.546017, 20.187008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.957094, 39.381592, 20.012589>,  <31.976999, 39.107552, 19.721889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957094, 39.381592, 20.012589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094581, -0.721148, 0.686295,
		0.994273, 0.102890, -0.028910,
		-0.049765, 0.685098, 0.726749,
		31.942165, 39.587120, 20.230614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669510, 39.093903, 20.207256>,  <31.976999, 39.107552, 19.721889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669510, 39.093903, 20.207256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.359463, 39.256779, 20.400499>,  <32.173435, 39.354504, 20.516445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.359463, 39.256779, 20.400499>,  <32.669510, 39.093903, 20.207256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359463, 39.256779, 20.400499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170509, -0.601447, 0.780505,
		0.608380, 0.687354, 0.396760,
		-0.775113, 0.407192, 0.483109,
		32.126930, 39.378937, 20.545431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867077, 39.182819, 20.841625>,  <32.669510, 39.093903, 20.207256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867077, 39.182819, 20.841625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.474594, 39.228016, 20.904202>,  <32.239105, 39.255135, 20.941748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.474594, 39.228016, 20.904202>,  <32.867077, 39.182819, 20.841625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474594, 39.228016, 20.904202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078961, -0.504633, 0.859715,
		0.176084, 0.855908, 0.486226,
		-0.981203, 0.112989, 0.156441,
		32.180233, 39.261913, 20.951134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847267, 39.421741, 21.522753>,  <32.867077, 39.182819, 20.841625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847267, 39.421741, 21.522753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.507610, 39.235744, 21.422565>,  <32.303814, 39.124146, 21.362453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.507610, 39.235744, 21.422565>,  <32.847267, 39.421741, 21.522753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507610, 39.235744, 21.422565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137798, -0.652851, 0.744847,
		-0.509868, 0.597968, 0.618440,
		-0.849144, -0.464994, -0.250469,
		32.252869, 39.096245, 21.347425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487991, 39.346481, 22.144386>,  <32.847267, 39.421741, 21.522753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487991, 39.346481, 22.144386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.337585, 39.063908, 21.904531>,  <32.247341, 38.894363, 21.760618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.337585, 39.063908, 21.904531>,  <32.487991, 39.346481, 22.144386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337585, 39.063908, 21.904531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165252, -0.687878, 0.706765,
		-0.911757, 0.166666, 0.375394,
		-0.376019, -0.706433, -0.599636,
		32.224781, 38.851978, 21.724640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069393, 38.999851, 22.620171>,  <32.487991, 39.346481, 22.144386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069393, 38.999851, 22.620171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.122055, 38.739285, 22.321287>,  <32.153652, 38.582943, 22.141958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.122055, 38.739285, 22.321287>,  <32.069393, 38.999851, 22.620171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122055, 38.739285, 22.321287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006294, -0.753204, 0.657756,
		-0.991275, -0.091301, -0.095064,
		0.131656, -0.651420, -0.747208,
		32.161552, 38.543858, 22.097124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673296, 38.544048, 22.780643>,  <32.069393, 38.999851, 22.620171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673296, 38.544048, 22.780643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.912111, 38.346516, 22.527765>,  <32.055401, 38.227997, 22.376038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.912111, 38.346516, 22.527765>,  <31.673296, 38.544048, 22.780643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912111, 38.346516, 22.527765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037128, -0.804231, 0.593156,
		-0.801322, -0.330690, -0.498524,
		0.597080, -0.493819, -0.632171,
		32.091225, 38.198364, 22.338106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293896, 37.861202, 22.638157>,  <31.673296, 38.544048, 22.780643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293896, 37.861202, 22.638157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.675924, 37.806225, 22.533129>,  <31.905142, 37.773239, 22.470112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.675924, 37.806225, 22.533129>,  <31.293896, 37.861202, 22.638157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675924, 37.806225, 22.533129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029564, -0.837358, 0.545855,
		-0.294890, -0.529094, -0.795676,
		0.955074, -0.137444, -0.262570,
		31.962446, 37.764992, 22.454357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370506, 37.075947, 22.501495>,  <31.293896, 37.861202, 22.638157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370506, 37.075947, 22.501495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.729128, 37.238556, 22.571842>,  <31.944302, 37.336121, 22.614050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.729128, 37.238556, 22.571842>,  <31.370506, 37.075947, 22.501495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729128, 37.238556, 22.571842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208508, -0.737665, 0.642164,
		0.390783, -0.539067, -0.746120,
		0.896556, 0.406519, 0.175867,
		31.998095, 37.360512, 22.624603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853413, 36.527046, 22.399187>,  <31.370506, 37.075947, 22.501495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853413, 36.527046, 22.399187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.041985, 36.806572, 22.614378>,  <32.155128, 36.974285, 22.743492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.041985, 36.806572, 22.614378>,  <31.853413, 36.527046, 22.399187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041985, 36.806572, 22.614378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146217, -0.663509, 0.733741,
		0.869699, -0.267245, -0.414975,
		0.471429, 0.698810, 0.537977,
		32.183414, 37.016216, 22.775770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446156, 36.164528, 22.743744>,  <31.853413, 36.527046, 22.399187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446156, 36.164528, 22.743744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.388783, 36.488804, 22.970800>,  <32.354359, 36.683369, 23.107035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.388783, 36.488804, 22.970800>,  <32.446156, 36.164528, 22.743744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388783, 36.488804, 22.970800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269872, -0.519794, 0.810545,
		0.952154, 0.269448, -0.144226,
		-0.143432, 0.810686, 0.567640,
		32.345753, 36.732010, 23.141092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.970219, 32.569996, 24.860510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.984550, 32.925713, 25.042885>,  <34.993149, 33.139141, 25.152309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.984550, 32.925713, 25.042885>,  <34.970219, 32.569996, 24.860510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984550, 32.925713, 25.042885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498623, -0.411295, 0.763028,
		0.866078, 0.200002, -0.458157,
		0.035830, 0.889289, 0.455939,
		34.995300, 33.192501, 25.179667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699074, 32.688087, 25.048868>,  <34.970219, 32.569996, 24.860510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699074, 32.688087, 25.048868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.478333, 32.914001, 25.294298>,  <35.345890, 33.049553, 25.441557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.478333, 32.914001, 25.294298>,  <35.699074, 32.688087, 25.048868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478333, 32.914001, 25.294298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492076, -0.373486, 0.786364,
		0.673292, 0.735881, -0.071811,
		-0.551850, 0.564790, 0.613575,
		35.312778, 33.083439, 25.478371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195858, 32.862324, 25.623789>,  <35.699074, 32.688087, 25.048868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195858, 32.862324, 25.623789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.832664, 32.953121, 25.764666>,  <35.614750, 33.007599, 25.849192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.832664, 32.953121, 25.764666>,  <36.195858, 32.862324, 25.623789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832664, 32.953121, 25.764666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336821, -0.104560, 0.935745,
		0.249232, 0.968267, 0.018484,
		-0.907984, 0.226992, 0.352192,
		35.560268, 33.021217, 25.870323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278660, 33.466011, 25.995342>,  <36.195858, 32.862324, 25.623789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278660, 33.466011, 25.995342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.956371, 33.261429, 26.114824>,  <35.763000, 33.138680, 26.186514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.956371, 33.261429, 26.114824>,  <36.278660, 33.466011, 25.995342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956371, 33.261429, 26.114824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413759, -0.125165, 0.901741,
		-0.423817, 0.850143, 0.312469,
		-0.805719, -0.511460, 0.298707,
		35.714657, 33.107990, 26.204437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272091, 33.565296, 26.670790>,  <36.278660, 33.466011, 25.995342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272091, 33.565296, 26.670790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.004372, 33.269608, 26.640860>,  <35.843742, 33.092194, 26.622902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.004372, 33.269608, 26.640860>,  <36.272091, 33.565296, 26.670790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004372, 33.269608, 26.640860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129091, -0.214868, 0.968074,
		-0.731696, 0.638268, 0.239237,
		-0.669295, -0.739220, -0.074823,
		35.803581, 33.047840, 26.618412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702564, 33.676666, 27.228008>,  <36.272091, 33.565296, 26.670790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702564, 33.676666, 27.228008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.749710, 33.294624, 27.119284>,  <35.777996, 33.065399, 27.054049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.749710, 33.294624, 27.119284>,  <35.702564, 33.676666, 27.228008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749710, 33.294624, 27.119284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257585, -0.234944, 0.937257,
		-0.959040, -0.180484, 0.218330,
		0.117864, -0.955106, -0.271811,
		35.785069, 33.008091, 27.037741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437359, 33.330921, 27.712656>,  <35.702564, 33.676666, 27.228008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437359, 33.330921, 27.712656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.656982, 33.051472, 27.529156>,  <35.788757, 32.883801, 27.419056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.656982, 33.051472, 27.529156>,  <35.437359, 33.330921, 27.712656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656982, 33.051472, 27.529156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359578, -0.298034, 0.884239,
		-0.754476, -0.650459, 0.087572,
		0.549062, -0.698626, -0.458750,
		35.821701, 32.841885, 27.391531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355980, 32.883106, 28.185804>,  <35.437359, 33.330921, 27.712656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355980, 32.883106, 28.185804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.683899, 32.785374, 27.978640>,  <35.880650, 32.726734, 27.854342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.683899, 32.785374, 27.978640>,  <35.355980, 32.883106, 28.185804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683899, 32.785374, 27.978640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483806, -0.188346, 0.854668,
		-0.306369, -0.951225, -0.036197,
		0.819799, -0.244331, -0.517911,
		35.929840, 32.712074, 27.823267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593464, 32.250881, 28.499228>,  <35.355980, 32.883106, 28.185804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593464, 32.250881, 28.499228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.912521, 32.376228, 28.293093>,  <36.103954, 32.451435, 28.169413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.912521, 32.376228, 28.293093>,  <35.593464, 32.250881, 28.499228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912521, 32.376228, 28.293093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594184, -0.261631, 0.760588,
		0.103516, -0.912880, -0.394886,
		0.797640, 0.313368, -0.515336,
		36.151814, 32.470238, 28.138493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072010, 31.700579, 28.494400>,  <35.593464, 32.250881, 28.499228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072010, 31.700579, 28.494400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.289909, 32.028805, 28.425205>,  <36.420647, 32.225742, 28.383688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.289909, 32.028805, 28.425205>,  <36.072010, 31.700579, 28.494400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289909, 32.028805, 28.425205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644247, -0.277440, 0.712722,
		0.536842, -0.499698, -0.679781,
		0.544744, 0.820566, -0.172987,
		36.453331, 32.274975, 28.373308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728062, 31.521357, 28.733191>,  <36.072010, 31.700579, 28.494400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728062, 31.521357, 28.733191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.783207, 31.916939, 28.711426>,  <36.816296, 32.154289, 28.698366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.783207, 31.916939, 28.711426>,  <36.728062, 31.521357, 28.733191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783207, 31.916939, 28.711426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660655, -0.050892, 0.748962,
		0.737921, -0.139204, -0.660375,
		0.137866, 0.988955, -0.054412,
		36.824566, 32.213627, 28.695103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418427, 31.644926, 28.630455>,  <36.728062, 31.521357, 28.733191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418427, 31.644926, 28.630455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.281349, 31.991140, 28.776556>,  <37.199104, 32.198868, 28.864218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.281349, 31.991140, 28.776556>,  <37.418427, 31.644926, 28.630455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281349, 31.991140, 28.776556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718825, -0.008739, 0.695136,
		0.604856, 0.500773, -0.619173,
		-0.342695, 0.865534, 0.365254,
		37.178539, 32.250801, 28.886133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032589, 32.147598, 28.668362>,  <37.418427, 31.644926, 28.630455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032589, 32.147598, 28.668362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.741043, 32.264343, 28.916098>,  <37.566116, 32.334389, 29.064739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.741043, 32.264343, 28.916098>,  <38.032589, 32.147598, 28.668362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741043, 32.264343, 28.916098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681682, 0.225051, 0.696177,
		0.063803, 0.929608, -0.362986,
		-0.728862, 0.291859, 0.619338,
		37.522385, 32.351902, 29.101898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289951, 32.476768, 29.279299>,  <38.032589, 32.147598, 28.668362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289951, 32.476768, 29.279299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.918484, 32.468781, 29.427446>,  <37.695602, 32.463989, 29.516335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.918484, 32.468781, 29.427446>,  <38.289951, 32.476768, 29.279299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918484, 32.468781, 29.427446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341922, 0.340881, 0.875722,
		-0.143737, 0.939894, -0.309739,
		-0.928671, -0.019968, 0.370368,
		37.639881, 32.462791, 29.538557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160919, 33.136040, 29.569689>,  <38.289951, 32.476768, 29.279299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160919, 33.136040, 29.569689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.898220, 32.872787, 29.716955>,  <37.740601, 32.714836, 29.805315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.898220, 32.872787, 29.716955>,  <38.160919, 33.136040, 29.569689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898220, 32.872787, 29.716955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286261, 0.234094, 0.929115,
		-0.697662, 0.715589, 0.034655,
		-0.656752, -0.658128, 0.368164,
		37.701195, 32.675350, 29.827404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811413, 33.365940, 29.729668>,  <38.160919, 33.136040, 29.569689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811413, 33.365940, 29.729668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.936359, 33.640030, 29.992849>,  <39.011326, 33.804482, 30.150759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.936359, 33.640030, 29.992849>,  <38.811413, 33.365940, 29.729668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936359, 33.640030, 29.992849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070885, 0.673865, -0.735446,
		-0.947313, 0.276367, 0.161920,
		0.312366, 0.685220, 0.657952,
		39.030067, 33.845596, 30.190235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356464, 33.959740, 29.701454>,  <38.811413, 33.365940, 29.729668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356464, 33.959740, 29.701454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.719555, 34.081364, 29.817099>,  <38.937408, 34.154339, 29.886486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.719555, 34.081364, 29.817099>,  <38.356464, 33.959740, 29.701454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719555, 34.081364, 29.817099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047801, 0.609633, -0.791242,
		-0.416841, 0.732047, 0.538842,
		0.907722, 0.304064, 0.289112,
		38.991871, 34.172585, 29.903831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274551, 34.620888, 29.705299>,  <38.356464, 33.959740, 29.701454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274551, 34.620888, 29.705299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.668732, 34.562050, 29.671236>,  <38.905239, 34.526749, 29.650799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.668732, 34.562050, 29.671236>,  <38.274551, 34.620888, 29.705299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668732, 34.562050, 29.671236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041914, 0.695875, -0.716939,
		0.164715, 0.702938, 0.691915,
		0.985450, -0.147091, -0.085158,
		38.964367, 34.517921, 29.645689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533821, 35.272316, 29.374933>,  <38.274551, 34.620888, 29.705299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533821, 35.272316, 29.374933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.883595, 35.078308, 29.370474>,  <39.093456, 34.961903, 29.367798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.883595, 35.078308, 29.370474>,  <38.533821, 35.272316, 29.374933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883595, 35.078308, 29.370474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426435, 0.779360, -0.459076,
		0.231351, 0.396676, 0.888327,
		0.874431, -0.485022, -0.011149,
		39.145924, 34.932800, 29.367128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002014, 35.806683, 29.597263>,  <38.533821, 35.272316, 29.374933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002014, 35.806683, 29.597263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.206749, 35.531513, 29.391438>,  <39.329590, 35.366413, 29.267942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.206749, 35.531513, 29.391438>,  <39.002014, 35.806683, 29.597263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206749, 35.531513, 29.391438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475939, 0.725721, -0.496801,
		0.715193, 0.009380, 0.698864,
		0.511840, -0.687925, -0.514567,
		39.360302, 35.325134, 29.237068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641037, 36.119244, 29.516150>,  <39.002014, 35.806683, 29.597263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641037, 36.119244, 29.516150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.581970, 35.825539, 29.251104>,  <39.546528, 35.649315, 29.092077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.581970, 35.825539, 29.251104>,  <39.641037, 36.119244, 29.516150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581970, 35.825539, 29.251104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323999, 0.597078, -0.733841,
		0.934461, -0.323054, 0.149728,
		-0.147671, -0.734258, -0.662615,
		39.537670, 35.605263, 29.052320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135941, 36.241699, 29.073254>,  <39.641037, 36.119244, 29.516150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135941, 36.241699, 29.073254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.878426, 36.021080, 28.861092>,  <39.723915, 35.888706, 28.733795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.878426, 36.021080, 28.861092>,  <40.135941, 36.241699, 29.073254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878426, 36.021080, 28.861092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331500, 0.423703, -0.842961,
		0.689669, -0.718518, -0.089936,
		-0.643789, -0.551550, -0.530403,
		39.685287, 35.855614, 28.701971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524559, 36.225662, 28.453773>,  <40.135941, 36.241699, 29.073254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524559, 36.225662, 28.453773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.139503, 36.130070, 28.402826>,  <39.908470, 36.072716, 28.372257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.139503, 36.130070, 28.402826>,  <40.524559, 36.225662, 28.453773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139503, 36.130070, 28.402826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038360, 0.585927, -0.809456,
		0.268074, -0.774324, -0.573200,
		-0.962635, -0.238982, -0.127369,
		39.850712, 36.058376, 28.364616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504005, 36.056255, 27.697123>,  <40.524559, 36.225662, 28.453773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504005, 36.056255, 27.697123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.122055, 36.110847, 27.802631>,  <39.892883, 36.143604, 27.865936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.122055, 36.110847, 27.802631>,  <40.504005, 36.056255, 27.697123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122055, 36.110847, 27.802631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131800, 0.601160, -0.788185,
		-0.266144, -0.787387, -0.556047,
		-0.954880, 0.136483, 0.263773,
		39.835590, 36.151791, 27.881763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137360, 36.101833, 27.042753>,  <40.504005, 36.056255, 27.697123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137360, 36.101833, 27.042753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.886650, 36.250874, 27.316490>,  <39.736225, 36.340298, 27.480732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.886650, 36.250874, 27.316490>,  <40.137360, 36.101833, 27.042753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886650, 36.250874, 27.316490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342675, 0.656964, -0.671545,
		-0.699807, -0.655413, -0.284086,
		-0.626773, 0.372603, 0.684341,
		39.698620, 36.362656, 27.521793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589905, 36.200550, 26.597408>,  <40.137360, 36.101833, 27.042753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589905, 36.200550, 26.597408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.550930, 36.440578, 26.915003>,  <39.527546, 36.584595, 27.105560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.550930, 36.440578, 26.915003>,  <39.589905, 36.200550, 26.597408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550930, 36.440578, 26.915003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434831, 0.691941, -0.576315,
		-0.895225, -0.401406, 0.193509,
		-0.097439, 0.600075, 0.793987,
		39.521698, 36.620602, 27.153198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938965, 36.335583, 26.723005>,  <39.589905, 36.200550, 26.597408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938965, 36.335583, 26.723005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.109890, 36.655678, 26.891304>,  <39.212444, 36.847733, 26.992283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.109890, 36.655678, 26.891304>,  <38.938965, 36.335583, 26.723005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109890, 36.655678, 26.891304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595284, 0.599292, -0.535244,
		-0.680473, -0.021750, 0.732450,
		0.427310, 0.800235, 0.420749,
		39.238083, 36.895748, 27.017529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430519, 36.786037, 26.786657>,  <38.938965, 36.335583, 26.723005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430519, 36.786037, 26.786657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.754253, 37.019852, 26.809652>,  <38.948494, 37.160141, 26.823448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.754253, 37.019852, 26.809652>,  <38.430519, 36.786037, 26.786657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754253, 37.019852, 26.809652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418483, 0.642551, -0.641872,
		-0.412132, 0.495431, 0.764654,
		0.809332, 0.584531, 0.057486,
		38.997051, 37.195210, 26.826899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897396, 37.155392, 27.320572>,  <38.430519, 36.786037, 26.786657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897396, 37.155392, 27.320572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.582035, 37.339771, 27.483519>,  <37.392818, 37.450397, 27.581285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.582035, 37.339771, 27.483519>,  <37.897396, 37.155392, 27.320572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582035, 37.339771, 27.483519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057827, -0.603745, 0.795077,
		0.612434, 0.650398, 0.449340,
		-0.788403, 0.460949, 0.407365,
		37.345512, 37.478054, 27.605728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059952, 37.049580, 28.026075>,  <37.897396, 37.155392, 27.320572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059952, 37.049580, 28.026075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.670120, 37.139103, 28.030279>,  <37.436222, 37.192818, 28.032801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.670120, 37.139103, 28.030279>,  <38.059952, 37.049580, 28.026075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670120, 37.139103, 28.030279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150173, -0.687291, 0.710689,
		0.166284, 0.691042, 0.703428,
		-0.974576, 0.223812, 0.010510,
		37.377747, 37.206245, 28.033432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868618, 37.154083, 28.714655>,  <38.059952, 37.049580, 28.026075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868618, 37.154083, 28.714655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.539005, 37.058514, 28.509178>,  <37.341236, 37.001171, 28.385891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.539005, 37.058514, 28.509178>,  <37.868618, 37.154083, 28.714655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539005, 37.058514, 28.509178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211697, -0.711190, 0.670368,
		-0.525499, 0.661155, 0.535467,
		-0.824036, -0.238921, -0.513694,
		37.291794, 36.986835, 28.355070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302319, 37.161144, 29.197287>,  <37.868618, 37.154083, 28.714655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302319, 37.161144, 29.197287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.161011, 36.937332, 28.897387>,  <37.076225, 36.803047, 28.717445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.161011, 36.937332, 28.897387>,  <37.302319, 37.161144, 29.197287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161011, 36.937332, 28.897387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422348, -0.619719, 0.661491,
		-0.834757, 0.550344, -0.017385,
		-0.353274, -0.559527, -0.749752,
		37.055027, 36.769474, 28.672461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653099, 36.932480, 29.451982>,  <37.302319, 37.161144, 29.197287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653099, 36.932480, 29.451982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.736938, 36.678898, 29.154211>,  <36.787243, 36.526749, 28.975548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.736938, 36.678898, 29.154211>,  <36.653099, 36.932480, 29.451982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736938, 36.678898, 29.154211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314000, -0.764653, 0.562770,
		-0.925998, 0.115795, -0.359331,
		0.209597, -0.633954, -0.744427,
		36.799816, 36.488712, 28.930883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075050, 36.542126, 29.282600>,  <36.653099, 36.932480, 29.451982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075050, 36.542126, 29.282600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.393219, 36.329887, 29.165455>,  <36.584122, 36.202545, 29.095167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.393219, 36.329887, 29.165455>,  <36.075050, 36.542126, 29.282600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393219, 36.329887, 29.165455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316118, -0.775524, 0.546472,
		-0.517080, -0.342097, -0.784600,
		0.795423, -0.530596, -0.292865,
		36.631847, 36.170708, 29.077595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824623, 35.850677, 29.406923>,  <36.075050, 36.542126, 29.282600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824623, 35.850677, 29.406923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.223282, 35.834393, 29.378523>,  <36.462475, 35.824619, 29.361483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.223282, 35.834393, 29.378523>,  <35.824623, 35.850677, 29.406923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223282, 35.834393, 29.378523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030865, -0.616473, 0.786771,
		-0.075803, -0.786323, -0.613148,
		0.996645, -0.040715, -0.071000,
		36.522274, 35.822178, 29.357224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971161, 35.158699, 29.545660>,  <35.824623, 35.850677, 29.406923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971161, 35.158699, 29.545660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.344139, 35.296013, 29.590746>,  <36.567924, 35.378399, 29.617798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.344139, 35.296013, 29.590746>,  <35.971161, 35.158699, 29.545660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344139, 35.296013, 29.590746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206421, -0.762163, 0.613595,
		0.296543, -0.548877, -0.781535,
		0.932445, 0.343282, 0.112714,
		36.623871, 35.398998, 29.624559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447124, 34.590622, 29.594990>,  <35.971161, 35.158699, 29.545660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447124, 34.590622, 29.594990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.694649, 34.855556, 29.763931>,  <36.843163, 35.014519, 29.865297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.694649, 34.855556, 29.763931>,  <36.447124, 34.590622, 29.594990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694649, 34.855556, 29.763931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212751, -0.658875, 0.721541,
		0.756185, -0.356638, -0.548630,
		0.618807, 0.662339, 0.422356,
		36.880291, 35.054256, 29.890638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020340, 34.245510, 29.816048>,  <36.447124, 34.590622, 29.594990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020340, 34.245510, 29.816048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.070148, 34.580990, 30.028116>,  <37.100033, 34.782276, 30.155357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.070148, 34.580990, 30.028116>,  <37.020340, 34.245510, 29.816048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070148, 34.580990, 30.028116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280210, -0.542305, 0.792078,
		0.951828, 0.049928, -0.302540,
		0.124522, 0.838697, 0.530171,
		37.107506, 34.832600, 30.187168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679775, 34.233791, 30.119612>,  <37.020340, 34.245510, 29.816048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679775, 34.233791, 30.119612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494846, 34.496471, 30.357939>,  <37.383888, 34.654079, 30.500935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494846, 34.496471, 30.357939>,  <37.679775, 34.233791, 30.119612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494846, 34.496471, 30.357939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431180, -0.420652, 0.798208,
		0.774815, 0.625937, -0.088678,
		-0.462326, 0.656700, 0.595819,
		37.356148, 34.693481, 30.536684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116482, 34.391666, 30.572430>,  <37.679775, 34.233791, 30.119612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116482, 34.391666, 30.572430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.791786, 34.494041, 30.782412>,  <37.596970, 34.555466, 30.908401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.791786, 34.494041, 30.782412>,  <38.116482, 34.391666, 30.572430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791786, 34.494041, 30.782412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463686, -0.264060, 0.845735,
		0.355072, 0.929930, 0.095674,
		-0.811738, 0.255934, 0.524956,
		37.548264, 34.570820, 30.939898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.321369, 40.816223, 25.457851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951305, 40.681595, 25.528053>,  <36.729267, 40.600819, 25.570175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951305, 40.681595, 25.528053>,  <37.321369, 40.816223, 25.457851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951305, 40.681595, 25.528053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358235, -0.621328, 0.696864,
		-0.125496, 0.707582, 0.695398,
		-0.925159, -0.336569, 0.175506,
		36.673759, 40.580624, 25.580706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279232, 40.691032, 26.140829>,  <37.321369, 40.816223, 25.457851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279232, 40.691032, 26.140829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963215, 40.474472, 26.025784>,  <36.773605, 40.344536, 25.956757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963215, 40.474472, 26.025784>,  <37.279232, 40.691032, 26.140829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963215, 40.474472, 26.025784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352653, -0.785104, 0.509163,
		-0.501464, 0.300834, 0.811192,
		-0.790044, -0.541397, -0.287612,
		36.726200, 40.312054, 25.939501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833717, 40.493832, 26.786209>,  <37.279232, 40.691032, 26.140829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833717, 40.493832, 26.786209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742146, 40.241207, 26.489906>,  <36.687202, 40.089630, 26.312124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742146, 40.241207, 26.489906>,  <36.833717, 40.493832, 26.786209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742146, 40.241207, 26.489906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091260, -0.771536, 0.629606,
		-0.969156, 0.076534, 0.234263,
		-0.228928, -0.631565, -0.740755,
		36.673466, 40.051739, 26.267679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426037, 39.978264, 27.142334>,  <36.833717, 40.493832, 26.786209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426037, 39.978264, 27.142334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568710, 39.787407, 26.821058>,  <36.654316, 39.672894, 26.628294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568710, 39.787407, 26.821058>,  <36.426037, 39.978264, 27.142334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568710, 39.787407, 26.821058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001730, -0.859398, 0.511304,
		-0.934223, -0.183764, -0.305709,
		0.356685, -0.477143, -0.803187,
		36.675716, 39.644264, 26.580101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992664, 39.408012, 27.020842>,  <36.426037, 39.978264, 27.142334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992664, 39.408012, 27.020842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321407, 39.304749, 26.817707>,  <36.518654, 39.242790, 26.695827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321407, 39.304749, 26.817707>,  <35.992664, 39.408012, 27.020842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321407, 39.304749, 26.817707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067974, -0.840620, 0.537344,
		-0.565618, -0.476141, -0.673324,
		0.821861, -0.258163, -0.507834,
		36.567966, 39.227299, 26.665358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891701, 38.696255, 26.888161>,  <35.992664, 39.408012, 27.020842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891701, 38.696255, 26.888161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281033, 38.759464, 26.821638>,  <36.514633, 38.797390, 26.781725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281033, 38.759464, 26.821638>,  <35.891701, 38.696255, 26.888161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281033, 38.759464, 26.821638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227737, -0.752971, 0.617390,
		-0.027663, -0.638798, -0.768877,
		0.973330, 0.158022, -0.166308,
		36.573032, 38.806870, 26.771746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155178, 38.022892, 26.681904>,  <35.891701, 38.696255, 26.888161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155178, 38.022892, 26.681904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464214, 38.235218, 26.821236>,  <36.649635, 38.362614, 26.904835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464214, 38.235218, 26.821236>,  <36.155178, 38.022892, 26.681904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464214, 38.235218, 26.821236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351505, -0.814493, 0.461569,
		0.528720, -0.234165, -0.815856,
		0.772593, 0.530818, 0.348328,
		36.695992, 38.394463, 26.925734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679581, 37.592621, 26.560936>,  <36.155178, 38.022892, 26.681904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679581, 37.592621, 26.560936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820847, 37.846996, 26.835411>,  <36.905605, 37.999622, 27.000095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820847, 37.846996, 26.835411>,  <36.679581, 37.592621, 26.560936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820847, 37.846996, 26.835411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456217, -0.757399, 0.467132,
		0.816786, 0.148076, -0.557614,
		0.353165, 0.635940, 0.686188,
		36.926796, 38.037777, 27.041267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404095, 37.428955, 26.630861>,  <36.679581, 37.592621, 26.560936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404095, 37.428955, 26.630861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258518, 37.597149, 26.963305>,  <37.171173, 37.698067, 27.162769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258518, 37.597149, 26.963305>,  <37.404095, 37.428955, 26.630861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258518, 37.597149, 26.963305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322048, -0.780457, 0.535885,
		0.873975, 0.462687, 0.148624,
		-0.363942, 0.420485, 0.831107,
		37.149334, 37.723293, 27.212637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140507, 37.496048, 26.629534>,  <37.404095, 37.428955, 26.630861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140507, 37.496048, 26.629534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536808, 37.549805, 26.622143>,  <38.774590, 37.582058, 26.617708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536808, 37.549805, 26.622143>,  <38.140507, 37.496048, 26.629534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536808, 37.549805, 26.622143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115183, 0.761432, -0.637930,
		-0.071663, 0.634161, 0.769873,
		0.990756, 0.134392, -0.018477,
		38.834034, 37.590122, 26.616600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271824, 38.160664, 26.815722>,  <38.140507, 37.496048, 26.629534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271824, 38.160664, 26.815722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570457, 38.034790, 26.581257>,  <38.749638, 37.959267, 26.440578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570457, 38.034790, 26.581257>,  <38.271824, 38.160664, 26.815722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570457, 38.034790, 26.581257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240253, 0.694076, -0.678629,
		0.620393, 0.647482, 0.442583,
		0.746586, -0.314685, -0.586160,
		38.794434, 37.940384, 26.405409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743275, 38.794743, 26.665213>,  <38.271824, 38.160664, 26.815722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743275, 38.794743, 26.665213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799656, 38.525597, 26.374725>,  <38.833485, 38.364109, 26.200434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799656, 38.525597, 26.374725>,  <38.743275, 38.794743, 26.665213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799656, 38.525597, 26.374725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071717, 0.738553, -0.670371,
		0.987415, 0.042409, 0.152357,
		0.140953, -0.672861, -0.726217,
		38.841942, 38.323738, 26.156860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044079, 39.152187, 26.109396>,  <38.743275, 38.794743, 26.665213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044079, 39.152187, 26.109396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947578, 38.818279, 25.911425>,  <38.889679, 38.617935, 25.792641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947578, 38.818279, 25.911425>,  <39.044079, 39.152187, 26.109396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947578, 38.818279, 25.911425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112259, 0.530577, -0.840171,
		0.963947, -0.147135, -0.221715,
		-0.241255, -0.834769, -0.494930,
		38.875202, 38.567848, 25.762945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478333, 39.243397, 25.531866>,  <39.044079, 39.152187, 26.109396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478333, 39.243397, 25.531866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204586, 38.969501, 25.431643>,  <39.040340, 38.805164, 25.371508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204586, 38.969501, 25.431643>,  <39.478333, 39.243397, 25.531866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204586, 38.969501, 25.431643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239714, 0.535827, -0.809584,
		0.688613, -0.493985, -0.530841,
		-0.684361, -0.684740, -0.250562,
		38.999279, 38.764080, 25.356474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700207, 38.979454, 24.786886>,  <39.478333, 39.243397, 25.531866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700207, 38.979454, 24.786886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309654, 38.911922, 24.840801>,  <39.075321, 38.871403, 24.873150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309654, 38.911922, 24.840801>,  <39.700207, 38.979454, 24.786886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309654, 38.911922, 24.840801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209299, 0.584682, -0.783799,
		0.053519, -0.793501, -0.606211,
		-0.976386, -0.168828, 0.134787,
		39.016739, 38.861275, 24.881237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485405, 38.923164, 24.160072>,  <39.700207, 38.979454, 24.786886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485405, 38.923164, 24.160072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145008, 38.991043, 24.358875>,  <38.940769, 39.031773, 24.478157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145008, 38.991043, 24.358875>,  <39.485405, 38.923164, 24.160072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145008, 38.991043, 24.358875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380036, 0.454187, -0.805784,
		-0.362478, -0.874595, -0.322016,
		-0.850989, 0.169701, 0.497010,
		38.889709, 39.041954, 24.507978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953873, 38.664528, 23.748848>,  <39.485405, 38.923164, 24.160072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953873, 38.664528, 23.748848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803181, 38.936604, 24.000374>,  <38.712765, 39.099850, 24.151289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803181, 38.936604, 24.000374>,  <38.953873, 38.664528, 23.748848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803181, 38.936604, 24.000374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604764, 0.333594, -0.723170,
		-0.701665, -0.652726, 0.285682,
		-0.376731, 0.680194, 0.628817,
		38.690163, 39.140663, 24.189018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285351, 38.674549, 23.568880>,  <38.953873, 38.664528, 23.748848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285351, 38.674549, 23.568880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310650, 39.016571, 23.774746>,  <38.325829, 39.221783, 23.898266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310650, 39.016571, 23.774746>,  <38.285351, 38.674549, 23.568880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310650, 39.016571, 23.774746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652081, 0.425803, -0.627281,
		-0.755506, -0.295930, 0.584496,
		0.063249, 0.855054, 0.514667,
		38.329624, 39.273087, 23.929146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718964, 38.971039, 23.478632>,  <38.285351, 38.674549, 23.568880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718964, 38.971039, 23.478632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935467, 39.295609, 23.566839>,  <38.065369, 39.490353, 23.619764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935467, 39.295609, 23.566839>,  <37.718964, 38.971039, 23.478632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935467, 39.295609, 23.566839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487131, 0.516351, -0.704333,
		-0.685381, 0.273801, 0.674749,
		0.541254, 0.811428, 0.220520,
		38.097843, 39.539036, 23.632996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283607, 39.480049, 23.388262>,  <37.718964, 38.971039, 23.478632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283607, 39.480049, 23.388262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634529, 39.671772, 23.398010>,  <37.845081, 39.786808, 23.403860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634529, 39.671772, 23.398010>,  <37.283607, 39.480049, 23.388262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634529, 39.671772, 23.398010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348432, 0.671030, -0.654457,
		-0.330042, 0.565668, 0.755706,
		0.877307, 0.479310, 0.024372,
		37.897720, 39.815567, 23.405321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212128, 40.212990, 23.556456>,  <37.283607, 39.480049, 23.388262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212128, 40.212990, 23.556456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554569, 40.192741, 23.350729>,  <37.760036, 40.180592, 23.227293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554569, 40.192741, 23.350729>,  <37.212128, 40.212990, 23.556456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554569, 40.192741, 23.350729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409842, 0.539745, -0.735326,
		0.314821, 0.840305, 0.441332,
		0.856106, -0.050619, -0.514316,
		37.811401, 40.177555, 23.196434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253578, 40.902985, 23.305950>,  <37.212128, 40.212990, 23.556456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253578, 40.902985, 23.305950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475582, 40.656525, 23.082409>,  <37.608784, 40.508648, 22.948284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475582, 40.656525, 23.082409>,  <37.253578, 40.902985, 23.305950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475582, 40.656525, 23.082409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330460, 0.453224, -0.827879,
		0.763384, 0.644164, 0.047932,
		0.555014, -0.616150, -0.558855,
		37.642086, 40.471680, 22.914753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636189, 41.346592, 22.918694>,  <37.253578, 40.902985, 23.305950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636189, 41.346592, 22.918694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653225, 41.006596, 22.708662>,  <37.663448, 40.802597, 22.582644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653225, 41.006596, 22.708662>,  <37.636189, 41.346592, 22.918694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653225, 41.006596, 22.708662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310852, 0.488197, -0.815497,
		0.949503, 0.197956, -0.243426,
		0.042593, -0.849987, -0.525080,
		37.666004, 40.751598, 22.551138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.064457, 39.344940, 23.565252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.394381, 39.473808, 23.751110>,  <30.592335, 39.551128, 23.862625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.394381, 39.473808, 23.751110>,  <30.064457, 39.344940, 23.565252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394381, 39.473808, 23.751110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197785, -0.605466, 0.770904,
		0.529690, -0.727749, -0.435673,
		0.824809, 0.322170, 0.464647,
		30.641823, 39.570457, 23.890505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364155, 38.764023, 23.822796>,  <30.064457, 39.344940, 23.565252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364155, 38.764023, 23.822796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.600235, 39.029526, 24.006575>,  <30.741882, 39.188828, 24.116842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.600235, 39.029526, 24.006575>,  <30.364155, 38.764023, 23.822796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600235, 39.029526, 24.006575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206330, -0.674278, 0.709067,
		0.780444, -0.323693, -0.534912,
		0.590199, 0.663756, 0.459449,
		30.777294, 39.228653, 24.144409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071711, 38.372765, 23.987371>,  <30.364155, 38.764023, 23.822796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071711, 38.372765, 23.987371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.043964, 38.706985, 24.205379>,  <31.027317, 38.907516, 24.336184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.043964, 38.706985, 24.205379>,  <31.071711, 38.372765, 23.987371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043964, 38.706985, 24.205379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197035, -0.524098, 0.828552,
		0.977939, 0.164861, -0.128278,
		-0.069365, 0.835549, 0.545020,
		31.023155, 38.957649, 24.368885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624067, 38.418575, 24.338861>,  <31.071711, 38.372765, 23.987371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624067, 38.418575, 24.338861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.388290, 38.649113, 24.565273>,  <31.246824, 38.787434, 24.701120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.388290, 38.649113, 24.565273>,  <31.624067, 38.418575, 24.338861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388290, 38.649113, 24.565273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411325, -0.388925, 0.824348,
		0.695248, 0.718727, -0.007815,
		-0.589442, 0.576341, 0.566030,
		31.211458, 38.822014, 24.735083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994699, 38.674686, 24.951458>,  <31.624067, 38.418575, 24.338861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994699, 38.674686, 24.951458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.604113, 38.699730, 25.034010>,  <31.369761, 38.714756, 25.083542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.604113, 38.699730, 25.034010>,  <31.994699, 38.674686, 24.951458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604113, 38.699730, 25.034010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146437, -0.510063, 0.847580,
		0.158330, 0.857856, 0.488892,
		-0.976467, 0.062605, 0.206380,
		31.311172, 38.718510, 25.095924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929985, 38.920792, 25.621000>,  <31.994699, 38.674686, 24.951458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929985, 38.920792, 25.621000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.580160, 38.743340, 25.542686>,  <31.370264, 38.636868, 25.495699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.580160, 38.743340, 25.542686>,  <31.929985, 38.920792, 25.621000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580160, 38.743340, 25.542686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134800, -0.610259, 0.780649,
		-0.465797, 0.656336, 0.593512,
		-0.874564, -0.443629, -0.195783,
		31.317791, 38.610252, 25.483952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635683, 38.960369, 26.268810>,  <31.929985, 38.920792, 25.621000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635683, 38.960369, 26.268810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.410843, 38.687073, 26.082378>,  <31.275938, 38.523094, 25.970520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.410843, 38.687073, 26.082378>,  <31.635683, 38.960369, 26.268810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410843, 38.687073, 26.082378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100383, -0.615725, 0.781541,
		-0.820954, 0.392518, 0.414685,
		-0.562101, -0.683237, -0.466080,
		31.242212, 38.482101, 25.942554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126322, 38.761715, 26.832483>,  <31.635683, 38.960369, 26.268810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126322, 38.761715, 26.832483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.105356, 38.487915, 26.541634>,  <31.092777, 38.323635, 26.367125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.105356, 38.487915, 26.541634>,  <31.126322, 38.761715, 26.832483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105356, 38.487915, 26.541634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108111, -0.719957, 0.685547,
		-0.992756, 0.114541, -0.036267,
		-0.052413, -0.684502, -0.727125,
		31.089632, 38.282566, 26.323496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550312, 38.377514, 27.016447>,  <31.126322, 38.761715, 26.832483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550312, 38.377514, 27.016447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.807961, 38.169014, 26.792519>,  <30.962549, 38.043915, 26.658161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.807961, 38.169014, 26.792519>,  <30.550312, 38.377514, 27.016447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807961, 38.169014, 26.792519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125396, -0.650011, 0.749508,
		-0.754576, -0.552973, -0.353322,
		0.644120, -0.521255, -0.559823,
		31.001198, 38.012638, 26.624573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421026, 37.716103, 27.203524>,  <30.550312, 38.377514, 27.016447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421026, 37.716103, 27.203524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.759605, 37.656403, 26.999073>,  <30.962753, 37.620583, 26.876402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.759605, 37.656403, 26.999073>,  <30.421026, 37.716103, 27.203524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759605, 37.656403, 26.999073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224278, -0.770673, 0.596459,
		-0.482934, -0.619506, -0.618860,
		0.846448, -0.149253, -0.511126,
		31.013540, 37.611626, 26.845736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358534, 37.097504, 26.897860>,  <30.421026, 37.716103, 27.203524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358534, 37.097504, 26.897860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.750570, 37.168392, 26.933661>,  <30.985792, 37.210926, 26.955141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.750570, 37.168392, 26.933661>,  <30.358534, 37.097504, 26.897860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750570, 37.168392, 26.933661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051428, -0.662033, 0.747708,
		0.191762, -0.728220, -0.657969,
		0.980093, 0.177220, 0.089502,
		31.044598, 37.221558, 26.960510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764658, 36.406956, 26.915686>,  <30.358534, 37.097504, 26.897860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764658, 36.406956, 26.915686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.997231, 36.695221, 27.066727>,  <31.136774, 36.868179, 27.157352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.997231, 36.695221, 27.066727>,  <30.764658, 36.406956, 26.915686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997231, 36.695221, 27.066727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210694, -0.581657, 0.785674,
		0.785842, -0.377254, -0.490032,
		0.581429, 0.720662, 0.377605,
		31.171659, 36.911419, 27.180008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246094, 35.998119, 27.159653>,  <30.764658, 36.406956, 26.915686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246094, 35.998119, 27.159653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.290056, 36.343910, 27.355860>,  <31.316433, 36.551384, 27.473583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.290056, 36.343910, 27.355860>,  <31.246094, 35.998119, 27.159653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290056, 36.343910, 27.355860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261694, -0.501262, 0.824775,
		0.958873, 0.037719, -0.281318,
		0.109905, 0.864473, 0.490517,
		31.323029, 36.603252, 27.503016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869507, 35.921425, 27.470549>,  <31.246094, 35.998119, 27.159653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869507, 35.921425, 27.470549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.668972, 36.198978, 27.677307>,  <31.548651, 36.365513, 27.801363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.668972, 36.198978, 27.677307>,  <31.869507, 35.921425, 27.470549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668972, 36.198978, 27.677307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262836, -0.447038, 0.855029,
		0.824366, 0.564517, 0.041738,
		-0.501336, 0.693886, 0.516898,
		31.518572, 36.407143, 27.832376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618240, 35.976158, 27.351944>,  <31.869507, 35.921425, 27.470549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618240, 35.976158, 27.351944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.748158, 35.671928, 27.127075>,  <32.826107, 35.489391, 26.992155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.748158, 35.671928, 27.127075>,  <32.618240, 35.976158, 27.351944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748158, 35.671928, 27.127075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458627, 0.393180, -0.796913,
		0.827147, 0.516657, -0.221118,
		0.324791, -0.760575, -0.562171,
		32.845596, 35.443756, 26.958424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004868, 36.306797, 26.645193>,  <32.618240, 35.976158, 27.351944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004868, 36.306797, 26.645193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.895527, 35.925915, 26.590673>,  <32.829922, 35.697384, 26.557962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.895527, 35.925915, 26.590673>,  <33.004868, 36.306797, 26.645193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895527, 35.925915, 26.590673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275630, 0.213290, -0.937302,
		0.921579, -0.218645, -0.320760,
		-0.273351, -0.952209, -0.136299,
		32.813522, 35.640251, 26.549784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383163, 36.105289, 26.106174>,  <33.004868, 36.306797, 26.645193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383163, 36.105289, 26.106174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.077061, 35.850048, 26.140144>,  <32.893398, 35.696903, 26.160526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.077061, 35.850048, 26.140144>,  <33.383163, 36.105289, 26.106174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077061, 35.850048, 26.140144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299668, 0.236368, -0.924300,
		0.569724, -0.732773, -0.372100,
		-0.765254, -0.638102, 0.084924,
		32.847485, 35.658619, 26.165621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395584, 35.734383, 25.428753>,  <33.383163, 36.105289, 26.106174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395584, 35.734383, 25.428753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.033821, 35.695869, 25.595016>,  <32.816761, 35.672760, 25.694775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.033821, 35.695869, 25.595016>,  <33.395584, 35.734383, 25.428753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033821, 35.695869, 25.595016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426637, 0.215366, -0.878407,
		-0.004943, -0.971775, -0.235857,
		-0.904409, -0.096284, 0.415660,
		32.762497, 35.666985, 25.719715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069630, 35.167454, 25.063721>,  <33.395584, 35.734383, 25.428753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069630, 35.167454, 25.063721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.769226, 35.369480, 25.233849>,  <32.588985, 35.490696, 25.335924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.769226, 35.369480, 25.233849>,  <33.069630, 35.167454, 25.063721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769226, 35.369480, 25.233849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271727, 0.350662, -0.896214,
		-0.601789, -0.788636, -0.126111,
		-0.751009, 0.505064, 0.425318,
		32.543922, 35.521000, 25.361444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504375, 35.131519, 24.514519>,  <33.069630, 35.167454, 25.063721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504375, 35.131519, 24.514519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.416058, 35.443207, 24.749147>,  <32.363068, 35.630219, 24.889925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.416058, 35.443207, 24.749147>,  <32.504375, 35.131519, 24.514519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416058, 35.443207, 24.749147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409433, 0.471801, -0.780877,
		-0.885219, -0.412577, 0.214865,
		-0.220798, 0.779220, 0.586570,
		32.349819, 35.676971, 24.925117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798031, 35.422398, 24.350874>,  <32.504375, 35.131519, 24.514519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798031, 35.422398, 24.350874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.021248, 35.716888, 24.504009>,  <32.155178, 35.893581, 24.595890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.021248, 35.716888, 24.504009>,  <31.798031, 35.422398, 24.350874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021248, 35.716888, 24.504009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135519, 0.536017, -0.833259,
		-0.818673, 0.413111, 0.398892,
		0.558041, 0.736223, 0.382838,
		32.188660, 35.937756, 24.618860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413673, 35.963055, 24.147743>,  <31.798031, 35.422398, 24.350874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413673, 35.963055, 24.147743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.773626, 36.106510, 24.247013>,  <31.989597, 36.192585, 24.306574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.773626, 36.106510, 24.247013>,  <31.413673, 35.963055, 24.147743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773626, 36.106510, 24.247013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012795, 0.547072, -0.836988,
		-0.435948, 0.756365, 0.487711,
		0.899881, 0.358643, 0.248173,
		32.043591, 36.214104, 24.321465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303450, 36.678848, 24.086567>,  <31.413673, 35.963055, 24.147743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303450, 36.678848, 24.086567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.696989, 36.622246, 24.042709>,  <31.933113, 36.588284, 24.016396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.696989, 36.622246, 24.042709>,  <31.303450, 36.678848, 24.086567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696989, 36.622246, 24.042709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021961, 0.703280, -0.710574,
		0.177659, 0.696688, 0.695028,
		0.983847, -0.141503, -0.109643,
		31.992144, 36.579796, 24.009817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680008, 37.315495, 24.141911>,  <31.303450, 36.678848, 24.086567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680008, 37.315495, 24.141911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.921270, 37.083363, 23.923035>,  <32.066029, 36.944084, 23.791708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.921270, 37.083363, 23.923035>,  <31.680008, 37.315495, 24.141911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921270, 37.083363, 23.923035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022494, 0.698131, -0.715616,
		0.797306, 0.419319, 0.434136,
		0.603156, -0.580331, -0.547192,
		32.102219, 36.909264, 23.758877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124462, 37.758148, 23.864788>,  <31.680008, 37.315495, 24.141911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124462, 37.758148, 23.864788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.185909, 37.435871, 23.635960>,  <32.222778, 37.242504, 23.498663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.185909, 37.435871, 23.635960>,  <32.124462, 37.758148, 23.864788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185909, 37.435871, 23.635960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209294, 0.592337, -0.778031,
		0.965710, -0.000208, 0.259622,
		0.153622, -0.805690, -0.572069,
		32.231995, 37.194164, 23.464338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727325, 37.858898, 23.515490>,  <32.124462, 37.758148, 23.864788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727325, 37.858898, 23.515490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.566483, 37.584595, 23.272823>,  <32.469978, 37.420013, 23.127224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.566483, 37.584595, 23.272823>,  <32.727325, 37.858898, 23.515490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566483, 37.584595, 23.272823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128180, 0.613903, -0.778905,
		0.906576, -0.390965, -0.158953,
		-0.402106, -0.685762, -0.606664,
		32.445850, 37.378864, 23.090824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152821, 37.936310, 22.925365>,  <32.727325, 37.858898, 23.515490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152821, 37.936310, 22.925365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.806702, 37.759846, 22.830172>,  <32.599030, 37.653969, 22.773056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.806702, 37.759846, 22.830172>,  <33.152821, 37.936310, 22.925365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806702, 37.759846, 22.830172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107460, 0.626999, -0.771573,
		0.489603, -0.642067, -0.589948,
		-0.865299, -0.441160, -0.237984,
		32.547112, 37.627499, 22.758776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298435, 37.579430, 22.244829>,  <33.152821, 37.936310, 22.925365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298435, 37.579430, 22.244829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.908798, 37.651707, 22.299229>,  <32.675014, 37.695072, 22.331867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.908798, 37.651707, 22.299229>,  <33.298435, 37.579430, 22.244829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908798, 37.651707, 22.299229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044132, 0.437917, -0.897932,
		-0.221804, -0.880670, -0.418597,
		-0.974092, 0.180691, 0.135997,
		32.616570, 37.705914, 22.340029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294643, 37.033363, 21.647709>,  <33.298435, 37.579430, 22.244829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294643, 37.033363, 21.647709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.573277, 36.924721, 21.382078>,  <33.740456, 36.859535, 21.222700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.573277, 36.924721, 21.382078>,  <33.294643, 37.033363, 21.647709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573277, 36.924721, 21.382078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005292, -0.927494, 0.373800,
		-0.717454, -0.256870, -0.647516,
		0.696585, -0.271611, -0.664075,
		33.782253, 36.843239, 21.182856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066982, 36.469734, 21.482241>,  <33.294643, 37.033363, 21.647709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066982, 36.469734, 21.482241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.457634, 36.482025, 21.397148>,  <33.692024, 36.489399, 21.346092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.457634, 36.482025, 21.397148>,  <33.066982, 36.469734, 21.482241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457634, 36.482025, 21.397148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133639, -0.861990, 0.488993,
		-0.168346, -0.505993, -0.845949,
		0.976627, 0.030732, -0.212733,
		33.750622, 36.491245, 21.333328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272457, 35.799206, 21.322741>,  <33.066982, 36.469734, 21.482241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272457, 35.799206, 21.322741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.597790, 36.002148, 21.436638>,  <33.792992, 36.123913, 21.504976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.597790, 36.002148, 21.436638>,  <33.272457, 35.799206, 21.322741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597790, 36.002148, 21.436638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201071, -0.704385, 0.680744,
		0.545947, -0.496419, -0.674914,
		0.813334, 0.507356, 0.284741,
		33.841789, 36.154354, 21.522060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746040, 35.231598, 21.443460>,  <33.272457, 35.799206, 21.322741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746040, 35.231598, 21.443460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.935455, 35.545937, 21.602564>,  <34.049103, 35.734539, 21.698025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.935455, 35.545937, 21.602564>,  <33.746040, 35.231598, 21.443460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935455, 35.545937, 21.602564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329788, -0.576943, 0.747247,
		0.816705, -0.222671, -0.532364,
		0.473534, 0.785847, 0.397758,
		34.077515, 35.781689, 21.721891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597721, 35.106350, 21.391621>,  <33.746040, 35.231598, 21.443460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597721, 35.106350, 21.391621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.466808, 35.350525, 21.680134>,  <34.388260, 35.497032, 21.853241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.466808, 35.350525, 21.680134>,  <34.597721, 35.106350, 21.391621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466808, 35.350525, 21.680134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481297, -0.549194, 0.683184,
		0.813168, 0.570742, -0.114065,
		-0.327278, 0.610442, 0.721283,
		34.368626, 35.533657, 21.896519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037022, 34.913380, 21.921284>,  <34.597721, 35.106350, 21.391621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037022, 34.913380, 21.921284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.779060, 35.150333, 22.114441>,  <34.624283, 35.292507, 22.230335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.779060, 35.150333, 22.114441>,  <35.037022, 34.913380, 21.921284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779060, 35.150333, 22.114441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007088, -0.636445, 0.771289,
		0.764233, 0.493983, 0.414643,
		-0.644901, 0.592383, 0.482891,
		34.585590, 35.328049, 22.259308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289631, 35.230900, 22.596521>,  <35.037022, 34.913380, 21.921284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289631, 35.230900, 22.596521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.890934, 35.204311, 22.614792>,  <34.651714, 35.188358, 22.625753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.890934, 35.204311, 22.614792>,  <35.289631, 35.230900, 22.596521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890934, 35.204311, 22.614792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071999, -0.478141, 0.875327,
		-0.036344, 0.875764, 0.481369,
		-0.996742, -0.066471, 0.045677,
		34.591911, 35.184368, 22.628494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168488, 35.466454, 23.295727>,  <35.289631, 35.230900, 22.596521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168488, 35.466454, 23.295727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.846134, 35.270542, 23.162657>,  <34.652721, 35.152996, 23.082815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.846134, 35.270542, 23.162657>,  <35.168488, 35.466454, 23.295727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846134, 35.270542, 23.162657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137363, -0.391888, 0.909701,
		-0.575924, 0.778808, 0.248537,
		-0.805881, -0.489778, -0.332677,
		34.604370, 35.123608, 23.062855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724815, 35.500996, 23.827839>,  <35.168488, 35.466454, 23.295727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724815, 35.500996, 23.827839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.570599, 35.187111, 23.633694>,  <34.478069, 34.998779, 23.517206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.570599, 35.187111, 23.633694>,  <34.724815, 35.500996, 23.827839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570599, 35.187111, 23.633694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098398, -0.488064, 0.867244,
		-0.917427, 0.382120, 0.110956,
		-0.385545, -0.784715, -0.485363,
		34.454937, 34.951694, 23.488085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181335, 35.307480, 24.227221>,  <34.724815, 35.500996, 23.827839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181335, 35.307480, 24.227221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.274475, 34.978119, 24.020227>,  <34.330360, 34.780502, 23.896030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.274475, 34.978119, 24.020227>,  <34.181335, 35.307480, 24.227221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274475, 34.978119, 24.020227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124200, -0.502576, 0.855566,
		-0.964549, -0.263492, -0.014760,
		0.232853, -0.823401, -0.517484,
		34.344330, 34.731098, 23.864983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956024, 34.870163, 24.737240>,  <34.181335, 35.307480, 24.227221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956024, 34.870163, 24.737240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.186550, 34.652233, 24.493593>,  <34.324867, 34.521473, 24.347404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.186550, 34.652233, 24.493593>,  <33.956024, 34.870163, 24.737240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186550, 34.652233, 24.493593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158647, -0.656580, 0.737383,
		-0.801681, -0.521600, -0.291962,
		0.576315, -0.544827, -0.609118,
		34.359444, 34.488785, 24.310858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769180, 34.182117, 24.939653>,  <33.956024, 34.870163, 24.737240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769180, 34.182117, 24.939653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.110306, 34.162788, 24.731661>,  <34.314980, 34.151192, 24.606865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.110306, 34.162788, 24.731661>,  <33.769180, 34.182117, 24.939653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110306, 34.162788, 24.731661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372886, -0.640760, 0.671106,
		-0.365609, -0.766219, -0.528430,
		0.852811, -0.048319, -0.519980,
		34.366150, 34.148293, 24.575666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830265, 33.569023, 24.844700>,  <33.769180, 34.182117, 24.939653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830265, 33.569023, 24.844700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.196453, 33.720013, 24.788960>,  <34.416168, 33.810608, 24.755516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.196453, 33.720013, 24.788960>,  <33.830265, 33.569023, 24.844700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196453, 33.720013, 24.788960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385501, -0.723567, 0.572573,
		0.115305, -0.577895, -0.807925,
		0.915474, 0.377477, -0.139349,
		34.471096, 33.833256, 24.747154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282028, 33.006985, 24.720009>,  <33.830265, 33.569023, 24.844700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282028, 33.006985, 24.720009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.514587, 33.299370, 24.862936>,  <34.654121, 33.474800, 24.948692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.514587, 33.299370, 24.862936>,  <34.282028, 33.006985, 24.720009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514587, 33.299370, 24.862936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311934, -0.605866, 0.731863,
		0.751451, -0.314040, -0.580258,
		0.581393, 0.730962, 0.357319,
		34.689007, 33.518658, 24.970131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.999931, 41.488998, 22.207153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.784950, 41.154514, 22.163519>,  <37.655960, 40.953823, 22.137339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.784950, 41.154514, 22.163519>,  <37.999931, 41.488998, 22.207153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784950, 41.154514, 22.163519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319928, 0.321869, -0.891093,
		0.780251, -0.444020, -0.440516,
		-0.537452, -0.836209, -0.109084,
		37.623714, 40.903652, 22.130795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148819, 41.323544, 21.526848>,  <37.999931, 41.488998, 22.207153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148819, 41.323544, 21.526848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.831810, 41.101505, 21.627867>,  <37.641605, 40.968281, 21.688478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.831810, 41.101505, 21.627867>,  <38.148819, 41.323544, 21.526848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831810, 41.101505, 21.627867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461356, 0.274903, -0.843552,
		0.398830, -0.785043, -0.473964,
		-0.792518, -0.555099, 0.252545,
		37.594055, 40.934975, 21.703630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089447, 40.805885, 20.974775>,  <38.148819, 41.323544, 21.526848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089447, 40.805885, 20.974775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.728409, 40.829308, 21.145372>,  <37.511787, 40.843361, 21.247730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.728409, 40.829308, 21.145372>,  <38.089447, 40.805885, 20.974775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728409, 40.829308, 21.145372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410399, 0.182120, -0.893535,
		-0.129997, -0.981531, -0.140348,
		-0.902592, 0.058558, 0.426494,
		37.457630, 40.846874, 21.273321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540134, 40.421986, 20.523283>,  <38.089447, 40.805885, 20.974775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540134, 40.421986, 20.523283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.312073, 40.635395, 20.773169>,  <37.175236, 40.763443, 20.923100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.312073, 40.635395, 20.773169>,  <37.540134, 40.421986, 20.523283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312073, 40.635395, 20.773169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545070, 0.323277, -0.773557,
		-0.614670, -0.781563, 0.106491,
		-0.570158, 0.533527, 0.624715,
		37.141026, 40.795452, 20.960583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778278, 40.224113, 20.354773>,  <37.540134, 40.421986, 20.523283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778278, 40.224113, 20.354773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.744827, 40.567398, 20.557346>,  <36.724758, 40.773369, 20.678890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.744827, 40.567398, 20.557346>,  <36.778278, 40.224113, 20.354773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744827, 40.567398, 20.557346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539463, 0.388314, -0.747122,
		-0.837846, -0.335684, 0.430500,
		-0.083627, 0.858212, 0.506437,
		36.719738, 40.824863, 20.709278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076591, 40.385307, 20.352346>,  <36.778278, 40.224113, 20.354773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076591, 40.385307, 20.352346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.284451, 40.722347, 20.408909>,  <36.409164, 40.924572, 20.442846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.284451, 40.722347, 20.408909>,  <36.076591, 40.385307, 20.352346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284451, 40.722347, 20.408909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537686, 0.451143, -0.712295,
		-0.663973, 0.294109, 0.687488,
		0.519648, 0.842597, 0.141408,
		36.440346, 40.975128, 20.451332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585026, 40.887947, 20.430202>,  <36.076591, 40.385307, 20.352346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585026, 40.887947, 20.430202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.912727, 41.089252, 20.320263>,  <36.109348, 41.210037, 20.254299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.912727, 41.089252, 20.320263>,  <35.585026, 40.887947, 20.430202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912727, 41.089252, 20.320263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541413, 0.520955, -0.659907,
		-0.188924, 0.689441, 0.699270,
		0.819256, 0.503266, -0.274851,
		36.158504, 41.240231, 20.237808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388901, 41.549301, 20.421227>,  <35.585026, 40.887947, 20.430202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388901, 41.549301, 20.421227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.711792, 41.518124, 20.187197>,  <35.905525, 41.499416, 20.046778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.711792, 41.518124, 20.187197>,  <35.388901, 41.549301, 20.421227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711792, 41.518124, 20.187197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434248, 0.592946, -0.678118,
		0.399771, 0.801462, 0.444795,
		0.807225, -0.077941, -0.585076,
		35.953960, 41.494740, 20.011675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608173, 42.238655, 20.163422>,  <35.388901, 41.549301, 20.421227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608173, 42.238655, 20.163422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.768303, 41.999439, 19.885691>,  <35.864380, 41.855911, 19.719051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.768303, 41.999439, 19.885691>,  <35.608173, 42.238655, 20.163422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768303, 41.999439, 19.885691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358068, 0.595370, -0.719251,
		0.843520, 0.536551, 0.024205,
		0.400326, -0.598036, -0.694329,
		35.888401, 41.820030, 19.677393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749012, 42.728439, 19.615860>,  <35.608173, 42.238655, 20.163422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749012, 42.728439, 19.615860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.764011, 42.355389, 19.472309>,  <35.773010, 42.131557, 19.386179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.764011, 42.355389, 19.472309>,  <35.749012, 42.728439, 19.615860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764011, 42.355389, 19.472309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566124, 0.276115, -0.776700,
		0.823466, 0.232295, -0.517631,
		0.037498, -0.932630, -0.358879,
		35.775261, 42.075600, 19.364645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856579, 42.832745, 18.886732>,  <35.749012, 42.728439, 19.615860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856579, 42.832745, 18.886732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.750031, 42.447666, 18.905731>,  <35.686100, 42.216618, 18.917130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.750031, 42.447666, 18.905731>,  <35.856579, 42.832745, 18.886732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750031, 42.447666, 18.905731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533856, 0.106327, -0.838864,
		0.802524, -0.248804, -0.542265,
		-0.266371, -0.962700, 0.047496,
		35.670120, 42.158855, 18.919979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955471, 42.550617, 18.202497>,  <35.856579, 42.832745, 18.886732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955471, 42.550617, 18.202497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.691761, 42.334286, 18.411442>,  <35.533535, 42.204487, 18.536808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.691761, 42.334286, 18.411442>,  <35.955471, 42.550617, 18.202497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691761, 42.334286, 18.411442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662264, 0.088713, -0.744001,
		0.356039, -0.836440, -0.416659,
		-0.659275, -0.540831, 0.522358,
		35.493977, 42.172035, 18.568150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478783, 42.279549, 17.754639>,  <35.955471, 42.550617, 18.202497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478783, 42.279549, 17.754639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.273338, 42.183460, 18.084124>,  <35.150070, 42.125809, 18.281815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.273338, 42.183460, 18.084124>,  <35.478783, 42.279549, 17.754639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273338, 42.183460, 18.084124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852031, 0.256057, -0.456595,
		-0.101234, -0.936339, -0.336187,
		-0.513610, -0.240219, 0.823711,
		35.119255, 42.111393, 18.331236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933273, 41.741047, 17.634182>,  <35.478783, 42.279549, 17.754639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933273, 41.741047, 17.634182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.868530, 42.009911, 17.923182>,  <34.829685, 42.171230, 18.096581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.868530, 42.009911, 17.923182>,  <34.933273, 41.741047, 17.634182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868530, 42.009911, 17.923182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663484, 0.467838, -0.583881,
		-0.730474, -0.573870, 0.370245,
		-0.161857, 0.672161, 0.722497,
		34.819973, 42.211559, 18.139931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123234, 41.019890, 17.506926>,  <34.933273, 41.741047, 17.634182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123234, 41.019890, 17.506926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.731373, 41.029427, 17.427206>,  <34.496258, 41.035149, 17.379374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.731373, 41.029427, 17.427206>,  <35.123234, 41.019890, 17.506926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731373, 41.029427, 17.427206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124076, -0.852433, 0.507901,
		-0.157779, 0.522293, 0.838043,
		-0.979648, 0.023844, -0.199300,
		34.437477, 41.036579, 17.367416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738453, 41.088829, 18.162502>,  <35.123234, 41.019890, 17.506926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738453, 41.088829, 18.162502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528496, 40.906418, 17.875025>,  <34.402519, 40.796970, 17.702539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528496, 40.906418, 17.875025>,  <34.738453, 41.088829, 18.162502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528496, 40.906418, 17.875025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187970, -0.761410, 0.620422,
		-0.830151, 0.460750, 0.313941,
		-0.524897, -0.456032, -0.718692,
		34.371025, 40.769608, 17.659418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210125, 40.744747, 18.515993>,  <34.738453, 41.088829, 18.162502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210125, 40.744747, 18.515993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.216446, 40.552082, 18.165508>,  <34.220238, 40.436481, 17.955217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.216446, 40.552082, 18.165508>,  <34.210125, 40.744747, 18.515993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216446, 40.552082, 18.165508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401367, -0.805674, 0.435655,
		-0.915781, 0.344800, -0.206054,
		0.015799, -0.481667, -0.876212,
		34.221184, 40.407581, 17.902645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495491, 40.559929, 18.291380>,  <34.210125, 40.744747, 18.515993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495491, 40.559929, 18.291380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733746, 40.303127, 18.098278>,  <33.876698, 40.149048, 17.982418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733746, 40.303127, 18.098278>,  <33.495491, 40.559929, 18.291380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733746, 40.303127, 18.098278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399686, -0.758196, 0.515160,
		-0.696754, -0.113900, -0.708210,
		0.595639, -0.642001, -0.482752,
		33.912437, 40.110527, 17.953451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075069, 39.922405, 18.194052>,  <33.495491, 40.559929, 18.291380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075069, 39.922405, 18.194052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.464630, 39.836399, 18.164993>,  <33.698368, 39.784798, 18.147558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.464630, 39.836399, 18.164993>,  <33.075069, 39.922405, 18.194052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464630, 39.836399, 18.164993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171073, -0.905830, 0.387565,
		-0.149134, -0.365025, -0.918976,
		0.973906, -0.215011, -0.072644,
		33.756802, 39.771896, 18.143200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105816, 39.246197, 18.056993>,  <33.075069, 39.922405, 18.194052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105816, 39.246197, 18.056993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.488747, 39.297672, 18.160500>,  <33.718506, 39.328560, 18.222603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.488747, 39.297672, 18.160500>,  <33.105816, 39.246197, 18.056993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488747, 39.297672, 18.160500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010285, -0.879639, 0.475531,
		0.288816, -0.457901, -0.840780,
		0.957329, 0.128693, 0.258764,
		33.775944, 39.336281, 18.238129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285969, 38.643337, 17.905621>,  <33.105816, 39.246197, 18.056993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285969, 38.643337, 17.905621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.576221, 38.774803, 18.147427>,  <33.750374, 38.853683, 18.292509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.576221, 38.774803, 18.147427>,  <33.285969, 38.643337, 17.905621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576221, 38.774803, 18.147427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123744, -0.801895, 0.584509,
		0.676862, -0.498945, -0.541213,
		0.725634, 0.328661, 0.604514,
		33.793911, 38.873402, 18.328781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741627, 38.055473, 17.990812>,  <33.285969, 38.643337, 17.905621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741627, 38.055473, 17.990812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.802902, 38.297527, 18.303310>,  <33.839668, 38.442760, 18.490810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.802902, 38.297527, 18.303310>,  <33.741627, 38.055473, 17.990812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802902, 38.297527, 18.303310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024417, -0.792654, 0.609182,
		0.987896, -0.074242, -0.136199,
		0.153186, 0.605134, 0.781247,
		33.848858, 38.479069, 18.537685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396870, 37.807171, 18.430059>,  <33.741627, 38.055473, 17.990812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396870, 37.807171, 18.430059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.175922, 38.016319, 18.689751>,  <34.043354, 38.141808, 18.845566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.175922, 38.016319, 18.689751>,  <34.396870, 37.807171, 18.430059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175922, 38.016319, 18.689751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238695, -0.647005, 0.724161,
		0.798693, 0.554973, 0.232581,
		-0.552371, 0.522866, 0.649228,
		34.010212, 38.173180, 18.884520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780190, 37.830082, 18.990372>,  <34.396870, 37.807171, 18.430059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780190, 37.830082, 18.990372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.422657, 37.924389, 19.142935>,  <34.208138, 37.980972, 19.234472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.422657, 37.924389, 19.142935>,  <34.780190, 37.830082, 18.990372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422657, 37.924389, 19.142935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119301, -0.694904, 0.709138,
		0.432233, 0.679354, 0.593002,
		-0.893835, 0.235767, 0.381408,
		34.154507, 37.995117, 19.257357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908119, 37.921627, 19.704817>,  <34.780190, 37.830082, 18.990372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908119, 37.921627, 19.704817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.519566, 37.831528, 19.674673>,  <34.286434, 37.777470, 19.656588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.519566, 37.831528, 19.674673>,  <34.908119, 37.921627, 19.704817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519566, 37.831528, 19.674673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109750, -0.707026, 0.698620,
		-0.210642, 0.670357, 0.711514,
		-0.971383, -0.225247, -0.075358,
		34.228149, 37.763954, 19.652065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668388, 38.009666, 20.359627>,  <34.908119, 37.921627, 19.704817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668388, 38.009666, 20.359627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.338253, 37.823532, 20.231701>,  <34.140171, 37.711853, 20.154945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.338253, 37.823532, 20.231701>,  <34.668388, 38.009666, 20.359627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338253, 37.823532, 20.231701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087704, -0.453880, 0.886736,
		-0.557789, 0.759905, 0.333792,
		-0.825336, -0.465336, -0.319816,
		34.090652, 37.683929, 20.135756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137848, 38.057796, 20.900669>,  <34.668388, 38.009666, 20.359627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137848, 38.057796, 20.900669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.046124, 37.735737, 20.681889>,  <33.991089, 37.542500, 20.550621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.046124, 37.735737, 20.681889>,  <34.137848, 38.057796, 20.900669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046124, 37.735737, 20.681889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079212, -0.575496, 0.813960,
		-0.970125, 0.143322, 0.195743,
		-0.229308, -0.805148, -0.546950,
		33.977333, 37.494194, 20.517803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672112, 37.702003, 21.385904>,  <34.137848, 38.057796, 20.900669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672112, 37.702003, 21.385904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.785000, 37.439140, 21.106335>,  <33.852734, 37.281422, 20.938593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.785000, 37.439140, 21.106335>,  <33.672112, 37.702003, 21.385904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785000, 37.439140, 21.106335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033457, -0.734838, 0.677417,
		-0.958767, -0.167795, -0.229371,
		0.282218, -0.657159, -0.698924,
		33.869663, 37.241993, 20.896658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932613, 37.645920, 21.524578>,  <33.672112, 37.702003, 21.385904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932613, 37.645920, 21.524578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.645855, 37.796444, 21.759340>,  <32.473801, 37.886757, 21.900198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.645855, 37.796444, 21.759340>,  <32.932613, 37.645920, 21.524578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645855, 37.796444, 21.759340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274119, 0.621881, -0.733568,
		-0.641034, -0.686771, -0.342668,
		-0.716892, 0.376311, 0.586904,
		32.430786, 37.909336, 21.935411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341621, 37.708183, 21.093714>,  <32.932613, 37.645920, 21.524578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341621, 37.708183, 21.093714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.292255, 37.964420, 21.396873>,  <32.262638, 38.118164, 21.578770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.292255, 37.964420, 21.396873>,  <32.341621, 37.708183, 21.093714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292255, 37.964420, 21.396873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268543, 0.713684, -0.646947,
		-0.955329, -0.283370, 0.083949,
		-0.123413, 0.640591, 0.757900,
		32.255230, 38.156597, 21.624243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683882, 38.012646, 20.941181>,  <32.341621, 37.708183, 21.093714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683882, 38.012646, 20.941181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.879639, 38.275318, 21.170708>,  <31.997093, 38.432922, 21.308424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.879639, 38.275318, 21.170708>,  <31.683882, 38.012646, 20.941181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879639, 38.275318, 21.170708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472620, 0.752712, -0.458318,
		-0.732887, -0.046900, 0.678732,
		0.489394, 0.656678, 0.573818,
		32.026459, 38.472321, 21.342854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157795, 38.555416, 21.006332>,  <31.683882, 38.012646, 20.941181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157795, 38.555416, 21.006332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.504681, 38.721375, 21.116463>,  <31.712812, 38.820950, 21.182541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.504681, 38.721375, 21.116463>,  <31.157795, 38.555416, 21.006332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504681, 38.721375, 21.116463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222786, 0.817802, -0.530629,
		-0.445316, 0.398830, 0.801641,
		0.867214, 0.414892, 0.275327,
		31.764845, 38.845840, 21.199060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884333, 39.162277, 21.056391>,  <31.157795, 38.555416, 21.006332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884333, 39.162277, 21.056391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.282219, 39.199585, 21.039227>,  <31.520950, 39.221970, 21.028927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.282219, 39.199585, 21.039227>,  <30.884333, 39.162277, 21.056391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282219, 39.199585, 21.039227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100153, 0.789503, -0.605519,
		-0.022599, 0.606617, 0.794673,
		0.994715, 0.093273, -0.042913,
		31.580633, 39.227566, 21.026352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096693, 39.874813, 21.201653>,  <30.884333, 39.162277, 21.056391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096693, 39.874813, 21.201653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.410891, 39.735996, 20.996691>,  <31.599409, 39.652706, 20.873714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.410891, 39.735996, 20.996691>,  <31.096693, 39.874813, 21.201653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410891, 39.735996, 20.996691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018010, 0.814801, -0.579461,
		0.618607, 0.464391, 0.633772,
		0.785494, -0.347044, -0.512405,
		31.646540, 39.631882, 20.842970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718342, 40.344452, 21.240316>,  <31.096693, 39.874813, 21.201653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718342, 40.344452, 21.240316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.780697, 40.132626, 20.906786>,  <31.818110, 40.005531, 20.706669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.780697, 40.132626, 20.906786>,  <31.718342, 40.344452, 21.240316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780697, 40.132626, 20.906786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144050, 0.847308, -0.511194,
		0.977214, -0.040423, 0.208370,
		0.155890, -0.529562, -0.833824,
		31.827463, 39.973759, 20.656639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143169, 40.882980, 21.619698>,  <31.718342, 40.344452, 21.240316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143169, 40.882980, 21.619698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.810867, 41.081829, 21.719864>,  <31.611485, 41.201138, 21.779963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.810867, 41.081829, 21.719864>,  <32.143169, 40.882980, 21.619698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810867, 41.081829, 21.719864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128172, -0.608626, 0.783037,
		0.541676, 0.618418, 0.569338,
		-0.830758, 0.497125, 0.250414,
		31.561640, 41.230968, 21.794989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094727, 40.975426, 22.370113>,  <32.143169, 40.882980, 21.619698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094727, 40.975426, 22.370113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.713217, 41.050892, 22.276548>,  <31.484310, 41.096172, 22.220409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.713217, 41.050892, 22.276548>,  <32.094727, 40.975426, 22.370113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713217, 41.050892, 22.276548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299713, -0.540477, 0.786166,
		0.021897, 0.819934, 0.572040,
		-0.953778, 0.188663, -0.233910,
		31.427084, 41.107491, 22.206375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789391, 41.253433, 22.899960>,  <32.094727, 40.975426, 22.370113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789391, 41.253433, 22.899960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.487026, 41.086002, 22.698605>,  <31.305609, 40.985546, 22.577791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.487026, 41.086002, 22.698605>,  <31.789391, 41.253433, 22.899960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487026, 41.086002, 22.698605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296379, -0.466806, 0.833217,
		-0.583747, 0.779029, 0.228807,
		-0.755909, -0.418574, -0.503385,
		31.260254, 40.960430, 22.547588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201883, 41.265530, 23.316166>,  <31.789391, 41.253433, 22.899960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201883, 41.265530, 23.316166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.050829, 40.998749, 23.059240>,  <30.960197, 40.838680, 22.905085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.050829, 40.998749, 23.059240>,  <31.201883, 41.265530, 23.316166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050829, 40.998749, 23.059240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192843, -0.621817, 0.759049,
		-0.905651, 0.410509, 0.106202,
		-0.377634, -0.666954, -0.642313,
		30.937538, 40.798664, 22.866547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589680, 41.126694, 23.600142>,  <31.201883, 41.265530, 23.316166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589680, 41.126694, 23.600142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.655890, 40.823254, 23.348070>,  <30.695616, 40.641190, 23.196827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.655890, 40.823254, 23.348070>,  <30.589680, 41.126694, 23.600142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655890, 40.823254, 23.348070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491757, -0.617375, 0.614023,
		-0.854855, 0.208257, -0.475239,
		0.165526, -0.758602, -0.630178,
		30.705547, 40.595673, 23.159018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122200, 40.707134, 23.803280>,  <30.589680, 41.126694, 23.600142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122200, 40.707134, 23.803280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.394333, 40.484127, 23.612988>,  <30.557613, 40.350323, 23.498812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.394333, 40.484127, 23.612988>,  <30.122200, 40.707134, 23.803280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394333, 40.484127, 23.612988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153227, -0.742959, 0.651563,
		-0.716703, -0.370388, -0.590889,
		0.680337, -0.557517, -0.475727,
		30.598433, 40.316872, 23.470268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901037, 40.023979, 23.810347>,  <30.122200, 40.707134, 23.803280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901037, 40.023979, 23.810347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.297764, 40.007072, 23.762161>,  <30.535801, 39.996929, 23.733250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.297764, 40.007072, 23.762161>,  <29.901037, 40.023979, 23.810347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297764, 40.007072, 23.762161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039128, -0.797569, 0.601958,
		-0.121520, -0.601746, -0.789389,
		0.991818, -0.042263, -0.120466,
		30.595308, 39.994392, 23.726021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.243664, 43.337410, 20.200516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.530510, 43.080410, 20.092485>,  <33.702618, 42.926208, 20.027668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.530510, 43.080410, 20.092485>,  <33.243664, 43.337410, 20.200516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530510, 43.080410, 20.092485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013047, -0.375062, 0.926908,
		-0.696834, -0.668222, -0.260580,
		0.717114, -0.642501, -0.270074,
		33.745644, 42.887661, 20.011463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018272, 42.798805, 20.636795>,  <33.243664, 43.337410, 20.200516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018272, 42.798805, 20.636795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.390358, 42.711163, 20.519026>,  <33.613609, 42.658577, 20.448364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.390358, 42.711163, 20.519026>,  <33.018272, 42.798805, 20.636795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390358, 42.711163, 20.519026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129802, -0.553969, 0.822356,
		-0.343286, -0.803188, -0.486871,
		0.930218, -0.219107, -0.294425,
		33.669422, 42.645432, 20.430698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146042, 42.090042, 20.849527>,  <33.018272, 42.798805, 20.636795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146042, 42.090042, 20.849527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.518456, 42.191532, 20.744604>,  <33.741901, 42.252426, 20.681650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.518456, 42.191532, 20.744604>,  <33.146042, 42.090042, 20.849527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518456, 42.191532, 20.744604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349875, -0.416205, 0.839262,
		0.103766, -0.873154, -0.476272,
		0.931032, 0.253723, -0.262307,
		33.797764, 42.267651, 20.665913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540722, 41.546928, 21.031431>,  <33.146042, 42.090042, 20.849527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540722, 41.546928, 21.031431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.811417, 41.840462, 21.007711>,  <33.973835, 42.016582, 20.993481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.811417, 41.840462, 21.007711>,  <33.540722, 41.546928, 21.031431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811417, 41.840462, 21.007711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448310, -0.346862, 0.823836,
		0.583988, -0.584106, -0.563719,
		0.676740, 0.733831, -0.059297,
		34.014439, 42.060612, 20.989922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216740, 41.169132, 20.981714>,  <33.540722, 41.546928, 21.031431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216740, 41.169132, 20.981714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.300739, 41.541092, 21.102497>,  <34.351139, 41.764267, 21.174967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.300739, 41.541092, 21.102497>,  <34.216740, 41.169132, 20.981714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300739, 41.541092, 21.102497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517029, -0.367751, 0.772942,
		0.829807, -0.006197, -0.558016,
		0.210001, 0.929904, 0.301958,
		34.363739, 41.820065, 21.193085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892227, 41.184025, 21.159374>,  <34.216740, 41.169132, 20.981714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892227, 41.184025, 21.159374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.749729, 41.512554, 21.337593>,  <34.664230, 41.709671, 21.444525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.749729, 41.512554, 21.337593>,  <34.892227, 41.184025, 21.159374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749729, 41.512554, 21.337593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576643, -0.181953, 0.796477,
		0.735237, 0.540662, -0.408793,
		-0.356244, 0.821327, 0.445548,
		34.642857, 41.758953, 21.471258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477566, 41.484238, 21.390257>,  <34.892227, 41.184025, 21.159374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477566, 41.484238, 21.390257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.182804, 41.646652, 21.606441>,  <35.005947, 41.744102, 21.736153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.182804, 41.646652, 21.606441>,  <35.477566, 41.484238, 21.390257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182804, 41.646652, 21.606441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531484, -0.146038, 0.834384,
		0.417720, 0.902111, -0.108187,
		-0.736908, 0.406039, 0.540461,
		34.961731, 41.768463, 21.768579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840843, 41.995262, 21.915232>,  <35.477566, 41.484238, 21.390257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840843, 41.995262, 21.915232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.489807, 41.876179, 22.065544>,  <35.279186, 41.804729, 22.155731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.489807, 41.876179, 22.065544>,  <35.840843, 41.995262, 21.915232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489807, 41.876179, 22.065544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449664, -0.239314, 0.860541,
		-0.166258, 0.924176, 0.343886,
		-0.877588, -0.297705, 0.375780,
		35.226532, 41.786869, 22.178278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800770, 42.252529, 22.544336>,  <35.840843, 41.995262, 21.915232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800770, 42.252529, 22.544336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.490456, 42.002197, 22.576553>,  <35.304268, 41.851997, 22.595882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.490456, 42.002197, 22.576553>,  <35.800770, 42.252529, 22.544336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490456, 42.002197, 22.576553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211983, -0.138270, 0.967442,
		-0.594321, 0.767603, 0.239934,
		-0.775787, -0.625834, 0.080541,
		35.257721, 41.814445, 22.600716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436234, 42.460342, 23.046913>,  <35.800770, 42.252529, 22.544336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436234, 42.460342, 23.046913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.339863, 42.073772, 23.011192>,  <35.282040, 41.841831, 22.989759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.339863, 42.073772, 23.011192>,  <35.436234, 42.460342, 23.046913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339863, 42.073772, 23.011192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117531, -0.120386, 0.985745,
		-0.963401, 0.226993, 0.142589,
		-0.240923, -0.966427, -0.089301,
		35.267586, 41.783844, 22.984402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843269, 42.343445, 23.524744>,  <35.436234, 42.460342, 23.046913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843269, 42.343445, 23.524744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.021679, 41.994617, 23.444189>,  <35.128723, 41.785320, 23.395855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.021679, 41.994617, 23.444189>,  <34.843269, 42.343445, 23.524744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021679, 41.994617, 23.444189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121497, -0.163934, 0.978961,
		-0.886738, -0.461104, 0.032836,
		0.446019, -0.872072, -0.201389,
		35.155483, 41.732994, 23.383772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503986, 41.816612, 23.927717>,  <34.843269, 42.343445, 23.524744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503986, 41.816612, 23.927717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.866749, 41.673870, 23.838114>,  <35.084404, 41.588226, 23.784351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.866749, 41.673870, 23.838114>,  <34.503986, 41.816612, 23.927717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866749, 41.673870, 23.838114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099580, -0.335067, 0.936917,
		-0.409403, -0.872000, -0.268338,
		0.906903, -0.356856, -0.224011,
		35.138821, 41.566814, 23.770910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125954, 41.597569, 24.443056>,  <34.503986, 41.816612, 23.927717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125954, 41.597569, 24.443056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.996387, 41.817238, 24.751207>,  <33.918648, 41.949039, 24.936098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.996387, 41.817238, 24.751207>,  <34.125954, 41.597569, 24.443056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996387, 41.817238, 24.751207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290933, 0.717002, -0.633456,
		-0.900241, -0.429316, -0.072477,
		-0.323919, 0.549177, 0.770377,
		33.899212, 41.981991, 24.982321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421379, 41.773521, 24.348200>,  <34.125954, 41.597569, 24.443056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421379, 41.773521, 24.348200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.576134, 42.055397, 24.586100>,  <33.668987, 42.224522, 24.728840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.576134, 42.055397, 24.586100>,  <33.421379, 41.773521, 24.348200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576134, 42.055397, 24.586100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281095, 0.704408, -0.651763,
		-0.878239, 0.084977, 0.470612,
		0.386888, 0.704690, 0.594752,
		33.692200, 42.266804, 24.764524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999756, 42.293289, 24.413845>,  <33.421379, 41.773521, 24.348200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999756, 42.293289, 24.413845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.335835, 42.490952, 24.503180>,  <33.537483, 42.609550, 24.556780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.335835, 42.490952, 24.503180>,  <32.999756, 42.293289, 24.413845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335835, 42.490952, 24.503180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279081, 0.747144, -0.603233,
		-0.464954, 0.444506, 0.765658,
		0.840197, 0.494156, 0.223334,
		33.587894, 42.639198, 24.570179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832874, 43.044773, 24.484478>,  <32.999756, 42.293289, 24.413845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832874, 43.044773, 24.484478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.229321, 43.056881, 24.432684>,  <33.467190, 43.064144, 24.401608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.229321, 43.056881, 24.432684>,  <32.832874, 43.044773, 24.484478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229321, 43.056881, 24.432684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097375, 0.828341, -0.551698,
		0.090558, 0.559407, 0.823932,
		0.991119, 0.030270, -0.129485,
		33.526657, 43.065960, 24.393839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904148, 43.737427, 24.417339>,  <32.832874, 43.044773, 24.484478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904148, 43.737427, 24.417339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.246593, 43.591930, 24.270500>,  <33.452061, 43.504635, 24.182396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.246593, 43.591930, 24.270500>,  <32.904148, 43.737427, 24.417339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246593, 43.591930, 24.270500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024492, 0.738111, -0.674234,
		0.516203, 0.568232, 0.640818,
		0.856116, -0.363737, -0.367098,
		33.503429, 43.482811, 24.160372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329914, 44.192146, 24.490456>,  <32.904148, 43.737427, 24.417339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329914, 44.192146, 24.490456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.468323, 43.968861, 24.188814>,  <33.551369, 43.834888, 24.007830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.468323, 43.968861, 24.188814>,  <33.329914, 44.192146, 24.490456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468323, 43.968861, 24.188814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018566, 0.807670, -0.589343,
		0.938043, 0.189924, 0.289834,
		0.346020, -0.558210, -0.754103,
		33.572128, 43.801399, 23.962584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471256, 44.684994, 24.038815>,  <33.329914, 44.192146, 24.490456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471256, 44.684994, 24.038815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.519100, 44.357101, 23.814766>,  <33.547806, 44.160366, 23.680336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.519100, 44.357101, 23.814766>,  <33.471256, 44.684994, 24.038815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519100, 44.357101, 23.814766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033103, 0.567150, -0.822949,
		0.992269, 0.079891, 0.094973,
		0.119610, -0.819731, -0.560121,
		33.554985, 44.111183, 23.646730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995514, 44.858864, 23.596819>,  <33.471256, 44.684994, 24.038815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995514, 44.858864, 23.596819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.790829, 44.563324, 23.421432>,  <33.668018, 44.386002, 23.316200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.790829, 44.563324, 23.421432>,  <33.995514, 44.858864, 23.596819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790829, 44.563324, 23.421432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104378, 0.560028, -0.821872,
		0.852793, -0.374796, -0.363694,
		-0.511713, -0.738848, -0.438467,
		33.637314, 44.341671, 23.289892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259579, 44.710335, 22.927755>,  <33.995514, 44.858864, 23.596819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259579, 44.710335, 22.927755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.892307, 44.556183, 22.891018>,  <33.671944, 44.463692, 22.868975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.892307, 44.556183, 22.891018>,  <34.259579, 44.710335, 22.927755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892307, 44.556183, 22.891018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097591, 0.444705, -0.890344,
		0.383964, -0.808530, -0.445928,
		-0.918176, -0.385379, -0.091845,
		33.616856, 44.440571, 22.863464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177845, 44.415962, 22.140562>,  <34.259579, 44.710335, 22.927755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177845, 44.415962, 22.140562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.813580, 44.448357, 22.302618>,  <33.595020, 44.467793, 22.399851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.813580, 44.448357, 22.302618>,  <34.177845, 44.415962, 22.140562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813580, 44.448357, 22.302618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372413, 0.263705, -0.889814,
		-0.178898, -0.961198, -0.209986,
		-0.910661, 0.080985, 0.405139,
		33.540382, 44.472652, 22.424160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607502, 44.221954, 21.625835>,  <34.177845, 44.415962, 22.140562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607502, 44.221954, 21.625835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.423553, 44.453602, 21.895098>,  <33.313183, 44.592590, 22.056656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.423553, 44.453602, 21.895098>,  <33.607502, 44.221954, 21.625835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423553, 44.453602, 21.895098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364713, 0.567999, -0.737808,
		-0.809630, -0.584807, -0.049996,
		-0.459873, 0.579118, 0.673157,
		33.285591, 44.627338, 22.097044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845158, 44.349812, 21.342529>,  <33.607502, 44.221954, 21.625835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845158, 44.349812, 21.342529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.947075, 44.643368, 21.594398>,  <33.008224, 44.819500, 21.745520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.947075, 44.643368, 21.594398>,  <32.845158, 44.349812, 21.342529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947075, 44.643368, 21.594398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507900, 0.655679, -0.558679,
		-0.822872, -0.177465, 0.539803,
		0.254791, 0.733888, 0.629674,
		33.023514, 44.863533, 21.783300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329998, 44.824959, 21.215790>,  <32.845158, 44.349812, 21.342529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329998, 44.824959, 21.215790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.579098, 45.036209, 21.446709>,  <32.728558, 45.162960, 21.585260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.579098, 45.036209, 21.446709>,  <32.329998, 44.824959, 21.215790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579098, 45.036209, 21.446709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334027, 0.846668, -0.414221,
		-0.707538, 0.065122, 0.703668,
		0.622748, 0.528122, 0.577298,
		32.765923, 45.194645, 21.619898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953316, 44.524250, 21.790497>,  <32.329998, 44.824959, 21.215790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953316, 44.524250, 21.790497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.712126, 44.464500, 21.477037>,  <31.567411, 44.428650, 21.288961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.712126, 44.464500, 21.477037>,  <31.953316, 44.524250, 21.790497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712126, 44.464500, 21.477037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076472, -0.966966, 0.243162,
		-0.794086, 0.206548, 0.571634,
		-0.602975, -0.149378, -0.783650,
		31.531233, 44.419685, 21.241943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374079, 44.202137, 22.049614>,  <31.953316, 44.524250, 21.790497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374079, 44.202137, 22.049614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.347795, 44.123779, 21.658245>,  <31.332026, 44.076763, 21.423424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.347795, 44.123779, 21.658245>,  <31.374079, 44.202137, 22.049614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347795, 44.123779, 21.658245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271972, -0.939899, 0.206449,
		-0.960059, 0.279668, 0.008481,
		-0.065709, -0.195897, -0.978420,
		31.328083, 44.065010, 21.364719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884695, 43.700573, 21.929222>,  <31.374079, 44.202137, 22.049614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884695, 43.700573, 21.929222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.111185, 43.673485, 21.600637>,  <31.247080, 43.657234, 21.403486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.111185, 43.673485, 21.600637>,  <30.884695, 43.700573, 21.929222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111185, 43.673485, 21.600637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015888, -0.997331, 0.071262,
		-0.824096, -0.027299, -0.565792,
		0.566227, -0.067716, -0.821463,
		31.281054, 43.653172, 21.354198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583334, 43.179104, 21.529140>,  <30.884695, 43.700573, 21.929222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583334, 43.179104, 21.529140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.956388, 43.179470, 21.384815>,  <31.180222, 43.179688, 21.298220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.956388, 43.179470, 21.384815>,  <30.583334, 43.179104, 21.529140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956388, 43.179470, 21.384815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027877, -0.996825, -0.074578,
		-0.359737, 0.079613, -0.929651,
		0.932637, 0.000913, -0.360815,
		31.236179, 43.179745, 21.276571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568821, 42.745968, 20.937502>,  <30.583334, 43.179104, 21.529140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568821, 42.745968, 20.937502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.951828, 42.768890, 21.050550>,  <31.181633, 42.782646, 21.118380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.951828, 42.768890, 21.050550>,  <30.568821, 42.745968, 20.937502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951828, 42.768890, 21.050550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025208, -0.992936, 0.115942,
		0.287271, -0.103892, -0.952199,
		0.957518, 0.057310, 0.282623,
		31.239082, 42.786083, 21.135338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990570, 42.242947, 20.537052>,  <30.568821, 42.745968, 20.937502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990570, 42.242947, 20.537052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.180990, 42.315716, 20.881210>,  <31.295242, 42.359379, 21.087706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.180990, 42.315716, 20.881210>,  <30.990570, 42.242947, 20.537052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180990, 42.315716, 20.881210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097668, -0.983253, 0.153866,
		0.873979, 0.010785, -0.485845,
		0.476049, 0.181927, 0.860395,
		31.323805, 42.370293, 21.139328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390293, 41.631359, 20.554445>,  <30.990570, 42.242947, 20.537052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390293, 41.631359, 20.554445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.413040, 41.804077, 20.914515>,  <31.426689, 41.907707, 21.130556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.413040, 41.804077, 20.914515>,  <31.390293, 41.631359, 20.554445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413040, 41.804077, 20.914515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000234, -0.901640, 0.432487,
		0.998382, -0.024384, -0.051377,
		0.056870, 0.431800, 0.900175,
		31.430101, 41.933617, 21.184566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746132, 41.122223, 20.915138>,  <31.390293, 41.631359, 20.554445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746132, 41.122223, 20.915138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.606594, 41.360828, 21.204268>,  <31.522871, 41.503990, 21.377747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.606594, 41.360828, 21.204268>,  <31.746132, 41.122223, 20.915138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606594, 41.360828, 21.204268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096469, -0.790036, 0.605423,
		0.932201, 0.141469, 0.333147,
		-0.348847, 0.596514, 0.722825,
		31.501940, 41.539783, 21.421116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335060, 40.671844, 20.877779>,  <31.746132, 41.122223, 20.915138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335060, 40.671844, 20.877779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.195431, 40.439377, 20.583736>,  <32.111652, 40.299896, 20.407310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.195431, 40.439377, 20.583736>,  <32.335060, 40.671844, 20.877779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195431, 40.439377, 20.583736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287921, 0.679993, -0.674322,
		0.891767, -0.447042, -0.070037,
		-0.349075, -0.581173, -0.735108,
		32.090710, 40.265026, 20.363203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882816, 40.488354, 20.437847>,  <32.335060, 40.671844, 20.877779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882816, 40.488354, 20.437847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.543919, 40.465702, 20.226580>,  <32.340580, 40.452110, 20.099819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.543919, 40.465702, 20.226580>,  <32.882816, 40.488354, 20.437847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543919, 40.465702, 20.226580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348957, 0.690326, -0.633782,
		0.400497, -0.721279, -0.565118,
		-0.847249, -0.056626, -0.528169,
		32.289745, 40.448715, 20.068129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028912, 40.284149, 19.805838>,  <32.882816, 40.488354, 20.437847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028912, 40.284149, 19.805838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.671638, 40.459972, 19.767872>,  <32.457275, 40.565468, 19.745092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.671638, 40.459972, 19.767872>,  <33.028912, 40.284149, 19.805838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671638, 40.459972, 19.767872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319305, 0.471301, -0.822143,
		-0.316649, -0.764632, -0.561313,
		-0.893184, 0.439560, -0.094914,
		32.403683, 40.591839, 19.739397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917500, 40.294899, 19.033766>,  <33.028912, 40.284149, 19.805838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917500, 40.294899, 19.033766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.638721, 40.552803, 19.159332>,  <32.471455, 40.707546, 19.234673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.638721, 40.552803, 19.159332>,  <32.917500, 40.294899, 19.033766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638721, 40.552803, 19.159332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259257, 0.634676, -0.727992,
		-0.668619, -0.425987, -0.609495,
		-0.696947, 0.644765, 0.313916,
		32.429638, 40.746231, 19.253508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571239, 40.540813, 18.505600>,  <32.917500, 40.294899, 19.033766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571239, 40.540813, 18.505600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.500057, 40.826115, 18.776777>,  <32.457348, 40.997295, 18.939484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.500057, 40.826115, 18.776777>,  <32.571239, 40.540813, 18.505600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500057, 40.826115, 18.776777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277318, 0.697363, -0.660893,
		-0.944154, 0.070397, -0.321895,
		-0.177953, 0.713252, 0.677941,
		32.446671, 41.040089, 18.980160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059784, 41.045315, 18.167925>,  <32.571239, 40.540813, 18.505600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059784, 41.045315, 18.167925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.251549, 41.215282, 18.475069>,  <32.366608, 41.317265, 18.659355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.251549, 41.215282, 18.475069>,  <32.059784, 41.045315, 18.167925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251549, 41.215282, 18.475069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249488, 0.772869, -0.583463,
		-0.841381, 0.471290, 0.264508,
		0.479410, 0.424923, 0.767858,
		32.395370, 41.342758, 18.705427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052822, 41.792957, 18.037443>,  <32.059784, 41.045315, 18.167925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052822, 41.792957, 18.037443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.339520, 41.787800, 18.316330>,  <32.511539, 41.784706, 18.483662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.339520, 41.787800, 18.316330>,  <32.052822, 41.792957, 18.037443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339520, 41.787800, 18.316330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325150, 0.890667, -0.317788,
		-0.616894, 0.454474, 0.642570,
		0.716742, -0.012890, 0.697219,
		32.554543, 41.783932, 18.525496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066311, 42.466492, 18.400925>,  <32.052822, 41.792957, 18.037443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066311, 42.466492, 18.400925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.426010, 42.293560, 18.427580>,  <32.641830, 42.189800, 18.443573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.426010, 42.293560, 18.427580>,  <32.066311, 42.466492, 18.400925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426010, 42.293560, 18.427580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425909, 0.830582, -0.358796,
		0.099769, 0.351029, 0.931034,
		0.899249, -0.432332, 0.066640,
		32.695786, 42.163860, 18.447573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320747, 43.031910, 18.728334>,  <32.066311, 42.466492, 18.400925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320747, 43.031910, 18.728334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.615906, 42.797832, 18.593838>,  <32.792999, 42.657387, 18.513140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.615906, 42.797832, 18.593838>,  <32.320747, 43.031910, 18.728334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615906, 42.797832, 18.593838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480622, 0.805380, -0.346936,
		0.473828, 0.094397, 0.875544,
		0.737895, -0.585194, -0.336242,
		32.837273, 42.622276, 18.492966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.217342, 32.829353, 30.731537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.454159, 32.995068, 30.455029>,  <35.596249, 33.094498, 30.289124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.454159, 32.995068, 30.455029>,  <35.217342, 32.829353, 30.731537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454159, 32.995068, 30.455029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767940, 0.550190, -0.327962,
		0.244460, 0.725021, 0.643881,
		0.592037, 0.414288, -0.691272,
		35.631771, 33.119354, 30.247646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235619, 33.699764, 30.685699>,  <35.217342, 32.829353, 30.731537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235619, 33.699764, 30.685699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.353767, 33.568031, 30.326969>,  <35.424656, 33.488991, 30.111731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.353767, 33.568031, 30.326969>,  <35.235619, 33.699764, 30.685699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353767, 33.568031, 30.326969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527216, 0.726650, -0.440480,
		0.796744, 0.602925, 0.040999,
		0.295368, -0.329335, -0.896826,
		35.442379, 33.469231, 30.057922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320236, 34.304909, 30.241438>,  <35.235619, 33.699764, 30.685699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320236, 34.304909, 30.241438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278374, 33.988434, 30.000418>,  <35.253258, 33.798550, 29.855804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278374, 33.988434, 30.000418>,  <35.320236, 34.304909, 30.241438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278374, 33.988434, 30.000418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550867, 0.550558, -0.627241,
		0.828006, 0.266283, -0.493458,
		-0.104653, -0.791189, -0.602551,
		35.246979, 33.751076, 29.819653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561932, 34.558353, 29.488813>,  <35.320236, 34.304909, 30.241438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561932, 34.558353, 29.488813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318180, 34.245403, 29.437355>,  <35.171928, 34.057632, 29.406481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318180, 34.245403, 29.437355>,  <35.561932, 34.558353, 29.488813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318180, 34.245403, 29.437355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455008, 0.477945, -0.751357,
		0.649326, -0.399326, -0.647236,
		-0.609379, -0.782373, -0.128645,
		35.135365, 34.010693, 29.398762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446766, 34.612766, 28.789846>,  <35.561932, 34.558353, 29.488813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446766, 34.612766, 28.789846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.187336, 34.338829, 28.922722>,  <35.031677, 34.174469, 29.002447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.187336, 34.338829, 28.922722>,  <35.446766, 34.612766, 28.789846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187336, 34.338829, 28.922722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601495, 0.193706, -0.775037,
		0.466428, -0.702477, -0.537559,
		-0.648574, -0.684839, 0.332187,
		34.992764, 34.133377, 29.022379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279316, 34.153736, 28.228783>,  <35.446766, 34.612766, 28.789846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279316, 34.153736, 28.228783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.973427, 34.127190, 28.485155>,  <34.789894, 34.111259, 28.638979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.973427, 34.127190, 28.485155>,  <35.279316, 34.153736, 28.228783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973427, 34.127190, 28.485155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640081, -0.036168, -0.767455,
		0.074120, -0.997139, -0.014826,
		-0.764723, -0.066374, 0.640931,
		34.744011, 34.107277, 28.677435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781593, 33.709343, 27.933191>,  <35.279316, 34.153736, 28.228783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781593, 33.709343, 27.933191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.586254, 33.926174, 28.206738>,  <34.469051, 34.056271, 28.370865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.586254, 33.926174, 28.206738>,  <34.781593, 33.709343, 27.933191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586254, 33.926174, 28.206738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662162, 0.280242, -0.694986,
		-0.568383, -0.792224, 0.222087,
		-0.488346, 0.542076, 0.683865,
		34.439751, 34.088799, 28.411898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142853, 33.512562, 27.894583>,  <34.781593, 33.709343, 27.933191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142853, 33.512562, 27.894583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.112850, 33.877724, 28.055073>,  <34.094849, 34.096821, 28.151367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.112850, 33.877724, 28.055073>,  <34.142853, 33.512562, 27.894583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112850, 33.877724, 28.055073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537501, 0.301892, -0.787372,
		-0.839921, -0.274712, 0.468045,
		-0.075002, 0.912904, 0.401224,
		34.090351, 34.151596, 28.175440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451225, 33.695911, 27.720011>,  <34.142853, 33.512562, 27.894583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451225, 33.695911, 27.720011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630001, 34.037998, 27.824963>,  <33.737267, 34.243252, 27.887934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630001, 34.037998, 27.824963>,  <33.451225, 33.695911, 27.720011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630001, 34.037998, 27.824963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525334, 0.488325, -0.696824,
		-0.724063, 0.173604, 0.667529,
		0.446942, 0.855220, 0.262378,
		33.764084, 34.294563, 27.903675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937332, 34.118866, 27.833138>,  <33.451225, 33.695911, 27.720011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937332, 34.118866, 27.833138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.226154, 34.392727, 27.793379>,  <33.399448, 34.557045, 27.769524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.226154, 34.392727, 27.793379>,  <32.937332, 34.118866, 27.833138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226154, 34.392727, 27.793379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587914, 0.531498, -0.609809,
		-0.364681, 0.498754, 0.786291,
		0.722057, 0.684657, -0.099397,
		33.442772, 34.598125, 27.763559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662579, 34.776184, 28.027954>,  <32.937332, 34.118866, 27.833138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662579, 34.776184, 28.027954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.947941, 34.815266, 27.750391>,  <33.119160, 34.838715, 27.583853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.947941, 34.815266, 27.750391>,  <32.662579, 34.776184, 28.027954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947941, 34.815266, 27.750391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614626, 0.562870, -0.552641,
		0.336583, 0.820750, 0.461607,
		0.713405, 0.097706, -0.693907,
		33.161961, 34.844578, 27.542219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529053, 35.419373, 27.794052>,  <32.662579, 34.776184, 28.027954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529053, 35.419373, 27.794052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.776192, 35.303200, 27.501776>,  <32.924477, 35.233498, 27.326410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.776192, 35.303200, 27.501776>,  <32.529053, 35.419373, 27.794052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776192, 35.303200, 27.501776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535667, 0.524808, -0.661542,
		0.575606, 0.800141, 0.168677,
		0.617850, -0.290432, -0.730692,
		32.961548, 35.216068, 27.282568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413513, 36.053024, 28.032925>,  <32.529053, 35.419373, 27.794052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413513, 36.053024, 28.032925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060837, 36.205402, 28.144279>,  <31.849232, 36.296829, 28.211092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060837, 36.205402, 28.144279>,  <32.413513, 36.053024, 28.032925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060837, 36.205402, 28.144279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157216, -0.319102, 0.934589,
		0.444864, 0.867786, 0.221459,
		-0.881691, 0.380948, 0.278387,
		31.796329, 36.319687, 28.227795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564384, 36.446918, 28.519524>,  <32.413513, 36.053024, 28.032925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564384, 36.446918, 28.519524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.177959, 36.365391, 28.583004>,  <31.946104, 36.316475, 28.621092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.177959, 36.365391, 28.583004>,  <32.564384, 36.446918, 28.519524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177959, 36.365391, 28.583004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206711, -0.241521, 0.948124,
		-0.154912, 0.948750, 0.275454,
		-0.966060, -0.203815, 0.158703,
		31.888142, 36.304245, 28.630615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554272, 36.667934, 29.098322>,  <32.564384, 36.446918, 28.519524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554272, 36.667934, 29.098322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.231728, 36.433491, 29.066677>,  <32.038200, 36.292824, 29.047691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.231728, 36.433491, 29.066677>,  <32.554272, 36.667934, 29.098322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231728, 36.433491, 29.066677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061767, -0.216489, 0.974329,
		-0.588188, 0.780776, 0.210770,
		-0.806362, -0.586107, -0.079110,
		31.989819, 36.257660, 29.042944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142170, 36.725143, 29.676579>,  <32.554272, 36.667934, 29.098322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142170, 36.725143, 29.676579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033325, 36.375069, 29.516577>,  <31.968018, 36.165024, 29.420576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033325, 36.375069, 29.516577>,  <32.142170, 36.725143, 29.676579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033325, 36.375069, 29.516577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102939, -0.439779, 0.892187,
		-0.956743, 0.201601, 0.209760,
		-0.272114, -0.875187, -0.400003,
		31.951691, 36.112514, 29.396576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727591, 36.433716, 30.164118>,  <32.142170, 36.725143, 29.676579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727591, 36.433716, 30.164118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858046, 36.126690, 29.943398>,  <31.936319, 35.942474, 29.810965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858046, 36.126690, 29.943398>,  <31.727591, 36.433716, 30.164118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858046, 36.126690, 29.943398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230369, -0.501587, 0.833871,
		-0.916823, -0.399074, 0.013236,
		0.326138, -0.767562, -0.551801,
		31.955887, 35.896423, 29.777857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476151, 35.799160, 30.469839>,  <31.727591, 36.433716, 30.164118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476151, 35.799160, 30.469839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.754032, 35.640644, 30.229727>,  <31.920761, 35.545536, 30.085659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.754032, 35.640644, 30.229727>,  <31.476151, 35.799160, 30.469839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754032, 35.640644, 30.229727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207392, -0.688746, 0.694706,
		-0.688746, -0.607111, -0.396289,
		-0.694706, 0.396289, 0.600282,
		31.962444, 35.521759, 30.049643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422291, 35.108387, 30.588087>,  <31.476151, 35.799160, 30.469839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422291, 35.108387, 30.588087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.788960, 35.129360, 30.429613>,  <32.008961, 35.141945, 30.334530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.788960, 35.129360, 30.429613>,  <31.422291, 35.108387, 30.588087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788960, 35.129360, 30.429613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377932, -0.436003, 0.816743,
		-0.129913, -0.898417, -0.419488,
		0.916673, 0.052433, -0.396183,
		32.063961, 35.145088, 30.310759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697702, 34.473801, 30.714834>,  <31.422291, 35.108387, 30.588087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697702, 34.473801, 30.714834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.027050, 34.685173, 30.632057>,  <32.224659, 34.811996, 30.582392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.027050, 34.685173, 30.632057>,  <31.697702, 34.473801, 30.714834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027050, 34.685173, 30.632057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520238, -0.557113, 0.647285,
		0.226759, -0.640611, -0.733620,
		0.823367, 0.528435, -0.206940,
		32.274059, 34.843704, 30.569975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217781, 34.002468, 30.494022>,  <31.697702, 34.473801, 30.714834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217781, 34.002468, 30.494022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.438358, 34.322575, 30.588234>,  <32.570705, 34.514641, 30.644762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.438358, 34.322575, 30.588234>,  <32.217781, 34.002468, 30.494022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438358, 34.322575, 30.588234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510423, -0.547002, 0.663518,
		0.659830, -0.245674, -0.710119,
		0.551446, 0.800270, 0.235530,
		32.603790, 34.562656, 30.658894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904106, 33.863037, 30.377026>,  <32.217781, 34.002468, 30.494022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904106, 33.863037, 30.377026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.883095, 34.157719, 30.646694>,  <32.870487, 34.334526, 30.808496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.883095, 34.157719, 30.646694>,  <32.904106, 33.863037, 30.377026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883095, 34.157719, 30.646694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574565, -0.529874, 0.623786,
		0.816772, 0.420121, -0.395452,
		-0.052526, 0.736704, 0.674173,
		32.867336, 34.378731, 30.848946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564571, 33.987690, 30.561445>,  <32.904106, 33.863037, 30.377026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564571, 33.987690, 30.561445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369411, 34.141315, 30.874990>,  <33.252316, 34.233490, 31.063118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369411, 34.141315, 30.874990>,  <33.564571, 33.987690, 30.561445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369411, 34.141315, 30.874990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651327, -0.437672, 0.619852,
		0.581141, 0.812979, -0.036613,
		-0.487903, 0.384068, 0.783864,
		33.223042, 34.256535, 31.110149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150940, 34.269123, 31.020721>,  <33.564571, 33.987690, 30.561445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150940, 34.269123, 31.020721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803162, 34.218449, 31.211725>,  <33.594494, 34.188046, 31.326326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803162, 34.218449, 31.211725>,  <34.150940, 34.269123, 31.020721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803162, 34.218449, 31.211725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490642, -0.334384, 0.804647,
		0.057733, 0.933883, 0.352887,
		-0.869446, -0.126687, 0.477507,
		33.542328, 34.180443, 31.354977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299892, 34.543575, 31.736427>,  <34.150940, 34.269123, 31.020721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299892, 34.543575, 31.736427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.960571, 34.347939, 31.817595>,  <33.756977, 34.230556, 31.866295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.960571, 34.347939, 31.817595>,  <34.299892, 34.543575, 31.736427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960571, 34.347939, 31.817595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401775, -0.344907, 0.848302,
		-0.344907, 0.801144, 0.489089,
		-0.848302, -0.489089, 0.202919,
		33.706081, 34.201210, 31.878469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110176, 34.690693, 32.385715>,  <34.299892, 34.543575, 31.736427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110176, 34.690693, 32.385715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955357, 34.338028, 32.277740>,  <33.862465, 34.126427, 32.212955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955357, 34.338028, 32.277740>,  <34.110176, 34.690693, 32.385715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955357, 34.338028, 32.277740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436663, -0.433106, 0.788508,
		-0.812109, 0.187318, 0.552621,
		-0.387045, -0.881664, -0.269934,
		33.839245, 34.073528, 32.196762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799240, 34.749870, 32.724747>,  <34.110176, 34.690693, 32.385715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799240, 34.749870, 32.724747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992226, 34.956181, 33.007931>,  <35.108017, 35.079967, 33.177841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992226, 34.956181, 33.007931>,  <34.799240, 34.749870, 32.724747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992226, 34.956181, 33.007931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188727, 0.728056, -0.659027,
		-0.855343, 0.451568, 0.253920,
		0.482464, 0.515772, 0.707960,
		35.136963, 35.110912, 33.220318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486603, 35.473747, 32.905628>,  <34.799240, 34.749870, 32.724747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486603, 35.473747, 32.905628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.883724, 35.479649, 32.953167>,  <35.121998, 35.483189, 32.981689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.883724, 35.479649, 32.953167>,  <34.486603, 35.473747, 32.905628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883724, 35.479649, 32.953167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066842, 0.755141, -0.652145,
		-0.099369, 0.655396, 0.748720,
		0.992803, 0.014757, 0.118845,
		35.181564, 35.484077, 32.988819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720139, 36.228870, 33.013855>,  <34.486603, 35.473747, 32.905628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720139, 36.228870, 33.013855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.002613, 36.000320, 32.846600>,  <35.172096, 35.863190, 32.746246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.002613, 36.000320, 32.846600>,  <34.720139, 36.228870, 33.013855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002613, 36.000320, 32.846600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102252, 0.666676, -0.738301,
		0.700605, 0.478622, 0.529220,
		0.706185, -0.571371, -0.418136,
		35.214470, 35.828911, 32.721157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271286, 36.732464, 32.726189>,  <34.720139, 36.228870, 33.013855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271286, 36.732464, 32.726189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.249641, 36.377697, 32.542690>,  <35.236652, 36.164837, 32.432590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.249641, 36.377697, 32.542690>,  <35.271286, 36.732464, 32.726189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249641, 36.377697, 32.542690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097611, 0.461914, -0.881537,
		0.993752, -0.002926, -0.111569,
		-0.054115, -0.886919, -0.458743,
		35.233406, 36.111622, 32.405067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730335, 36.739738, 32.165432>,  <35.271286, 36.732464, 32.726189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730335, 36.739738, 32.165432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.465122, 36.451591, 32.083981>,  <35.305996, 36.278702, 32.035110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.465122, 36.451591, 32.083981>,  <35.730335, 36.739738, 32.165432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465122, 36.451591, 32.083981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238086, 0.460815, -0.854965,
		0.709724, -0.518384, -0.477043,
		-0.663028, -0.720366, -0.203631,
		35.266212, 36.235481, 32.022892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862053, 36.606213, 31.462364>,  <35.730335, 36.739738, 32.165432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862053, 36.606213, 31.462364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.505604, 36.449863, 31.554562>,  <35.291737, 36.356056, 31.609880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.505604, 36.449863, 31.554562>,  <35.862053, 36.606213, 31.462364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505604, 36.449863, 31.554562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397523, 0.427491, -0.811928,
		0.218823, -0.815151, -0.536325,
		-0.891118, -0.390870, 0.230496,
		35.238270, 36.332603, 31.623711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608631, 36.249657, 30.917490>,  <35.862053, 36.606213, 31.462364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608631, 36.249657, 30.917490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271252, 36.341160, 31.111916>,  <35.068825, 36.396061, 31.228571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271252, 36.341160, 31.111916>,  <35.608631, 36.249657, 30.917490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271252, 36.341160, 31.111916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385335, 0.372805, -0.844117,
		-0.374306, -0.899270, -0.226295,
		-0.843452, 0.228759, 0.486063,
		35.018215, 36.409786, 31.257734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008812, 36.123322, 30.386110>,  <35.608631, 36.249657, 30.917490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008812, 36.123322, 30.386110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.813972, 36.303722, 30.685265>,  <34.697071, 36.411964, 30.864758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.813972, 36.303722, 30.685265>,  <35.008812, 36.123322, 30.386110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813972, 36.303722, 30.685265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668032, 0.359200, -0.651697,
		-0.562558, -0.817051, 0.126319,
		-0.487096, 0.451002, 0.747887,
		34.667843, 36.439022, 30.909630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156124, 35.995361, 30.468508>,  <35.008812, 36.123322, 30.386110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156124, 35.995361, 30.468508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266140, 36.352932, 30.610069>,  <34.332150, 36.567474, 30.695005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266140, 36.352932, 30.610069>,  <34.156124, 35.995361, 30.468508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266140, 36.352932, 30.610069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669621, 0.442248, -0.596678,
		-0.689900, -0.072870, 0.720228,
		0.275040, 0.893927, 0.353902,
		34.348652, 36.621109, 30.716240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693638, 36.461880, 30.190880>,  <34.156124, 35.995361, 30.468508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693638, 36.461880, 30.190880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.886162, 36.739338, 30.405241>,  <34.001678, 36.905815, 30.533857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.886162, 36.739338, 30.405241>,  <33.693638, 36.461880, 30.190880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886162, 36.739338, 30.405241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479794, 0.720139, -0.501196,
		-0.733577, -0.015889, 0.679421,
		0.481314, 0.693648, 0.535901,
		34.030556, 36.947433, 30.566011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131363, 36.970474, 30.495588>,  <33.693638, 36.461880, 30.190880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131363, 36.970474, 30.495588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490173, 37.133858, 30.428051>,  <33.705460, 37.231888, 30.387527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490173, 37.133858, 30.428051>,  <33.131363, 36.970474, 30.495588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490173, 37.133858, 30.428051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413230, 0.639530, -0.648261,
		-0.156806, 0.651278, 0.742462,
		0.897025, 0.408458, -0.168845,
		33.759281, 37.256393, 30.377398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180538, 37.547867, 30.811045>,  <33.131363, 36.970474, 30.495588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180538, 37.547867, 30.811045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429749, 37.568935, 30.498875>,  <33.579273, 37.581577, 30.311573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429749, 37.568935, 30.498875>,  <33.180538, 37.547867, 30.811045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429749, 37.568935, 30.498875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508069, 0.785852, -0.352565,
		0.594729, 0.616167, 0.516367,
		0.623027, 0.052669, -0.780425,
		33.616657, 37.584736, 30.264748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058853, 38.162766, 30.479298>,  <33.180538, 37.547867, 30.811045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058853, 38.162766, 30.479298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.322998, 38.029072, 30.210310>,  <33.481483, 37.948856, 30.048918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.322998, 38.029072, 30.210310>,  <33.058853, 38.162766, 30.479298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322998, 38.029072, 30.210310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264150, 0.734878, -0.624643,
		0.702960, 0.590121, 0.396995,
		0.660358, -0.334233, -0.672470,
		33.521107, 37.928802, 30.008570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484634, 38.687660, 30.320438>,  <33.058853, 38.162766, 30.479298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484634, 38.687660, 30.320438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.500744, 38.430607, 30.014393>,  <33.510410, 38.276375, 29.830767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.500744, 38.430607, 30.014393>,  <33.484634, 38.687660, 30.320438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500744, 38.430607, 30.014393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107079, 0.758547, -0.642760,
		0.993434, 0.107817, -0.038260,
		0.040278, -0.642637, -0.765112,
		33.512829, 38.237816, 29.784859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058739, 38.862907, 29.898457>,  <33.484634, 38.687660, 30.320438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058739, 38.862907, 29.898457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826748, 38.656803, 29.646065>,  <33.687553, 38.533142, 29.494629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826748, 38.656803, 29.646065>,  <34.058739, 38.862907, 29.898457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826748, 38.656803, 29.646065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161658, 0.686357, -0.709070,
		0.798434, -0.513245, -0.314773,
		-0.579974, -0.515260, -0.630982,
		33.652756, 38.502224, 29.456770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451912, 38.774654, 29.232832>,  <34.058739, 38.862907, 29.898457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451912, 38.774654, 29.232832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.073349, 38.700165, 29.127275>,  <33.846210, 38.655472, 29.063942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.073349, 38.700165, 29.127275>,  <34.451912, 38.774654, 29.232832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073349, 38.700165, 29.127275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089029, 0.634970, -0.767390,
		0.310470, -0.749755, -0.584359,
		-0.946405, -0.186226, -0.263889,
		33.789429, 38.644299, 29.048109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470188, 38.516945, 28.565237>,  <34.451912, 38.774654, 29.232832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470188, 38.516945, 28.565237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115959, 38.683392, 28.647812>,  <33.903423, 38.783260, 28.697357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115959, 38.683392, 28.647812>,  <34.470188, 38.516945, 28.565237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115959, 38.683392, 28.647812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083158, 0.579265, -0.810887,
		-0.457004, -0.700929, -0.547582,
		-0.885569, 0.416114, 0.206439,
		33.850288, 38.808228, 28.709743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257290, 38.637676, 27.819836>,  <34.470188, 38.516945, 28.565237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257290, 38.637676, 27.819836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.998135, 38.854332, 28.034079>,  <33.842644, 38.984325, 28.162624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.998135, 38.854332, 28.034079>,  <34.257290, 38.637676, 27.819836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998135, 38.854332, 28.034079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037717, 0.679464, -0.732739,
		-0.760804, -0.494932, -0.419785,
		-0.647884, 0.541638, 0.535606,
		33.803768, 39.016823, 28.194761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760487, 38.743305, 27.355612>,  <34.257290, 38.637676, 27.819836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760487, 38.743305, 27.355612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.718235, 39.014072, 27.646988>,  <33.692883, 39.176533, 27.821814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.718235, 39.014072, 27.646988>,  <33.760487, 38.743305, 27.355612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718235, 39.014072, 27.646988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160319, 0.711365, -0.684294,
		-0.981397, -0.189064, 0.033382,
		-0.105629, 0.676916, 0.728442,
		33.686546, 39.217148, 27.865520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071774, 39.085793, 27.203428>,  <33.760487, 38.743305, 27.355612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071774, 39.085793, 27.203428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.312748, 39.319908, 27.420502>,  <33.457333, 39.460377, 27.550745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.312748, 39.319908, 27.420502>,  <33.071774, 39.085793, 27.203428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312748, 39.319908, 27.420502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103866, 0.731619, -0.673755,
		-0.791377, 0.349531, 0.501549,
		0.602441, 0.585288, 0.542682,
		33.493481, 39.495495, 27.583305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847885, 39.817722, 27.284885>,  <33.071774, 39.085793, 27.203428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847885, 39.817722, 27.284885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.232368, 39.876205, 27.378431>,  <33.463058, 39.911297, 27.434559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.232368, 39.876205, 27.378431>,  <32.847885, 39.817722, 27.284885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232368, 39.876205, 27.378431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007510, 0.861484, -0.507729,
		-0.275709, 0.486279, 0.829167,
		0.961212, 0.146212, 0.233867,
		33.520733, 39.920071, 27.448591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872654, 40.519371, 27.285126>,  <32.847885, 39.817722, 27.284885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872654, 40.519371, 27.285126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.262295, 40.434227, 27.254597>,  <33.496078, 40.383141, 27.236279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.262295, 40.434227, 27.254597>,  <32.872654, 40.519371, 27.285126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262295, 40.434227, 27.254597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139315, 0.830772, -0.538897,
		0.178115, 0.514305, 0.838907,
		0.974098, -0.212858, -0.076322,
		33.554523, 40.370369, 27.231701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239532, 41.129494, 27.312067>,  <32.872654, 40.519371, 27.285126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239532, 41.129494, 27.312067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493675, 40.882206, 27.126972>,  <33.646160, 40.733833, 27.015915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.493675, 40.882206, 27.126972>,  <33.239532, 41.129494, 27.312067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493675, 40.882206, 27.126972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072792, 0.644510, -0.761123,
		0.768781, 0.449900, 0.454495,
		0.635356, -0.618220, -0.462738,
		33.684280, 40.696739, 26.988152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855289, 41.522331, 27.217760>,  <33.239532, 41.129494, 27.312067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855289, 41.522331, 27.217760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878525, 41.227451, 26.948490>,  <33.892464, 41.050522, 26.786928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878525, 41.227451, 26.948490>,  <33.855289, 41.522331, 27.217760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878525, 41.227451, 26.948490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334264, 0.649753, -0.682707,
		0.940688, -0.185363, 0.284160,
		0.058085, -0.737198, -0.673175,
		33.895950, 41.006290, 26.746538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574100, 41.548405, 26.970572>,  <33.855289, 41.522331, 27.217760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574100, 41.548405, 26.970572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.346069, 41.354687, 26.705097>,  <34.209251, 41.238457, 26.545813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.346069, 41.354687, 26.705097>,  <34.574100, 41.548405, 26.970572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346069, 41.354687, 26.705097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262001, 0.658468, -0.705532,
		0.778697, -0.576093, -0.248492,
		-0.570076, -0.484290, -0.663684,
		34.175045, 41.209400, 26.505993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931755, 41.805668, 26.364054>,  <34.574100, 41.548405, 26.970572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931755, 41.805668, 26.364054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584961, 41.631187, 26.267670>,  <34.376884, 41.526497, 26.209839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584961, 41.631187, 26.267670>,  <34.931755, 41.805668, 26.364054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584961, 41.631187, 26.267670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018268, 0.511022, -0.859373,
		0.497987, -0.740668, -0.451021,
		-0.866992, -0.436196, -0.240952,
		34.324863, 41.500324, 26.195383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995037, 41.673660, 25.665722>,  <34.931755, 41.805668, 26.364054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995037, 41.673660, 25.665722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.595390, 41.665550, 25.680483>,  <34.355602, 41.660683, 25.689341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.595390, 41.665550, 25.680483>,  <34.995037, 41.673660, 25.665722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595390, 41.665550, 25.680483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042092, 0.455304, -0.889340,
		0.001232, -0.890105, -0.455754,
		-0.999113, -0.020279, 0.036905,
		34.295658, 41.659466, 25.691555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686550, 41.425808, 25.003845>,  <34.995037, 41.673660, 25.665722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686550, 41.425808, 25.003845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.365200, 41.595352, 25.171146>,  <34.172390, 41.697079, 25.271526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.365200, 41.595352, 25.171146>,  <34.686550, 41.425808, 25.003845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365200, 41.595352, 25.171146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176285, 0.501609, -0.846943,
		-0.568785, -0.754142, -0.328258,
		-0.803372, 0.423861, 0.418252,
		34.124187, 41.722511, 25.296621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622906, 41.057045, 24.320023>,  <34.686550, 41.425808, 25.003845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622906, 41.057045, 24.320023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994053, 41.180916, 24.236912>,  <35.216740, 41.255238, 24.187044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994053, 41.180916, 24.236912>,  <34.622906, 41.057045, 24.320023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994053, 41.180916, 24.236912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345462, -0.503935, 0.791647,
		0.140445, -0.806320, -0.574563,
		0.927864, 0.309673, -0.207778,
		35.272411, 41.273819, 24.174578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978989, 40.487949, 24.443262>,  <34.622906, 41.057045, 24.320023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978989, 40.487949, 24.443262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.264858, 40.767685, 24.438055>,  <35.436382, 40.935524, 24.434931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.264858, 40.767685, 24.438055>,  <34.978989, 40.487949, 24.443262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264858, 40.767685, 24.438055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420786, -0.415002, 0.806667,
		0.558729, -0.581983, -0.590862,
		0.714676, 0.699335, -0.013017,
		35.479259, 40.977486, 24.434151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605350, 40.097607, 24.389414>,  <34.978989, 40.487949, 24.443262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605350, 40.097607, 24.389414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690819, 40.462624, 24.528902>,  <35.742100, 40.681633, 24.612595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690819, 40.462624, 24.528902>,  <35.605350, 40.097607, 24.389414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690819, 40.462624, 24.528902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536350, -0.407937, 0.738861,
		0.816500, 0.029160, -0.576609,
		0.213675, 0.912544, 0.348721,
		35.754921, 40.736385, 24.633518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445503, 40.091328, 24.472721>,  <35.605350, 40.097607, 24.389414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445503, 40.091328, 24.472721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302784, 40.396912, 24.687780>,  <36.217152, 40.580261, 24.816816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302784, 40.396912, 24.687780>,  <36.445503, 40.091328, 24.472721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302784, 40.396912, 24.687780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399748, -0.395318, 0.826998,
		0.844332, 0.509995, -0.164341,
		-0.356798, 0.763956, 0.537649,
		36.195744, 40.626099, 24.849075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069073, 40.521290, 24.700565>,  <36.445503, 40.091328, 24.472721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069073, 40.521290, 24.700565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.759262, 40.577801, 24.947191>,  <36.573376, 40.611706, 25.095167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.759262, 40.577801, 24.947191>,  <37.069073, 40.521290, 24.700565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759262, 40.577801, 24.947191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537125, -0.367911, 0.759037,
		0.334074, 0.919066, 0.209074,
		-0.774526, 0.141275, 0.616563,
		36.526905, 40.620182, 25.132160>
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
