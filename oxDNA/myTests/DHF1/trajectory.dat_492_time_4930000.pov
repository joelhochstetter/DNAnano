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
	<3.852531, 6.344049, 0.361687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.796735, 6.121414, 0.689285>,  <3.763257, 5.987833, 0.885844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.796735, 6.121414, 0.689285>,  <3.852531, 6.344049, 0.361687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.796735, 6.121414, 0.689285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061906, -0.820563, -0.568194,
		0.988286, -0.129958, 0.080004,
		-0.139490, -0.556585, 0.818996,
		3.754888, 5.954439, 0.934984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.438242, 5.853948, 0.557577>,  <3.852531, 6.344049, 0.361687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.438242, 5.853948, 0.557577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.063025, 5.743073, 0.640755>,  <3.837894, 5.676548, 0.690661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.063025, 5.743073, 0.640755>,  <4.438242, 5.853948, 0.557577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.063025, 5.743073, 0.640755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130440, -0.838420, -0.529186,
		0.321029, -0.469275, 0.822630,
		-0.938044, -0.277188, 0.207945,
		3.781611, 5.659916, 0.703138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.441699, 5.209012, 0.788358>,  <4.438242, 5.853948, 0.557577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.441699, 5.209012, 0.788358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.065796, 5.253876, 0.659191>,  <3.840254, 5.280794, 0.581691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.065796, 5.253876, 0.659191>,  <4.441699, 5.209012, 0.788358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.065796, 5.253876, 0.659191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059327, -0.876793, -0.477194,
		-0.336653, -0.467604, 0.817319,
		-0.939758, 0.112160, -0.322917,
		3.783869, 5.287524, 0.562316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.060486, 4.712462, 1.083935>,  <4.441699, 5.209012, 0.788358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.060486, 4.712462, 1.083935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.880025, 4.793480, 0.736271>,  <3.771749, 4.842091, 0.527673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.880025, 4.793480, 0.736271>,  <4.060486, 4.712462, 1.083935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.880025, 4.793480, 0.736271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134008, -0.947489, -0.290357,
		-0.882328, -0.247469, 0.400320,
		-0.451153, 0.202544, -0.869159,
		3.744680, 4.854243, 0.475523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.585541, 4.100849, 1.057238>,  <4.060486, 4.712462, 1.083935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.585541, 4.100849, 1.057238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.616699, 4.274395, 0.698196>,  <3.635393, 4.378523, 0.482771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.616699, 4.274395, 0.698196>,  <3.585541, 4.100849, 1.057238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.616699, 4.274395, 0.698196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109681, -0.898604, -0.424831,
		-0.990910, -0.065359, -0.117582,
		0.077893, 0.433866, -0.897604,
		3.640066, 4.404555, 0.428915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.033047, 3.930301, 0.619542>,  <3.585541, 4.100849, 1.057238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.033047, 3.930301, 0.619542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.344506, 4.013435, 0.382725>,  <3.531381, 4.063316, 0.240635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.344506, 4.013435, 0.382725>,  <3.033047, 3.930301, 0.619542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.344506, 4.013435, 0.382725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002901, -0.942347, -0.334624,
		-0.627456, 0.262271, -0.733152,
		0.778647, 0.207835, -0.592042,
		3.578100, 4.075786, 0.205112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.725785, 3.686174, 0.017608>,  <3.033047, 3.930301, 0.619542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.725785, 3.686174, 0.017608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.117177, 3.734535, -0.049278>,  <3.352012, 3.763552, -0.089410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.117177, 3.734535, -0.049278>,  <2.725785, 3.686174, 0.017608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.117177, 3.734535, -0.049278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026273, -0.876768, -0.480195,
		-0.204667, 0.465467, -0.861076,
		0.978479, 0.120904, -0.167216,
		3.410720, 3.770806, -0.099443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.888256, 3.514679, -0.682679>,  <2.725785, 3.686174, 0.017608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.888256, 3.514679, -0.682679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.239003, 3.477787, -0.493958>,  <3.449451, 3.455652, -0.380725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.239003, 3.477787, -0.493958>,  <2.888256, 3.514679, -0.682679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.239003, 3.477787, -0.493958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043339, -0.962261, -0.268655,
		0.478777, 0.256022, -0.839777,
		0.876866, -0.092231, 0.471804,
		3.502063, 3.450118, -0.352416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.000617, 2.597759, 4.695391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.339561, 2.389446, 4.736893>,  <3.542928, 2.264459, 4.761794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.339561, 2.389446, 4.736893>,  <3.000617, 2.597759, 4.695391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.339561, 2.389446, 4.736893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530704, 0.837241, -0.131836,
		-0.018210, 0.166775, 0.985827,
		0.847362, -0.520781, 0.103755,
		3.593770, 2.233212, 4.768019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.363875, 2.674601, 5.349449>,  <3.000617, 2.597759, 4.695391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.363875, 2.674601, 5.349449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.621117, 2.606030, 5.050911>,  <3.775462, 2.564886, 4.871789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.621117, 2.606030, 5.050911>,  <3.363875, 2.674601, 5.349449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.621117, 2.606030, 5.050911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267327, 0.963564, 0.009025,
		0.717602, -0.205321, 0.665499,
		0.643104, -0.171430, -0.746344,
		3.814048, 2.554601, 4.827008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.033515, 2.944519, 5.535640>,  <3.363875, 2.674601, 5.349449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.033515, 2.944519, 5.535640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.998520, 2.923409, 5.137733>,  <3.977523, 2.910743, 4.898990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.998520, 2.923409, 5.137733>,  <4.033515, 2.944519, 5.535640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.998520, 2.923409, 5.137733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160465, 0.984808, -0.066359,
		0.983157, -0.165430, -0.077686,
		-0.087484, -0.052776, -0.994767,
		3.972274, 2.907576, 4.839303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.670434, 3.227965, 5.190026>,  <4.033515, 2.944519, 5.535640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.670434, 3.227965, 5.190026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.305103, 3.279655, 5.035553>,  <4.085905, 3.310670, 4.942869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.305103, 3.279655, 5.035553>,  <4.670434, 3.227965, 5.190026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.305103, 3.279655, 5.035553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064474, 0.982241, 0.176198,
		0.402092, 0.136028, -0.905438,
		-0.913326, 0.129225, -0.386181,
		4.031106, 3.318423, 4.919699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.742984, 3.753247, 4.693402>,  <4.670434, 3.227965, 5.190026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.742984, 3.753247, 4.693402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.349552, 3.744366, 4.765045>,  <4.113493, 3.739037, 4.808031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.349552, 3.744366, 4.765045>,  <4.742984, 3.753247, 4.693402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.349552, 3.744366, 4.765045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017665, 0.999482, 0.026899,
		-0.179613, 0.023293, -0.983462,
		-0.983579, -0.022204, 0.179109,
		4.054479, 3.737705, 4.818778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.455715, 4.320529, 4.311278>,  <4.742984, 3.753247, 4.693402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.455715, 4.320529, 4.311278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.192097, 4.273121, 4.608360>,  <4.033926, 4.244676, 4.786610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.192097, 4.273121, 4.608360>,  <4.455715, 4.320529, 4.311278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.192097, 4.273121, 4.608360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066846, 0.992828, 0.099121,
		-0.749127, 0.015678, -0.662241,
		-0.659046, -0.118522, 0.742706,
		3.994383, 4.237564, 4.831172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.903226, 4.796978, 4.175268>,  <4.455715, 4.320529, 4.311278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.903226, 4.796978, 4.175268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.814693, 4.700748, 4.553291>,  <3.761574, 4.643010, 4.780106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.814693, 4.700748, 4.553291>,  <3.903226, 4.796978, 4.175268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.814693, 4.700748, 4.553291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268088, 0.946766, 0.178224,
		-0.937626, -0.213912, -0.274044,
		-0.221332, -0.240575, 0.945059,
		3.748294, 4.628576, 4.836809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.161981, 5.068127, 4.337460>,  <3.903226, 4.796978, 4.175268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.161981, 5.068127, 4.337460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.326328, 4.999676, 4.695656>,  <3.424937, 4.958605, 4.910573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.326328, 4.999676, 4.695656>,  <3.161981, 5.068127, 4.337460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.326328, 4.999676, 4.695656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440112, 0.822969, 0.359199,
		-0.798429, -0.541700, 0.262816,
		0.410867, -0.171127, 0.895491,
		3.449589, 4.948338, 4.964303>
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
