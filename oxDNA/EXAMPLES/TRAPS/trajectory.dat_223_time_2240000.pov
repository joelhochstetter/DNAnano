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
	<36.446419, 53.211815, 50.377037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457851, 53.584469, 50.232132>,  <36.464710, 53.808064, 50.145187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457851, 53.584469, 50.232132>,  <36.446419, 53.211815, 50.377037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457851, 53.584469, 50.232132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993943, -0.064957, -0.088639,
		-0.106111, -0.357536, -0.927851,
		0.028579, 0.931638, -0.362263,
		36.466427, 53.863960, 50.123451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808132, 53.248405, 49.713882>,  <36.446419, 53.211815, 50.377037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808132, 53.248405, 49.713882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844673, 53.551109, 49.972794>,  <36.866596, 53.732731, 50.128139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844673, 53.551109, 49.972794>,  <36.808132, 53.248405, 49.713882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844673, 53.551109, 49.972794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992856, -0.119318, -0.000626,
		0.076759, 0.642713, -0.762252,
		0.091353, 0.756758, 0.647281,
		36.872078, 53.778137, 50.166977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391388, 53.570148, 49.532101>,  <36.808132, 53.248405, 49.713882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391388, 53.570148, 49.532101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356201, 53.603184, 49.929180>,  <37.335091, 53.623005, 50.167427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356201, 53.603184, 49.929180>,  <37.391388, 53.570148, 49.532101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356201, 53.603184, 49.929180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992753, -0.074641, 0.094179,
		0.081874, 0.993785, -0.075424,
		-0.087964, 0.082588, 0.992694,
		37.329811, 53.627960, 50.226990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692127, 54.141327, 49.773636>,  <37.391388, 53.570148, 49.532101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692127, 54.141327, 49.773636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738083, 53.809830, 49.992718>,  <37.765656, 53.610931, 50.124168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738083, 53.809830, 49.992718>,  <37.692127, 54.141327, 49.773636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738083, 53.809830, 49.992718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973372, -0.016181, -0.228661,
		0.198364, 0.559392, 0.804818,
		0.114888, -0.828745, 0.547706,
		37.772549, 53.561207, 50.157028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227989, 54.012638, 50.155235>,  <37.692127, 54.141327, 49.773636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227989, 54.012638, 50.155235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205166, 53.613289, 50.155300>,  <38.191471, 53.373680, 50.155338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205166, 53.613289, 50.155300>,  <38.227989, 54.012638, 50.155235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205166, 53.613289, 50.155300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984955, -0.056319, -0.163378,
		0.163121, -0.009160, 0.986563,
		-0.057059, -0.998371, 0.000165,
		38.188049, 53.313778, 50.155350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872612, 53.621376, 50.474949>,  <38.227989, 54.012638, 50.155235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872612, 53.621376, 50.474949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678776, 53.374931, 50.226570>,  <38.562473, 53.227062, 50.077541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678776, 53.374931, 50.226570>,  <38.872612, 53.621376, 50.474949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678776, 53.374931, 50.226570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848019, -0.156770, -0.506248,
		0.214562, -0.771896, 0.598447,
		-0.484590, -0.616116, -0.620946,
		38.533398, 53.190098, 50.040287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049530, 52.873486, 50.586452>,  <38.872612, 53.621376, 50.474949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049530, 52.873486, 50.586452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963165, 53.037170, 50.231842>,  <38.911346, 53.135380, 50.019077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963165, 53.037170, 50.231842>,  <39.049530, 52.873486, 50.586452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963165, 53.037170, 50.231842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964171, -0.053962, -0.259732,
		-0.154124, -0.910844, -0.382895,
		-0.215914, 0.409208, -0.886527,
		38.898392, 53.159931, 49.965885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341423, 52.408974, 50.015060>,  <39.049530, 52.873486, 50.586452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341423, 52.408974, 50.015060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325573, 52.791908, 49.900566>,  <39.316063, 53.021671, 49.831871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325573, 52.791908, 49.900566>,  <39.341423, 52.408974, 50.015060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325573, 52.791908, 49.900566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943678, -0.058318, -0.325685,
		-0.328484, -0.283016, -0.901110,
		-0.039623, 0.957340, -0.286233,
		39.313686, 53.079109, 49.814697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441383, 52.574451, 49.247311>,  <39.341423, 52.408974, 50.015060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441383, 52.574451, 49.247311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590874, 52.853561, 49.491749>,  <39.680569, 53.021027, 49.638412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590874, 52.853561, 49.491749>,  <39.441383, 52.574451, 49.247311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590874, 52.853561, 49.491749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913307, -0.161863, -0.373727,
		-0.161863, 0.697791, -0.697774,
		0.373727, 0.697774, 0.611097,
		39.702991, 53.062893, 49.675079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725750, 53.203953, 48.844311>,  <39.441383, 52.574451, 49.247311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725750, 53.203953, 48.844311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898506, 53.186821, 49.204674>,  <40.002159, 53.176540, 49.420891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898506, 53.186821, 49.204674>,  <39.725750, 53.203953, 48.844311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898506, 53.186821, 49.204674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901238, 0.059493, -0.429220,
		-0.035215, 0.997309, 0.064294,
		0.431891, -0.042829, 0.900908,
		40.028072, 53.173973, 49.474945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327827, 53.562656, 48.794659>,  <39.725750, 53.203953, 48.844311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327827, 53.562656, 48.794659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410179, 53.306362, 49.090515>,  <40.459591, 53.152584, 49.268028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410179, 53.306362, 49.090515>,  <40.327827, 53.562656, 48.794659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410179, 53.306362, 49.090515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953068, -0.040161, -0.300081,
		0.221979, 0.766707, 0.602401,
		0.205881, -0.640740, 0.739638,
		40.471943, 53.114140, 49.312408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830196, 53.819695, 49.335041>,  <40.327827, 53.562656, 48.794659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830196, 53.819695, 49.335041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836002, 53.421349, 49.299171>,  <40.839485, 53.182343, 49.277649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836002, 53.421349, 49.299171>,  <40.830196, 53.819695, 49.335041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836002, 53.421349, 49.299171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957230, 0.039754, -0.286584,
		0.288964, -0.081682, 0.953849,
		0.014511, -0.995865, -0.089676,
		40.840355, 53.122589, 49.272270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363987, 53.611225, 49.737694>,  <40.830196, 53.819695, 49.335041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363987, 53.611225, 49.737694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344555, 53.318588, 49.465691>,  <41.332893, 53.143005, 49.302486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344555, 53.318588, 49.465691>,  <41.363987, 53.611225, 49.737694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344555, 53.318588, 49.465691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972667, 0.120118, -0.198720,
		0.227063, -0.671080, 0.705758,
		-0.048582, -0.731590, -0.680012,
		41.329979, 53.099110, 49.261688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985428, 53.221497, 49.774574>,  <41.363987, 53.611225, 49.737694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985428, 53.221497, 49.774574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829823, 53.157021, 49.411766>,  <41.736462, 53.118336, 49.194080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829823, 53.157021, 49.411766>,  <41.985428, 53.221497, 49.774574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829823, 53.157021, 49.411766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901918, 0.133921, -0.410621,
		0.187656, -0.977796, 0.093281,
		-0.389011, -0.161187, -0.907022,
		41.713120, 53.108665, 49.139660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176220, 52.569530, 50.001549>,  <41.985428, 53.221497, 49.774574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176220, 52.569530, 50.001549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392754, 52.703644, 49.693123>,  <42.522675, 52.784111, 49.508068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392754, 52.703644, 49.693123>,  <42.176220, 52.569530, 50.001549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392754, 52.703644, 49.693123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701183, 0.326063, 0.634055,
		0.464006, -0.883893, -0.058588,
		0.541333, 0.335286, -0.771065,
		42.555153, 52.804230, 49.461803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837303, 52.302174, 49.935902>,  <42.176220, 52.569530, 50.001549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837303, 52.302174, 49.935902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891216, 52.645279, 49.737476>,  <42.923565, 52.851143, 49.618420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891216, 52.645279, 49.737476>,  <42.837303, 52.302174, 49.935902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891216, 52.645279, 49.737476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606474, 0.324494, 0.725874,
		0.783596, -0.398685, -0.476474,
		0.134782, 0.857761, -0.496064,
		42.931652, 52.902607, 49.588657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561325, 52.400677, 49.906929>,  <42.837303, 52.302174, 49.935902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561325, 52.400677, 49.906929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341389, 52.734623, 49.917252>,  <43.209427, 52.934990, 49.923443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341389, 52.734623, 49.917252>,  <43.561325, 52.400677, 49.906929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341389, 52.734623, 49.917252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568164, 0.351191, 0.744214,
		0.612260, 0.423860, -0.667443,
		-0.549843, 0.834870, 0.025802,
		43.176437, 52.985085, 49.924992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865608, 53.077644, 49.676071>,  <43.561325, 52.400677, 49.906929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865608, 53.077644, 49.676071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607052, 53.074142, 49.981255>,  <43.451920, 53.072041, 50.164364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607052, 53.074142, 49.981255>,  <43.865608, 53.077644, 49.676071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607052, 53.074142, 49.981255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731346, 0.277946, 0.622800,
		-0.217512, 0.960557, -0.173261,
		-0.646392, -0.008752, 0.762956,
		43.413136, 53.071518, 50.210140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932331, 53.793118, 50.178238>,  <43.865608, 53.077644, 49.676071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932331, 53.793118, 50.178238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814240, 53.455570, 50.357452>,  <43.743385, 53.253044, 50.464981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814240, 53.455570, 50.357452>,  <43.932331, 53.793118, 50.178238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814240, 53.455570, 50.357452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911447, -0.108113, 0.396958,
		-0.286541, 0.525551, 0.801056,
		-0.295226, -0.843865, 0.448033,
		43.725674, 53.202412, 50.491863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873917, 53.800533, 51.012867>,  <43.932331, 53.793118, 50.178238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873917, 53.800533, 51.012867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974491, 53.450298, 50.847885>,  <44.034836, 53.240158, 50.748894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974491, 53.450298, 50.847885>,  <43.873917, 53.800533, 51.012867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974491, 53.450298, 50.847885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901472, 0.056728, 0.429104,
		-0.352321, -0.479711, 0.803584,
		0.251432, -0.875591, -0.412459,
		44.049919, 53.187622, 50.724148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891159, 53.411304, 51.578152>,  <43.873917, 53.800533, 51.012867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891159, 53.411304, 51.578152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158978, 53.331856, 51.291862>,  <44.319668, 53.284187, 51.120090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158978, 53.331856, 51.291862>,  <43.891159, 53.411304, 51.578152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158978, 53.331856, 51.291862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720576, -0.060099, 0.690767,
		-0.180215, -0.978232, 0.102882,
		0.669547, -0.198621, -0.715721,
		44.359840, 53.272270, 51.077145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333519, 52.756767, 51.621742>,  <43.891159, 53.411304, 51.578152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333519, 52.756767, 51.621742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.557583, 52.983112, 51.379745>,  <44.692020, 53.118919, 51.234547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.557583, 52.983112, 51.379745>,  <44.333519, 52.756767, 51.621742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.557583, 52.983112, 51.379745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814225, -0.241648, 0.527867,
		0.152504, -0.788293, -0.596101,
		0.560161, 0.565862, -0.604996,
		44.725632, 53.152870, 51.198246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816772, 52.310085, 51.368187>,  <44.333519, 52.756767, 51.621742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816772, 52.310085, 51.368187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940762, 52.688736, 51.403564>,  <45.015156, 52.915924, 51.424789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940762, 52.688736, 51.403564>,  <44.816772, 52.310085, 51.368187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940762, 52.688736, 51.403564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767745, -0.304088, 0.564002,
		0.560792, -0.106923, -0.821024,
		0.309968, 0.946624, 0.088441,
		45.033752, 52.972725, 51.430096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.533512, 52.289371, 51.179520>,  <44.816772, 52.310085, 51.368187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.533512, 52.289371, 51.179520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.460957, 52.605209, 51.414001>,  <45.417423, 52.794712, 51.554691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.460957, 52.605209, 51.414001>,  <45.533512, 52.289371, 51.179520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.460957, 52.605209, 51.414001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682803, -0.327872, 0.652901,
		0.707728, 0.518691, -0.479667,
		-0.181385, 0.789594, 0.586208,
		45.406540, 52.842087, 51.589863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.808811, 51.791611, 51.637016>,  <45.533512, 52.289371, 51.179520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.808811, 51.791611, 51.637016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133480, 51.598186, 51.768082>,  <46.328281, 51.482132, 51.846722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133480, 51.598186, 51.768082>,  <45.808811, 51.791611, 51.637016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.133480, 51.598186, 51.768082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055329, 0.622078, 0.780998,
		-0.581491, -0.615783, 0.531677,
		0.811669, -0.483560, 0.327662,
		46.376980, 51.453117, 51.866379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644482, 51.548752, 52.262939>,  <45.808811, 51.791611, 51.637016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644482, 51.548752, 52.262939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033821, 51.636017, 52.234634>,  <46.267426, 51.688374, 52.217651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033821, 51.636017, 52.234634>,  <45.644482, 51.548752, 52.262939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.033821, 51.636017, 52.234634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075123, 0.594783, 0.800368,
		0.216698, -0.773718, 0.595317,
		0.973344, 0.218160, -0.070764,
		46.325825, 51.701466, 52.213406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.019062, 51.541588, 53.026756>,  <45.644482, 51.548752, 52.262939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.019062, 51.541588, 53.026756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.197540, 51.793446, 52.772369>,  <46.304626, 51.944561, 52.619736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.197540, 51.793446, 52.772369>,  <46.019062, 51.541588, 53.026756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.197540, 51.793446, 52.772369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099732, 0.671217, 0.734521,
		0.889362, -0.391164, 0.236696,
		0.446193, 0.629649, -0.635967,
		46.331398, 51.982342, 52.581581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.558605, 51.802711, 53.399075>,  <46.019062, 51.541588, 53.026756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.558605, 51.802711, 53.399075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.536861, 52.083740, 53.115261>,  <46.523815, 52.252357, 52.944973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.536861, 52.083740, 53.115261>,  <46.558605, 51.802711, 53.399075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.536861, 52.083740, 53.115261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390886, 0.668845, 0.632341,
		0.918833, -0.242971, -0.310985,
		-0.054361, 0.702575, -0.709531,
		46.520554, 52.294514, 52.902401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.548603, 51.102924, 53.723701>,  <46.558605, 51.802711, 53.399075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.548603, 51.102924, 53.723701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.811550, 51.080723, 54.024311>,  <46.969318, 51.067402, 54.204678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.811550, 51.080723, 54.024311>,  <46.548603, 51.102924, 53.723701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.811550, 51.080723, 54.024311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274813, 0.946261, -0.170497,
		-0.701673, 0.318607, 0.637295,
		0.657369, -0.055504, 0.751522,
		47.008762, 51.064072, 54.249767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.417847, 51.517036, 54.345032>,  <46.548603, 51.102924, 53.723701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.417847, 51.517036, 54.345032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.811436, 51.456234, 54.307728>,  <47.047588, 51.419750, 54.285347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.811436, 51.456234, 54.307728>,  <46.417847, 51.517036, 54.345032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.811436, 51.456234, 54.307728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149725, 0.988240, -0.031065,
		0.096882, 0.016604, 0.995157,
		0.983970, -0.152009, -0.093257,
		47.106628, 51.410629, 54.279751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.845051, 51.780228, 54.931492>,  <46.417847, 51.517036, 54.345032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.845051, 51.780228, 54.931492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039227, 51.789898, 54.581917>,  <47.155731, 51.795700, 54.372173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039227, 51.789898, 54.581917>,  <46.845051, 51.780228, 54.931492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.039227, 51.789898, 54.581917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034095, 0.998334, 0.046554,
		0.873608, -0.052396, 0.483802,
		0.485435, 0.024175, -0.873939,
		47.184856, 51.797150, 54.319736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.679996, 51.973976, 54.878601>,  <46.845051, 51.780228, 54.931492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.679996, 51.973976, 54.878601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.426380, 52.078804, 54.587585>,  <47.274212, 52.141701, 54.412975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.426380, 52.078804, 54.587585>,  <47.679996, 51.973976, 54.878601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.426380, 52.078804, 54.587585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076665, 0.957492, 0.278086,
		0.769493, 0.120540, -0.627177,
		-0.634037, 0.262068, -0.727542,
		47.236168, 52.157425, 54.369324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.320263, 51.732288, 54.674061>,  <47.679996, 51.973976, 54.878601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.320263, 51.732288, 54.674061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.027905, 51.853714, 54.429558>,  <47.852489, 51.926571, 54.282856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.027905, 51.853714, 54.429558>,  <48.320263, 51.732288, 54.674061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.027905, 51.853714, 54.429558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119369, -0.824966, -0.552433,
		-0.671967, -0.476737, 0.566729,
		-0.730898, 0.303567, -0.611257,
		47.808636, 51.944786, 54.246181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.754486, 51.311321, 54.537979>,  <48.320263, 51.732288, 54.674061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.754486, 51.311321, 54.537979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794720, 51.549160, 54.218895>,  <47.818859, 51.691864, 54.027443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794720, 51.549160, 54.218895>,  <47.754486, 51.311321, 54.537979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.794720, 51.549160, 54.218895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043782, -0.803645, -0.593496,
		-0.993964, 0.024773, -0.106869,
		0.100588, 0.594593, -0.797710,
		47.824898, 51.727539, 53.979584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.442093, 51.059685, 53.887989>,  <47.754486, 51.311321, 54.537979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.442093, 51.059685, 53.887989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.747856, 51.297241, 53.787617>,  <47.931313, 51.439777, 53.727394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.747856, 51.297241, 53.787617>,  <47.442093, 51.059685, 53.887989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.747856, 51.297241, 53.787617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101875, -0.495574, -0.862571,
		-0.636631, 0.633794, -0.439324,
		0.764410, 0.593896, -0.250930,
		47.977180, 51.475410, 53.712337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.454742, 51.510769, 53.325111>,  <47.442093, 51.059685, 53.887989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.454742, 51.510769, 53.325111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.837025, 51.408707, 53.383785>,  <48.066395, 51.347469, 53.418991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.837025, 51.408707, 53.383785>,  <47.454742, 51.510769, 53.325111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.837025, 51.408707, 53.383785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076076, -0.695621, -0.714369,
		0.284316, 0.671569, -0.684222,
		0.955707, -0.255160, 0.146686,
		48.123737, 51.332157, 53.427792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.824669, 51.659412, 52.711998>,  <47.454742, 51.510769, 53.325111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.824669, 51.659412, 52.711998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.008785, 51.365509, 52.911301>,  <48.119255, 51.189167, 53.030884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.008785, 51.365509, 52.911301>,  <47.824669, 51.659412, 52.711998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.008785, 51.365509, 52.911301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003602, -0.562792, -0.826591,
		0.887763, 0.378675, -0.261693,
		0.460288, -0.734759, 0.498261,
		48.146870, 51.145081, 53.060780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.235645, 51.391533, 52.168259>,  <47.824669, 51.659412, 52.711998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.235645, 51.391533, 52.168259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.211281, 51.072792, 52.408699>,  <48.196663, 50.881550, 52.552963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.211281, 51.072792, 52.408699>,  <48.235645, 51.391533, 52.168259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.211281, 51.072792, 52.408699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011787, -0.601604, -0.798708,
		0.998073, -0.055738, 0.027254,
		-0.060915, -0.796848, 0.601102,
		48.193005, 50.833736, 52.589031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.771557, 51.903019, 52.426506>,  <48.235645, 51.391533, 52.168259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.771557, 51.903019, 52.426506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.533585, 52.110813, 52.181168>,  <48.390800, 52.235489, 52.033966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.533585, 52.110813, 52.181168>,  <48.771557, 51.903019, 52.426506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.533585, 52.110813, 52.181168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803468, -0.405503, 0.435898,
		-0.022273, 0.752135, 0.658633,
		-0.594932, 0.519482, -0.613347,
		48.355106, 52.266659, 51.997162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.260532, 52.240032, 52.806908>,  <48.771557, 51.903019, 52.426506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.260532, 52.240032, 52.806908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.609089, 52.271717, 53.000572>,  <49.818222, 52.290730, 53.116772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.609089, 52.271717, 53.000572>,  <49.260532, 52.240032, 52.806908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.609089, 52.271717, 53.000572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070467, 0.996855, -0.036263,
		-0.485509, -0.002518, 0.874228,
		0.871387, 0.079211, 0.484159,
		49.870506, 52.295479, 53.145821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.064865, 52.578640, 53.409389>,  <49.260532, 52.240032, 52.806908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.064865, 52.578640, 53.409389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.450851, 52.633411, 53.319862>,  <49.682442, 52.666275, 53.266148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.450851, 52.633411, 53.319862>,  <49.064865, 52.578640, 53.409389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.450851, 52.633411, 53.319862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114847, 0.987394, 0.108915,
		0.235906, -0.079394, 0.968527,
		0.964966, 0.136926, -0.223814,
		49.740341, 52.674488, 53.252720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.280418, 52.947868, 54.031860>,  <49.064865, 52.578640, 53.409389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.280418, 52.947868, 54.031860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.497875, 53.005562, 53.701126>,  <49.628349, 53.040176, 53.502686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.497875, 53.005562, 53.701126>,  <49.280418, 52.947868, 54.031860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.497875, 53.005562, 53.701126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013701, 0.986517, 0.163082,
		0.839207, -0.077330, 0.538285,
		0.543639, 0.144235, -0.826833,
		49.660965, 53.048832, 53.453075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.673809, 53.503410, 54.071686>,  <49.280418, 52.947868, 54.031860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.673809, 53.503410, 54.071686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.676788, 53.498737, 53.671722>,  <49.678574, 53.495934, 53.431744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.676788, 53.498737, 53.671722>,  <49.673809, 53.503410, 54.071686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.676788, 53.498737, 53.671722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092973, 0.995592, -0.012329,
		0.995641, 0.093056, 0.006327,
		0.007447, -0.011687, -0.999904,
		49.679024, 53.495232, 53.371750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.992409, 54.063313, 53.800629>,  <49.673809, 53.503410, 54.071686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.992409, 54.063313, 53.800629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.680809, 53.947884, 53.577957>,  <49.493851, 53.878624, 53.444355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.680809, 53.947884, 53.577957>,  <49.992409, 54.063313, 53.800629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.680809, 53.947884, 53.577957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282554, 0.954108, -0.099200,
		0.559756, 0.080015, -0.824785,
		-0.778997, -0.288574, -0.556676,
		49.447109, 53.861313, 53.410954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.341862, 54.309555, 54.458900>,  <49.992409, 54.063313, 53.800629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.341862, 54.309555, 54.458900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.248112, 54.019733, 54.718155>,  <50.191860, 53.845840, 54.873707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.248112, 54.019733, 54.718155>,  <50.341862, 54.309555, 54.458900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.248112, 54.019733, 54.718155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937718, -0.344356, -0.045861,
		0.256420, 0.597024, 0.760139,
		-0.234378, -0.724556, 0.648140,
		50.177799, 53.802368, 54.912598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.770176, 54.286736, 55.131355>,  <50.341862, 54.309555, 54.458900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.770176, 54.286736, 55.131355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.639072, 53.915882, 55.058685>,  <50.560410, 53.693371, 55.015083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.639072, 53.915882, 55.058685>,  <50.770176, 54.286736, 55.131355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.639072, 53.915882, 55.058685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910765, -0.258943, -0.321646,
		0.251165, -0.270882, 0.929268,
		-0.327756, -0.927131, -0.181672,
		50.540745, 53.637741, 55.004185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.992691, 53.670296, 55.561680>,  <50.770176, 54.286736, 55.131355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.992691, 53.670296, 55.561680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.932964, 53.577759, 55.177139>,  <50.897129, 53.522236, 54.946415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.932964, 53.577759, 55.177139>,  <50.992691, 53.670296, 55.561680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.932964, 53.577759, 55.177139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988270, -0.003393, -0.152681,
		0.032059, -0.972868, 0.229130,
		-0.149316, -0.231337, -0.961347,
		50.888168, 53.508358, 54.888737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.507145, 53.173290, 55.388214>,  <50.992691, 53.670296, 55.561680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.507145, 53.173290, 55.388214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.402302, 53.388592, 55.067818>,  <51.339397, 53.517773, 54.875580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.402302, 53.388592, 55.067818>,  <51.507145, 53.173290, 55.388214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.402302, 53.388592, 55.067818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919750, 0.390614, -0.038479,
		0.292165, -0.746794, -0.597443,
		-0.262106, 0.538256, -0.800987,
		51.323669, 53.550068, 54.827522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.106750, 53.217106, 54.910919>,  <51.507145, 53.173290, 55.388214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.106750, 53.217106, 54.910919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.916569, 53.554512, 54.810982>,  <51.802460, 53.756954, 54.751019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.916569, 53.554512, 54.810982>,  <52.106750, 53.217106, 54.910919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.916569, 53.554512, 54.810982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877755, 0.473917, -0.070345,
		0.059069, -0.252749, -0.965727,
		-0.475455, 0.843516, -0.249846,
		51.773933, 53.807568, 54.736027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.410027, 53.379494, 54.184834>,  <52.106750, 53.217106, 54.910919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.410027, 53.379494, 54.184834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.315674, 53.698524, 54.406906>,  <52.259060, 53.889942, 54.540150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.315674, 53.698524, 54.406906>,  <52.410027, 53.379494, 54.184834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.315674, 53.698524, 54.406906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873270, 0.424613, -0.238965,
		-0.426331, 0.428456, -0.796660,
		-0.235886, 0.797577, 0.555183,
		52.244907, 53.937798, 54.573460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.493134, 54.096092, 53.844326>,  <52.410027, 53.379494, 54.184834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.493134, 54.096092, 53.844326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.557686, 54.132141, 54.237434>,  <52.596416, 54.153770, 54.473297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.557686, 54.132141, 54.237434>,  <52.493134, 54.096092, 53.844326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.557686, 54.132141, 54.237434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889751, 0.417540, -0.184400,
		-0.426964, 0.904178, -0.012803,
		0.161385, 0.090124, 0.982768,
		52.606102, 54.159180, 54.532265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.643829, 54.862732, 54.063866>,  <52.493134, 54.096092, 53.844326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.643829, 54.862732, 54.063866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.814892, 54.572773, 54.279881>,  <52.917530, 54.398800, 54.409489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.814892, 54.572773, 54.279881>,  <52.643829, 54.862732, 54.063866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.814892, 54.572773, 54.279881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897418, 0.412126, -0.157459,
		-0.108422, 0.551977, 0.826780,
		0.427651, -0.724896, 0.540038,
		52.943188, 54.355305, 54.441891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.122478, 55.157536, 54.544849>,  <52.643829, 54.862732, 54.063866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.122478, 55.157536, 54.544849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.227371, 54.786030, 54.440063>,  <53.290306, 54.563126, 54.377193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.227371, 54.786030, 54.440063>,  <53.122478, 55.157536, 54.544849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.227371, 54.786030, 54.440063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913369, 0.326489, -0.243232,
		0.311434, -0.175485, 0.933924,
		0.262232, -0.928768, -0.261962,
		53.306042, 54.507401, 54.361473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.689472, 55.006924, 55.025299>,  <53.122478, 55.157536, 54.544849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.689472, 55.006924, 55.025299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.703461, 54.799156, 54.683777>,  <53.711853, 54.674496, 54.478863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.703461, 54.799156, 54.683777>,  <53.689472, 55.006924, 55.025299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.703461, 54.799156, 54.683777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904440, 0.379902, -0.194068,
		0.425165, -0.765427, 0.483071,
		0.034975, -0.519419, -0.853803,
		53.713951, 54.643330, 54.427635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.118443, 54.345398, 54.791515>,  <53.689472, 55.006924, 55.025299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.118443, 54.345398, 54.791515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.103760, 54.573982, 54.463593>,  <54.094952, 54.711132, 54.266838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.103760, 54.573982, 54.463593>,  <54.118443, 54.345398, 54.791515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.103760, 54.573982, 54.463593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872784, 0.417889, 0.252224,
		0.486725, -0.706256, -0.514103,
		-0.036703, 0.571465, -0.819806,
		54.092751, 54.745422, 54.217651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.634945, 54.224808, 54.300652>,  <54.118443, 54.345398, 54.791515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.634945, 54.224808, 54.300652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.503883, 54.600422, 54.342327>,  <54.425247, 54.825790, 54.367332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.503883, 54.600422, 54.342327>,  <54.634945, 54.224808, 54.300652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.503883, 54.600422, 54.342327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894494, 0.272811, 0.354196,
		0.304179, 0.209250, -0.929349,
		-0.327652, 0.939036, 0.104189,
		54.405586, 54.882133, 54.373585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.046398, 54.767044, 53.894352>,  <54.634945, 54.224808, 54.300652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.046398, 54.767044, 53.894352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.921326, 54.851982, 54.264679>,  <54.846283, 54.902946, 54.486877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.921326, 54.851982, 54.264679>,  <55.046398, 54.767044, 53.894352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.921326, 54.851982, 54.264679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949829, 0.062161, 0.306531,
		0.007541, 0.975215, -0.221129,
		-0.312679, 0.212346, 0.925819,
		54.827522, 54.915688, 54.542423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.670292, 55.133930, 54.275982>,  <55.046398, 54.767044, 53.894352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.670292, 55.133930, 54.275982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.906418, 54.941383, 54.016811>,  <56.048092, 54.825855, 53.861309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.906418, 54.941383, 54.016811>,  <55.670292, 55.133930, 54.275982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.906418, 54.941383, 54.016811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750929, 0.621909, 0.222114,
		0.296034, -0.617666, 0.728596,
		0.590313, -0.481371, -0.647929,
		56.083511, 54.796970, 53.822433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.229919, 54.567638, 54.461647>,  <55.670292, 55.133930, 54.275982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.229919, 54.567638, 54.461647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.337067, 54.806850, 54.159496>,  <56.401356, 54.950378, 53.978207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.337067, 54.806850, 54.159496>,  <56.229919, 54.567638, 54.461647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.337067, 54.806850, 54.159496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697689, 0.420292, 0.580158,
		0.664435, -0.682429, -0.304658,
		0.267872, 0.598034, -0.755381,
		56.417427, 54.986259, 53.932880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.933903, 54.679588, 54.515312>,  <56.229919, 54.567638, 54.461647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.933903, 54.679588, 54.515312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.828308, 54.985577, 54.280323>,  <56.764954, 55.169170, 54.139328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.828308, 54.985577, 54.280323>,  <56.933903, 54.679588, 54.515312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.828308, 54.985577, 54.280323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670130, 0.583531, 0.458712,
		0.693713, -0.272593, -0.666675,
		-0.263984, 0.764974, -0.587476,
		56.749111, 55.215069, 54.104080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.468834, 55.141460, 54.141243>,  <56.933903, 54.679588, 54.515312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.468834, 55.141460, 54.141243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.820267, 54.992332, 54.260643>,  <58.031128, 54.902855, 54.332283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.820267, 54.992332, 54.260643>,  <57.468834, 55.141460, 54.141243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.820267, 54.992332, 54.260643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476138, 0.634998, -0.608334,
		0.037250, 0.676599, 0.735409,
		0.878581, -0.372817, 0.298500,
		58.083839, 54.880486, 54.350193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.895123, 55.661621, 54.242523>,  <57.468834, 55.141460, 54.141243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.895123, 55.661621, 54.242523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.103859, 55.344418, 54.116779>,  <58.229099, 55.154095, 54.041332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.103859, 55.344418, 54.116779>,  <57.895123, 55.661621, 54.242523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.103859, 55.344418, 54.116779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340225, 0.531413, -0.775788,
		0.782260, 0.297885, 0.547114,
		0.521839, -0.793010, -0.314355,
		58.260410, 55.106514, 54.022472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.676941, 55.874828, 54.109241>,  <57.895123, 55.661621, 54.242523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.676941, 55.874828, 54.109241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.512138, 55.582458, 53.891617>,  <58.413258, 55.407036, 53.761044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.512138, 55.582458, 53.891617>,  <58.676941, 55.874828, 54.109241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.512138, 55.582458, 53.891617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085537, 0.625482, -0.775536,
		0.907156, -0.272991, -0.320226,
		-0.412010, -0.730923, -0.544059,
		58.388535, 55.363182, 53.728397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.125771, 55.729214, 53.472069>,  <58.676941, 55.874828, 54.109241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.125771, 55.729214, 53.472069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.731010, 55.669781, 53.446915>,  <58.494156, 55.634121, 53.431824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.731010, 55.669781, 53.446915>,  <59.125771, 55.729214, 53.472069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.731010, 55.669781, 53.446915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018701, 0.492482, -0.870122,
		0.160257, -0.857545, -0.488808,
		-0.986899, -0.148584, -0.062886,
		58.434940, 55.625206, 53.428047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.726490, 55.732285, 53.887989>,  <59.125771, 55.729214, 53.472069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.726490, 55.732285, 53.887989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.467812, 56.013203, 54.007027>,  <59.312607, 56.181755, 54.078449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.467812, 56.013203, 54.007027>,  <59.726490, 55.732285, 53.887989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.467812, 56.013203, 54.007027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729674, -0.683269, 0.026823,
		0.222177, -0.199803, 0.954314,
		-0.646694, 0.702298, 0.297598,
		59.273804, 56.223892, 54.096306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.094330, 56.084160, 54.429619>,  <59.726490, 55.732285, 53.887989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.094330, 56.084160, 54.429619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.327599, 56.175354, 54.117737>,  <60.467560, 56.230072, 53.930607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.327599, 56.175354, 54.117737>,  <60.094330, 56.084160, 54.429619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.327599, 56.175354, 54.117737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125787, 0.922890, 0.363940,
		0.802553, -0.310314, 0.509523,
		0.583169, 0.227990, -0.779702,
		60.502548, 56.243752, 53.883827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.801552, 56.431664, 54.614239>,  <60.094330, 56.084160, 54.429619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.801552, 56.431664, 54.614239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.692223, 56.527992, 54.241722>,  <60.626625, 56.585789, 54.018211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.692223, 56.527992, 54.241722>,  <60.801552, 56.431664, 54.614239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.692223, 56.527992, 54.241722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149257, 0.967046, 0.206262,
		0.950272, -0.082625, -0.300262,
		-0.273324, 0.240821, -0.931289,
		60.610226, 56.600239, 53.962334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.253624, 57.005703, 54.375698>,  <60.801552, 56.431664, 54.614239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.253624, 57.005703, 54.375698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.876755, 56.971687, 54.246040>,  <60.650631, 56.951279, 54.168243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.876755, 56.971687, 54.246040>,  <61.253624, 57.005703, 54.375698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.876755, 56.971687, 54.246040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200336, 0.918326, 0.341385,
		0.268642, 0.386583, -0.882261,
		-0.942177, -0.085038, -0.324148,
		60.594101, 56.946175, 54.148796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.397812, 57.768085, 54.459011>,  <61.253624, 57.005703, 54.375698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.397812, 57.768085, 54.459011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.771141, 57.742355, 54.600304>,  <61.995140, 57.726917, 54.685078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.771141, 57.742355, 54.600304>,  <61.397812, 57.768085, 54.459011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.771141, 57.742355, 54.600304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358468, 0.111411, -0.926870,
		0.020263, 0.991691, 0.127040,
		0.933322, -0.064321, 0.353232,
		62.051136, 57.723061, 54.706272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.860615, 58.308071, 54.676743>,  <61.397812, 57.768085, 54.459011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.860615, 58.308071, 54.676743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.791428, 57.929642, 54.786312>,  <61.749916, 57.702583, 54.852055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.791428, 57.929642, 54.786312>,  <61.860615, 58.308071, 54.676743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.791428, 57.929642, 54.786312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720792, 0.067949, 0.689813,
		-0.671224, 0.316758, 0.670166,
		-0.172967, -0.946069, 0.273926,
		61.739536, 57.645821, 54.868488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.749657, 58.309155, 55.315693>,  <61.860615, 58.308071, 54.676743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.749657, 58.309155, 55.315693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.907127, 57.946846, 55.252960>,  <62.001610, 57.729462, 55.215321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.907127, 57.946846, 55.252960>,  <61.749657, 58.309155, 55.315693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.907127, 57.946846, 55.252960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708371, 0.190185, 0.679736,
		-0.585859, -0.378690, 0.716494,
		0.393675, -0.905772, -0.156831,
		62.025230, 57.675114, 55.205910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.825306, 57.988739, 55.993034>,  <61.749657, 58.309155, 55.315693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.825306, 57.988739, 55.993034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.077545, 57.827198, 55.727928>,  <62.228889, 57.730274, 55.568863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.077545, 57.827198, 55.727928>,  <61.825306, 57.988739, 55.993034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.077545, 57.827198, 55.727928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733075, 0.029513, 0.679507,
		-0.254857, -0.914350, 0.314662,
		0.630594, -0.403848, -0.662765,
		62.266724, 57.706043, 55.529099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.255802, 57.472561, 56.359947>,  <61.825306, 57.988739, 55.993034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.255802, 57.472561, 56.359947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.459366, 57.571892, 56.030258>,  <62.581505, 57.631489, 55.832443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.459366, 57.571892, 56.030258>,  <62.255802, 57.472561, 56.359947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.459366, 57.571892, 56.030258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813734, 0.173549, 0.554722,
		0.280797, -0.953002, -0.113753,
		0.508910, 0.248329, -0.824223,
		62.612038, 57.646389, 55.782990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.925316, 57.001198, 56.348427>,  <62.255802, 57.472561, 56.359947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.925316, 57.001198, 56.348427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.949875, 57.332672, 56.125893>,  <62.964611, 57.531555, 55.992371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.949875, 57.332672, 56.125893>,  <62.925316, 57.001198, 56.348427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.949875, 57.332672, 56.125893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918800, 0.170828, 0.355845,
		0.389921, -0.533010, -0.750907,
		0.061393, 0.828685, -0.556339,
		62.968292, 57.581276, 55.958992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.602329, 57.019482, 55.979870>,  <62.925316, 57.001198, 56.348427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.602329, 57.019482, 55.979870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.453209, 57.375122, 56.086090>,  <63.363735, 57.588509, 56.149822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.453209, 57.375122, 56.086090>,  <63.602329, 57.019482, 55.979870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.453209, 57.375122, 56.086090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879824, 0.247765, 0.405613,
		0.294838, 0.384849, -0.874621,
		-0.372800, 0.889103, 0.265549,
		63.341370, 57.641853, 56.165756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.873474, 57.634575, 55.704704>,  <63.602329, 57.019482, 55.979870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.873474, 57.634575, 55.704704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.752243, 57.695896, 56.080925>,  <63.679504, 57.732689, 56.306660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.752243, 57.695896, 56.080925>,  <63.873474, 57.634575, 55.704704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.752243, 57.695896, 56.080925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937959, 0.222449, 0.265989,
		-0.168449, 0.962817, -0.211208,
		-0.303081, 0.153299, 0.940553,
		63.661320, 57.741886, 56.363091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.621460, 57.794643, 55.714024>,  <63.873474, 57.634575, 55.704704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.621460, 57.794643, 55.714024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.997475, 57.855034, 55.591698>,  <65.223083, 57.891266, 55.518303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.997475, 57.855034, 55.591698>,  <64.621460, 57.794643, 55.714024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.997475, 57.855034, 55.591698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266778, 0.233107, 0.935142,
		0.212460, -0.960662, 0.178858,
		0.940048, 0.150965, -0.305809,
		65.279488, 57.900326, 55.499954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.007828, 57.901665, 56.381001>,  <64.621460, 57.794643, 55.714024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.007828, 57.901665, 56.381001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.249222, 58.122643, 56.151001>,  <65.394058, 58.255230, 56.013000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.249222, 58.122643, 56.151001>,  <65.007828, 57.901665, 56.381001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.249222, 58.122643, 56.151001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394691, 0.419617, 0.817399,
		0.692844, -0.720228, 0.035186,
		0.603478, 0.552442, -0.574997,
		65.430267, 58.288376, 55.978500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.748749, 57.817272, 56.474358>,  <65.007828, 57.901665, 56.381001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.748749, 57.817272, 56.474358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.617912, 58.184685, 56.385521>,  <65.539413, 58.405132, 56.332218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.617912, 58.184685, 56.385521>,  <65.748749, 57.817272, 56.474358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.617912, 58.184685, 56.385521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455376, 0.359133, 0.814651,
		0.828040, 0.165322, -0.535741,
		-0.327082, 0.918527, -0.222092,
		65.519791, 58.460243, 56.318893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.366051, 57.822060, 55.945564>,  <65.748749, 57.817272, 56.474358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.366051, 57.822060, 55.945564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.552719, 57.509521, 55.779808>,  <66.664719, 57.321999, 55.680355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.552719, 57.509521, 55.779808>,  <66.366051, 57.822060, 55.945564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.552719, 57.509521, 55.779808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649836, -0.620743, 0.438623,
		-0.599944, 0.064591, -0.797430,
		0.466669, -0.781349, -0.414385,
		66.692719, 57.275116, 55.655491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.744514, 57.359459, 56.388355>,  <66.366051, 57.822060, 55.945564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.744514, 57.359459, 56.388355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.614700, 57.488914, 56.743866>,  <66.536812, 57.566586, 56.957172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.614700, 57.488914, 56.743866>,  <66.744514, 57.359459, 56.388355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.614700, 57.488914, 56.743866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879552, -0.242388, 0.409434,
		0.347938, 0.914608, -0.205990,
		-0.324542, 0.323637, 0.888781,
		66.517334, 57.586006, 57.010502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.123657, 57.973240, 56.777828>,  <66.744514, 57.359459, 56.388355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.123657, 57.973240, 56.777828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.966888, 57.691311, 57.014343>,  <66.872826, 57.522152, 57.156250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.966888, 57.691311, 57.014343>,  <67.123657, 57.973240, 56.777828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.966888, 57.691311, 57.014343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894099, -0.140399, 0.425294,
		-0.216740, 0.695353, 0.685207,
		-0.391931, -0.704821, 0.591284,
		66.849312, 57.479866, 57.191727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.119621, 58.081108, 57.591034>,  <67.123657, 57.973240, 56.777828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.119621, 58.081108, 57.591034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.118317, 57.686516, 57.525497>,  <67.117531, 57.449760, 57.486176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.118317, 57.686516, 57.525497>,  <67.119621, 58.081108, 57.591034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.118317, 57.686516, 57.525497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741253, -0.112360, 0.661755,
		-0.671218, -0.119294, 0.731598,
		-0.003259, -0.986481, -0.163845,
		67.117340, 57.390572, 57.476345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.039505, 57.644203, 58.218975>,  <67.119621, 58.081108, 57.591034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.039505, 57.644203, 58.218975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.253098, 57.465370, 57.931931>,  <67.381256, 57.358070, 57.759705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.253098, 57.465370, 57.931931>,  <67.039505, 57.644203, 58.218975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.253098, 57.465370, 57.931931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754003, -0.132202, 0.643430,
		-0.382539, -0.884667, 0.266510,
		0.533989, -0.447087, -0.717614,
		67.413292, 57.331245, 57.716648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.150116, 56.981339, 58.336105>,  <67.039505, 57.644203, 58.218975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.150116, 56.981339, 58.336105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.458939, 57.093262, 58.107849>,  <67.644234, 57.160416, 57.970898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.458939, 57.093262, 58.107849>,  <67.150116, 56.981339, 58.336105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.458939, 57.093262, 58.107849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635545, -0.342210, 0.692080,
		-0.001626, -0.896994, -0.442040,
		0.772062, 0.279812, -0.570637,
		67.690559, 57.177204, 57.936657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.573906, 56.408913, 58.191818>,  <67.150116, 56.981339, 58.336105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.573906, 56.408913, 58.191818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.784019, 56.749207, 58.199226>,  <67.910088, 56.953381, 58.203671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.784019, 56.749207, 58.199226>,  <67.573906, 56.408913, 58.191818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.784019, 56.749207, 58.199226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738867, -0.466788, 0.485989,
		0.422092, -0.241591, -0.873769,
		0.525275, 0.850731, 0.018524,
		67.941605, 57.004425, 58.204784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.267326, 56.434036, 57.811932>,  <67.573906, 56.408913, 58.191818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.267326, 56.434036, 57.811932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.240265, 56.673248, 58.131378>,  <68.224030, 56.816776, 58.323044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.240265, 56.673248, 58.131378>,  <68.267326, 56.434036, 57.811932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.240265, 56.673248, 58.131378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666690, -0.568407, 0.482119,
		0.742259, 0.565042, -0.360249,
		-0.067649, 0.598031, 0.798613,
		68.219971, 56.852657, 58.370960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.875175, 56.827091, 57.968548>,  <68.267326, 56.434036, 57.811932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.875175, 56.827091, 57.968548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.702866, 56.698715, 58.305931>,  <68.599480, 56.621689, 58.508362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.702866, 56.698715, 58.305931>,  <68.875175, 56.827091, 57.968548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.702866, 56.698715, 58.305931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846181, -0.468525, 0.253895,
		0.313700, 0.823094, 0.473401,
		-0.430780, -0.320936, 0.843463,
		68.573631, 56.602436, 58.558971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.769669, 57.228382, 58.655392>,  <68.875175, 56.827091, 57.968548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.769669, 57.228382, 58.655392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.896561, 57.481346, 58.938072>,  <68.972694, 57.633125, 59.107681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.896561, 57.481346, 58.938072>,  <68.769669, 57.228382, 58.655392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.896561, 57.481346, 58.938072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844234, -0.527785, 0.093340,
		0.432015, 0.567012, -0.701327,
		0.317225, 0.632408, 0.706702,
		68.991730, 57.671070, 59.150082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.550865, 57.450912, 58.536625>,  <68.769669, 57.228382, 58.655392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.550865, 57.450912, 58.536625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.472031, 57.505737, 58.924927>,  <69.424728, 57.538631, 59.157909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.472031, 57.505737, 58.924927>,  <69.550865, 57.450912, 58.536625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.472031, 57.505737, 58.924927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846117, -0.476384, 0.239050,
		0.495218, 0.868488, -0.022082,
		-0.197093, 0.137066, 0.970756,
		69.412903, 57.546856, 59.216152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.139244, 57.699574, 58.839550>,  <69.550865, 57.450912, 58.536625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.139244, 57.699574, 58.839550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.000488, 57.484489, 59.146935>,  <69.917236, 57.355438, 59.331364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.000488, 57.484489, 59.146935>,  <70.139244, 57.699574, 58.839550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.000488, 57.484489, 59.146935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907994, -0.397799, 0.131536,
		0.234963, 0.743384, 0.626237,
		-0.346898, -0.537713, 0.768457,
		69.896416, 57.323177, 59.377472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.349464, 57.779552, 59.628864>,  <70.139244, 57.699574, 58.839550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.349464, 57.779552, 59.628864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.299347, 57.413506, 59.475571>,  <70.269272, 57.193878, 59.383595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.299347, 57.413506, 59.475571>,  <70.349464, 57.779552, 59.628864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.299347, 57.413506, 59.475571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983103, -0.166481, 0.076105,
		-0.133445, -0.367221, 0.920512,
		-0.125301, -0.915114, -0.383232,
		70.261757, 57.138973, 59.360600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.549255, 57.309219, 60.061634>,  <70.349464, 57.779552, 59.628864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.549255, 57.309219, 60.061634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.605019, 57.191151, 59.683548>,  <70.638474, 57.120308, 59.456696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.605019, 57.191151, 59.683548>,  <70.549255, 57.309219, 60.061634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.605019, 57.191151, 59.683548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963262, -0.180848, 0.198545,
		-0.229546, -0.938173, 0.259115,
		0.139409, -0.295171, -0.945219,
		70.646843, 57.102600, 59.399982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.757965, 56.669895, 59.914715>,  <70.549255, 57.309219, 60.061634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.757965, 56.669895, 59.914715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.912529, 56.856895, 59.596687>,  <71.005264, 56.969093, 59.405869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.912529, 56.856895, 59.596687>,  <70.757965, 56.669895, 59.914715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.912529, 56.856895, 59.596687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915157, -0.301630, 0.267408,
		-0.114804, -0.830942, -0.544385,
		0.386403, 0.467499, -0.795071,
		71.028450, 56.997147, 59.358166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.371521, 56.288040, 59.747768>,  <70.757965, 56.669895, 59.914715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.371521, 56.288040, 59.747768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.409805, 56.640400, 59.562355>,  <71.432777, 56.851814, 59.451107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.409805, 56.640400, 59.562355>,  <71.371521, 56.288040, 59.747768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.409805, 56.640400, 59.562355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994282, -0.062444, 0.086631,
		0.047368, -0.469172, -0.881835,
		0.095710, 0.880896, -0.463531,
		71.438515, 56.904667, 59.423294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.937897, 56.185452, 59.172112>,  <71.371521, 56.288040, 59.747768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.937897, 56.185452, 59.172112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.887253, 56.535175, 59.359535>,  <71.856865, 56.745010, 59.471989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.887253, 56.535175, 59.359535>,  <71.937897, 56.185452, 59.172112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.887253, 56.535175, 59.359535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968975, 0.007939, 0.247030,
		0.212261, 0.485301, -0.848191,
		-0.126618, 0.874311, 0.468559,
		71.849266, 56.797470, 59.500103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.441322, 56.699581, 58.899879>,  <71.937897, 56.185452, 59.172112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.441322, 56.699581, 58.899879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.334976, 56.815063, 59.267784>,  <72.271164, 56.884354, 59.488525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.334976, 56.815063, 59.267784>,  <72.441322, 56.699581, 58.899879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.334976, 56.815063, 59.267784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963503, 0.110491, 0.243831,
		-0.031230, 0.951021, -0.307545,
		-0.265869, 0.288705, 0.919762,
		72.255219, 56.901676, 59.543713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.642593, 57.448559, 59.073952>,  <72.441322, 56.699581, 58.899879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.642593, 57.448559, 59.073952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.632530, 57.219467, 59.401695>,  <72.626488, 57.082012, 59.598339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.632530, 57.219467, 59.401695>,  <72.642593, 57.448559, 59.073952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.632530, 57.219467, 59.401695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964457, 0.201748, 0.170645,
		-0.263037, 0.794529, 0.547298,
		-0.025166, -0.572732, 0.819356,
		72.624977, 57.047649, 59.647503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.817764, 57.902142, 59.573650>,  <72.642593, 57.448559, 59.073952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.817764, 57.902142, 59.573650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.883018, 57.523781, 59.685829>,  <72.922173, 57.296764, 59.753136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.883018, 57.523781, 59.685829>,  <72.817764, 57.902142, 59.573650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.883018, 57.523781, 59.685829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960795, 0.216905, 0.172701,
		-0.224189, 0.241280, 0.944205,
		0.163134, -0.945905, 0.280448,
		72.931961, 57.240009, 59.769962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.228683, 57.748074, 60.268372>,  <72.817764, 57.902142, 59.573650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.228683, 57.748074, 60.268372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.296249, 57.435036, 60.028702>,  <73.336792, 57.247215, 59.884899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.296249, 57.435036, 60.028702>,  <73.228683, 57.748074, 60.268372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.296249, 57.435036, 60.028702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953153, -0.025064, 0.301448,
		-0.250928, -0.622030, 0.741697,
		0.168920, -0.782592, -0.599179,
		73.346924, 57.200256, 59.848949>
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
