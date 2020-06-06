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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<23.089226, 17.213955, -2.663772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.751030, 17.035439, -2.546489>,  <22.548113, 16.928329, -2.476119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.751030, 17.035439, -2.546489>,  <23.089226, 17.213955, -2.663772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.751030, 17.035439, -2.546489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111329, 0.684344, 0.720610,
		-0.522256, 0.576627, -0.628291,
		-0.845491, -0.446290, 0.293207,
		22.497383, 16.901552, -2.458527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.560104, 17.687820, -2.437599>,  <23.089226, 17.213955, -2.663772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.560104, 17.687820, -2.437599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.496132, 17.341499, -2.247942>,  <22.457748, 17.133707, -2.134148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.496132, 17.341499, -2.247942>,  <22.560104, 17.687820, -2.437599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.496132, 17.341499, -2.247942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300842, 0.500225, 0.811954,
		-0.940168, -0.012784, -0.340471,
		-0.159932, -0.865802, 0.474141,
		22.448153, 17.081758, -2.105700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.036098, 18.010580, -1.982818>,  <22.560104, 17.687820, -2.437599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.036098, 18.010580, -1.982818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.160671, 17.659355, -1.837482>,  <22.235415, 17.448620, -1.750280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.160671, 17.659355, -1.837482>,  <22.036098, 18.010580, -1.982818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.160671, 17.659355, -1.837482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178548, 0.321477, 0.929932,
		-0.933344, -0.354484, -0.056658,
		0.311431, -0.878062, 0.363341,
		22.254101, 17.395937, -1.728479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.521385, 17.843475, -1.504642>,  <22.036098, 18.010580, -1.982818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.521385, 17.843475, -1.504642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.873592, 17.670322, -1.427392>,  <22.084917, 17.566431, -1.381042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.873592, 17.670322, -1.427392>,  <21.521385, 17.843475, -1.504642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.873592, 17.670322, -1.427392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113333, 0.203350, 0.972525,
		-0.460262, -0.878215, 0.129994,
		0.880520, -0.432884, 0.193125,
		22.137749, 17.540457, -1.369454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.520987, 17.415001, -0.942351>,  <21.521385, 17.843475, -1.504642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.520987, 17.415001, -0.942351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.913456, 17.492023, -0.948273>,  <22.148937, 17.538237, -0.951826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.913456, 17.492023, -0.948273>,  <21.520987, 17.415001, -0.942351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.913456, 17.492023, -0.948273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032248, 0.238943, 0.970498,
		0.190409, -0.951751, 0.240654,
		0.981175, 0.192553, -0.014805,
		22.207808, 17.549789, -0.952715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.763710, 17.233950, -0.333218>,  <21.520987, 17.415001, -0.942351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.763710, 17.233950, -0.333218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.078705, 17.461781, -0.427402>,  <22.267702, 17.598478, -0.483913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.078705, 17.461781, -0.427402>,  <21.763710, 17.233950, -0.333218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.078705, 17.461781, -0.427402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237505, 0.072087, 0.968708,
		0.568728, -0.818770, -0.078510,
		0.787489, 0.569578, -0.235460,
		22.314951, 17.632654, -0.498040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.506733, 17.046162, 0.027564>,  <21.763710, 17.233950, -0.333218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.506733, 17.046162, 0.027564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.429581, 17.435356, -0.023188>,  <22.383289, 17.668873, -0.053639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.429581, 17.435356, -0.023188>,  <22.506733, 17.046162, 0.027564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.429581, 17.435356, -0.023188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156714, 0.097100, 0.982859,
		0.968626, 0.209459, 0.133751,
		-0.192882, 0.972984, -0.126879,
		22.371716, 17.727251, -0.061252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.913040, 17.542080, 0.547821>,  <22.506733, 17.046162, 0.027564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.913040, 17.542080, 0.547821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.575603, 17.725010, 0.435247>,  <22.373142, 17.834768, 0.367703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.575603, 17.725010, 0.435247>,  <22.913040, 17.542080, 0.547821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.575603, 17.725010, 0.435247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259129, 0.112340, 0.959287,
		0.470323, 0.882175, 0.023738,
		-0.843592, 0.457326, -0.281433,
		22.322525, 17.862207, 0.350817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.766777, 18.157667, 0.973874>,  <22.913040, 17.542080, 0.547821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.766777, 18.157667, 0.973874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.403584, 18.056313, 0.840392>,  <22.185667, 17.995501, 0.760302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.403584, 18.056313, 0.840392>,  <22.766777, 18.157667, 0.973874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.403584, 18.056313, 0.840392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365671, 0.090357, 0.926348,
		-0.204572, 0.963136, -0.174698,
		-0.907984, -0.253387, -0.333706,
		22.131187, 17.980297, 0.740280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.327644, 18.552631, 1.366791>,  <22.766777, 18.157667, 0.973874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.327644, 18.552631, 1.366791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.126087, 18.241627, 1.216288>,  <22.005154, 18.055023, 1.125987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.126087, 18.241627, 1.216288>,  <22.327644, 18.552631, 1.366791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.126087, 18.241627, 1.216288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401078, -0.175182, 0.899137,
		-0.765003, 0.603976, -0.223570,
		-0.503892, -0.777512, -0.376256,
		21.974920, 18.008373, 1.103411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.617516, 18.549219, 1.517696>,  <22.327644, 18.552631, 1.366791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.617516, 18.549219, 1.517696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.698139, 18.158916, 1.483582>,  <21.746513, 17.924736, 1.463113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.698139, 18.158916, 1.483582>,  <21.617516, 18.549219, 1.517696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.698139, 18.158916, 1.483582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407468, -0.162714, 0.898607,
		-0.890698, -0.146373, -0.430386,
		0.201561, -0.975756, -0.085287,
		21.758608, 17.866190, 1.457996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.982782, 18.062864, 1.498646>,  <21.617516, 18.549219, 1.517696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.982782, 18.062864, 1.498646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.321667, 17.918270, 1.654370>,  <21.524998, 17.831514, 1.747805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.321667, 17.918270, 1.654370>,  <20.982782, 18.062864, 1.498646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.321667, 17.918270, 1.654370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462544, -0.141448, 0.875240,
		-0.261324, -0.921584, -0.287041,
		0.847209, -0.361490, 0.389309,
		21.575830, 17.809824, 1.771163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.954512, 17.282337, 1.589886>,  <20.982782, 18.062864, 1.498646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.954512, 17.282337, 1.589886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.152946, 17.513607, 1.848996>,  <21.272007, 17.652369, 2.004462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.152946, 17.513607, 1.848996>,  <20.954512, 17.282337, 1.589886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.152946, 17.513607, 1.848996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738935, -0.110620, 0.664634,
		0.455931, -0.808380, 0.372356,
		0.496087, 0.578174, 0.647775,
		21.301773, 17.687059, 2.043329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.597364, 17.264559, 2.212839>,  <20.954512, 17.282337, 1.589886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.597364, 17.264559, 2.212839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883869, 17.511578, 2.342824>,  <21.055773, 17.659788, 2.420815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883869, 17.511578, 2.342824>,  <20.597364, 17.264559, 2.212839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.883869, 17.511578, 2.342824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457839, 0.064431, 0.886698,
		0.526641, -0.783889, 0.328887,
		0.716263, 0.617548, 0.324963,
		21.098749, 17.696842, 2.440313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.700844, 17.045778, 2.781706>,  <20.597364, 17.264559, 2.212839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.700844, 17.045778, 2.781706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.859310, 17.412388, 2.803761>,  <20.954390, 17.632353, 2.816995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.859310, 17.412388, 2.803761>,  <20.700844, 17.045778, 2.781706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.859310, 17.412388, 2.803761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178000, 0.017750, 0.983870,
		0.900760, -0.399590, 0.170173,
		0.396166, 0.916522, 0.055138,
		20.978161, 17.687344, 2.820303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.312273, 17.005356, 3.237429>,  <20.700844, 17.045778, 2.781706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.312273, 17.005356, 3.237429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.104099, 17.346916, 3.237161>,  <20.979195, 17.551853, 3.237000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.104099, 17.346916, 3.237161>,  <21.312273, 17.005356, 3.237429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.104099, 17.346916, 3.237161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082703, -0.049625, 0.995338,
		0.849886, 0.518065, 0.096447,
		-0.520436, 0.853900, -0.000670,
		20.947968, 17.603086, 3.236959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.699875, 17.616915, 3.522398>,  <21.312273, 17.005356, 3.237429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.699875, 17.616915, 3.522398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.303570, 17.622795, 3.576328>,  <21.065786, 17.626324, 3.608686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.303570, 17.622795, 3.576328>,  <21.699875, 17.616915, 3.522398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.303570, 17.622795, 3.576328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131147, -0.149473, 0.980030,
		0.034559, 0.988657, 0.146164,
		-0.990760, 0.014699, 0.134825,
		21.006342, 17.627205, 3.616776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.464638, 17.879925, 4.226551>,  <21.699875, 17.616915, 3.522398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.464638, 17.879925, 4.226551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.132683, 17.688286, 4.112177>,  <20.933510, 17.573303, 4.043553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.132683, 17.688286, 4.112177>,  <21.464638, 17.879925, 4.226551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.132683, 17.688286, 4.112177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138170, -0.320044, 0.937273,
		-0.540555, 0.817336, 0.199404,
		-0.829885, -0.479096, -0.285933,
		20.883717, 17.544558, 4.026398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.842617, 18.208714, 4.604209>,  <21.464638, 17.879925, 4.226551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.842617, 18.208714, 4.604209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.792210, 17.831120, 4.482220>,  <20.761965, 17.604563, 4.409026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.792210, 17.831120, 4.482220>,  <20.842617, 18.208714, 4.604209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.792210, 17.831120, 4.482220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282606, -0.260525, 0.923180,
		-0.950922, 0.202526, -0.233945,
		-0.126020, -0.943986, -0.304974,
		20.754404, 17.547924, 4.390728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.167562, 17.965429, 4.687984>,  <20.842617, 18.208714, 4.604209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.167562, 17.965429, 4.687984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.426853, 17.664280, 4.733564>,  <20.582428, 17.483591, 4.760911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.426853, 17.664280, 4.733564>,  <20.167562, 17.965429, 4.687984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.426853, 17.664280, 4.733564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395651, -0.205170, 0.895190,
		-0.650585, -0.625371, -0.430872,
		0.648228, -0.752872, 0.113948,
		20.621323, 17.438419, 4.767748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.932579, 17.332066, 5.128161>,  <20.167562, 17.965429, 4.687984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.932579, 17.332066, 5.128161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.319412, 17.230335, 5.131432>,  <20.551512, 17.169296, 5.133394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.319412, 17.230335, 5.131432>,  <19.932579, 17.332066, 5.128161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.319412, 17.230335, 5.131432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009443, -0.003757, 0.999948,
		-0.254282, -0.967111, -0.006035,
		0.967084, -0.254326, 0.008177,
		20.609537, 17.154037, 5.133884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.217632, 16.689753, 5.523253>,  <19.932579, 17.332066, 5.128161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.217632, 16.689753, 5.523253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.515873, 16.956284, 5.519563>,  <20.694817, 17.116203, 5.517348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.515873, 16.956284, 5.519563>,  <20.217632, 16.689753, 5.523253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.515873, 16.956284, 5.519563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104284, -0.102993, 0.989200,
		0.658182, -0.738511, -0.146279,
		0.745601, 0.666328, -0.009226,
		20.739553, 17.156181, 5.516795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.792229, 16.391214, 5.876330>,  <20.217632, 16.689753, 5.523253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.792229, 16.391214, 5.876330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.854408, 16.786205, 5.887115>,  <20.891716, 17.023199, 5.893585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.854408, 16.786205, 5.887115>,  <20.792229, 16.391214, 5.876330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.854408, 16.786205, 5.887115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263273, -0.067719, 0.962342,
		0.952115, -0.142495, -0.270502,
		0.155447, 0.987476, 0.026961,
		20.901043, 17.082449, 5.895203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.415981, 16.479893, 6.254471>,  <20.792229, 16.391214, 5.876330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.415981, 16.479893, 6.254471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.197563, 16.814835, 6.264840>,  <21.066513, 17.015800, 6.271062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.197563, 16.814835, 6.264840>,  <21.415981, 16.479893, 6.254471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.197563, 16.814835, 6.264840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095763, 0.031646, 0.994901,
		0.832265, 0.545743, -0.097468,
		-0.546044, 0.837355, 0.025924,
		21.033751, 17.066042, 6.272617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.861078, 16.998407, 6.537821>,  <21.415981, 16.479893, 6.254471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.861078, 16.998407, 6.537821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.474468, 17.049103, 6.627054>,  <21.242502, 17.079521, 6.680594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.474468, 17.049103, 6.627054>,  <21.861078, 16.998407, 6.537821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.474468, 17.049103, 6.627054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218068, -0.052326, 0.974530,
		0.135184, 0.990555, 0.022936,
		-0.966526, 0.126739, 0.223082,
		21.184511, 17.087124, 6.693979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.261805, 17.641262, 6.352426>,  <21.861078, 16.998407, 6.537821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.261805, 17.641262, 6.352426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.175907, 18.031300, 6.330251>,  <22.124369, 18.265322, 6.316946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.175907, 18.031300, 6.330251>,  <22.261805, 17.641262, 6.352426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.175907, 18.031300, 6.330251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261994, -0.002830, 0.965065,
		0.940874, 0.221766, 0.256077,
		-0.214744, 0.975096, -0.055439,
		22.111485, 18.323828, 6.313619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.632708, 18.122074, 6.919758>,  <22.261805, 17.641262, 6.352426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.632708, 18.122074, 6.919758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.288849, 18.277576, 6.787167>,  <22.082535, 18.370878, 6.707612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.288849, 18.277576, 6.787167>,  <22.632708, 18.122074, 6.919758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.288849, 18.277576, 6.787167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312166, 0.113925, 0.943172,
		0.404429, 0.914270, 0.023422,
		-0.859645, 0.388757, -0.331479,
		22.030956, 18.394203, 6.687723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.432682, 18.463631, 7.547175>,  <22.632708, 18.122074, 6.919758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.432682, 18.463631, 7.547175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.097488, 18.533276, 7.340305>,  <21.896372, 18.575064, 7.216184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.097488, 18.533276, 7.340305>,  <22.432682, 18.463631, 7.547175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.097488, 18.533276, 7.340305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397834, 0.453771, 0.797383,
		0.373514, 0.873943, -0.310984,
		-0.837983, 0.174114, -0.517174,
		21.846094, 18.585510, 7.185153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.801571, 19.158470, 7.392803>,  <22.432682, 18.463631, 7.547175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.801571, 19.158470, 7.392803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.740486, 19.114059, 7.785608>,  <22.703835, 19.087414, 8.021292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.740486, 19.114059, 7.785608>,  <22.801571, 19.158470, 7.392803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.740486, 19.114059, 7.785608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408162, 0.897877, 0.164986,
		-0.900046, 0.426017, -0.091799,
		-0.152711, -0.111026, 0.982015,
		22.694674, 19.080751, 8.080213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.583687, 19.725504, 7.660214>,  <22.801571, 19.158470, 7.392803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.583687, 19.725504, 7.660214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.719288, 19.573509, 8.004467>,  <22.800650, 19.482313, 8.211019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.719288, 19.573509, 8.004467>,  <22.583687, 19.725504, 7.660214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.719288, 19.573509, 8.004467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217334, 0.921688, 0.321337,
		-0.915337, 0.078110, 0.395041,
		0.339004, -0.379987, 0.860631,
		22.820990, 19.459513, 8.262656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.852018, 19.625557, 7.891567>,  <22.583687, 19.725504, 7.660214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.852018, 19.625557, 7.891567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.545937, 19.380417, 7.812697>,  <21.362288, 19.233334, 7.765376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.545937, 19.380417, 7.812697>,  <21.852018, 19.625557, 7.891567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.545937, 19.380417, 7.812697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075848, -0.389959, 0.917703,
		-0.639302, 0.687276, 0.344882,
		-0.765206, -0.612848, -0.197173,
		21.316376, 19.196562, 7.753545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.308281, 19.650492, 8.378731>,  <21.852018, 19.625557, 7.891567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.308281, 19.650492, 8.378731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.427250, 19.284058, 8.271153>,  <21.498632, 19.064198, 8.206607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.427250, 19.284058, 8.271153>,  <21.308281, 19.650492, 8.378731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.427250, 19.284058, 8.271153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144613, -0.235216, 0.961125,
		-0.943730, -0.324754, 0.062518,
		0.297423, -0.916083, -0.268944,
		21.516478, 19.009233, 8.190471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.898243, 19.004627, 8.647940>,  <21.308281, 19.650492, 8.378731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.898243, 19.004627, 8.647940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.282539, 18.904602, 8.599863>,  <21.513117, 18.844587, 8.571017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.282539, 18.904602, 8.599863>,  <20.898243, 19.004627, 8.647940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.282539, 18.904602, 8.599863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132922, 0.034592, 0.990523,
		-0.243537, -0.967611, 0.066473,
		0.960740, -0.250064, -0.120193,
		21.570761, 18.829582, 8.563806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.056908, 18.417133, 8.990406>,  <20.898243, 19.004627, 8.647940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.056908, 18.417133, 8.990406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.393269, 18.633530, 8.984520>,  <21.595085, 18.763367, 8.980989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.393269, 18.633530, 8.984520>,  <21.056908, 18.417133, 8.990406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.393269, 18.633530, 8.984520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020055, -0.003978, 0.999791,
		0.540818, -0.841020, -0.014195,
		0.840901, 0.540989, -0.014716,
		21.645538, 18.795826, 8.980105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.627344, 18.003614, 9.236858>,  <21.056908, 18.417133, 8.990406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.627344, 18.003614, 9.236858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.652340, 18.397980, 9.298913>,  <21.667337, 18.634600, 9.336145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.652340, 18.397980, 9.298913>,  <21.627344, 18.003614, 9.236858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.652340, 18.397980, 9.298913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185978, -0.141215, 0.972353,
		0.980565, -0.089616, 0.174534,
		0.062492, 0.985914, 0.155137,
		21.671087, 18.693754, 9.345454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.069096, 18.087938, 9.807606>,  <21.627344, 18.003614, 9.236858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.069096, 18.087938, 9.807606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.820419, 18.401196, 9.802115>,  <21.671213, 18.589149, 9.798821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.820419, 18.401196, 9.802115>,  <22.069096, 18.087938, 9.807606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.820419, 18.401196, 9.802115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061380, -0.031240, 0.997625,
		0.780855, 0.621056, 0.067491,
		-0.621689, 0.783144, -0.013727,
		21.633913, 18.636139, 9.797997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.328728, 18.464752, 10.354085>,  <22.069096, 18.087938, 9.807606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.328728, 18.464752, 10.354085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.976524, 18.642506, 10.288077>,  <21.765202, 18.749157, 10.248473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.976524, 18.642506, 10.288077>,  <22.328728, 18.464752, 10.354085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.976524, 18.642506, 10.288077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123690, 0.120675, 0.984956,
		0.457610, 0.887673, -0.051289,
		-0.880508, 0.444381, -0.165018,
		21.712372, 18.775820, 10.238572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.362373, 19.060511, 10.639049>,  <22.328728, 18.464752, 10.354085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.362373, 19.060511, 10.639049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.971725, 18.975182, 10.628387>,  <21.737337, 18.923985, 10.621991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.971725, 18.975182, 10.628387>,  <22.362373, 19.060511, 10.639049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.971725, 18.975182, 10.628387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074250, 0.218352, 0.973041,
		-0.201754, 0.952268, -0.229086,
		-0.976618, -0.213324, -0.026652,
		21.678740, 18.911184, 10.620392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.011293, 19.598581, 10.990522>,  <22.362373, 19.060511, 10.639049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.011293, 19.598581, 10.990522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.766026, 19.282650, 10.984953>,  <21.618864, 19.093092, 10.981611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.766026, 19.282650, 10.984953>,  <22.011293, 19.598581, 10.990522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.766026, 19.282650, 10.984953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075834, 0.041310, 0.996264,
		-0.786302, 0.611936, -0.085226,
		-0.613170, -0.789828, -0.013923,
		21.582075, 19.045702, 10.980776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.662287, 19.757669, 11.425618>,  <22.011293, 19.598581, 10.990522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.662287, 19.757669, 11.425618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.577961, 19.366871, 11.412775>,  <21.527365, 19.132391, 11.405069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.577961, 19.366871, 11.412775>,  <21.662287, 19.757669, 11.425618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.577961, 19.366871, 11.412775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080349, -0.050055, 0.995509,
		-0.974218, 0.207290, 0.089053,
		-0.210817, -0.976998, -0.032109,
		21.514715, 19.073771, 11.403142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.194275, 19.662975, 11.971101>,  <21.662287, 19.757669, 11.425618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.194275, 19.662975, 11.971101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.354507, 19.303032, 11.902064>,  <21.450647, 19.087065, 11.860642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.354507, 19.303032, 11.902064>,  <21.194275, 19.662975, 11.971101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.354507, 19.303032, 11.902064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090356, -0.148652, 0.984753,
		-0.911796, -0.410067, 0.021761,
		0.400580, -0.899860, -0.172592,
		21.474682, 19.033073, 11.850286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.760189, 19.147816, 12.228059>,  <21.194275, 19.662975, 11.971101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.760189, 19.147816, 12.228059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.110867, 18.955406, 12.229979>,  <21.321274, 18.839960, 12.231131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.110867, 18.955406, 12.229979>,  <20.760189, 19.147816, 12.228059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.110867, 18.955406, 12.229979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141005, -0.247425, 0.958592,
		-0.459917, -0.841069, -0.284743,
		0.876694, -0.481023, 0.004800,
		21.373875, 18.811100, 12.231419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.688917, 18.490171, 12.620814>,  <20.760189, 19.147816, 12.228059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.688917, 18.490171, 12.620814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.083179, 18.557346, 12.627538>,  <21.319736, 18.597651, 12.631572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.083179, 18.557346, 12.627538>,  <20.688917, 18.490171, 12.620814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.083179, 18.557346, 12.627538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027447, -0.257762, 0.965818,
		0.166529, -0.951502, -0.258674,
		0.985655, 0.167936, 0.016808,
		21.378876, 18.607727, 12.632581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.986551, 17.851671, 12.857731>,  <20.688917, 18.490171, 12.620814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.986551, 17.851671, 12.857731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.237793, 18.157364, 12.916300>,  <21.388538, 18.340778, 12.951441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.237793, 18.157364, 12.916300>,  <20.986551, 17.851671, 12.857731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.237793, 18.157364, 12.916300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132543, -0.290498, 0.947652,
		0.766760, -0.575815, -0.283755,
		0.628102, 0.764231, 0.146422,
		21.426224, 18.386633, 12.960226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.504959, 17.592312, 13.303755>,  <20.986551, 17.851671, 12.857731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.504959, 17.592312, 13.303755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.569477, 17.985493, 13.339054>,  <21.608189, 18.221401, 13.360233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.569477, 17.985493, 13.339054>,  <21.504959, 17.592312, 13.303755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.569477, 17.985493, 13.339054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107261, -0.106349, 0.988527,
		0.981060, -0.149978, -0.122586,
		0.161294, 0.982953, 0.088248,
		21.617865, 18.280378, 13.365529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.071012, 17.721199, 13.742425>,  <21.504959, 17.592312, 13.303755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.071012, 17.721199, 13.742425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887959, 18.076359, 13.761221>,  <21.778126, 18.289454, 13.772498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887959, 18.076359, 13.761221>,  <22.071012, 17.721199, 13.742425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.887959, 18.076359, 13.761221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328412, 0.119683, 0.936921,
		0.826267, 0.444199, -0.346367,
		-0.457634, 0.887898, 0.046990,
		21.750668, 18.342728, 13.775318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.498423, 18.149931, 14.112745>,  <22.071012, 17.721199, 13.742425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.498423, 18.149931, 14.112745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.161114, 18.363365, 14.138618>,  <21.958729, 18.491425, 14.154142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.161114, 18.363365, 14.138618>,  <22.498423, 18.149931, 14.112745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.161114, 18.363365, 14.138618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215545, 0.225470, 0.950107,
		0.492378, 0.815139, -0.305144,
		-0.843270, 0.533584, 0.064683,
		21.908133, 18.523439, 14.158023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.674313, 18.731459, 14.414739>,  <22.498423, 18.149931, 14.112745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.674313, 18.731459, 14.414739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.279419, 18.729294, 14.478415>,  <22.042482, 18.727995, 14.516621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.279419, 18.729294, 14.478415>,  <22.674313, 18.731459, 14.414739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.279419, 18.729294, 14.478415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143940, 0.397660, 0.906172,
		-0.068207, 0.917517, -0.391804,
		-0.987233, -0.005411, 0.159190,
		21.983250, 18.727671, 14.526172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.423609, 19.421173, 14.520744>,  <22.674313, 18.731459, 14.414739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.423609, 19.421173, 14.520744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.160400, 19.176430, 14.696306>,  <22.002476, 19.029585, 14.801643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.160400, 19.176430, 14.696306>,  <22.423609, 19.421173, 14.520744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.160400, 19.176430, 14.696306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095775, 0.510135, 0.854745,
		-0.746882, 0.604478, -0.277080,
		-0.658023, -0.611857, 0.438905,
		21.962994, 18.992872, 14.827977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.026033, 19.910891, 14.934774>,  <22.423609, 19.421173, 14.520744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.026033, 19.910891, 14.934774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.927696, 19.548660, 15.073048>,  <21.868694, 19.331322, 15.156012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.927696, 19.548660, 15.073048>,  <22.026033, 19.910891, 14.934774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.927696, 19.548660, 15.073048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047078, 0.367362, 0.928886,
		-0.968166, 0.212085, -0.132945,
		-0.245842, -0.905574, 0.345683,
		21.853943, 19.276987, 15.176753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.358227, 19.879442, 15.318150>,  <22.026033, 19.910891, 14.934774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.358227, 19.879442, 15.318150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.560509, 19.564819, 15.459906>,  <21.681877, 19.376045, 15.544959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.560509, 19.564819, 15.459906>,  <21.358227, 19.879442, 15.318150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.560509, 19.564819, 15.459906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046437, 0.385375, 0.921591,
		-0.861457, -0.482509, 0.158360,
		0.505703, -0.786557, 0.354390,
		21.712219, 19.328852, 15.566223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.987459, 19.642710, 15.920377>,  <21.358227, 19.879442, 15.318150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.987459, 19.642710, 15.920377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.332840, 19.441723, 15.938173>,  <21.540068, 19.321131, 15.948852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.332840, 19.441723, 15.938173>,  <20.987459, 19.642710, 15.920377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.332840, 19.441723, 15.938173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051625, 0.175760, 0.983078,
		-0.501783, -0.846544, 0.177700,
		0.863452, -0.502466, 0.044491,
		21.591875, 19.290983, 15.951521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.009220, 19.228613, 16.480062>,  <20.987459, 19.642710, 15.920377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.009220, 19.228613, 16.480062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.398216, 19.276505, 16.400135>,  <21.631615, 19.305239, 16.352179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.398216, 19.276505, 16.400135>,  <21.009220, 19.228613, 16.480062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.398216, 19.276505, 16.400135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177428, 0.175091, 0.968433,
		0.150925, -0.977247, 0.149033,
		0.972492, 0.119718, -0.199816,
		21.689964, 19.312422, 16.340189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.328072, 18.811560, 17.005465>,  <21.009220, 19.228613, 16.480062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.328072, 18.811560, 17.005465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.613800, 19.069466, 16.896633>,  <21.785236, 19.224209, 16.831335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.613800, 19.069466, 16.896633>,  <21.328072, 18.811560, 17.005465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.613800, 19.069466, 16.896633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200581, 0.183841, 0.962273,
		0.670458, -0.741945, 0.001994,
		0.714320, 0.644763, -0.272078,
		21.828096, 19.262894, 16.815010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.829538, 18.644329, 17.438154>,  <21.328072, 18.811560, 17.005465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.829538, 18.644329, 17.438154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.920731, 19.004044, 17.288857>,  <21.975445, 19.219872, 17.199278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.920731, 19.004044, 17.288857>,  <21.829538, 18.644329, 17.438154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.920731, 19.004044, 17.288857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133172, 0.350936, 0.926881,
		0.964516, -0.261015, -0.039753,
		0.227979, 0.899286, -0.373244,
		21.989124, 19.273829, 17.176884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.490406, 18.848486, 17.775215>,  <21.829538, 18.644329, 17.438154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.490406, 18.848486, 17.775215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.326893, 19.194862, 17.659946>,  <22.228785, 19.402689, 17.590786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.326893, 19.194862, 17.659946>,  <22.490406, 18.848486, 17.775215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.326893, 19.194862, 17.659946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236121, 0.405357, 0.883138,
		0.881558, 0.292968, -0.370170,
		-0.408782, 0.865942, -0.288170,
		22.204258, 19.454645, 17.573496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.931906, 19.374775, 17.966032>,  <22.490406, 18.848486, 17.775215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.931906, 19.374775, 17.966032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.576954, 19.555153, 17.927662>,  <22.363983, 19.663380, 17.904640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.576954, 19.555153, 17.927662>,  <22.931906, 19.374775, 17.966032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.576954, 19.555153, 17.927662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154660, 0.487176, 0.859500,
		0.434321, 0.747869, -0.502054,
		-0.887382, 0.450946, -0.095925,
		22.310740, 19.690437, 17.898884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.114656, 19.952303, 18.291372>,  <22.931906, 19.374775, 17.966032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.114656, 19.952303, 18.291372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.715786, 19.930519, 18.270676>,  <22.476463, 19.917448, 18.258259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.715786, 19.930519, 18.270676>,  <23.114656, 19.952303, 18.291372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.715786, 19.930519, 18.270676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069865, 0.419280, 0.905165,
		-0.027601, 0.906222, -0.421900,
		-0.997175, -0.054459, -0.051740,
		22.416634, 19.914181, 18.255154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.987286, 20.395693, 18.811911>,  <23.114656, 19.952303, 18.291372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.987286, 20.395693, 18.811911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.621544, 20.241604, 18.762014>,  <22.402100, 20.149151, 18.732077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.621544, 20.241604, 18.762014>,  <22.987286, 20.395693, 18.811911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.621544, 20.241604, 18.762014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206089, 0.177564, 0.962288,
		-0.348547, 0.905579, -0.241746,
		-0.914354, -0.385224, -0.124740,
		22.347239, 20.126038, 18.724592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.510283, 20.889771, 19.060511>,  <22.987286, 20.395693, 18.811911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.510283, 20.889771, 19.060511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.323067, 20.536530, 19.073591>,  <22.210737, 20.324585, 19.081440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.323067, 20.536530, 19.073591>,  <22.510283, 20.889771, 19.060511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.323067, 20.536530, 19.073591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255557, 0.170682, 0.951608,
		-0.845948, 0.437035, -0.305569,
		-0.468041, -0.883101, 0.032701,
		22.182653, 20.271599, 19.083401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.915817, 21.008772, 19.427252>,  <22.510283, 20.889771, 19.060511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.915817, 21.008772, 19.427252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.969856, 20.613865, 19.460831>,  <22.002279, 20.376921, 19.480978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.969856, 20.613865, 19.460831>,  <21.915817, 21.008772, 19.427252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.969856, 20.613865, 19.460831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213909, 0.053664, 0.975378,
		-0.967467, -0.149728, -0.203936,
		0.135098, -0.987270, 0.083946,
		22.010386, 20.317684, 19.486015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.262915, 20.693604, 19.548027>,  <21.915817, 21.008772, 19.427252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.262915, 20.693604, 19.548027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.553268, 20.444649, 19.665146>,  <21.727480, 20.295277, 19.735416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.553268, 20.444649, 19.665146>,  <21.262915, 20.693604, 19.548027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.553268, 20.444649, 19.665146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399839, -0.035450, 0.915900,
		-0.559664, -0.781907, -0.274587,
		0.725882, -0.622386, 0.292797,
		21.771032, 20.257933, 19.752985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.928734, 20.424435, 20.126881>,  <21.262915, 20.693604, 19.548027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.928734, 20.424435, 20.126881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.311707, 20.315163, 20.164192>,  <21.541491, 20.249599, 20.186579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.311707, 20.315163, 20.164192>,  <20.928734, 20.424435, 20.126881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.311707, 20.315163, 20.164192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094213, 0.009722, 0.995505,
		-0.272861, -0.961913, -0.016429,
		0.957430, -0.273182, 0.093277,
		21.598936, 20.233208, 20.192175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.904091, 19.731977, 20.489483>,  <20.928734, 20.424435, 20.126881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.904091, 19.731977, 20.489483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.248379, 19.930607, 20.534340>,  <21.454952, 20.049784, 20.561255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.248379, 19.930607, 20.534340>,  <20.904091, 19.731977, 20.489483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.248379, 19.930607, 20.534340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062382, -0.115741, 0.991319,
		0.505242, -0.860243, -0.068644,
		0.860720, 0.496574, 0.112141,
		21.506596, 20.079578, 20.567982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.216888, 19.372604, 21.063032>,  <20.904091, 19.731977, 20.489483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.216888, 19.372604, 21.063032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.430210, 19.708542, 21.022545>,  <21.558203, 19.910105, 20.998253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.430210, 19.708542, 21.022545>,  <21.216888, 19.372604, 21.063032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.430210, 19.708542, 21.022545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189259, -0.001839, 0.981925,
		0.824480, -0.542822, -0.159929,
		0.533304, 0.839846, -0.101217,
		21.590202, 19.960495, 20.992180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.845984, 19.381033, 21.588717>,  <21.216888, 19.372604, 21.063032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.845984, 19.381033, 21.588717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.771603, 19.752937, 21.461618>,  <21.726974, 19.976080, 21.385359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.771603, 19.752937, 21.461618>,  <21.845984, 19.381033, 21.588717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.771603, 19.752937, 21.461618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215050, 0.354058, 0.910163,
		0.958736, 0.100915, -0.265783,
		-0.185952, 0.929763, -0.317747,
		21.715816, 20.031866, 21.366295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.429754, 19.748623, 21.804737>,  <21.845984, 19.381033, 21.588717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.429754, 19.748623, 21.804737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.100029, 19.971535, 21.764849>,  <21.902193, 20.105282, 21.740915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.100029, 19.971535, 21.764849>,  <22.429754, 19.748623, 21.804737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.100029, 19.971535, 21.764849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058466, 0.259004, 0.964105,
		0.563105, 0.788895, -0.246083,
		-0.824314, 0.557280, -0.099723,
		21.852736, 20.138720, 21.734932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.611115, 20.302856, 22.208191>,  <22.429754, 19.748623, 21.804737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.611115, 20.302856, 22.208191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.219185, 20.356228, 22.148672>,  <21.984028, 20.388250, 22.112961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.219185, 20.356228, 22.148672>,  <22.611115, 20.302856, 22.208191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.219185, 20.356228, 22.148672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056533, 0.529065, 0.846696,
		0.191698, 0.838026, -0.510848,
		-0.979824, 0.133430, -0.148797,
		21.925238, 20.396257, 22.104033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.556210, 20.948048, 22.432985>,  <22.611115, 20.302856, 22.208191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.556210, 20.948048, 22.432985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.189125, 20.789734, 22.446615>,  <21.968874, 20.694746, 22.454792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.189125, 20.789734, 22.446615>,  <22.556210, 20.948048, 22.432985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.189125, 20.789734, 22.446615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226624, 0.592057, 0.773376,
		-0.326262, 0.702014, -0.633031,
		-0.917711, -0.395783, 0.034073,
		21.913811, 20.671000, 22.456837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.144690, 21.463757, 22.649797>,  <22.556210, 20.948048, 22.432985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.144690, 21.463757, 22.649797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.924168, 21.148232, 22.758490>,  <21.791855, 20.958916, 22.823704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.924168, 21.148232, 22.758490>,  <22.144690, 21.463757, 22.649797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.924168, 21.148232, 22.758490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220407, 0.451826, 0.864450,
		-0.804665, 0.416683, -0.422953,
		-0.551303, -0.788815, 0.271729,
		21.758778, 20.911587, 22.840008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.470316, 21.794561, 22.927252>,  <22.144690, 21.463757, 22.649797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.470316, 21.794561, 22.927252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.476070, 21.417255, 23.059940>,  <21.479523, 21.190872, 23.139553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.476070, 21.417255, 23.059940>,  <21.470316, 21.794561, 22.927252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.476070, 21.417255, 23.059940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373062, 0.302739, 0.877026,
		-0.927695, -0.136369, -0.347542,
		0.014384, -0.943267, 0.331723,
		21.480385, 21.134275, 23.159458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.772654, 21.681631, 23.303656>,  <21.470316, 21.794561, 22.927252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.772654, 21.681631, 23.303656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.007706, 21.392742, 23.449581>,  <21.148737, 21.219410, 23.537136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.007706, 21.392742, 23.449581>,  <20.772654, 21.681631, 23.303656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.007706, 21.392742, 23.449581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411256, 0.121698, 0.903359,
		-0.696823, -0.680871, -0.225505,
		0.587628, -0.722222, 0.364814,
		21.183994, 21.176075, 23.559025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.325281, 21.209368, 23.656500>,  <20.772654, 21.681631, 23.303656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.325281, 21.209368, 23.656500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.693478, 21.163452, 23.805908>,  <20.914396, 21.135902, 23.895554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.693478, 21.163452, 23.805908>,  <20.325281, 21.209368, 23.656500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.693478, 21.163452, 23.805908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354126, 0.159037, 0.921576,
		-0.165191, -0.980577, 0.105743,
		0.920493, -0.114790, 0.373519,
		20.969625, 21.129015, 23.917963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.241501, 20.793665, 24.337933>,  <20.325281, 21.209368, 23.656500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.241501, 20.793665, 24.337933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.616116, 20.932209, 24.359610>,  <20.840883, 21.015335, 24.372616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.616116, 20.932209, 24.359610>,  <20.241501, 20.793665, 24.337933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.616116, 20.932209, 24.359610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178785, 0.338892, 0.923682,
		0.301558, -0.874751, 0.379308,
		0.936536, 0.346358, 0.054196,
		20.897076, 21.036118, 24.375868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.576452, 20.491405, 24.968092>,  <20.241501, 20.793665, 24.337933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.576452, 20.491405, 24.968092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.762623, 20.831478, 24.869646>,  <20.874325, 21.035521, 24.810579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.762623, 20.831478, 24.869646>,  <20.576452, 20.491405, 24.968092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.762623, 20.831478, 24.869646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188571, 0.366932, 0.910935,
		0.864765, -0.377563, 0.331099,
		0.465426, 0.850180, -0.246113,
		20.902250, 21.086533, 24.795813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.108145, 20.606590, 25.503220>,  <20.576452, 20.491405, 24.968092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.108145, 20.606590, 25.503220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.053200, 20.954655, 25.313925>,  <21.020233, 21.163492, 25.200348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.053200, 20.954655, 25.313925>,  <21.108145, 20.606590, 25.503220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.053200, 20.954655, 25.313925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095528, 0.463903, 0.880720,
		0.985904, 0.166185, 0.019402,
		-0.137362, 0.870159, -0.473239,
		21.011992, 21.215702, 25.171953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.376593, 21.015137, 25.898237>,  <21.108145, 20.606590, 25.503220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.376593, 21.015137, 25.898237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.150970, 21.270737, 25.689041>,  <21.015596, 21.424097, 25.563524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.150970, 21.270737, 25.689041>,  <21.376593, 21.015137, 25.898237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.150970, 21.270737, 25.689041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326059, 0.409533, 0.852038,
		0.758635, 0.651122, -0.022647,
		-0.564055, 0.639001, -0.522990,
		20.981754, 21.462437, 25.532145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.549688, 21.710587, 26.076979>,  <21.376593, 21.015137, 25.898237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.549688, 21.710587, 26.076979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.171085, 21.643864, 25.966488>,  <20.943924, 21.603830, 25.900194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.171085, 21.643864, 25.966488>,  <21.549688, 21.710587, 26.076979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.171085, 21.643864, 25.966488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317983, 0.627757, 0.710498,
		0.054888, 0.760327, -0.647218,
		-0.946506, -0.166807, -0.276227,
		20.887133, 21.593822, 25.883619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.160320, 22.384108, 25.874994>,  <21.549688, 21.710587, 26.076979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.160320, 22.384108, 25.874994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.929291, 22.102619, 26.040493>,  <20.790674, 21.933725, 26.139791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.929291, 22.102619, 26.040493>,  <21.160320, 22.384108, 25.874994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.929291, 22.102619, 26.040493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396295, 0.684807, 0.611547,
		-0.713696, 0.189247, -0.674406,
		-0.577571, -0.703722, 0.413746,
		20.756020, 21.891502, 26.164618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.155193, 22.410288, 26.615057>,  <21.160320, 22.384108, 25.874994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.155193, 22.410288, 26.615057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.001492, 22.636806, 26.906717>,  <20.909271, 22.772718, 27.081713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.001492, 22.636806, 26.906717>,  <21.155193, 22.410288, 26.615057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.001492, 22.636806, 26.906717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760835, -0.641602, 0.097351,
		0.522953, -0.517355, 0.677395,
		-0.384253, 0.566296, 0.729149,
		20.886215, 22.806696, 27.125462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.069643, 21.969212, 27.339954>,  <21.155193, 22.410288, 26.615057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.069643, 21.969212, 27.339954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.870068, 22.288757, 27.205564>,  <20.750322, 22.480484, 27.124931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.870068, 22.288757, 27.205564>,  <21.069643, 21.969212, 27.339954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.870068, 22.288757, 27.205564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811231, -0.566907, -0.143247,
		-0.304900, 0.201080, 0.930915,
		-0.498938, 0.798863, -0.335972,
		20.720387, 22.528416, 27.104773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.366896, 22.072815, 27.554892>,  <21.069643, 21.969212, 27.339954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.366896, 22.072815, 27.554892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.371189, 22.252285, 27.197439>,  <20.373766, 22.359966, 26.982967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.371189, 22.252285, 27.197439>,  <20.366896, 22.072815, 27.554892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.371189, 22.252285, 27.197439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827127, -0.498216, -0.260080,
		-0.561913, 0.741939, 0.365760,
		0.010736, 0.448673, -0.893632,
		20.374411, 22.386887, 26.929350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.736879, 22.525267, 27.379486>,  <20.366896, 22.072815, 27.554892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.736879, 22.525267, 27.379486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.893497, 22.388680, 27.037704>,  <19.987469, 22.306728, 26.832636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.893497, 22.388680, 27.037704>,  <19.736879, 22.525267, 27.379486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.893497, 22.388680, 27.037704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897971, -0.344490, -0.273816,
		-0.200852, 0.874487, -0.441510,
		0.391544, -0.341466, -0.854455,
		20.010962, 22.286240, 26.781368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.847755, 22.991268, 26.911278>,  <19.736879, 22.525267, 27.379486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.847755, 22.991268, 26.911278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.505070, 23.161556, 27.027761>,  <19.299458, 23.263729, 27.097652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.505070, 23.161556, 27.027761>,  <19.847755, 22.991268, 26.911278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.505070, 23.161556, 27.027761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207544, 0.232338, -0.950234,
		-0.472193, -0.874518, -0.110692,
		-0.856715, 0.425720, 0.291210,
		19.248055, 23.289272, 27.115124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.187117, 22.834167, 26.554029>,  <19.847755, 22.991268, 26.911278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.187117, 22.834167, 26.554029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.185287, 23.221382, 26.654333>,  <19.184189, 23.453711, 26.714516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.185287, 23.221382, 26.654333>,  <19.187117, 22.834167, 26.554029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.185287, 23.221382, 26.654333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148453, 0.247327, -0.957492,
		-0.988909, -0.041607, 0.142576,
		-0.004575, 0.968038, 0.250761,
		19.183914, 23.511793, 26.729561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.587730, 23.141497, 26.222513>,  <19.187117, 22.834167, 26.554029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.587730, 23.141497, 26.222513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.915676, 23.364624, 26.274143>,  <19.112444, 23.498501, 26.305122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.915676, 23.364624, 26.274143>,  <18.587730, 23.141497, 26.222513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.915676, 23.364624, 26.274143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072633, 0.122290, -0.989833,
		-0.567931, 0.820905, 0.059746,
		0.819865, 0.557817, 0.129077,
		19.161636, 23.531969, 26.312866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.502100, 23.747984, 25.804213>,  <18.587730, 23.141497, 26.222513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.502100, 23.747984, 25.804213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.885567, 23.649864, 25.861879>,  <19.115646, 23.590992, 25.896481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.885567, 23.649864, 25.861879>,  <18.502100, 23.747984, 25.804213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.885567, 23.649864, 25.861879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164510, 0.064454, -0.984267,
		0.232149, 0.967302, 0.102144,
		0.958667, -0.245301, 0.144168,
		19.173166, 23.576275, 25.905130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.992609, 24.177315, 25.388950>,  <18.502100, 23.747984, 25.804213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.992609, 24.177315, 25.388950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.130005, 23.805256, 25.440863>,  <19.212442, 23.582022, 25.472010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.130005, 23.805256, 25.440863>,  <18.992609, 24.177315, 25.388950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.130005, 23.805256, 25.440863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148752, -0.082562, -0.985422,
		0.927301, 0.357789, 0.110002,
		0.343491, -0.930146, 0.129781,
		19.233051, 23.526213, 25.479797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.660025, 24.078585, 25.018503>,  <18.992609, 24.177315, 25.388950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.660025, 24.078585, 25.018503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.523548, 23.704227, 25.053583>,  <19.441662, 23.479612, 25.074631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.523548, 23.704227, 25.053583>,  <19.660025, 24.078585, 25.018503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.523548, 23.704227, 25.053583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257911, -0.182924, -0.948694,
		0.903920, -0.301066, 0.303789,
		-0.341190, -0.935894, 0.087701,
		19.421190, 23.423460, 25.079893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.201900, 23.683270, 24.692696>,  <19.660025, 24.078585, 25.018503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.201900, 23.683270, 24.692696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.876270, 23.450981, 24.695332>,  <19.680891, 23.311609, 24.696913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.876270, 23.450981, 24.695332>,  <20.201900, 23.683270, 24.692696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.876270, 23.450981, 24.695332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144268, -0.213209, -0.966296,
		0.562553, -0.785688, 0.257348,
		-0.814077, -0.580721, 0.006592,
		19.632048, 23.276766, 24.697309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.453506, 23.049917, 24.452837>,  <20.201900, 23.683270, 24.692696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.453506, 23.049917, 24.452837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.056240, 23.027424, 24.411930>,  <19.817881, 23.013927, 24.387386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.056240, 23.027424, 24.411930>,  <20.453506, 23.049917, 24.452837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.056240, 23.027424, 24.411930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114092, -0.283251, -0.952235,
		0.024582, -0.957396, 0.287731,
		-0.993166, -0.056236, -0.102268,
		19.758289, 23.010553, 24.381250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.337093, 22.468781, 24.049646>,  <20.453506, 23.049917, 24.452837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.337093, 22.468781, 24.049646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.987125, 22.661461, 24.029713>,  <19.777145, 22.777069, 24.017754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.987125, 22.661461, 24.029713>,  <20.337093, 22.468781, 24.049646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.987125, 22.661461, 24.029713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052328, -0.196339, -0.979139,
		-0.481436, -0.854058, 0.196987,
		-0.874918, 0.481700, -0.049833,
		19.724649, 22.805971, 24.014763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.902723, 22.030949, 23.671068>,  <20.337093, 22.468781, 24.049646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.902723, 22.030949, 23.671068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.766235, 22.402935, 23.616318>,  <19.684343, 22.626127, 23.583467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.766235, 22.402935, 23.616318>,  <19.902723, 22.030949, 23.671068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.766235, 22.402935, 23.616318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097088, -0.109969, -0.989182,
		-0.934956, -0.350818, -0.052765,
		-0.341220, 0.929964, -0.136877,
		19.663870, 22.681925, 23.575254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.425758, 21.978420, 23.133402>,  <19.902723, 22.030949, 23.671068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.425758, 21.978420, 23.133402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.462337, 22.376743, 23.133440>,  <19.484285, 22.615738, 23.133463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.462337, 22.376743, 23.133440>,  <19.425758, 21.978420, 23.133402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.462337, 22.376743, 23.133440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166639, 0.015397, -0.985898,
		-0.981768, 0.090142, 0.167349,
		0.091447, 0.995810, 0.000095,
		19.489771, 22.675486, 23.133469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.844975, 22.308079, 22.775360>,  <19.425758, 21.978420, 23.133402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.844975, 22.308079, 22.775360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.153477, 22.562679, 22.777685>,  <19.338577, 22.715439, 22.779079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.153477, 22.562679, 22.777685>,  <18.844975, 22.308079, 22.775360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.153477, 22.562679, 22.777685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122380, 0.157240, -0.979948,
		-0.624650, 0.755079, 0.199167,
		0.771256, 0.636499, 0.005813,
		19.384853, 22.753630, 22.779428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.566231, 22.851383, 22.359142>,  <18.844975, 22.308079, 22.775360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.566231, 22.851383, 22.359142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.960659, 22.908031, 22.324253>,  <19.197315, 22.942020, 22.303320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.960659, 22.908031, 22.324253>,  <18.566231, 22.851383, 22.359142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.960659, 22.908031, 22.324253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130655, 0.335026, -0.933106,
		-0.102924, 0.931505, 0.348863,
		0.986071, 0.141620, -0.087224,
		19.256481, 22.950518, 22.298086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.654787, 23.503849, 21.984003>,  <18.566231, 22.851383, 22.359142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.654787, 23.503849, 21.984003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.021709, 23.346115, 21.961910>,  <19.241863, 23.251474, 21.948654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.021709, 23.346115, 21.961910>,  <18.654787, 23.503849, 21.984003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.021709, 23.346115, 21.961910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010752, 0.163191, -0.986536,
		0.398040, 0.904361, 0.153936,
		0.917305, -0.394336, -0.055233,
		19.296902, 23.227814, 21.945341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.108334, 23.981426, 21.691135>,  <18.654787, 23.503849, 21.984003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.108334, 23.981426, 21.691135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.239487, 23.610161, 21.620699>,  <19.318178, 23.387402, 21.578438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.239487, 23.610161, 21.620699>,  <19.108334, 23.981426, 21.691135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.239487, 23.610161, 21.620699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084600, 0.214495, -0.973054,
		0.940922, 0.304151, 0.148852,
		0.327884, -0.928162, -0.176092,
		19.337852, 23.331713, 21.567871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.441469, 24.070400, 21.109119>,  <19.108334, 23.981426, 21.691135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.441469, 24.070400, 21.109119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.463055, 23.671146, 21.097698>,  <19.476006, 23.431595, 21.090845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.463055, 23.671146, 21.097698>,  <19.441469, 24.070400, 21.109119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.463055, 23.671146, 21.097698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023990, 0.027289, -0.999340,
		0.998255, 0.054613, -0.022472,
		0.053963, -0.998135, -0.028552,
		19.479244, 23.371706, 21.089132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.025293, 23.872248, 20.707180>,  <19.441469, 24.070400, 21.109119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.025293, 23.872248, 20.707180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767101, 23.566738, 20.705875>,  <19.612186, 23.383432, 20.705093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767101, 23.566738, 20.705875>,  <20.025293, 23.872248, 20.707180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.767101, 23.566738, 20.705875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027933, -0.019341, -0.999423,
		0.763268, -0.645196, 0.033819,
		-0.645478, -0.763772, -0.003260,
		19.573458, 23.337606, 20.704897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.249578, 23.342869, 20.200945>,  <20.025293, 23.872248, 20.707180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.249578, 23.342869, 20.200945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.860500, 23.270409, 20.258982>,  <19.627054, 23.226933, 20.293804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.860500, 23.270409, 20.258982>,  <20.249578, 23.342869, 20.200945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.860500, 23.270409, 20.258982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096559, -0.252616, -0.962736,
		0.211054, -0.950457, 0.228227,
		-0.972694, -0.181152, 0.145091,
		19.568693, 23.216063, 20.302509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.193134, 22.857588, 19.790096>,  <20.249578, 23.342869, 20.200945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.193134, 22.857588, 19.790096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.815075, 22.977970, 19.840885>,  <19.588240, 23.050200, 19.871359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.815075, 22.977970, 19.840885>,  <20.193134, 22.857588, 19.790096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.815075, 22.977970, 19.840885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169000, -0.117901, -0.978539,
		-0.279527, -0.946322, 0.162295,
		-0.945148, 0.300956, 0.126972,
		19.531530, 23.068256, 19.878977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.745279, 22.336042, 19.558575>,  <20.193134, 22.857588, 19.790096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.745279, 22.336042, 19.558575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.555920, 22.687580, 19.534824>,  <19.442303, 22.898502, 19.520575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.555920, 22.687580, 19.534824>,  <19.745279, 22.336042, 19.558575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.555920, 22.687580, 19.534824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207241, -0.176641, -0.962210,
		-0.856121, -0.443206, 0.265755,
		-0.473401, 0.878844, -0.059376,
		19.413898, 22.951233, 19.517012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.293539, 22.131607, 19.066944>,  <19.745279, 22.336042, 19.558575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.293539, 22.131607, 19.066944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.262592, 22.530338, 19.074448>,  <19.244024, 22.769577, 19.078949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.262592, 22.530338, 19.074448>,  <19.293539, 22.131607, 19.066944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.262592, 22.530338, 19.074448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362052, -0.010559, -0.932098,
		-0.928942, -0.078906, 0.361719,
		-0.077367, 0.996826, 0.018759,
		19.239382, 22.829386, 19.080076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.844622, 22.220854, 18.597410>,  <19.293539, 22.131607, 19.066944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.844622, 22.220854, 18.597410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.011066, 22.584366, 18.609888>,  <19.110933, 22.802473, 18.617374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.011066, 22.584366, 18.609888>,  <18.844622, 22.220854, 18.597410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.011066, 22.584366, 18.609888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043493, 0.014375, -0.998950,
		-0.908273, 0.417032, -0.033544,
		0.416112, 0.908778, 0.031195,
		19.135900, 22.856998, 18.619246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.538235, 22.643812, 18.103334>,  <18.844622, 22.220854, 18.597410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.538235, 22.643812, 18.103334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.889202, 22.826950, 18.160627>,  <19.099783, 22.936832, 18.195004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.889202, 22.826950, 18.160627>,  <18.538235, 22.643812, 18.103334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.889202, 22.826950, 18.160627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033820, 0.238792, -0.970482,
		-0.478532, 0.856363, 0.194036,
		0.877418, 0.457845, 0.143232,
		19.152428, 22.964304, 18.203596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.439919, 23.356672, 17.757227>,  <18.538235, 22.643812, 18.103334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.439919, 23.356672, 17.757227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.836552, 23.310966, 17.781588>,  <19.074532, 23.283543, 17.796204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.836552, 23.310966, 17.781588>,  <18.439919, 23.356672, 17.757227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.836552, 23.310966, 17.781588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076490, 0.137404, -0.987557,
		0.104476, 0.983902, 0.144988,
		0.991581, -0.114267, 0.060903,
		19.134026, 23.276686, 17.799858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.798054, 23.857924, 17.330975>,  <18.439919, 23.356672, 17.757227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.798054, 23.857924, 17.330975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.063396, 23.561440, 17.372087>,  <19.222603, 23.383549, 17.396755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.063396, 23.561440, 17.372087>,  <18.798054, 23.857924, 17.330975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.063396, 23.561440, 17.372087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130910, -0.020285, -0.991187,
		0.736761, 0.670968, 0.083575,
		0.663359, -0.741209, 0.102782,
		19.262403, 23.339077, 17.402922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.438858, 24.045832, 16.873930>,  <18.798054, 23.857924, 17.330975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.438858, 24.045832, 16.873930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.517235, 23.657639, 16.930176>,  <19.564260, 23.424723, 16.963923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.517235, 23.657639, 16.930176>,  <19.438858, 24.045832, 16.873930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.517235, 23.657639, 16.930176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109049, -0.120939, -0.986652,
		0.974533, 0.208659, 0.082133,
		0.195941, -0.970482, 0.140613,
		19.576017, 23.366493, 16.972361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.040262, 23.960442, 16.523264>,  <19.438858, 24.045832, 16.873930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.040262, 23.960442, 16.523264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.871815, 23.599586, 16.560801>,  <19.770746, 23.383074, 16.583323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.871815, 23.599586, 16.560801>,  <20.040262, 23.960442, 16.523264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.871815, 23.599586, 16.560801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400335, -0.277716, -0.873273,
		0.813874, -0.330184, 0.478109,
		-0.421119, -0.902138, 0.093841,
		19.745480, 23.328945, 16.588953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.520147, 23.452467, 16.309586>,  <20.040262, 23.960442, 16.523264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.520147, 23.452467, 16.309586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.171337, 23.269459, 16.240017>,  <19.962051, 23.159655, 16.198277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.171337, 23.269459, 16.240017>,  <20.520147, 23.452467, 16.309586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.171337, 23.269459, 16.240017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285191, -0.186156, -0.940219,
		0.397793, -0.869495, 0.292813,
		-0.872025, -0.457520, -0.173921,
		19.909729, 23.132202, 16.187841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.714748, 22.876173, 15.978095>,  <20.520147, 23.452467, 16.309586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.714748, 22.876173, 15.978095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.327499, 22.922356, 15.889183>,  <20.095150, 22.950066, 15.835835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.327499, 22.922356, 15.889183>,  <20.714748, 22.876173, 15.978095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.327499, 22.922356, 15.889183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174286, -0.326864, -0.928862,
		-0.179896, -0.937993, 0.296323,
		-0.968123, 0.115453, -0.222280,
		20.037062, 22.956991, 15.822499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.450415, 22.307020, 15.742869>,  <20.714748, 22.876173, 15.978095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.450415, 22.307020, 15.742869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.162857, 22.532230, 15.579803>,  <19.990322, 22.667356, 15.481964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.162857, 22.532230, 15.579803>,  <20.450415, 22.307020, 15.742869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.162857, 22.532230, 15.579803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231554, -0.359007, -0.904155,
		-0.655417, -0.744390, 0.127718,
		-0.718896, 0.563025, -0.407665,
		19.947187, 22.701138, 15.457504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.971083, 21.862549, 15.302542>,  <20.450415, 22.307020, 15.742869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.971083, 21.862549, 15.302542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.934467, 22.230728, 15.150545>,  <19.912498, 22.451635, 15.059347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.934467, 22.230728, 15.150545>,  <19.971083, 21.862549, 15.302542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.934467, 22.230728, 15.150545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031251, -0.384061, -0.922779,
		-0.995311, -0.072593, 0.063921,
		-0.091536, 0.920450, -0.379991,
		19.907007, 22.506863, 15.036548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.572954, 21.697304, 14.798806>,  <19.971083, 21.862549, 15.302542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.572954, 21.697304, 14.798806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.741707, 22.047905, 14.706062>,  <19.842958, 22.258266, 14.650416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.741707, 22.047905, 14.706062>,  <19.572954, 21.697304, 14.798806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.741707, 22.047905, 14.706062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081590, -0.217992, -0.972534,
		-0.902972, 0.429212, -0.020452,
		0.421882, 0.876503, -0.231860,
		19.868271, 22.310856, 14.636504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.154442, 21.950459, 14.306160>,  <19.572954, 21.697304, 14.798806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.154442, 21.950459, 14.306160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.491505, 22.164162, 14.279343>,  <19.693743, 22.292383, 14.263252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.491505, 22.164162, 14.279343>,  <19.154442, 21.950459, 14.306160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.491505, 22.164162, 14.279343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054909, -0.209123, -0.976346,
		-0.535643, 0.819045, -0.205555,
		0.842658, 0.534260, -0.067042,
		19.744303, 22.324440, 14.259230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.955368, 22.391024, 13.758021>,  <19.154442, 21.950459, 14.306160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.955368, 22.391024, 13.758021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.353382, 22.403309, 13.795883>,  <19.592192, 22.410681, 13.818601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.353382, 22.403309, 13.795883>,  <18.955368, 22.391024, 13.758021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.353382, 22.403309, 13.795883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099232, -0.234604, -0.967013,
		-0.007496, 0.971605, -0.236488,
		0.995036, 0.030715, 0.094656,
		19.651894, 22.412523, 13.824280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.241037, 22.873159, 13.261735>,  <18.955368, 22.391024, 13.758021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.241037, 22.873159, 13.261735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.533890, 22.614361, 13.346947>,  <19.709600, 22.459082, 13.398074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.533890, 22.614361, 13.346947>,  <19.241037, 22.873159, 13.261735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.533890, 22.614361, 13.346947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137676, -0.165734, -0.976513,
		0.667106, 0.744264, -0.032263,
		0.732131, -0.646995, 0.213029,
		19.753529, 22.420261, 13.410855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.799963, 23.040565, 12.926913>,  <19.241037, 22.873159, 13.261735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.799963, 23.040565, 12.926913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.808723, 22.646538, 12.995220>,  <19.813980, 22.410122, 13.036204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.808723, 22.646538, 12.995220>,  <19.799963, 23.040565, 12.926913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.808723, 22.646538, 12.995220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299462, -0.156502, -0.941185,
		0.953857, 0.071754, 0.291562,
		0.021904, -0.985068, 0.170768,
		19.815294, 22.351017, 13.046451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.253490, 22.873980, 12.395445>,  <19.799963, 23.040565, 12.926913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.253490, 22.873980, 12.395445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.088326, 22.539707, 12.540299>,  <19.989227, 22.339144, 12.627212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.088326, 22.539707, 12.540299>,  <20.253490, 22.873980, 12.395445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.088326, 22.539707, 12.540299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061931, -0.422456, -0.904265,
		0.908663, -0.350953, 0.226192,
		-0.412911, -0.835681, 0.362135,
		19.964453, 22.289003, 12.648940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.707920, 22.268040, 12.217711>,  <20.253490, 22.873980, 12.395445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.707920, 22.268040, 12.217711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.345097, 22.116581, 12.291330>,  <20.127403, 22.025705, 12.335502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.345097, 22.116581, 12.291330>,  <20.707920, 22.268040, 12.217711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.345097, 22.116581, 12.291330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057337, -0.544189, -0.837001,
		0.417083, -0.748655, 0.515322,
		-0.907058, -0.378646, 0.184046,
		20.072979, 22.002987, 12.346544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.712440, 21.550619, 12.232025>,  <20.707920, 22.268040, 12.217711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.712440, 21.550619, 12.232025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.323128, 21.615997, 12.167520>,  <20.089540, 21.655224, 12.128816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.323128, 21.615997, 12.167520>,  <20.712440, 21.550619, 12.232025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.323128, 21.615997, 12.167520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031237, -0.601555, -0.798220,
		-0.227476, -0.781931, 0.580378,
		-0.973282, 0.163447, -0.161265,
		20.031143, 21.665031, 12.119140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.603165, 20.927841, 11.960076>,  <20.712440, 21.550619, 12.232025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.603165, 20.927841, 11.960076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.282852, 21.148586, 11.866953>,  <20.090664, 21.281033, 11.811079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.282852, 21.148586, 11.866953>,  <20.603165, 20.927841, 11.960076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.282852, 21.148586, 11.866953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061378, -0.462250, -0.884623,
		-0.595805, -0.694099, 0.404033,
		-0.800780, 0.551861, -0.232809,
		20.042618, 21.314144, 11.797111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.076651, 20.464092, 11.749604>,  <20.603165, 20.927841, 11.960076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.076651, 20.464092, 11.749604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.946999, 20.804737, 11.584826>,  <19.869207, 21.009123, 11.485958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.946999, 20.804737, 11.584826>,  <20.076651, 20.464092, 11.749604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.946999, 20.804737, 11.584826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112677, -0.467109, -0.876991,
		-0.939278, -0.237843, 0.247361,
		-0.324130, 0.851610, -0.411946,
		19.849760, 21.060221, 11.461242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.478476, 20.371399, 11.344135>,  <20.076651, 20.464092, 11.749604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.478476, 20.371399, 11.344135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.629974, 20.708805, 11.191802>,  <19.720873, 20.911249, 11.100402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.629974, 20.708805, 11.191802>,  <19.478476, 20.371399, 11.344135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.629974, 20.708805, 11.191802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154543, -0.348070, -0.924643,
		-0.912506, 0.409061, -0.001471,
		0.378747, 0.843515, -0.380833,
		19.743599, 20.961859, 11.077552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.990385, 20.593410, 10.821971>,  <19.478476, 20.371399, 11.344135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.990385, 20.593410, 10.821971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.325119, 20.783718, 10.713634>,  <19.525959, 20.897902, 10.648633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.325119, 20.783718, 10.713634>,  <18.990385, 20.593410, 10.821971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.325119, 20.783718, 10.713634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073260, -0.392955, -0.916635,
		-0.542533, 0.786913, -0.293983,
		0.836834, 0.475767, -0.270840,
		19.576170, 20.926449, 10.632382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.864342, 21.164982, 10.204027>,  <18.990385, 20.593410, 10.821971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.864342, 21.164982, 10.204027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.249298, 21.057194, 10.217829>,  <19.480272, 20.992521, 10.226110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.249298, 21.057194, 10.217829>,  <18.864342, 21.164982, 10.204027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.249298, 21.057194, 10.217829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111571, -0.507834, -0.854199,
		0.247704, 0.818223, -0.518800,
		0.962390, -0.269472, 0.034503,
		19.538015, 20.976353, 10.228180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.288187, 21.455210, 10.423020>,  <18.864342, 21.164982, 10.204027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.288187, 21.455210, 10.423020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.109489, 21.098373, 10.395905>,  <18.002272, 20.884272, 10.379637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.109489, 21.098373, 10.395905>,  <18.288187, 21.455210, 10.423020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.109489, 21.098373, 10.395905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440485, 0.153373, 0.884562,
		-0.778712, 0.425032, -0.461471,
		-0.446744, -0.892090, -0.067787,
		17.975466, 20.830746, 10.375569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.513159, 21.637154, 10.641960>,  <18.288187, 21.455210, 10.423020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.513159, 21.637154, 10.641960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.519756, 21.237427, 10.628741>,  <17.523714, 20.997591, 10.620811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.519756, 21.237427, 10.628741>,  <17.513159, 21.637154, 10.641960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.519756, 21.237427, 10.628741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480431, -0.036905, 0.876255,
		-0.876877, 0.001425, -0.480712,
		0.016492, -0.999318, -0.033046,
		17.524704, 20.937632, 10.618828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.813269, 21.392492, 10.894086>,  <17.513159, 21.637154, 10.641960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.813269, 21.392492, 10.894086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.070351, 21.088284, 10.931050>,  <17.224600, 20.905758, 10.953229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.070351, 21.088284, 10.931050>,  <16.813269, 21.392492, 10.894086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.070351, 21.088284, 10.931050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210547, -0.059363, 0.975780,
		-0.736616, -0.646593, -0.198278,
		0.642703, -0.760522, 0.092410,
		17.263163, 20.860126, 10.958774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.380529, 20.992981, 11.310658>,  <16.813269, 21.392492, 10.894086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.380529, 20.992981, 11.310658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.753689, 20.852013, 11.340327>,  <16.977585, 20.767431, 11.358130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.753689, 20.852013, 11.340327>,  <16.380529, 20.992981, 11.310658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.753689, 20.852013, 11.340327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141985, -0.170628, 0.975052,
		-0.330974, -0.920155, -0.209217,
		0.932897, -0.352422, 0.074175,
		17.033558, 20.746286, 11.362579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.316660, 20.264275, 11.681512>,  <16.380529, 20.992981, 11.310658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.316660, 20.264275, 11.681512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674637, 20.436234, 11.729284>,  <16.889423, 20.539410, 11.757948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674637, 20.436234, 11.729284>,  <16.316660, 20.264275, 11.681512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.674637, 20.436234, 11.729284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035235, -0.198741, 0.979419,
		0.444786, -0.880733, -0.162714,
		0.894944, 0.429898, 0.119430,
		16.943119, 20.565203, 11.765113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.536179, 19.916868, 12.167386>,  <16.316660, 20.264275, 11.681512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.536179, 19.916868, 12.167386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807632, 20.209141, 12.197211>,  <16.970505, 20.384504, 12.215106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807632, 20.209141, 12.197211>,  <16.536179, 19.916868, 12.167386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.807632, 20.209141, 12.197211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008380, -0.093808, 0.995555,
		0.734430, -0.676241, -0.057538,
		0.678633, 0.730683, 0.074562,
		17.011223, 20.428347, 12.219580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.997450, 19.733467, 12.769587>,  <16.536179, 19.916868, 12.167386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.997450, 19.733467, 12.769587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.040688, 20.121616, 12.683154>,  <17.066629, 20.354506, 12.631295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.040688, 20.121616, 12.683154>,  <16.997450, 19.733467, 12.769587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.040688, 20.121616, 12.683154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034478, 0.220882, 0.974691,
		0.993543, -0.097907, 0.057333,
		0.108092, 0.970374, -0.216080,
		17.073114, 20.412729, 12.618330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.509413, 20.054733, 13.290690>,  <16.997450, 19.733467, 12.769587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.509413, 20.054733, 13.290690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.284271, 20.349537, 13.141016>,  <17.149187, 20.526419, 13.051211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.284271, 20.349537, 13.141016>,  <17.509413, 20.054733, 13.290690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.284271, 20.349537, 13.141016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261774, 0.270455, 0.926460,
		0.784009, 0.619414, 0.040703,
		-0.562854, 0.737007, -0.374186,
		17.115416, 20.570639, 13.028760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.783152, 20.729156, 13.576151>,  <17.509413, 20.054733, 13.290690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.783152, 20.729156, 13.576151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.404064, 20.794659, 13.466597>,  <17.176611, 20.833960, 13.400865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.404064, 20.794659, 13.466597>,  <17.783152, 20.729156, 13.576151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.404064, 20.794659, 13.466597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254395, 0.130434, 0.958264,
		0.192646, 0.977840, -0.081956,
		-0.947719, 0.163756, -0.273885,
		17.119749, 20.843786, 13.384431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.562449, 21.326141, 13.998661>,  <17.783152, 20.729156, 13.576151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.562449, 21.326141, 13.998661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.220657, 21.143993, 13.898655>,  <17.015583, 21.034704, 13.838652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.220657, 21.143993, 13.898655>,  <17.562449, 21.326141, 13.998661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.220657, 21.143993, 13.898655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329320, 0.102614, 0.938626,
		-0.401765, 0.884370, -0.237643,
		-0.854478, -0.455368, -0.250014,
		16.964314, 21.007383, 13.823650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.182547, 21.801979, 14.315986>,  <17.562449, 21.326141, 13.998661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.182547, 21.801979, 14.315986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.007526, 21.446461, 14.261448>,  <16.902515, 21.233149, 14.228725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.007526, 21.446461, 14.261448>,  <17.182547, 21.801979, 14.315986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.007526, 21.446461, 14.261448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350851, 0.029139, 0.935978,
		-0.827922, 0.457372, -0.324585,
		-0.437549, -0.888798, -0.136344,
		16.876263, 21.179821, 14.220545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.483177, 21.849960, 14.558103>,  <17.182547, 21.801979, 14.315986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.483177, 21.849960, 14.558103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.525391, 21.453159, 14.530405>,  <16.550718, 21.215078, 14.513786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.525391, 21.453159, 14.530405>,  <16.483177, 21.849960, 14.558103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.525391, 21.453159, 14.530405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428177, -0.108177, 0.897197,
		-0.897512, -0.065036, -0.436168,
		0.105533, -0.992002, -0.069243,
		16.557051, 21.155560, 14.509632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.884275, 21.586195, 14.737292>,  <16.483177, 21.849960, 14.558103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.884275, 21.586195, 14.737292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.161980, 21.308258, 14.812338>,  <16.328602, 21.141497, 14.857366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.161980, 21.308258, 14.812338>,  <15.884275, 21.586195, 14.737292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.161980, 21.308258, 14.812338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337847, -0.084457, 0.937404,
		-0.635501, -0.714188, -0.293384,
		0.694261, -0.694840, 0.187614,
		16.370258, 21.099806, 14.868622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.560409, 21.189066, 15.206874>,  <15.884275, 21.586195, 14.737292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.560409, 21.189066, 15.206874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950181, 21.109810, 15.249258>,  <16.184044, 21.062256, 15.274689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950181, 21.109810, 15.249258>,  <15.560409, 21.189066, 15.206874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.950181, 21.109810, 15.249258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092886, 0.074174, 0.992910,
		-0.204594, -0.977363, 0.053873,
		0.974430, -0.198139, 0.105959,
		16.242510, 21.050369, 15.281046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516926, 21.011736, 15.886403>,  <15.560409, 21.189066, 15.206874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.516926, 21.011736, 15.886403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.910863, 21.012207, 15.817022>,  <16.147224, 21.012489, 15.775393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.910863, 21.012207, 15.817022>,  <15.516926, 21.011736, 15.886403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.910863, 21.012207, 15.817022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168439, 0.232275, 0.957955,
		0.041418, -0.972650, 0.228555,
		0.984841, 0.001179, -0.173452,
		16.206316, 21.012560, 15.764987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.832659, 20.557005, 16.263288>,  <15.516926, 21.011736, 15.886403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.832659, 20.557005, 16.263288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.101955, 20.842228, 16.185011>,  <16.263533, 21.013361, 16.138044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.101955, 20.842228, 16.185011>,  <15.832659, 20.557005, 16.263288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.101955, 20.842228, 16.185011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136417, 0.140337, 0.980661,
		0.726730, -0.686917, -0.002793,
		0.673241, 0.713057, -0.195695,
		16.303928, 21.056145, 16.126303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.282669, 20.653807, 16.826365>,  <15.832659, 20.557005, 16.263288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.282669, 20.653807, 16.826365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.378590, 21.006943, 16.664829>,  <16.436142, 21.218824, 16.567907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.378590, 21.006943, 16.664829>,  <16.282669, 20.653807, 16.826365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.378590, 21.006943, 16.664829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179964, 0.368344, 0.912105,
		0.953996, -0.291400, -0.070550,
		0.239801, 0.882841, -0.403840,
		16.450529, 21.271795, 16.543676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.877129, 20.869953, 17.136950>,  <16.282669, 20.653807, 16.826365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.877129, 20.869953, 17.136950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.713818, 21.210541, 17.005308>,  <16.615831, 21.414894, 16.926323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.713818, 21.210541, 17.005308>,  <16.877129, 20.869953, 17.136950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.713818, 21.210541, 17.005308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138521, 0.414133, 0.899614,
		0.902287, 0.321705, -0.287027,
		-0.408278, 0.851469, -0.329104,
		16.591333, 21.465982, 16.906576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.381111, 21.339775, 17.166161>,  <16.877129, 20.869953, 17.136950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.381111, 21.339775, 17.166161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.061947, 21.579948, 17.144922>,  <16.870447, 21.724052, 17.132179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.061947, 21.579948, 17.144922>,  <17.381111, 21.339775, 17.166161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.061947, 21.579948, 17.144922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343136, 0.524872, 0.778952,
		0.495575, 0.603316, -0.624831,
		-0.797912, 0.600432, -0.053094,
		16.822573, 21.760078, 17.128994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.695200, 21.923134, 17.349348>,  <17.381111, 21.339775, 17.166161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.695200, 21.923134, 17.349348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.305786, 21.990208, 17.411455>,  <17.072138, 22.030453, 17.448719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.305786, 21.990208, 17.411455>,  <17.695200, 21.923134, 17.349348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.305786, 21.990208, 17.411455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207242, 0.361424, 0.909078,
		0.096322, 0.917199, -0.386611,
		-0.973536, 0.167686, 0.155269,
		17.013725, 22.040514, 17.458036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.618532, 22.634792, 17.490305>,  <17.695200, 21.923134, 17.349348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.618532, 22.634792, 17.490305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.294231, 22.460674, 17.646866>,  <17.099651, 22.356203, 17.740803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.294231, 22.460674, 17.646866>,  <17.618532, 22.634792, 17.490305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.294231, 22.460674, 17.646866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181199, 0.449172, 0.874878,
		-0.556637, 0.780232, -0.285293,
		-0.810754, -0.435295, 0.391403,
		17.051004, 22.330086, 17.764286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395741, 23.093231, 18.001579>,  <17.618532, 22.634792, 17.490305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.395741, 23.093231, 18.001579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.199356, 22.763039, 18.112965>,  <17.081526, 22.564924, 18.179796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.199356, 22.763039, 18.112965>,  <17.395741, 23.093231, 18.001579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.199356, 22.763039, 18.112965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151980, 0.233579, 0.960387,
		-0.857823, 0.513833, 0.010778,
		-0.490960, -0.825480, 0.278461,
		17.052069, 22.515394, 18.196503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.920223, 23.294329, 18.477118>,  <17.395741, 23.093231, 18.001579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.920223, 23.294329, 18.477118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.991364, 22.905685, 18.539530>,  <17.034048, 22.672499, 18.576977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.991364, 22.905685, 18.539530>,  <16.920223, 23.294329, 18.477118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.991364, 22.905685, 18.539530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184043, 0.188601, 0.964654,
		-0.966694, -0.142848, 0.212361,
		0.177850, -0.971609, 0.156029,
		17.044718, 22.614202, 18.586338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.400656, 23.056885, 18.891096>,  <16.920223, 23.294329, 18.477118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.400656, 23.056885, 18.891096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689999, 22.785725, 18.943558>,  <16.863605, 22.623028, 18.975035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689999, 22.785725, 18.943558>,  <16.400656, 23.056885, 18.891096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.689999, 22.785725, 18.943558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008471, 0.181223, 0.983405,
		-0.690421, -0.712465, 0.125346,
		0.723358, -0.677902, 0.131155,
		16.907005, 22.582354, 18.982904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.163881, 22.561085, 19.403372>,  <16.400656, 23.056885, 18.891096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.163881, 22.561085, 19.403372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.562454, 22.527344, 19.404522>,  <16.801598, 22.507099, 19.405212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.562454, 22.527344, 19.404522>,  <16.163881, 22.561085, 19.403372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.562454, 22.527344, 19.404522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003884, -0.011819, 0.999923,
		-0.084312, -0.996366, -0.012104,
		0.996432, -0.084352, 0.002874,
		16.861383, 22.502039, 19.405384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.332479, 21.841370, 19.787142>,  <16.163881, 22.561085, 19.403372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.332479, 21.841370, 19.787142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.661694, 22.068317, 19.797735>,  <16.859222, 22.204487, 19.804090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.661694, 22.068317, 19.797735>,  <16.332479, 21.841370, 19.787142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.661694, 22.068317, 19.797735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044975, -0.111579, 0.992737,
		0.566205, -0.815868, -0.117351,
		0.823036, 0.567371, 0.026483,
		16.908604, 22.238529, 19.805679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.710772, 21.565849, 20.190538>,  <16.332479, 21.841370, 19.787142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.710772, 21.565849, 20.190538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.926258, 21.902760, 20.182974>,  <17.055550, 22.104906, 20.178434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.926258, 21.902760, 20.182974>,  <16.710772, 21.565849, 20.190538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.926258, 21.902760, 20.182974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045482, -0.006661, 0.998943,
		0.841259, -0.539007, -0.041897,
		0.538717, 0.842275, -0.018912,
		17.087873, 22.155441, 20.177299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.298883, 21.483156, 20.524069>,  <16.710772, 21.565849, 20.190538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.298883, 21.483156, 20.524069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.243580, 21.878654, 20.546925>,  <17.210398, 22.115953, 20.560638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.243580, 21.878654, 20.546925>,  <17.298883, 21.483156, 20.524069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.243580, 21.878654, 20.546925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006413, -0.058585, 0.998262,
		0.990375, 0.137654, 0.014441,
		-0.138261, 0.988746, 0.057139,
		17.202101, 22.175278, 20.564066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.631905, 21.722549, 21.105322>,  <17.298883, 21.483156, 20.524069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.631905, 21.722549, 21.105322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.376820, 22.027969, 21.064703>,  <17.223768, 22.211222, 21.040331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.376820, 22.027969, 21.064703>,  <17.631905, 21.722549, 21.105322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.376820, 22.027969, 21.064703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183899, -0.022899, 0.982678,
		0.748001, 0.645340, 0.155019,
		-0.637712, 0.763552, -0.101549,
		17.185507, 22.257034, 21.034239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.888235, 22.257978, 21.573153>,  <17.631905, 21.722549, 21.105322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.888235, 22.257978, 21.573153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.507465, 22.340305, 21.482397>,  <17.279003, 22.389702, 21.427944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.507465, 22.340305, 21.482397>,  <17.888235, 22.257978, 21.573153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.507465, 22.340305, 21.482397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241608, -0.049116, 0.969130,
		0.188322, 0.977357, 0.096483,
		-0.951925, 0.205819, -0.226888,
		17.221888, 22.402052, 21.414331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.661638, 22.602858, 22.090569>,  <17.888235, 22.257978, 21.573153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.661638, 22.602858, 22.090569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.303467, 22.511101, 21.937944>,  <17.088564, 22.456047, 21.846371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.303467, 22.511101, 21.937944>,  <17.661638, 22.602858, 22.090569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.303467, 22.511101, 21.937944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399085, 0.033696, 0.916295,
		-0.197332, 0.972751, -0.121719,
		-0.895428, -0.229390, -0.381561,
		17.034838, 22.442284, 21.823477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.191301, 22.947918, 22.522810>,  <17.661638, 22.602858, 22.090569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.191301, 22.947918, 22.522810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.948715, 22.685719, 22.342798>,  <16.803164, 22.528399, 22.234791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.948715, 22.685719, 22.342798>,  <17.191301, 22.947918, 22.522810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.948715, 22.685719, 22.342798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462946, -0.169057, 0.870115,
		-0.646438, 0.736032, -0.200933,
		-0.606464, -0.655497, -0.450028,
		16.766777, 22.489069, 22.207790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.441681, 23.115049, 22.743542>,  <17.191301, 22.947918, 22.522810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.441681, 23.115049, 22.743542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.457016, 22.739685, 22.606188>,  <16.466217, 22.514467, 22.523775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.457016, 22.739685, 22.606188>,  <16.441681, 23.115049, 22.743542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.457016, 22.739685, 22.606188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452999, -0.322621, 0.831088,
		-0.890686, 0.123691, -0.437468,
		0.038338, -0.938411, -0.343387,
		16.468517, 22.458162, 22.503172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.729348, 22.868483, 22.778654>,  <16.441681, 23.115049, 22.743542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.729348, 22.868483, 22.778654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.987340, 22.562809, 22.776699>,  <16.142136, 22.379404, 22.775526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.987340, 22.562809, 22.776699>,  <15.729348, 22.868483, 22.778654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.987340, 22.562809, 22.776699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369909, -0.317794, 0.873026,
		-0.668706, -0.561276, -0.487649,
		0.644980, -0.764183, -0.004890,
		16.180834, 22.333553, 22.775232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.285589, 22.276501, 22.844805>,  <15.729348, 22.868483, 22.778654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.285589, 22.276501, 22.844805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.655538, 22.194958, 22.973213>,  <15.877506, 22.146032, 23.050259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.655538, 22.194958, 22.973213>,  <15.285589, 22.276501, 22.844805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.655538, 22.194958, 22.973213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375275, -0.352752, 0.857167,
		-0.061498, -0.913240, -0.402753,
		0.924872, -0.203857, 0.321023,
		15.932999, 22.133801, 23.069519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.181584, 21.654753, 23.057339>,  <15.285589, 22.276501, 22.844805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.181584, 21.654753, 23.057339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.521188, 21.768772, 23.235296>,  <15.724950, 21.837185, 23.342072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.521188, 21.768772, 23.235296>,  <15.181584, 21.654753, 23.057339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.521188, 21.768772, 23.235296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283418, -0.464944, 0.838750,
		0.445938, -0.838196, -0.313953,
		0.849007, 0.285051, 0.444896,
		15.775890, 21.854288, 23.368765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.306344, 21.147255, 23.640011>,  <15.181584, 21.654753, 23.057339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.306344, 21.147255, 23.640011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.552869, 21.439400, 23.757811>,  <15.700784, 21.614687, 23.828491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.552869, 21.439400, 23.757811>,  <15.306344, 21.147255, 23.640011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.552869, 21.439400, 23.757811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077697, -0.315750, 0.945656,
		0.783660, -0.605700, -0.137853,
		0.616311, 0.730362, 0.294502,
		15.737762, 21.658508, 23.846161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.662652, 20.768993, 24.133654>,  <15.306344, 21.147255, 23.640011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.662652, 20.768993, 24.133654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.725528, 21.161228, 24.180540>,  <15.763253, 21.396568, 24.208672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.725528, 21.161228, 24.180540>,  <15.662652, 20.768993, 24.133654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.725528, 21.161228, 24.180540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106874, -0.101103, 0.989119,
		0.981768, -0.168006, 0.088907,
		0.157190, 0.980587, 0.117216,
		15.772685, 21.455404, 24.215704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.849243, 20.044703, 24.256954>,  <15.662652, 20.768993, 24.133654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.849243, 20.044703, 24.256954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.694468, 19.732807, 24.453846>,  <15.601604, 19.545670, 24.571981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.694468, 19.732807, 24.453846>,  <15.849243, 20.044703, 24.256954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.694468, 19.732807, 24.453846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347927, -0.370897, -0.861036,
		0.853948, -0.504426, -0.127778,
		-0.386937, -0.779737, 0.492230,
		15.578387, 19.498886, 24.601515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.023172, 19.504662, 23.880087>,  <15.849243, 20.044703, 24.256954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.023172, 19.504662, 23.880087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.713956, 19.364292, 24.091467>,  <15.528426, 19.280071, 24.218296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.713956, 19.364292, 24.091467>,  <16.023172, 19.504662, 23.880087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.713956, 19.364292, 24.091467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369363, -0.428271, -0.824715,
		0.515732, -0.832728, 0.201453,
		-0.773040, -0.350923, 0.528452,
		15.482043, 19.259016, 24.250002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.088520, 18.739351, 23.899691>,  <16.023172, 19.504662, 23.880087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.088520, 18.739351, 23.899691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.711261, 18.865788, 23.940792>,  <15.484905, 18.941648, 23.965454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.711261, 18.865788, 23.940792>,  <16.088520, 18.739351, 23.899691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.711261, 18.865788, 23.940792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273751, -0.563417, -0.779501,
		-0.188498, -0.763314, 0.617916,
		-0.943148, 0.316090, 0.102756,
		15.428316, 18.960615, 23.971619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.719757, 18.236691, 23.436455>,  <16.088520, 18.739351, 23.899691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.719757, 18.236691, 23.436455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.433736, 18.501652, 23.525826>,  <15.262123, 18.660629, 23.579447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.433736, 18.501652, 23.525826>,  <15.719757, 18.236691, 23.436455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.433736, 18.501652, 23.525826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559671, -0.350933, -0.750743,
		-0.418887, -0.661867, 0.621664,
		-0.715054, 0.662404, 0.223426,
		15.219220, 18.700373, 23.592854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.111977, 17.926144, 23.340361>,  <15.719757, 18.236691, 23.436455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.111977, 17.926144, 23.340361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.999499, 18.305790, 23.283640>,  <14.932013, 18.533579, 23.249607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.999499, 18.305790, 23.283640>,  <15.111977, 17.926144, 23.340361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.999499, 18.305790, 23.283640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366166, -0.242698, -0.898343,
		-0.887047, -0.200686, 0.415780,
		-0.281194, 0.949117, -0.141800,
		14.915141, 18.590525, 23.241100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.413143, 17.868113, 23.211784>,  <15.111977, 17.926144, 23.340361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.413143, 17.868113, 23.211784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.572476, 18.202560, 23.060928>,  <14.668077, 18.403229, 22.970415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.572476, 18.202560, 23.060928>,  <14.413143, 17.868113, 23.211784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.572476, 18.202560, 23.060928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431616, -0.191937, -0.881401,
		-0.809345, 0.513869, 0.284429,
		0.398332, 0.836121, -0.377138,
		14.691976, 18.453396, 22.947786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.837513, 18.155672, 22.755510>,  <14.413143, 17.868113, 23.211784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.837513, 18.155672, 22.755510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.163159, 18.349270, 22.627157>,  <14.358547, 18.465427, 22.550146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.163159, 18.349270, 22.627157>,  <13.837513, 18.155672, 22.755510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.163159, 18.349270, 22.627157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380261, 0.026703, -0.924494,
		-0.438880, 0.874665, 0.205783,
		0.814117, 0.483993, -0.320881,
		14.407394, 18.494467, 22.530893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.664061, 18.523291, 22.150358>,  <13.837513, 18.155672, 22.755510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.664061, 18.523291, 22.150358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.063298, 18.506008, 22.132742>,  <14.302841, 18.495638, 22.122171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.063298, 18.506008, 22.132742>,  <13.664061, 18.523291, 22.150358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.063298, 18.506008, 22.132742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050167, -0.152820, -0.986980,
		0.035913, 0.987309, -0.154697,
		0.998095, -0.043206, -0.044042,
		14.362727, 18.493046, 22.119530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.870977, 18.946894, 21.601223>,  <13.664061, 18.523291, 22.150358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.870977, 18.946894, 21.601223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.177886, 18.697521, 21.661392>,  <14.362031, 18.547897, 21.697495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.177886, 18.697521, 21.661392>,  <13.870977, 18.946894, 21.601223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.177886, 18.697521, 21.661392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139862, -0.066244, -0.987953,
		0.625885, 0.779067, 0.036367,
		0.767272, -0.623431, 0.150423,
		14.408068, 18.510492, 21.706520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.375328, 19.117348, 21.213074>,  <13.870977, 18.946894, 21.601223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.375328, 19.117348, 21.213074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.505292, 18.744263, 21.275658>,  <14.583270, 18.520411, 21.313208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.505292, 18.744263, 21.275658>,  <14.375328, 19.117348, 21.213074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.505292, 18.744263, 21.275658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051458, -0.147755, -0.987684,
		0.944345, 0.328958, -0.000012,
		0.324908, -0.932714, 0.156460,
		14.602764, 18.464449, 21.322596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.089726, 19.004549, 20.896170>,  <14.375328, 19.117348, 21.213074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.089726, 19.004549, 20.896170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.905341, 18.650265, 20.918201>,  <14.794710, 18.437695, 20.931419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.905341, 18.650265, 20.918201>,  <15.089726, 19.004549, 20.896170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.905341, 18.650265, 20.918201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186743, -0.157491, -0.969703,
		0.867549, -0.436711, 0.237998,
		-0.460963, -0.885709, 0.055078,
		14.767053, 18.384552, 20.934725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.541677, 18.532972, 20.664001>,  <15.089726, 19.004549, 20.896170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.541677, 18.532972, 20.664001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.189643, 18.350098, 20.612736>,  <14.978422, 18.240372, 20.581976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.189643, 18.350098, 20.612736>,  <15.541677, 18.532972, 20.664001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.189643, 18.350098, 20.612736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191202, -0.094179, -0.977022,
		0.434613, -0.884369, 0.170302,
		-0.880087, -0.457188, -0.128162,
		14.925617, 18.212940, 20.574287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.525667, 17.851141, 20.228224>,  <15.541677, 18.532972, 20.664001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.525667, 17.851141, 20.228224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.177155, 18.039948, 20.174450>,  <14.968048, 18.153233, 20.142185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.177155, 18.039948, 20.174450>,  <15.525667, 17.851141, 20.228224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.177155, 18.039948, 20.174450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185258, 0.062652, -0.980691,
		-0.454480, -0.879360, -0.142032,
		-0.871279, 0.472017, -0.134434,
		14.915771, 18.181553, 20.134119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.162814, 17.599817, 19.604206>,  <15.525667, 17.851141, 20.228224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.162814, 17.599817, 19.604206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.998984, 17.962471, 19.644726>,  <14.900686, 18.180063, 19.669039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.998984, 17.962471, 19.644726>,  <15.162814, 17.599817, 19.604206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.998984, 17.962471, 19.644726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121643, 0.164325, -0.978877,
		-0.904130, -0.388601, -0.177590,
		-0.409575, 0.906634, 0.101301,
		14.876112, 18.234461, 19.675116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.672420, 17.469938, 19.138628>,  <15.162814, 17.599817, 19.604206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.672420, 17.469938, 19.138628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.714541, 17.863174, 19.198557>,  <14.739815, 18.099115, 19.234514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.714541, 17.863174, 19.198557>,  <14.672420, 17.469938, 19.138628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.714541, 17.863174, 19.198557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232607, 0.122129, -0.964872,
		-0.966853, 0.136455, -0.215813,
		0.105305, 0.983089, 0.149821,
		14.746133, 18.158102, 19.243504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.258491, 17.900318, 18.562983>,  <14.672420, 17.469938, 19.138628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.258491, 17.900318, 18.562983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.560521, 18.122974, 18.701551>,  <14.741739, 18.256569, 18.784693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.560521, 18.122974, 18.701551>,  <14.258491, 17.900318, 18.562983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.560521, 18.122974, 18.701551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174947, 0.338160, -0.924684,
		-0.631864, 0.758814, 0.157954,
		0.755077, 0.556641, 0.346423,
		14.787045, 18.289967, 18.805479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.202880, 18.534575, 18.199606>,  <14.258491, 17.900318, 18.562983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.202880, 18.534575, 18.199606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.571425, 18.562599, 18.352539>,  <14.792553, 18.579414, 18.444300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.571425, 18.562599, 18.352539>,  <14.202880, 18.534575, 18.199606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.571425, 18.562599, 18.352539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357001, 0.236538, -0.903659,
		-0.153749, 0.969093, 0.192925,
		0.921364, 0.070062, 0.382334,
		14.847835, 18.583618, 18.467239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.434642, 19.080200, 17.855881>,  <14.202880, 18.534575, 18.199606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.434642, 19.080200, 17.855881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.764752, 18.908943, 18.003183>,  <14.962819, 18.806189, 18.091564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.764752, 18.908943, 18.003183>,  <14.434642, 19.080200, 17.855881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.764752, 18.908943, 18.003183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508657, 0.280268, -0.814075,
		0.245331, 0.859153, 0.449077,
		0.825276, -0.428144, 0.368256,
		15.012335, 18.780500, 18.113661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.023190, 19.530418, 17.823360>,  <14.434642, 19.080200, 17.855881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.023190, 19.530418, 17.823360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.178777, 19.161922, 17.821386>,  <15.272129, 18.940825, 17.820202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.178777, 19.161922, 17.821386>,  <15.023190, 19.530418, 17.823360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.178777, 19.161922, 17.821386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504203, 0.217365, -0.835782,
		0.771027, 0.322604, 0.549039,
		0.388969, -0.921238, -0.004937,
		15.295467, 18.885551, 17.819906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.612436, 19.617262, 17.522438>,  <15.023190, 19.530418, 17.823360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.612436, 19.617262, 17.522438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.589728, 19.218208, 17.506933>,  <15.576104, 18.978777, 17.497629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.589728, 19.218208, 17.506933>,  <15.612436, 19.617262, 17.522438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.589728, 19.218208, 17.506933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456910, 0.008561, -0.889472,
		0.887699, -0.068206, 0.455343,
		-0.056769, -0.997635, -0.038764,
		15.572698, 18.918919, 17.495304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.287575, 19.339518, 17.438505>,  <15.612436, 19.617262, 17.522438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.287575, 19.339518, 17.438505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.033211, 19.064392, 17.298487>,  <15.880592, 18.899317, 17.214476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.033211, 19.064392, 17.298487>,  <16.287575, 19.339518, 17.438505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.033211, 19.064392, 17.298487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457583, 0.029222, -0.888687,
		0.621478, -0.725301, 0.296148,
		-0.635911, -0.687812, -0.350046,
		15.842438, 18.858049, 17.193472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.679375, 18.899401, 17.107740>,  <16.287575, 19.339518, 17.438505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.679375, 18.899401, 17.107740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.317753, 18.808598, 16.962883>,  <16.100779, 18.754116, 16.875969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.317753, 18.808598, 16.962883>,  <16.679375, 18.899401, 17.107740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.317753, 18.808598, 16.962883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366638, 0.023599, -0.930065,
		0.219678, -0.973607, 0.061895,
		-0.904056, -0.227008, -0.362145,
		16.046535, 18.740496, 16.854239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.758389, 18.281059, 16.591026>,  <16.679375, 18.899401, 17.107740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.758389, 18.281059, 16.591026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.398663, 18.430073, 16.499414>,  <16.182827, 18.519482, 16.444448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.398663, 18.430073, 16.499414>,  <16.758389, 18.281059, 16.591026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.398663, 18.430073, 16.499414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189321, -0.140430, -0.971822,
		-0.394202, -0.917331, 0.055762,
		-0.899312, 0.372537, -0.229027,
		16.128868, 18.541834, 16.430706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.409153, 17.789936, 16.120304>,  <16.758389, 18.281059, 16.591026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.409153, 17.789936, 16.120304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.254570, 18.155361, 16.069626>,  <16.161819, 18.374617, 16.039219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.254570, 18.155361, 16.069626>,  <16.409153, 17.789936, 16.120304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.254570, 18.155361, 16.069626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224739, -0.039954, -0.973600,
		-0.894507, -0.404729, -0.189873,
		-0.386458, 0.913563, -0.126697,
		16.138632, 18.429430, 16.031616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.065130, 17.668428, 15.602930>,  <16.409153, 17.789936, 16.120304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.065130, 17.668428, 15.602930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.057270, 18.068310, 15.597185>,  <16.052553, 18.308239, 15.593739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.057270, 18.068310, 15.597185>,  <16.065130, 17.668428, 15.602930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.057270, 18.068310, 15.597185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097652, -0.016215, -0.995089,
		-0.995027, -0.018153, 0.097942,
		-0.019652, 0.999704, -0.014362,
		16.051374, 18.368221, 15.592876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.491503, 17.817310, 15.271471>,  <16.065130, 17.668428, 15.602930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.491503, 17.817310, 15.271471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.727132, 18.137943, 15.230558>,  <15.868509, 18.330322, 15.206011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.727132, 18.137943, 15.230558>,  <15.491503, 17.817310, 15.271471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.727132, 18.137943, 15.230558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168332, -0.002074, -0.985728,
		-0.790354, 0.597882, 0.133710,
		0.589072, 0.801582, -0.102281,
		15.903853, 18.378418, 15.199874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.110763, 18.387415, 14.917259>,  <15.491503, 17.817310, 15.271471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.110763, 18.387415, 14.917259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.490123, 18.498425, 14.855917>,  <15.717739, 18.565031, 14.819112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.490123, 18.498425, 14.855917>,  <15.110763, 18.387415, 14.917259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.490123, 18.498425, 14.855917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147634, -0.041531, -0.988170,
		-0.280611, 0.959820, 0.001584,
		0.948400, 0.277525, -0.153356,
		15.774643, 18.581682, 14.809910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.136130, 18.821386, 14.301383>,  <15.110763, 18.387415, 14.917259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.136130, 18.821386, 14.301383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520755, 18.716755, 14.334789>,  <15.751530, 18.653976, 14.354833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520755, 18.716755, 14.334789>,  <15.136130, 18.821386, 14.301383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.520755, 18.716755, 14.334789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081682, -0.017890, -0.996498,
		0.262157, 0.965016, 0.004164,
		0.961562, -0.261579, 0.083515,
		15.809223, 18.638281, 14.359843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.477409, 19.184690, 13.833241>,  <15.136130, 18.821386, 14.301383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.477409, 19.184690, 13.833241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.726556, 18.874321, 13.873201>,  <15.876043, 18.688099, 13.897178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.726556, 18.874321, 13.873201>,  <15.477409, 19.184690, 13.833241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.726556, 18.874321, 13.873201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204251, 0.038016, -0.978180,
		0.755195, 0.629680, 0.182162,
		0.622866, -0.775924, 0.099903,
		15.913416, 18.641544, 13.903172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.113401, 19.294212, 13.329153>,  <15.477409, 19.184690, 13.833241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.113401, 19.294212, 13.329153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.094952, 18.910175, 13.439493>,  <16.083881, 18.679752, 13.505697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.094952, 18.910175, 13.439493>,  <16.113401, 19.294212, 13.329153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.094952, 18.910175, 13.439493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026005, -0.277205, -0.960459,
		0.998597, -0.037125, 0.037752,
		-0.046122, -0.960094, 0.275850,
		16.081116, 18.622147, 13.522248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.627884, 18.948326, 12.956713>,  <16.113401, 19.294212, 13.329153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.627884, 18.948326, 12.956713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.355152, 18.674889, 13.060873>,  <16.191513, 18.510826, 13.123369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.355152, 18.674889, 13.060873>,  <16.627884, 18.948326, 12.956713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.355152, 18.674889, 13.060873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142593, -0.473352, -0.869255,
		0.717478, -0.555553, 0.420222,
		-0.681830, -0.683592, 0.260402,
		16.150602, 18.469810, 13.138993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907566, 18.505943, 12.467407>,  <16.627884, 18.948326, 12.956713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.907566, 18.505943, 12.467407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.566887, 18.344746, 12.601397>,  <16.362480, 18.248026, 12.681790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.566887, 18.344746, 12.601397>,  <16.907566, 18.505943, 12.467407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.566887, 18.344746, 12.601397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117599, -0.475932, -0.871584,
		0.510670, -0.781718, 0.357958,
		-0.851697, -0.402996, 0.334973,
		16.311378, 18.223846, 12.701889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.843050, 17.776785, 12.295080>,  <16.907566, 18.505943, 12.467407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.843050, 17.776785, 12.295080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.458603, 17.865917, 12.360320>,  <16.227936, 17.919395, 12.399465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.458603, 17.865917, 12.360320>,  <16.843050, 17.776785, 12.295080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.458603, 17.865917, 12.360320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258044, -0.514425, -0.817789,
		-0.098324, -0.828078, 0.551923,
		-0.961117, 0.222828, 0.163101,
		16.170267, 17.932766, 12.409250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.419924, 17.128660, 12.266708>,  <16.843050, 17.776785, 12.295080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.419924, 17.128660, 12.266708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.159733, 17.425808, 12.203434>,  <16.003618, 17.604097, 12.165469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.159733, 17.425808, 12.203434>,  <16.419924, 17.128660, 12.266708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.159733, 17.425808, 12.203434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231733, -0.392448, -0.890103,
		-0.723311, -0.542335, 0.427426,
		-0.650477, 0.742870, -0.158185,
		15.964589, 17.648668, 12.155978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.856849, 16.828497, 12.086503>,  <16.419924, 17.128660, 12.266708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.856849, 16.828497, 12.086503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.855548, 17.191666, 11.918853>,  <15.854768, 17.409567, 11.818262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.855548, 17.191666, 11.918853>,  <15.856849, 16.828497, 12.086503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.855548, 17.191666, 11.918853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300508, -0.400643, -0.865552,
		-0.953774, 0.123136, 0.274141,
		-0.003252, 0.907922, -0.419126,
		15.854572, 17.464043, 11.793115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.226343, 16.940071, 11.892335>,  <15.856849, 16.828497, 12.086503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.226343, 16.940071, 11.892335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.423751, 17.191208, 11.651585>,  <15.542195, 17.341890, 11.507134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.423751, 17.191208, 11.651585>,  <15.226343, 16.940071, 11.892335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.423751, 17.191208, 11.651585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512797, -0.348891, -0.784420,
		-0.702479, 0.695767, 0.149770,
		0.493520, 0.627840, -0.601876,
		15.571807, 17.379560, 11.471022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.781534, 17.050680, 11.381486>,  <15.226343, 16.940071, 11.892335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.781534, 17.050680, 11.381486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.128551, 17.179440, 11.229826>,  <15.336761, 17.256695, 11.138830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.128551, 17.179440, 11.229826>,  <14.781534, 17.050680, 11.381486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.128551, 17.179440, 11.229826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335551, -0.183885, -0.923900,
		-0.367123, 0.928745, -0.051514,
		0.867541, 0.321899, -0.379149,
		15.388813, 17.276009, 11.116081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.605097, 17.401674, 10.747195>,  <14.781534, 17.050680, 11.381486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.605097, 17.401674, 10.747195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.990987, 17.303345, 10.709514>,  <15.222521, 17.244347, 10.686905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.990987, 17.303345, 10.709514>,  <14.605097, 17.401674, 10.747195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.990987, 17.303345, 10.709514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139138, -0.172342, -0.975161,
		0.223482, 0.953870, -0.200467,
		0.964726, -0.245824, -0.094205,
		15.280405, 17.229597, 10.681252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.815981, 17.751360, 10.142096>,  <14.605097, 17.401674, 10.747195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.815981, 17.751360, 10.142096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.101771, 17.473976, 10.179273>,  <15.273246, 17.307547, 10.201579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.101771, 17.473976, 10.179273>,  <14.815981, 17.751360, 10.142096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.101771, 17.473976, 10.179273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052958, -0.186060, -0.981110,
		0.697653, 0.696058, -0.169660,
		0.714476, -0.693459, 0.092943,
		15.316114, 17.265938, 10.207155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.272089, 17.807812, 9.573558>,  <14.815981, 17.751360, 10.142096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.272089, 17.807812, 9.573558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.315572, 17.438084, 9.719881>,  <15.341661, 17.216248, 9.807675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.315572, 17.438084, 9.719881>,  <15.272089, 17.807812, 9.573558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.315572, 17.438084, 9.719881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195959, -0.380694, -0.903699,
		0.974568, 0.026555, -0.222513,
		0.108707, -0.924320, 0.365808,
		15.348184, 17.160788, 9.829623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696821, 17.512157, 9.100131>,  <15.272089, 17.807812, 9.573558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.696821, 17.512157, 9.100131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.518258, 17.230659, 9.321204>,  <15.411120, 17.061760, 9.453848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.518258, 17.230659, 9.321204>,  <15.696821, 17.512157, 9.100131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.518258, 17.230659, 9.321204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378632, -0.411071, -0.829252,
		0.810776, -0.579449, -0.082956,
		-0.446408, -0.703747, 0.552684,
		15.384336, 17.019535, 9.487009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.948339, 16.866364, 8.881143>,  <15.696821, 17.512157, 9.100131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.948339, 16.866364, 8.881143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.592942, 16.794437, 9.050020>,  <15.379704, 16.751282, 9.151346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.592942, 16.794437, 9.050020>,  <15.948339, 16.866364, 8.881143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.592942, 16.794437, 9.050020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299678, -0.469390, -0.830582,
		0.347526, -0.864487, 0.363162,
		-0.888492, -0.179817, 0.422193,
		15.326394, 16.740492, 9.176679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.558699, 16.095152, 8.985153>,  <15.948339, 16.866364, 8.881143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.558699, 16.095152, 8.985153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.271218, 16.371231, 8.951461>,  <15.098730, 16.536879, 8.931246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.271218, 16.371231, 8.951461>,  <15.558699, 16.095152, 8.985153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.271218, 16.371231, 8.951461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301046, -0.418074, -0.857080,
		-0.626771, -0.590626, 0.508252,
		-0.718700, 0.690200, -0.084231,
		15.055608, 16.578291, 8.926191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.007412, 15.698534, 8.711206>,  <15.558699, 16.095152, 8.985153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.007412, 15.698534, 8.711206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.946631, 16.092148, 8.674142>,  <14.910163, 16.328316, 8.651903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.946631, 16.092148, 8.674142>,  <15.007412, 15.698534, 8.711206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.946631, 16.092148, 8.674142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371722, -0.143763, -0.917145,
		-0.915824, -0.104916, 0.387632,
		-0.151951, 0.984035, -0.092662,
		14.901046, 16.387358, 8.646343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.236616, 15.909115, 8.569499>,  <15.007412, 15.698534, 8.711206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.236616, 15.909115, 8.569499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.527421, 16.142471, 8.424664>,  <14.701904, 16.282486, 8.337764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.527421, 16.142471, 8.424664>,  <14.236616, 15.909115, 8.569499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.527421, 16.142471, 8.424664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378368, -0.099660, -0.920275,
		-0.572967, 0.806053, 0.148283,
		0.727013, 0.583392, -0.362086,
		14.745524, 16.317490, 8.316039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.263219, 16.533632, 8.221213>,  <14.236616, 15.909115, 8.569499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.263219, 16.533632, 8.221213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.412494, 16.441444, 7.861744>,  <14.502059, 16.386131, 7.646062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.412494, 16.441444, 7.861744>,  <14.263219, 16.533632, 8.221213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.412494, 16.441444, 7.861744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916637, -0.241116, -0.318811,
		-0.143209, 0.942734, -0.301237,
		0.373187, -0.230468, -0.898675,
		14.524449, 16.372303, 7.592142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.851074, 16.928089, 7.695673>,  <14.263219, 16.533632, 8.221213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.851074, 16.928089, 7.695673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.012872, 16.615879, 7.505025>,  <14.109950, 16.428553, 7.390636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.012872, 16.615879, 7.505025>,  <13.851074, 16.928089, 7.695673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.012872, 16.615879, 7.505025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875700, -0.180292, -0.447933,
		0.263692, 0.598563, -0.756432,
		0.404495, -0.780524, -0.476620,
		14.134220, 16.381721, 7.362039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.984761, 17.035040, 6.962965>,  <13.851074, 16.928089, 7.695673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.984761, 17.035040, 6.962965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.891854, 16.662094, 7.073778>,  <13.836110, 16.438326, 7.140266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.891854, 16.662094, 7.073778>,  <13.984761, 17.035040, 6.962965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.891854, 16.662094, 7.073778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803811, 0.023624, -0.594415,
		0.547667, -0.360746, -0.754933,
		-0.232268, -0.932364, 0.277034,
		13.822174, 16.382385, 7.156888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.634325, 17.398750, 7.006817>,  <13.984761, 17.035040, 6.962965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.634325, 17.398750, 7.006817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.290591, 17.451981, 6.809299>,  <14.084351, 17.483919, 6.690789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.290591, 17.451981, 6.809299>,  <14.634325, 17.398750, 7.006817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.290591, 17.451981, 6.809299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344993, 0.863610, -0.367638,
		0.377522, -0.486280, -0.788041,
		-0.859335, 0.133077, -0.493795,
		14.032790, 17.491903, 6.661161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.682066, 17.266401, 6.287438>,  <14.634325, 17.398750, 7.006817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.682066, 17.266401, 6.287438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.423577, 17.530937, 6.439768>,  <14.268484, 17.689659, 6.531166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.423577, 17.530937, 6.439768>,  <14.682066, 17.266401, 6.287438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.423577, 17.530937, 6.439768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587261, 0.749624, -0.305268,
		-0.487361, 0.026372, -0.872802,
		-0.646223, 0.661339, 0.380825,
		14.229711, 17.729340, 6.554015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.469904, 17.669138, 5.755937>,  <14.682066, 17.266401, 6.287438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.469904, 17.669138, 5.755937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.497529, 17.826939, 6.122456>,  <14.514104, 17.921619, 6.342367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.497529, 17.826939, 6.122456>,  <14.469904, 17.669138, 5.755937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.497529, 17.826939, 6.122456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649618, 0.679284, -0.341422,
		-0.757117, 0.618823, -0.209361,
		0.069064, 0.394502, 0.916296,
		14.518249, 17.945290, 6.397345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.184034, 18.426414, 5.833730>,  <14.469904, 17.669138, 5.755937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.184034, 18.426414, 5.833730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.467515, 18.370502, 6.110339>,  <14.637603, 18.336956, 6.276305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.467515, 18.370502, 6.110339>,  <14.184034, 18.426414, 5.833730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.467515, 18.370502, 6.110339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474292, 0.820026, -0.320321,
		-0.522293, 0.554996, 0.647449,
		0.708701, -0.139778, 0.691524,
		14.680125, 18.328569, 6.317796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.426395, 19.088575, 6.145824>,  <14.184034, 18.426414, 5.833730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.426395, 19.088575, 6.145824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.727700, 18.827850, 6.181007>,  <14.908483, 18.671415, 6.202117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.727700, 18.827850, 6.181007>,  <14.426395, 19.088575, 6.145824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.727700, 18.827850, 6.181007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652359, 0.723368, -0.226200,
		0.083815, 0.227768, 0.970101,
		0.753261, -0.651814, 0.087958,
		14.953678, 18.632307, 6.207395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.888657, 19.225254, 6.741617>,  <14.426395, 19.088575, 6.145824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.888657, 19.225254, 6.741617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.061833, 19.047039, 6.428170>,  <15.165740, 18.940109, 6.240102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.061833, 19.047039, 6.428170>,  <14.888657, 19.225254, 6.741617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.061833, 19.047039, 6.428170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583353, 0.801215, -0.133245,
		0.687212, -0.399438, 0.606786,
		0.432943, -0.445538, -0.783618,
		15.191716, 18.913378, 6.193085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.170531, 19.410376, 6.858165>,  <14.888657, 19.225254, 6.741617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.170531, 19.410376, 6.858165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074599, 19.665710, 7.150742>,  <14.017040, 19.818913, 7.326287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074599, 19.665710, 7.150742>,  <14.170531, 19.410376, 6.858165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.074599, 19.665710, 7.150742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476470, 0.733841, -0.484205,
		-0.845847, 0.232383, -0.480146,
		-0.239830, 0.638339, 0.731441,
		14.002650, 19.857212, 7.370174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.839519, 19.909103, 6.606354>,  <14.170531, 19.410376, 6.858165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.839519, 19.909103, 6.606354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.017978, 20.043362, 6.938208>,  <14.125053, 20.123917, 7.137320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.017978, 20.043362, 6.938208>,  <13.839519, 19.909103, 6.606354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.017978, 20.043362, 6.938208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438008, 0.726506, -0.529469,
		-0.780449, 0.599608, 0.177114,
		0.446148, 0.335647, 0.829634,
		14.151822, 20.144056, 7.187098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.001361, 20.524891, 6.260381>,  <13.839519, 19.909103, 6.606354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.001361, 20.524891, 6.260381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.894338, 20.248955, 5.991298>,  <13.830124, 20.083393, 5.829848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.894338, 20.248955, 5.991298>,  <14.001361, 20.524891, 6.260381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.894338, 20.248955, 5.991298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959209, 0.124561, 0.253778,
		-0.091273, 0.713167, -0.695027,
		-0.267559, -0.689839, -0.672707,
		13.814070, 20.042004, 5.789485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.634115, 20.755018, 5.741916>,  <14.001361, 20.524891, 6.260381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.634115, 20.755018, 5.741916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.546187, 20.381920, 5.856223>,  <13.493431, 20.158060, 5.924808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.546187, 20.381920, 5.856223>,  <13.634115, 20.755018, 5.741916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.546187, 20.381920, 5.856223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972520, 0.232559, 0.010988,
		-0.076707, -0.275499, -0.958236,
		-0.219819, -0.932747, 0.285767,
		13.480242, 20.102097, 5.941953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.268291, 20.319880, 5.287287>,  <13.634115, 20.755018, 5.741916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.268291, 20.319880, 5.287287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.194385, 20.250904, 5.674301>,  <13.150041, 20.209518, 5.906510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.194385, 20.250904, 5.674301>,  <13.268291, 20.319880, 5.287287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.194385, 20.250904, 5.674301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945655, 0.299236, -0.127259,
		-0.267578, -0.938469, -0.218355,
		-0.184768, -0.172437, 0.967536,
		13.138954, 20.199173, 5.964562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.543079, 19.969292, 5.374197>,  <13.268291, 20.319880, 5.287287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.543079, 19.969292, 5.374197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.626729, 20.224201, 5.670885>,  <12.676919, 20.377148, 5.848898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.626729, 20.224201, 5.670885>,  <12.543079, 19.969292, 5.374197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.626729, 20.224201, 5.670885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965845, 0.253282, 0.054698,
		-0.153007, -0.727825, 0.668475,
		0.209124, 0.637274, 0.741720,
		12.689466, 20.415384, 5.893401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.040943, 19.404121, 5.327707>,  <12.543079, 19.969292, 5.374197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.040943, 19.404121, 5.327707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.354789, 19.338066, 5.566741>,  <13.543097, 19.298433, 5.710162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.354789, 19.338066, 5.566741>,  <13.040943, 19.404121, 5.327707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.354789, 19.338066, 5.566741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615100, -0.328089, 0.716945,
		0.077666, -0.930101, -0.359000,
		0.784615, -0.165139, 0.597586,
		13.590174, 19.288525, 5.746017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.728300, 19.413061, 4.645262>,  <13.040943, 19.404121, 5.327707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.728300, 19.413061, 4.645262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.825511, 19.267982, 4.285398>,  <12.883838, 19.180935, 4.069479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.825511, 19.267982, 4.285398>,  <12.728300, 19.413061, 4.645262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.825511, 19.267982, 4.285398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735924, -0.535283, 0.414594,
		-0.631944, -0.762840, 0.136829,
		0.243027, -0.362696, -0.899661,
		12.898419, 19.159174, 4.015499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.286515, 18.841433, 4.751297>,  <12.728300, 19.413061, 4.645262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.286515, 18.841433, 4.751297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.107593, 19.121346, 4.974087>,  <12.000238, 19.289293, 5.107761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.107593, 19.121346, 4.974087>,  <12.286515, 18.841433, 4.751297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.107593, 19.121346, 4.974087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741708, -0.638236, 0.206213,
		0.499786, -0.320872, 0.804522,
		-0.447307, 0.699782, 0.556975,
		11.973400, 19.331280, 5.141179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.101905, 18.542643, 5.389102>,  <12.286515, 18.841433, 4.751297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.101905, 18.542643, 5.389102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.862679, 18.848068, 5.291703>,  <11.719144, 19.031324, 5.233264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.862679, 18.848068, 5.291703>,  <12.101905, 18.542643, 5.389102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.862679, 18.848068, 5.291703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794963, -0.603754, 0.059279,
		-0.101749, 0.229024, 0.968088,
		-0.598064, 0.763563, -0.243497,
		11.683260, 19.077137, 5.218654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.581484, 18.666075, 5.870898>,  <12.101905, 18.542643, 5.389102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.581484, 18.666075, 5.870898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.446937, 18.787033, 5.514154>,  <11.366208, 18.859608, 5.300108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.446937, 18.787033, 5.514154>,  <11.581484, 18.666075, 5.870898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.446937, 18.787033, 5.514154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939370, -0.174756, 0.295034,
		-0.066641, 0.937026, 0.342842,
		-0.336369, 0.302394, -0.891860,
		11.346026, 18.877750, 5.246596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.771791, 19.069817, 6.413964>,  <11.581484, 18.666075, 5.870898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.771791, 19.069817, 6.413964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.710387, 18.741535, 6.634102>,  <11.673546, 18.544565, 6.766185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.710387, 18.741535, 6.634102>,  <11.771791, 19.069817, 6.413964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.710387, 18.741535, 6.634102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738576, 0.274705, 0.615665,
		-0.656461, 0.500981, 0.563983,
		-0.153507, -0.820704, 0.550345,
		11.664335, 18.495323, 6.799205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.631777, 19.293377, 7.114427>,  <11.771791, 19.069817, 6.413964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.631777, 19.293377, 7.114427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.813363, 18.942406, 7.052417>,  <11.922315, 18.731823, 7.015211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.813363, 18.942406, 7.052417>,  <11.631777, 19.293377, 7.114427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.813363, 18.942406, 7.052417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778317, 0.305800, 0.548369,
		-0.433748, -0.369600, 0.821741,
		0.453966, -0.877429, -0.155026,
		11.949553, 18.679176, 7.005909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.939857, 18.975861, 7.232563>,  <11.631777, 19.293377, 7.114427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.939857, 18.975861, 7.232563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.695807, 19.080345, 7.531767>,  <10.549378, 19.143036, 7.711289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.695807, 19.080345, 7.531767>,  <10.939857, 18.975861, 7.232563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.695807, 19.080345, 7.531767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759431, -0.076337, 0.646094,
		0.225867, 0.962259, -0.151797,
		-0.610122, 0.261211, 0.748011,
		10.512771, 19.158709, 7.756170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.619280, 19.299824, 6.691098>,  <10.939857, 18.975861, 7.232563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.619280, 19.299824, 6.691098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.356334, 19.599518, 6.658803>,  <10.198565, 19.779333, 6.639426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.356334, 19.599518, 6.658803>,  <10.619280, 19.299824, 6.691098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.356334, 19.599518, 6.658803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146591, -0.022049, 0.988951,
		0.739175, 0.661939, 0.124325,
		-0.657367, 0.749234, -0.080737,
		10.159123, 19.824287, 6.634582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.729941, 19.856791, 7.211496>,  <10.619280, 19.299824, 6.691098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.729941, 19.856791, 7.211496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.347869, 19.812485, 7.101689>,  <10.118626, 19.785900, 7.035805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.347869, 19.812485, 7.101689>,  <10.729941, 19.856791, 7.211496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.347869, 19.812485, 7.101689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251684, -0.184302, 0.950099,
		-0.155833, 0.976608, 0.148164,
		-0.955181, -0.110766, -0.274517,
		10.061315, 19.779255, 7.019334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.171360, 20.370140, 7.527317>,  <10.729941, 19.856791, 7.211496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.171360, 20.370140, 7.527317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.049748, 19.998920, 7.441251>,  <9.976782, 19.776190, 7.389611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.049748, 19.998920, 7.441251>,  <10.171360, 20.370140, 7.527317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.049748, 19.998920, 7.441251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411158, -0.075915, 0.908397,
		-0.859369, 0.364645, -0.358494,
		-0.304028, -0.928047, -0.215166,
		9.958540, 19.720507, 7.376701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.359146, 20.163847, 8.135242>,  <10.171360, 20.370140, 7.527317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.359146, 20.163847, 8.135242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.221986, 20.450195, 8.378536>,  <10.139689, 20.622004, 8.524513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.221986, 20.450195, 8.378536>,  <10.359146, 20.163847, 8.135242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.221986, 20.450195, 8.378536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901734, 0.069401, 0.426684,
		0.263237, 0.694777, -0.669321,
		-0.342902, 0.715869, 0.608236,
		10.119115, 20.664955, 8.561007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.631192, 20.752884, 8.029795>,  <10.359146, 20.163847, 8.135242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.631192, 20.752884, 8.029795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.516696, 20.688503, 8.407612>,  <10.447998, 20.649876, 8.634302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.516696, 20.688503, 8.407612>,  <10.631192, 20.752884, 8.029795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.516696, 20.688503, 8.407612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945271, 0.113703, 0.305835,
		-0.156621, 0.980391, 0.119595,
		-0.286240, -0.160950, 0.944543,
		10.430824, 20.640219, 8.690975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.747622, 21.331108, 8.535768>,  <10.631192, 20.752884, 8.029795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.747622, 21.331108, 8.535768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.797240, 20.995098, 8.747039>,  <10.827011, 20.793493, 8.873801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.797240, 20.995098, 8.747039>,  <10.747622, 21.331108, 8.535768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.797240, 20.995098, 8.747039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937436, 0.273717, 0.215159,
		-0.325310, 0.468443, 0.821422,
		0.124047, -0.840024, 0.528178,
		10.834455, 20.743092, 8.905492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.400001, 21.346426, 8.624146>,  <10.747622, 21.331108, 8.535768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.400001, 21.346426, 8.624146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.283837, 21.045788, 8.861050>,  <11.214139, 20.865406, 9.003192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.283837, 21.045788, 8.861050>,  <11.400001, 21.346426, 8.624146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.283837, 21.045788, 8.861050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956897, -0.225986, 0.182423,
		-0.003266, 0.619708, 0.784826,
		-0.290408, -0.751593, 0.592259,
		11.196714, 20.820311, 9.038727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<19.495134, 17.343866, 19.613253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.890976, 17.377953, 19.566916>,  <20.128481, 17.398405, 19.539114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.890976, 17.377953, 19.566916>,  <19.495134, 17.343866, 19.613253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.890976, 17.377953, 19.566916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119260, 0.036162, -0.992204,
		-0.080363, 0.995706, 0.045949,
		0.989605, 0.085217, -0.115841,
		20.187857, 17.403517, 19.532164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.656126, 17.917959, 19.127207>,  <19.495134, 17.343866, 19.613253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.656126, 17.917959, 19.127207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.974983, 17.676548, 19.134350>,  <20.166298, 17.531702, 19.138636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.974983, 17.676548, 19.134350>,  <19.656126, 17.917959, 19.127207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.974983, 17.676548, 19.134350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035549, 0.017384, -0.999217,
		0.602745, 0.797152, 0.035312,
		0.797142, -0.603528, 0.017860,
		20.214127, 17.495489, 19.139708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.020164, 18.161695, 18.451454>,  <19.656126, 17.917959, 19.127207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.020164, 18.161695, 18.451454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.202133, 17.828796, 18.578205>,  <20.311316, 17.629057, 18.654255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.202133, 17.828796, 18.578205>,  <20.020164, 18.161695, 18.451454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.202133, 17.828796, 18.578205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302254, -0.190408, -0.934017,
		0.837667, 0.520684, 0.164929,
		0.454924, -0.832246, 0.316878,
		20.338610, 17.579123, 18.673269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.651634, 18.284897, 18.263632>,  <20.020164, 18.161695, 18.451454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.651634, 18.284897, 18.263632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.607357, 17.891861, 18.323313>,  <20.580791, 17.656038, 18.359121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.607357, 17.891861, 18.323313>,  <20.651634, 18.284897, 18.263632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.607357, 17.891861, 18.323313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324509, -0.177631, -0.929054,
		0.939383, -0.054421, 0.338522,
		-0.110692, -0.982591, 0.149203,
		20.574150, 17.597084, 18.368074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.127357, 18.062063, 17.904373>,  <20.651634, 18.284897, 18.263632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.127357, 18.062063, 17.904373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.897556, 17.740520, 17.966026>,  <20.759674, 17.547594, 18.003017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.897556, 17.740520, 17.966026>,  <21.127357, 18.062063, 17.904373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.897556, 17.740520, 17.966026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174924, -0.304543, -0.936298,
		0.799591, -0.510947, 0.315576,
		-0.574505, -0.803857, 0.154133,
		20.725204, 17.499363, 18.012266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.489395, 17.618027, 17.475298>,  <21.127357, 18.062063, 17.904373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.489395, 17.618027, 17.475298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.114254, 17.490101, 17.529188>,  <20.889170, 17.413345, 17.561522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.114254, 17.490101, 17.529188>,  <21.489395, 17.618027, 17.475298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.114254, 17.490101, 17.529188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020986, -0.335243, -0.941898,
		0.346398, -0.886189, 0.307697,
		-0.937853, -0.319814, 0.134725,
		20.832897, 17.394157, 17.569605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.486635, 17.027721, 17.153580>,  <21.489395, 17.618027, 17.475298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.486635, 17.027721, 17.153580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.102058, 17.136089, 17.172461>,  <20.871311, 17.201111, 17.183788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.102058, 17.136089, 17.172461>,  <21.486635, 17.027721, 17.153580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.102058, 17.136089, 17.172461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105973, -0.206616, -0.972666,
		-0.253766, -0.940165, 0.227360,
		-0.961443, 0.270923, 0.047200,
		20.813625, 17.217365, 17.186621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.125076, 16.506222, 16.755058>,  <21.486635, 17.027721, 17.153580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.125076, 16.506222, 16.755058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.881367, 16.822395, 16.780369>,  <20.735142, 17.012098, 16.795555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.881367, 16.822395, 16.780369>,  <21.125076, 16.506222, 16.755058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.881367, 16.822395, 16.780369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276476, -0.136960, -0.951211,
		-0.743202, -0.597041, 0.301982,
		-0.609272, 0.790432, 0.063278,
		20.698586, 17.059525, 16.799353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.436571, 16.303797, 16.685081>,  <21.125076, 16.506222, 16.755058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.436571, 16.303797, 16.685081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.411911, 16.686653, 16.571888>,  <20.397114, 16.916367, 16.503973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.411911, 16.686653, 16.571888>,  <20.436571, 16.303797, 16.685081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.411911, 16.686653, 16.571888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419709, -0.282097, -0.862708,
		-0.905562, 0.065582, 0.419113,
		-0.061652, 0.957142, -0.282982,
		20.393415, 16.973795, 16.486994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.764780, 16.355806, 16.309795>,  <20.436571, 16.303797, 16.685081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.764780, 16.355806, 16.309795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.971085, 16.677441, 16.191515>,  <20.094868, 16.870420, 16.120546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.971085, 16.677441, 16.191515>,  <19.764780, 16.355806, 16.309795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.971085, 16.677441, 16.191515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355193, -0.113400, -0.927889,
		-0.779633, 0.583601, 0.227118,
		0.515762, 0.804083, -0.295702,
		20.125813, 16.918665, 16.102804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.330526, 16.684658, 15.887557>,  <19.764780, 16.355806, 16.309795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.330526, 16.684658, 15.887557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.675343, 16.862679, 15.790552>,  <19.882233, 16.969490, 15.732349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.675343, 16.862679, 15.790552>,  <19.330526, 16.684658, 15.887557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.675343, 16.862679, 15.790552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248158, -0.046582, -0.967599,
		-0.441928, 0.894293, 0.070287,
		0.862042, 0.445052, -0.242511,
		19.933956, 16.996195, 15.717798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.178179, 17.160593, 15.319803>,  <19.330526, 16.684658, 15.887557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.178179, 17.160593, 15.319803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.571812, 17.100441, 15.281925>,  <19.807991, 17.064350, 15.259198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.571812, 17.100441, 15.281925>,  <19.178179, 17.160593, 15.319803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.571812, 17.100441, 15.281925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107138, -0.076909, -0.991265,
		0.141783, 0.985632, -0.091796,
		0.984083, -0.150380, -0.094694,
		19.867037, 17.055326, 15.253517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.402655, 17.573687, 14.809097>,  <19.178179, 17.160593, 15.319803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.402655, 17.573687, 14.809097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.711586, 17.321293, 14.838402>,  <19.896944, 17.169857, 14.855985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.711586, 17.321293, 14.838402>,  <19.402655, 17.573687, 14.809097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.711586, 17.321293, 14.838402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016551, -0.095304, -0.995311,
		0.635008, 0.769919, -0.063162,
		0.772328, -0.630985, 0.073262,
		19.943285, 17.131998, 14.860380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.956095, 17.925873, 14.375958>,  <19.402655, 17.573687, 14.809097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.956095, 17.925873, 14.375958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.070923, 17.544254, 14.410336>,  <20.139820, 17.315283, 14.430962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.070923, 17.544254, 14.410336>,  <19.956095, 17.925873, 14.375958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.070923, 17.544254, 14.410336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399214, 0.037600, -0.916086,
		0.870758, 0.297291, 0.391663,
		0.287071, -0.954046, 0.085942,
		20.157043, 17.258039, 14.436118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.616419, 17.730654, 14.214618>,  <19.956095, 17.925873, 14.375958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.616419, 17.730654, 14.214618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.443657, 17.375027, 14.153934>,  <20.340000, 17.161650, 14.117525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.443657, 17.375027, 14.153934>,  <20.616419, 17.730654, 14.214618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.443657, 17.375027, 14.153934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332352, -0.000519, -0.943155,
		0.838451, -0.457775, 0.295708,
		-0.431906, -0.889068, -0.151707,
		20.314085, 17.108307, 14.108422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.826347, 17.555521, 13.509816>,  <20.616419, 17.730654, 14.214618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.826347, 17.555521, 13.509816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.563713, 17.260044, 13.570772>,  <20.406132, 17.082758, 13.607346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.563713, 17.260044, 13.570772>,  <20.826347, 17.555521, 13.509816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.563713, 17.260044, 13.570772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051264, -0.157870, -0.986128,
		0.752506, -0.655291, 0.065787,
		-0.656587, -0.738695, 0.152391,
		20.366737, 17.038435, 13.616489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.070307, 16.971678, 13.125510>,  <20.826347, 17.555521, 13.509816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.070307, 16.971678, 13.125510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.673943, 16.954773, 13.176598>,  <20.436125, 16.944630, 13.207251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.673943, 16.954773, 13.176598>,  <21.070307, 16.971678, 13.125510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.673943, 16.954773, 13.176598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131317, 0.097632, -0.986521,
		0.029220, -0.994325, -0.102294,
		-0.990910, -0.042259, 0.127719,
		20.376669, 16.942095, 13.214913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.891497, 16.455774, 12.756341>,  <21.070307, 16.971678, 13.125510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.891497, 16.455774, 12.756341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.544277, 16.653740, 12.772120>,  <20.335945, 16.772518, 12.781588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.544277, 16.653740, 12.772120>,  <20.891497, 16.455774, 12.756341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.544277, 16.653740, 12.772120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116154, -0.125190, -0.985310,
		-0.482704, -0.859877, 0.166157,
		-0.868047, 0.494913, 0.039448,
		20.283863, 16.802214, 12.783955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.303265, 16.058754, 12.369804>,  <20.891497, 16.455774, 12.756341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.303265, 16.058754, 12.369804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.174797, 16.434944, 12.414267>,  <20.097717, 16.660658, 12.440944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.174797, 16.434944, 12.414267>,  <20.303265, 16.058754, 12.369804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.174797, 16.434944, 12.414267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276329, 0.019200, -0.960871,
		-0.905811, -0.339317, 0.253714,
		-0.321169, 0.940476, 0.111155,
		20.078447, 16.717087, 12.447613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.662703, 16.036201, 12.115873>,  <20.303265, 16.058754, 12.369804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.662703, 16.036201, 12.115873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.759022, 16.424374, 12.109168>,  <19.816813, 16.657276, 12.105145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.759022, 16.424374, 12.109168>,  <19.662703, 16.036201, 12.115873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.759022, 16.424374, 12.109168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222566, 0.038398, -0.974161,
		-0.944713, 0.238305, 0.225231,
		0.240796, 0.970431, -0.016764,
		19.831261, 16.715504, 12.104139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.110355, 16.391903, 11.753199>,  <19.662703, 16.036201, 12.115873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.110355, 16.391903, 11.753199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.423500, 16.640606, 11.743832>,  <19.611387, 16.789827, 11.738212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.423500, 16.640606, 11.743832>,  <19.110355, 16.391903, 11.753199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.423500, 16.640606, 11.743832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139315, 0.138483, -0.980517,
		-0.606401, 0.770870, 0.195033,
		0.782860, 0.621758, -0.023417,
		19.658358, 16.827133, 11.736807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.062851, 17.079229, 11.269305>,  <19.110355, 16.391903, 11.753199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.062851, 17.079229, 11.269305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.457813, 17.023323, 11.298954>,  <19.694790, 16.989780, 11.316743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.457813, 17.023323, 11.298954>,  <19.062851, 17.079229, 11.269305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.457813, 17.023323, 11.298954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096055, 0.157362, -0.982858,
		0.125705, 0.977601, 0.168805,
		0.987407, -0.139765, 0.074122,
		19.754036, 16.981394, 11.321191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.482988, 16.468571, 11.319419>,  <19.062851, 17.079229, 11.269305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.482988, 16.468571, 11.319419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.085232, 16.427525, 11.309176>,  <17.846579, 16.402897, 11.303031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.085232, 16.427525, 11.309176>,  <18.482988, 16.468571, 11.319419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.085232, 16.427525, 11.309176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052548, 0.269249, 0.961636,
		-0.091783, 0.957588, -0.273131,
		-0.994392, -0.102615, -0.025607,
		17.786915, 16.396740, 11.301495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.249599, 16.975275, 11.760468>,  <18.482988, 16.468571, 11.319419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.249599, 16.975275, 11.760468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.985203, 16.678112, 11.718173>,  <17.826565, 16.499815, 11.692796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.985203, 16.678112, 11.718173>,  <18.249599, 16.975275, 11.760468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.985203, 16.678112, 11.718173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113265, -0.040520, 0.992738,
		-0.741797, 0.668167, -0.057362,
		-0.660991, -0.742907, -0.105737,
		17.786905, 16.455240, 11.686452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.727238, 17.095016, 12.274481>,  <18.249599, 16.975275, 11.760468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.727238, 17.095016, 12.274481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.670979, 16.708443, 12.188487>,  <17.637222, 16.476498, 12.136891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.670979, 16.708443, 12.188487>,  <17.727238, 17.095016, 12.274481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.670979, 16.708443, 12.188487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176560, -0.189178, 0.965939,
		-0.974189, 0.173815, -0.144027,
		-0.140648, -0.966437, -0.214984,
		17.628784, 16.418512, 12.123992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.140268, 16.955341, 12.635487>,  <17.727238, 17.095016, 12.274481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.140268, 16.955341, 12.635487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.318699, 16.601395, 12.581778>,  <17.425756, 16.389027, 12.549552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.318699, 16.601395, 12.581778>,  <17.140268, 16.955341, 12.635487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.318699, 16.601395, 12.581778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247237, -0.266018, 0.931723,
		-0.860169, -0.382421, -0.337436,
		0.446075, -0.884866, -0.134272,
		17.452522, 16.335936, 12.541496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.673504, 16.541039, 12.994829>,  <17.140268, 16.955341, 12.635487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.673504, 16.541039, 12.994829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.003311, 16.317955, 12.956610>,  <17.201195, 16.184105, 12.933678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.003311, 16.317955, 12.956610>,  <16.673504, 16.541039, 12.994829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.003311, 16.317955, 12.956610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031309, -0.213571, 0.976426,
		-0.564969, -0.802089, -0.193554,
		0.824518, -0.557710, -0.095548,
		17.250666, 16.150642, 12.927945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.648829, 16.031231, 13.421434>,  <16.673504, 16.541039, 12.994829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.648829, 16.031231, 13.421434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.041470, 15.975296, 13.369427>,  <17.277054, 15.941734, 13.338223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.041470, 15.975296, 13.369427>,  <16.648829, 16.031231, 13.421434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.041470, 15.975296, 13.369427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112722, -0.125233, 0.985703,
		-0.154126, -0.982222, -0.107165,
		0.981600, -0.139843, -0.130019,
		17.335949, 15.933344, 13.330421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.775917, 15.310322, 13.747583>,  <16.648829, 16.031231, 13.421434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.775917, 15.310322, 13.747583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.122513, 15.509571, 13.734486>,  <17.330469, 15.629121, 13.726626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.122513, 15.509571, 13.734486>,  <16.775917, 15.310322, 13.747583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.122513, 15.509571, 13.734486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260962, -0.396072, 0.880355,
		0.425556, -0.771362, -0.473183,
		0.866488, 0.498123, -0.032745,
		17.382460, 15.659008, 13.724662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.338531, 14.716327, 13.966828>,  <16.775917, 15.310322, 13.747583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.338531, 14.716327, 13.966828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.489437, 15.082298, 14.024204>,  <17.579981, 15.301882, 14.058630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.489437, 15.082298, 14.024204>,  <17.338531, 14.716327, 13.966828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.489437, 15.082298, 14.024204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366178, -0.289632, 0.884323,
		0.850639, -0.281098, -0.444295,
		0.377264, 0.914930, 0.143440,
		17.602617, 15.356777, 14.067236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.994999, 14.590688, 14.093656>,  <17.338531, 14.716327, 13.966828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.994999, 14.590688, 14.093656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.893456, 14.942074, 14.255571>,  <17.832529, 15.152905, 14.352721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.893456, 14.942074, 14.255571>,  <17.994999, 14.590688, 14.093656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.893456, 14.942074, 14.255571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321328, -0.318136, 0.891929,
		0.912308, 0.356492, -0.201514,
		-0.253857, 0.878466, 0.404789,
		17.817299, 15.205614, 14.377008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.451883, 14.635472, 14.666643>,  <17.994999, 14.590688, 14.093656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.451883, 14.635472, 14.666643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.213409, 14.944782, 14.753002>,  <18.070326, 15.130368, 14.804817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.213409, 14.944782, 14.753002>,  <18.451883, 14.635472, 14.666643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.213409, 14.944782, 14.753002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300180, -0.034712, 0.953251,
		0.744619, 0.633120, -0.211427,
		-0.596183, 0.773275, 0.215897,
		18.034554, 15.176764, 14.817771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.892218, 15.188997, 15.027034>,  <18.451883, 14.635472, 14.666643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.892218, 15.188997, 15.027034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.521034, 15.250813, 15.162687>,  <18.298325, 15.287902, 15.244080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.521034, 15.250813, 15.162687>,  <18.892218, 15.188997, 15.027034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.521034, 15.250813, 15.162687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367071, 0.221652, 0.903399,
		0.064441, 0.962802, -0.262411,
		-0.927958, 0.154539, 0.339133,
		18.242647, 15.297174, 15.264427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.813028, 15.833043, 15.345888>,  <18.892218, 15.188997, 15.027034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.813028, 15.833043, 15.345888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.487217, 15.654510, 15.494122>,  <18.291731, 15.547391, 15.583061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.487217, 15.654510, 15.494122>,  <18.813028, 15.833043, 15.345888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487217, 15.654510, 15.494122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226852, 0.342880, 0.911576,
		-0.533930, 0.826572, -0.178035,
		-0.814528, -0.446331, 0.370584,
		18.242859, 15.520612, 15.605297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.405092, 16.403522, 15.745833>,  <18.813028, 15.833043, 15.345888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.405092, 16.403522, 15.745833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.350826, 16.021992, 15.853022>,  <18.318268, 15.793073, 15.917335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.350826, 16.021992, 15.853022>,  <18.405092, 16.403522, 15.745833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.350826, 16.021992, 15.853022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036812, 0.265433, 0.963426,
		-0.990071, 0.140566, -0.000898,
		-0.135663, -0.953828, 0.267972,
		18.310127, 15.735844, 15.933414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.868477, 16.387053, 16.249914>,  <18.405092, 16.403522, 15.745833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.868477, 16.387053, 16.249914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.043346, 16.031128, 16.302240>,  <18.148268, 15.817574, 16.333637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.043346, 16.031128, 16.302240>,  <17.868477, 16.387053, 16.249914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.043346, 16.031128, 16.302240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064258, 0.175985, 0.982293,
		-0.897078, -0.421028, 0.134114,
		0.437175, -0.889812, 0.130818,
		18.174500, 15.764184, 16.341486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.414804, 15.987166, 16.834013>,  <17.868477, 16.387053, 16.249914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.414804, 15.987166, 16.834013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.789650, 15.850903, 16.803635>,  <18.014557, 15.769144, 16.785408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.789650, 15.850903, 16.803635>,  <17.414804, 15.987166, 16.834013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.789650, 15.850903, 16.803635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147770, 0.190124, 0.970576,
		-0.316197, -0.920763, 0.228507,
		0.937114, -0.340660, -0.075944,
		18.070784, 15.748705, 16.780851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.425817, 15.562758, 17.384220>,  <17.414804, 15.987166, 16.834013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.425817, 15.562758, 17.384220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.813129, 15.590515, 17.288206>,  <18.045517, 15.607169, 17.230598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.813129, 15.590515, 17.288206>,  <17.425817, 15.562758, 17.384220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.813129, 15.590515, 17.288206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234448, 0.079902, 0.968839,
		0.086417, -0.994384, 0.061097,
		0.968280, 0.069400, -0.240036,
		18.103613, 15.611333, 17.216196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.863634, 15.131939, 17.802830>,  <17.425817, 15.562758, 17.384220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.863634, 15.131939, 17.802830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.088577, 15.437939, 17.677273>,  <18.223543, 15.621539, 17.601938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.088577, 15.437939, 17.677273>,  <17.863634, 15.131939, 17.802830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.088577, 15.437939, 17.677273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277618, 0.182896, 0.943121,
		0.778897, -0.617514, -0.109524,
		0.562359, 0.765000, -0.313890,
		18.257284, 15.667439, 17.583105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.440811, 15.020576, 18.137829>,  <17.863634, 15.131939, 17.802830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.440811, 15.020576, 18.137829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.439396, 15.405190, 18.027966>,  <18.438547, 15.635958, 17.962048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.439396, 15.405190, 18.027966>,  <18.440811, 15.020576, 18.137829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.439396, 15.405190, 18.027966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281443, 0.264515, 0.922400,
		0.959571, -0.074039, -0.271553,
		-0.003536, 0.961535, -0.274659,
		18.438335, 15.693650, 17.945568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.016464, 15.231361, 18.597965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.828060, 15.562851, 18.477058>,  <18.715017, 15.761744, 18.404514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.828060, 15.562851, 18.477058>,  <19.016464, 15.231361, 18.597965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.828060, 15.562851, 18.477058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136526, 0.407010, 0.903163,
		0.871498, 0.384133, -0.304849,
		-0.471011, 0.828724, -0.302265,
		18.686756, 15.811468, 18.386379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.448296, 15.861959, 18.693396>,  <19.016464, 15.231361, 18.597965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.448296, 15.861959, 18.693396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.065487, 15.977310, 18.705721>,  <18.835802, 16.046520, 18.713116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.065487, 15.977310, 18.705721>,  <19.448296, 15.861959, 18.693396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.065487, 15.977310, 18.705721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187852, 0.535426, 0.823426,
		0.220957, 0.793825, -0.566586,
		-0.957021, 0.288376, 0.030815,
		18.778381, 16.063824, 18.714966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.431316, 16.584240, 18.834578>,  <19.448296, 15.861959, 18.693396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.431316, 16.584240, 18.834578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.055344, 16.481739, 18.924788>,  <18.829760, 16.420238, 18.978914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.055344, 16.481739, 18.924788>,  <19.431316, 16.584240, 18.834578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.055344, 16.481739, 18.924788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019766, 0.618707, 0.785373,
		-0.340788, 0.742656, -0.576478,
		-0.939932, -0.256251, 0.225527,
		18.773363, 16.404863, 18.992445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.034441, 17.288538, 18.820936>,  <19.431316, 16.584240, 18.834578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.034441, 17.288538, 18.820936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.809578, 17.029510, 19.026707>,  <18.674660, 16.874094, 19.150169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.809578, 17.029510, 19.026707>,  <19.034441, 17.288538, 18.820936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.809578, 17.029510, 19.026707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205722, 0.711956, 0.671414,
		-0.801035, 0.271612, -0.533451,
		-0.562158, -0.647569, 0.514425,
		18.640930, 16.835239, 19.181034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.425117, 17.656452, 19.042070>,  <19.034441, 17.288538, 18.820936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.425117, 17.656452, 19.042070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.473522, 17.334785, 19.274853>,  <18.502565, 17.141787, 19.414522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.473522, 17.334785, 19.274853>,  <18.425117, 17.656452, 19.042070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.473522, 17.334785, 19.274853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236270, 0.546082, 0.803723,
		-0.964123, -0.234759, -0.123918,
		0.121012, -0.804166, 0.581957,
		18.509827, 17.093536, 19.449440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.823643, 17.645018, 19.468822>,  <18.425117, 17.656452, 19.042070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.823643, 17.645018, 19.468822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.093285, 17.433128, 19.674725>,  <18.255070, 17.305994, 19.798265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.093285, 17.433128, 19.674725>,  <17.823643, 17.645018, 19.468822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.093285, 17.433128, 19.674725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311479, 0.428037, 0.848390,
		-0.669747, -0.732240, 0.123545,
		0.674107, -0.529725, 0.514754,
		18.295517, 17.274212, 19.829151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.485641, 17.499582, 20.203842>,  <17.823643, 17.645018, 19.468822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.485641, 17.499582, 20.203842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.861668, 17.374218, 20.257591>,  <18.087282, 17.299000, 20.289841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.861668, 17.374218, 20.257591>,  <17.485641, 17.499582, 20.203842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.861668, 17.374218, 20.257591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053952, 0.252395, 0.966119,
		-0.336706, -0.915463, 0.220358,
		0.940063, -0.313409, 0.134374,
		18.143686, 17.280195, 20.297903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.499531, 17.134636, 20.814396>,  <17.485641, 17.499582, 20.203842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.499531, 17.134636, 20.814396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.875950, 17.259869, 20.763163>,  <18.101801, 17.335009, 20.732424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.875950, 17.259869, 20.763163>,  <17.499531, 17.134636, 20.814396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.875950, 17.259869, 20.763163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047379, 0.252914, 0.966328,
		0.334935, -0.915431, 0.223171,
		0.941050, 0.313084, -0.128082,
		18.158264, 17.353794, 20.724737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.876972, 16.800371, 21.281097>,  <17.499531, 17.134636, 20.814396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.876972, 16.800371, 21.281097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.137756, 17.093525, 21.203297>,  <18.294228, 17.269417, 21.156616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.137756, 17.093525, 21.203297>,  <17.876972, 16.800371, 21.281097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.137756, 17.093525, 21.203297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015857, 0.243277, 0.969827,
		0.758087, -0.635373, 0.146986,
		0.651961, 0.732882, -0.194500,
		18.333345, 17.313389, 21.144947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.470612, 16.765800, 21.822485>,  <17.876972, 16.800371, 21.281097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.470612, 16.765800, 21.822485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.443226, 17.140629, 21.685541>,  <18.426794, 17.365526, 21.603374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.443226, 17.140629, 21.685541>,  <18.470612, 16.765800, 21.822485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.443226, 17.140629, 21.685541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103708, 0.334623, 0.936628,
		0.992249, 0.099632, 0.074272,
		-0.068465, 0.937071, -0.342362,
		18.422686, 17.421749, 21.582832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.047962, 17.082647, 22.228668>,  <18.470612, 16.765800, 21.822485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.047962, 17.082647, 22.228668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.773914, 17.347755, 22.107773>,  <18.609486, 17.506821, 22.035234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.773914, 17.347755, 22.107773>,  <19.047962, 17.082647, 22.228668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.773914, 17.347755, 22.107773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128649, 0.298304, 0.945761,
		0.716981, 0.686841, -0.119109,
		-0.685118, 0.662770, -0.302240,
		18.568378, 17.546587, 22.017101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.153597, 17.655489, 22.595026>,  <19.047962, 17.082647, 22.228668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.153597, 17.655489, 22.595026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.774979, 17.725216, 22.486462>,  <18.547808, 17.767052, 22.421324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.774979, 17.725216, 22.486462>,  <19.153597, 17.655489, 22.595026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.774979, 17.725216, 22.486462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185263, 0.395012, 0.899802,
		0.264060, 0.901987, -0.341603,
		-0.946546, 0.174315, -0.271412,
		18.491014, 17.777510, 22.405039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.088402, 18.328087, 22.832764>,  <19.153597, 17.655489, 22.595026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.088402, 18.328087, 22.832764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.731705, 18.151764, 22.791803>,  <18.517687, 18.045971, 22.767227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.731705, 18.151764, 22.791803>,  <19.088402, 18.328087, 22.832764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.731705, 18.151764, 22.791803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268717, 0.333702, 0.903567,
		-0.364127, 0.833266, -0.416029,
		-0.891741, -0.440807, -0.102403,
		18.464182, 18.019522, 22.761082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.652786, 18.808401, 23.030409>,  <19.088402, 18.328087, 22.832764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.652786, 18.808401, 23.030409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.418442, 18.485844, 23.062643>,  <18.277834, 18.292309, 23.081984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.418442, 18.485844, 23.062643>,  <18.652786, 18.808401, 23.030409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.418442, 18.485844, 23.062643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427177, 0.391787, 0.814876,
		-0.688683, 0.442981, -0.574006,
		-0.585863, -0.806394, 0.080586,
		18.242683, 18.243925, 23.086819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.041931, 19.150429, 23.255798>,  <18.652786, 18.808401, 23.030409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.041931, 19.150429, 23.255798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.999573, 18.764980, 23.353956>,  <17.974157, 18.533710, 23.412851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.999573, 18.764980, 23.353956>,  <18.041931, 19.150429, 23.255798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.999573, 18.764980, 23.353956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328968, 0.266835, 0.905858,
		-0.938385, 0.015201, -0.345258,
		-0.105897, -0.963622, 0.245393,
		17.967804, 18.475893, 23.427574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.392361, 19.174532, 23.634951>,  <18.041931, 19.150429, 23.255798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.392361, 19.174532, 23.634951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.564621, 18.825722, 23.727999>,  <17.667978, 18.616436, 23.783827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.564621, 18.825722, 23.727999>,  <17.392361, 19.174532, 23.634951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.564621, 18.825722, 23.727999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200553, 0.158835, 0.966721,
		-0.879952, -0.462974, -0.106484,
		0.430653, -0.872024, 0.232618,
		17.693817, 18.564114, 23.797785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.918852, 18.834532, 24.047642>,  <17.392361, 19.174532, 23.634951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.918852, 18.834532, 24.047642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.268375, 18.658844, 24.131107>,  <17.478090, 18.553431, 24.181187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.268375, 18.658844, 24.131107>,  <16.918852, 18.834532, 24.047642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.268375, 18.658844, 24.131107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228933, 0.006994, 0.973417,
		-0.429005, -0.898351, -0.094440,
		0.873810, -0.439222, 0.208663,
		17.530518, 18.527077, 24.193707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.689533, 18.354500, 24.469381>,  <16.918852, 18.834532, 24.047642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.689533, 18.354500, 24.469381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.081860, 18.420216, 24.511356>,  <17.317255, 18.459646, 24.536541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.081860, 18.420216, 24.511356>,  <16.689533, 18.354500, 24.469381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.081860, 18.420216, 24.511356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119672, 0.082488, 0.989381,
		0.153891, -0.982957, 0.100567,
		0.980814, 0.164292, 0.104938,
		17.376104, 18.469503, 24.542837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.866024, 17.954872, 25.054699>,  <16.689533, 18.354500, 24.469381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.866024, 17.954872, 25.054699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.137100, 18.242577, 24.993515>,  <17.299746, 18.415199, 24.956804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.137100, 18.242577, 24.993515>,  <16.866024, 17.954872, 25.054699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.137100, 18.242577, 24.993515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007760, 0.214996, 0.976584,
		0.735307, -0.660634, 0.151282,
		0.677690, 0.719263, -0.152962,
		17.340406, 18.458355, 24.947626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.275288, 17.980553, 25.690510>,  <16.866024, 17.954872, 25.054699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.275288, 17.980553, 25.690510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.372730, 18.327423, 25.516769>,  <17.431196, 18.535545, 25.412525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.372730, 18.327423, 25.516769>,  <17.275288, 17.980553, 25.690510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.372730, 18.327423, 25.516769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237561, 0.380847, 0.893599,
		0.940330, -0.320871, -0.113231,
		0.243607, 0.867177, -0.434349,
		17.445812, 18.587576, 25.386465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.836637, 18.263878, 26.064560>,  <17.275288, 17.980553, 25.690510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.836637, 18.263878, 26.064560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.675823, 18.581516, 25.882229>,  <17.579334, 18.772099, 25.772831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.675823, 18.581516, 25.882229>,  <17.836637, 18.263878, 26.064560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.675823, 18.581516, 25.882229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171277, 0.554267, 0.814525,
		0.899461, 0.249397, -0.358846,
		-0.402037, 0.794096, -0.455826,
		17.555212, 18.819746, 25.745481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.325848, 18.849422, 26.138344>,  <17.836637, 18.263878, 26.064560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.325848, 18.849422, 26.138344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.951511, 18.982655, 26.092278>,  <17.726910, 19.062593, 26.064638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.951511, 18.982655, 26.092278>,  <18.325848, 18.849422, 26.138344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.951511, 18.982655, 26.092278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133897, 0.638307, 0.758047,
		0.326003, 0.693990, -0.641951,
		-0.935839, 0.333081, -0.115167,
		17.670759, 19.082579, 26.057728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.389725, 19.305847, 26.620415>,  <18.325848, 18.849422, 26.138344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.389725, 19.305847, 26.620415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.004585, 19.322853, 26.513742>,  <17.773502, 19.333055, 26.449739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.004585, 19.322853, 26.513742>,  <18.389725, 19.305847, 26.620415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.004585, 19.322853, 26.513742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184994, 0.615587, 0.766048,
		0.196734, 0.786922, -0.584851,
		-0.962846, 0.042514, -0.266682,
		17.715731, 19.335608, 26.433737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.371979, 20.085703, 26.575460>,  <18.389725, 19.305847, 26.620415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.371979, 20.085703, 26.575460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.034306, 19.881485, 26.640820>,  <17.831701, 19.758955, 26.680035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.034306, 19.881485, 26.640820>,  <18.371979, 20.085703, 26.575460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.034306, 19.881485, 26.640820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285684, 0.686408, 0.668751,
		-0.453583, 0.517870, -0.725309,
		-0.844184, -0.510544, 0.163396,
		17.781050, 19.728321, 26.689838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.184561, 20.252243, 26.660515>,  <18.371979, 20.085703, 26.575460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.184561, 20.252243, 26.660515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.505741, 20.102104, 26.845724>,  <19.698448, 20.012022, 26.956850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.505741, 20.102104, 26.845724>,  <19.184561, 20.252243, 26.660515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.505741, 20.102104, 26.845724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358807, -0.315921, -0.878323,
		0.475952, 0.871384, -0.118992,
		0.802949, -0.375345, 0.463022,
		19.746626, 19.989500, 26.984631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.739698, 20.482084, 26.339581>,  <19.184561, 20.252243, 26.660515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.739698, 20.482084, 26.339581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.865753, 20.160839, 26.541847>,  <19.941385, 19.968092, 26.663208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.865753, 20.160839, 26.541847>,  <19.739698, 20.482084, 26.339581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.865753, 20.160839, 26.541847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383856, -0.379428, -0.841837,
		0.867954, 0.459397, 0.188709,
		0.315136, -0.803112, 0.505668,
		19.960295, 19.919905, 26.693548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.401518, 20.382500, 26.134487>,  <19.739698, 20.482084, 26.339581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.401518, 20.382500, 26.134487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.297726, 20.024624, 26.279924>,  <20.235451, 19.809898, 26.367186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.297726, 20.024624, 26.279924>,  <20.401518, 20.382500, 26.134487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.297726, 20.024624, 26.279924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425157, -0.443868, -0.788811,
		0.867129, -0.050096, 0.495559,
		-0.259479, -0.894691, 0.363591,
		20.219881, 19.756216, 26.389002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.950083, 20.029558, 26.117630>,  <20.401518, 20.382500, 26.134487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.950083, 20.029558, 26.117630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.638420, 19.781120, 26.083792>,  <20.451424, 19.632057, 26.063488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.638420, 19.781120, 26.083792>,  <20.950083, 20.029558, 26.117630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.638420, 19.781120, 26.083792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354076, -0.324724, -0.877032,
		0.517251, -0.713297, 0.472925,
		-0.779155, -0.621097, -0.084598,
		20.404675, 19.594791, 26.058413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.202217, 19.537739, 25.685921>,  <20.950083, 20.029558, 26.117630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.202217, 19.537739, 25.685921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.823921, 19.407776, 25.687054>,  <20.596943, 19.329798, 25.687733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.823921, 19.407776, 25.687054>,  <21.202217, 19.537739, 25.685921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.823921, 19.407776, 25.687054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154028, -0.455984, -0.876558,
		0.286093, -0.828561, 0.481288,
		-0.945741, -0.324909, 0.002833,
		20.540199, 19.310303, 25.687904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.310350, 18.856281, 25.608826>,  <21.202217, 19.537739, 25.685921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.310350, 18.856281, 25.608826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.950390, 18.976070, 25.482023>,  <20.734413, 19.047945, 25.405941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.950390, 18.976070, 25.482023>,  <21.310350, 18.856281, 25.608826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.950390, 18.976070, 25.482023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153535, -0.462811, -0.873060,
		-0.408170, -0.834340, 0.370505,
		-0.899902, 0.299471, -0.317006,
		20.680420, 19.065912, 25.386921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.957413, 18.230902, 25.170355>,  <21.310350, 18.856281, 25.608826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.957413, 18.230902, 25.170355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.763405, 18.567001, 25.073412>,  <20.647001, 18.768661, 25.015245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.763405, 18.567001, 25.073412>,  <20.957413, 18.230902, 25.170355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.763405, 18.567001, 25.073412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077371, -0.317280, -0.945170,
		-0.871075, -0.439673, 0.218897,
		-0.485018, 0.840251, -0.242357,
		20.617899, 18.819077, 25.000706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.491308, 17.936134, 24.750673>,  <20.957413, 18.230902, 25.170355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.491308, 17.936134, 24.750673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.464874, 18.324436, 24.658354>,  <20.449015, 18.557417, 24.602962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.464874, 18.324436, 24.658354>,  <20.491308, 17.936134, 24.750673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.464874, 18.324436, 24.658354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412230, -0.237202, -0.879660,
		-0.908680, 0.037011, 0.415849,
		-0.066083, 0.970755, -0.230797,
		20.445049, 18.615664, 24.589115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.804554, 18.103960, 24.477226>,  <20.491308, 17.936134, 24.750673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.804554, 18.103960, 24.477226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.043652, 18.394501, 24.341511>,  <20.187111, 18.568825, 24.260082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.043652, 18.394501, 24.341511>,  <19.804554, 18.103960, 24.477226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.043652, 18.394501, 24.341511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362868, -0.132248, -0.922408,
		-0.714862, 0.674481, 0.184520,
		0.597744, 0.726351, -0.339287,
		20.222975, 18.612406, 24.239725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.508657, 18.424782, 23.921654>,  <19.804554, 18.103960, 24.477226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.508657, 18.424782, 23.921654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.875492, 18.568386, 23.852297>,  <20.095592, 18.654549, 23.810682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.875492, 18.568386, 23.852297>,  <19.508657, 18.424782, 23.921654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.875492, 18.568386, 23.852297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186269, 0.001296, -0.982498,
		-0.352504, 0.933332, 0.068061,
		0.917085, 0.359012, -0.173394,
		20.150618, 18.676090, 23.800280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.387526, 18.836477, 23.284384>,  <19.508657, 18.424782, 23.921654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.387526, 18.836477, 23.284384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.776684, 18.749039, 23.314566>,  <20.010178, 18.696575, 23.332674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.776684, 18.749039, 23.314566>,  <19.387526, 18.836477, 23.284384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.776684, 18.749039, 23.314566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059851, -0.077144, -0.995222,
		0.223372, 0.972761, -0.061970,
		0.972894, -0.218596, 0.075453,
		20.068552, 18.683460, 23.337202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.705233, 19.240622, 22.808081>,  <19.387526, 18.836477, 23.284384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.705233, 19.240622, 22.808081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.964199, 18.943783, 22.877533>,  <20.119579, 18.765680, 22.919205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.964199, 18.943783, 22.877533>,  <19.705233, 19.240622, 22.808081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.964199, 18.943783, 22.877533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187633, -0.065613, -0.980045,
		0.738680, 0.667075, 0.096762,
		0.647415, -0.742095, 0.173632,
		20.158424, 18.721155, 22.929623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.164240, 19.364859, 22.160881>,  <19.705233, 19.240622, 22.808081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.164240, 19.364859, 22.160881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.296505, 19.029541, 22.334280>,  <20.375864, 18.828350, 22.438320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.296505, 19.029541, 22.334280>,  <20.164240, 19.364859, 22.160881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.296505, 19.029541, 22.334280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291429, -0.346189, -0.891752,
		0.897625, 0.421204, 0.129832,
		0.330663, -0.838296, 0.433499,
		20.395704, 18.778051, 22.464331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.840031, 19.180574, 21.896488>,  <20.164240, 19.364859, 22.160881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.840031, 19.180574, 21.896488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.630169, 18.855980, 21.999430>,  <20.504251, 18.661224, 22.061193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.630169, 18.855980, 21.999430>,  <20.840031, 19.180574, 21.896488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.630169, 18.855980, 21.999430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087768, -0.352248, -0.931782,
		0.846779, -0.466276, 0.256031,
		-0.524654, -0.811486, 0.257352,
		20.472773, 18.612534, 22.076635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.288509, 18.669212, 21.689215>,  <20.840031, 19.180574, 21.896488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.288509, 18.669212, 21.689215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.922226, 18.508839, 21.700050>,  <20.702456, 18.412615, 21.706553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.922226, 18.508839, 21.700050>,  <21.288509, 18.669212, 21.689215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.922226, 18.508839, 21.700050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157086, -0.419197, -0.894202,
		0.369872, -0.814571, 0.446843,
		-0.915707, -0.400933, 0.027091,
		20.647514, 18.388559, 21.708178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.379454, 18.049356, 21.436831>,  <21.288509, 18.669212, 21.689215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.379454, 18.049356, 21.436831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.983215, 18.089901, 21.400064>,  <20.745472, 18.114227, 21.378004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.983215, 18.089901, 21.400064>,  <21.379454, 18.049356, 21.436831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.983215, 18.089901, 21.400064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025117, -0.525629, -0.850343,
		-0.134506, -0.844654, 0.518139,
		-0.990594, 0.101362, -0.091916,
		20.686037, 18.120310, 21.372490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.262621, 17.444304, 21.077862>,  <21.379454, 18.049356, 21.436831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.262621, 17.444304, 21.077862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.929802, 17.660583, 21.028324>,  <20.730110, 17.790352, 20.998602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.929802, 17.660583, 21.028324>,  <21.262621, 17.444304, 21.077862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.929802, 17.660583, 21.028324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189685, -0.487145, -0.852472,
		-0.521270, -0.685802, 0.507890,
		-0.832044, 0.540707, -0.123848,
		20.680187, 17.822794, 20.991171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.767584, 16.907385, 20.920568>,  <21.262621, 17.444304, 21.077862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.767584, 16.907385, 20.920568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.642483, 17.271835, 20.813210>,  <20.567423, 17.490505, 20.748795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.642483, 17.271835, 20.813210>,  <20.767584, 16.907385, 20.920568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.642483, 17.271835, 20.813210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199716, -0.339336, -0.919219,
		-0.928601, -0.233883, 0.288094,
		-0.312750, 0.911126, -0.268397,
		20.548658, 17.545174, 20.732691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.263474, 16.688169, 20.542591>,  <20.767584, 16.907385, 20.920568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.263474, 16.688169, 20.542591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.349781, 17.067566, 20.449800>,  <20.401566, 17.295204, 20.394127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.349781, 17.067566, 20.449800>,  <20.263474, 16.688169, 20.542591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.349781, 17.067566, 20.449800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317607, -0.156478, -0.935222,
		-0.923347, 0.275469, 0.267483,
		0.215769, 0.948489, -0.231974,
		20.414513, 17.352112, 20.380209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.800837, 16.770115, 20.022194>,  <20.263474, 16.688169, 20.542591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.800837, 16.770115, 20.022194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.060078, 17.073513, 19.994915>,  <20.215622, 17.255552, 19.978548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.060078, 17.073513, 19.994915>,  <19.800837, 16.770115, 20.022194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.060078, 17.073513, 19.994915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120435, 0.013655, -0.992627,
		-0.751971, 0.651536, 0.100199,
		0.648101, 0.758495, -0.068200,
		20.254507, 17.301062, 19.974455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.175444, 15.007972, 15.998542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.510662, 15.191612, 15.880625>,  <17.711794, 15.301797, 15.809875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.510662, 15.191612, 15.880625>,  <17.175444, 15.007972, 15.998542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.510662, 15.191612, 15.880625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394003, 0.135494, -0.909067,
		-0.377412, 0.877990, 0.294438,
		0.838047, 0.459102, -0.294793,
		17.762075, 15.329343, 15.792187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.035679, 15.561627, 15.566628>,  <17.175444, 15.007972, 15.998542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.035679, 15.561627, 15.566628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.419029, 15.490345, 15.477398>,  <17.649038, 15.447576, 15.423860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.419029, 15.490345, 15.477398>,  <17.035679, 15.561627, 15.566628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.419029, 15.490345, 15.477398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203712, 0.120652, -0.971568,
		0.200054, 0.976568, 0.079327,
		0.958374, -0.178206, -0.223076,
		17.706541, 15.436883, 15.410475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.262239, 16.097481, 15.293361>,  <17.035679, 15.561627, 15.566628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.262239, 16.097481, 15.293361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.503212, 15.819031, 15.137163>,  <17.647797, 15.651961, 15.043445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.503212, 15.819031, 15.137163>,  <17.262239, 16.097481, 15.293361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.503212, 15.819031, 15.137163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180342, 0.357872, -0.916190,
		0.777529, 0.622366, 0.090053,
		0.602433, -0.696124, -0.390495,
		17.683943, 15.610193, 15.020015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.756048, 16.425184, 14.884007>,  <17.262239, 16.097481, 15.293361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.756048, 16.425184, 14.884007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.736828, 16.054440, 14.735083>,  <17.725296, 15.831992, 14.645728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.736828, 16.054440, 14.735083>,  <17.756048, 16.425184, 14.884007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.736828, 16.054440, 14.735083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032589, 0.371089, -0.928025,
		0.998313, -0.056726, 0.012374,
		-0.048052, -0.926863, -0.372311,
		17.722412, 15.776381, 14.623389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.163277, 16.544830, 14.295326>,  <17.756048, 16.425184, 14.884007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.163277, 16.544830, 14.295326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.007095, 16.187923, 14.204634>,  <17.913387, 15.973780, 14.150218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.007095, 16.187923, 14.204634>,  <18.163277, 16.544830, 14.295326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.007095, 16.187923, 14.204634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050842, 0.266803, -0.962409,
		0.919218, -0.364247, -0.149539,
		-0.390452, -0.892267, -0.226731,
		17.889959, 15.920243, 14.136615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.499073, 16.268837, 13.722835>,  <18.163277, 16.544830, 14.295326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.499073, 16.268837, 13.722835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.158939, 16.058353, 13.720396>,  <17.954859, 15.932063, 13.718933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.158939, 16.058353, 13.720396>,  <18.499073, 16.268837, 13.722835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.158939, 16.058353, 13.720396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122711, 0.209535, -0.970071,
		0.511738, -0.824135, -0.242746,
		-0.850333, -0.526210, -0.006097,
		17.903839, 15.900491, 13.718567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.591536, 15.904986, 13.163960>,  <18.499073, 16.268837, 13.722835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.591536, 15.904986, 13.163960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.195736, 15.892967, 13.220512>,  <17.958256, 15.885756, 13.254443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.195736, 15.892967, 13.220512>,  <18.591536, 15.904986, 13.163960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.195736, 15.892967, 13.220512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144369, 0.158185, -0.976798,
		0.006984, -0.986952, -0.160861,
		-0.989499, -0.030045, 0.141380,
		17.898886, 15.883953, 13.262926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.274416, 15.361794, 12.781318>,  <18.591536, 15.904986, 13.163960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.274416, 15.361794, 12.781318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.976494, 15.625195, 12.824476>,  <17.797741, 15.783235, 12.850371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.976494, 15.625195, 12.824476>,  <18.274416, 15.361794, 12.781318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.976494, 15.625195, 12.824476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044488, 0.112334, -0.992674,
		-0.665797, -0.744149, -0.054371,
		-0.744805, 0.658501, 0.107897,
		17.753052, 15.822744, 12.856846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.913921, 15.176496, 12.233490>,  <18.274416, 15.361794, 12.781318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.913921, 15.176496, 12.233490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.781654, 15.536659, 12.346571>,  <17.702293, 15.752758, 12.414420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.781654, 15.536659, 12.346571>,  <17.913921, 15.176496, 12.233490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.781654, 15.536659, 12.346571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225935, 0.215315, -0.950049,
		-0.916304, -0.378023, 0.132236,
		-0.330668, 0.900410, 0.282703,
		17.682453, 15.806782, 12.431382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.252823, 15.212873, 11.885672>,  <17.913921, 15.176496, 12.233490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.252823, 15.212873, 11.885672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.340855, 15.595104, 11.964090>,  <17.393673, 15.824443, 12.011142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.340855, 15.595104, 11.964090>,  <17.252823, 15.212873, 11.885672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.340855, 15.595104, 11.964090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042984, 0.210278, -0.976696,
		-0.974535, 0.206522, 0.087352,
		0.220078, 0.955579, 0.196046,
		17.406878, 15.881778, 12.022904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.710318, 15.645242, 11.473685>,  <17.252823, 15.212873, 11.885672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.710318, 15.645242, 11.473685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.036442, 15.864395, 11.548621>,  <17.232117, 15.995887, 11.593583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.036442, 15.864395, 11.548621>,  <16.710318, 15.645242, 11.473685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.036442, 15.864395, 11.548621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064148, 0.236086, -0.969612,
		-0.575463, 0.802550, 0.157337,
		0.815308, 0.547883, 0.187341,
		17.281034, 16.028761, 11.604823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.498016, 16.180536, 11.201651>,  <16.710318, 15.645242, 11.473685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.498016, 16.180536, 11.201651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.897663, 16.185783, 11.217603>,  <17.137451, 16.188931, 11.227174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.897663, 16.185783, 11.217603>,  <16.498016, 16.180536, 11.201651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.897663, 16.185783, 11.217603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038142, 0.113255, -0.992834,
		-0.017539, 0.993479, 0.112655,
		0.999118, 0.013116, 0.039879,
		17.197399, 16.189718, 11.229567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.118782, 15.681726, 10.706477>,  <16.498016, 16.180536, 11.201651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.118782, 15.681726, 10.706477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.907910, 15.341873, 10.712286>,  <15.781387, 15.137962, 10.715772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.907910, 15.341873, 10.712286>,  <16.118782, 15.681726, 10.706477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.907910, 15.341873, 10.712286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171479, -0.089630, 0.981102,
		-0.832272, 0.519707, 0.192945,
		-0.527179, -0.849630, 0.014522,
		15.749757, 15.086984, 10.716642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.621788, 15.829910, 11.173459>,  <16.118782, 15.681726, 10.706477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.621788, 15.829910, 11.173459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.712472, 15.441704, 11.140720>,  <15.766883, 15.208779, 11.121078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.712472, 15.441704, 11.140720>,  <15.621788, 15.829910, 11.173459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.712472, 15.441704, 11.140720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383043, 0.011583, 0.923658,
		-0.895478, -0.240753, 0.374376,
		0.226710, -0.970517, -0.081846,
		15.780485, 15.150549, 11.116166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.488096, 16.030876, 10.405644>,  <15.621788, 15.829910, 11.173459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.488096, 16.030876, 10.405644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.459798, 16.386616, 10.224956>,  <15.442819, 16.600060, 10.116543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.459798, 16.386616, 10.224956>,  <15.488096, 16.030876, 10.405644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.459798, 16.386616, 10.224956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328615, 0.448356, 0.831258,
		0.941810, -0.089633, -0.323974,
		-0.070747, 0.889350, -0.451721,
		15.438574, 16.653421, 10.089439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.148195, 16.349201, 10.493179>,  <15.488096, 16.030876, 10.405644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.148195, 16.349201, 10.493179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.885245, 16.641891, 10.421144>,  <15.727475, 16.817505, 10.377922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.885245, 16.641891, 10.421144>,  <16.148195, 16.349201, 10.493179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.885245, 16.641891, 10.421144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413596, 0.550120, 0.725469,
		0.629915, 0.402423, -0.664276,
		-0.657377, 0.731726, -0.180089,
		15.688032, 16.861410, 10.367117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.552265, 16.998577, 10.558537>,  <16.148195, 16.349201, 10.493179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.552265, 16.998577, 10.558537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.162338, 17.083069, 10.587146>,  <15.928382, 17.133764, 10.604311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.162338, 17.083069, 10.587146>,  <16.552265, 16.998577, 10.558537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.162338, 17.083069, 10.587146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151504, 0.391930, 0.907435,
		0.163646, 0.895418, -0.414062,
		-0.974816, 0.211230, 0.071522,
		15.869893, 17.146439, 10.608603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.505171, 17.760611, 10.629303>,  <16.552265, 16.998577, 10.558537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.505171, 17.760611, 10.629303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.165752, 17.600266, 10.767449>,  <15.962101, 17.504059, 10.850337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.165752, 17.600266, 10.767449>,  <16.505171, 17.760611, 10.629303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.165752, 17.600266, 10.767449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103985, 0.513648, 0.851676,
		-0.518803, 0.758599, -0.394170,
		-0.848546, -0.400865, 0.345366,
		15.911189, 17.480005, 10.871059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.041630, 18.335314, 10.813901>,  <16.505171, 17.760611, 10.629303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.041630, 18.335314, 10.813901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.949550, 18.006916, 11.022891>,  <15.894302, 17.809877, 11.148285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.949550, 18.006916, 11.022891>,  <16.041630, 18.335314, 10.813901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.949550, 18.006916, 11.022891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144501, 0.502104, 0.852650,
		-0.962356, 0.271776, 0.003051,
		-0.230198, -0.820993, 0.522474,
		15.880490, 17.760618, 11.179633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.726341, 18.705584, 11.311235>,  <16.041630, 18.335314, 10.813901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.726341, 18.705584, 11.311235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.762973, 18.336613, 11.461298>,  <15.784952, 18.115231, 11.551336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.762973, 18.336613, 11.461298>,  <15.726341, 18.705584, 11.311235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.762973, 18.336613, 11.461298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048055, 0.380396, 0.923575,
		-0.994638, -0.066552, 0.079164,
		0.091579, -0.922426, 0.375158,
		15.790446, 18.059885, 11.573845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.334438, 18.744759, 11.995659>,  <15.726341, 18.705584, 11.311235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.334438, 18.744759, 11.995659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.543265, 18.406025, 12.036290>,  <15.668562, 18.202785, 12.060669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.543265, 18.406025, 12.036290>,  <15.334438, 18.744759, 11.995659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.543265, 18.406025, 12.036290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043258, 0.092653, 0.994758,
		-0.851806, -0.523726, 0.011738,
		0.522068, -0.846834, 0.101578,
		15.699885, 18.151976, 12.066764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.979936, 18.304747, 12.476536>,  <15.334438, 18.744759, 11.995659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.979936, 18.304747, 12.476536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.357623, 18.173096, 12.480968>,  <15.584236, 18.094105, 12.483628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.357623, 18.173096, 12.480968>,  <14.979936, 18.304747, 12.476536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.357623, 18.173096, 12.480968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017405, 0.083479, 0.996358,
		-0.328856, -0.940588, 0.084552,
		0.944219, -0.329129, 0.011081,
		15.640889, 18.074356, 12.484293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.095776, 17.812929, 13.047601>,  <14.979936, 18.304747, 12.476536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.095776, 17.812929, 13.047601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.466552, 17.924278, 12.946968>,  <15.689017, 17.991087, 12.886589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.466552, 17.924278, 12.946968>,  <15.095776, 17.812929, 13.047601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.466552, 17.924278, 12.946968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233023, 0.098433, 0.967477,
		0.294082, -0.955416, 0.026374,
		0.926939, 0.278371, -0.251581,
		15.744634, 18.007790, 12.871493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.484766, 17.414724, 13.458380>,  <15.095776, 17.812929, 13.047601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.484766, 17.414724, 13.458380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.690694, 17.739399, 13.348017>,  <15.814251, 17.934204, 13.281798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.690694, 17.739399, 13.348017>,  <15.484766, 17.414724, 13.458380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.690694, 17.739399, 13.348017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320942, 0.115956, 0.939974,
		0.794958, -0.572467, -0.200808,
		0.514819, 0.811687, -0.275908,
		15.845140, 17.982904, 13.265244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.136940, 17.371569, 13.827494>,  <15.484766, 17.414724, 13.458380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.136940, 17.371569, 13.827494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.071442, 17.755272, 13.735394>,  <16.032143, 17.985493, 13.680134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.071442, 17.755272, 13.735394>,  <16.136940, 17.371569, 13.827494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.071442, 17.755272, 13.735394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207046, 0.261619, 0.942702,
		0.964530, 0.106693, -0.241449,
		-0.163748, 0.959256, -0.230249,
		16.022318, 18.043049, 13.666319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.698967, 17.688917, 14.173695>,  <16.136940, 17.371569, 13.827494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.698967, 17.688917, 14.173695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.480515, 18.012562, 14.086903>,  <16.349443, 18.206749, 14.034827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.480515, 18.012562, 14.086903>,  <16.698967, 17.688917, 14.173695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.480515, 18.012562, 14.086903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133684, 0.339880, 0.930919,
		0.826964, 0.479397, -0.293784,
		-0.546131, 0.809111, -0.216981,
		16.316675, 18.255295, 14.021809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.048765, 18.313236, 14.439898>,  <16.698967, 17.688917, 14.173695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.048765, 18.313236, 14.439898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.659428, 18.401814, 14.416002>,  <16.425825, 18.454960, 14.401666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.659428, 18.401814, 14.416002>,  <17.048765, 18.313236, 14.439898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.659428, 18.401814, 14.416002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032193, 0.389779, 0.920346,
		0.227089, 0.893888, -0.386517,
		-0.973342, 0.221443, -0.059738,
		16.367426, 18.468246, 14.398081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.987976, 19.007504, 14.685884>,  <17.048765, 18.313236, 14.439898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.987976, 19.007504, 14.685884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.621761, 18.848156, 14.708153>,  <16.402033, 18.752548, 14.721514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.621761, 18.848156, 14.708153>,  <16.987976, 19.007504, 14.685884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.621761, 18.848156, 14.708153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097443, 0.353937, 0.930179,
		-0.390257, 0.846187, -0.362860,
		-0.915535, -0.398367, 0.055671,
		16.347101, 18.728645, 14.724854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.730415, 19.835171, 14.473588>,  <16.987976, 19.007504, 14.685884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.730415, 19.835171, 14.473588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.683537, 20.232365, 14.479921>,  <16.655409, 20.470680, 14.483722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.683537, 20.232365, 14.479921>,  <16.730415, 19.835171, 14.473588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.683537, 20.232365, 14.479921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078454, 0.006637, -0.996896,
		-0.990005, -0.118074, 0.077126,
		-0.117195, 0.992983, 0.015834,
		16.648378, 20.530260, 14.484672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.294052, 20.005733, 13.970020>,  <16.730415, 19.835171, 14.473588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.294052, 20.005733, 13.970020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.469036, 20.358715, 14.039190>,  <16.574026, 20.570503, 14.080692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.469036, 20.358715, 14.039190>,  <16.294052, 20.005733, 13.970020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.469036, 20.358715, 14.039190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028395, 0.205762, -0.978190,
		-0.898789, 0.423011, 0.115070,
		0.437462, 0.882454, 0.172925,
		16.600275, 20.623451, 14.091067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.875046, 20.433489, 13.507365>,  <16.294052, 20.005733, 13.970020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.875046, 20.433489, 13.507365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.209339, 20.629940, 13.605625>,  <16.409916, 20.747810, 13.664581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.209339, 20.629940, 13.605625>,  <15.875046, 20.433489, 13.507365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.209339, 20.629940, 13.605625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113789, 0.282746, -0.952422,
		-0.537216, 0.823923, 0.180416,
		0.835734, 0.491126, 0.245649,
		16.460060, 20.777279, 13.679319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.914393, 21.098618, 13.056526>,  <15.875046, 20.433489, 13.507365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.914393, 21.098618, 13.056526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.290253, 21.017708, 13.166904>,  <16.515768, 20.969162, 13.233131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.290253, 21.017708, 13.166904>,  <15.914393, 21.098618, 13.056526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.290253, 21.017708, 13.166904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283037, 0.006422, -0.959087,
		0.192229, 0.979307, 0.063286,
		0.939648, -0.202276, 0.275946,
		16.572147, 20.957026, 13.249688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.299910, 21.447784, 12.546293>,  <15.914393, 21.098618, 13.056526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.299910, 21.447784, 12.546293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.560238, 21.188789, 12.704883>,  <16.716434, 21.033392, 12.800036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.560238, 21.188789, 12.704883>,  <16.299910, 21.447784, 12.546293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.560238, 21.188789, 12.704883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471281, -0.064890, -0.879593,
		0.595254, 0.759307, 0.262918,
		0.650820, -0.647490, 0.396473,
		16.755484, 20.994543, 12.823825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.990372, 21.703320, 12.404940>,  <16.299910, 21.447784, 12.546293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.990372, 21.703320, 12.404940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.028782, 21.310760, 12.471434>,  <17.051828, 21.075224, 12.511330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.028782, 21.310760, 12.471434>,  <16.990372, 21.703320, 12.404940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.028782, 21.310760, 12.471434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458327, -0.104654, -0.882600,
		0.883581, 0.160942, 0.439753,
		0.096026, -0.981399, 0.166235,
		17.057590, 21.016340, 12.521304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.707279, 21.510952, 12.290555>,  <16.990372, 21.703320, 12.404940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.707279, 21.510952, 12.290555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.494301, 21.175022, 12.248228>,  <17.366514, 20.973465, 12.222832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.494301, 21.175022, 12.248228>,  <17.707279, 21.510952, 12.290555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.494301, 21.175022, 12.248228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418157, -0.152275, -0.895521,
		0.735967, -0.521064, 0.432256,
		-0.532445, -0.839824, -0.105817,
		17.334568, 20.923075, 12.216483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.179678, 20.887737, 12.004755>,  <17.707279, 21.510952, 12.290555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.179678, 20.887737, 12.004755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.799080, 20.797569, 11.921001>,  <17.570721, 20.743467, 11.870749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.799080, 20.797569, 11.921001>,  <18.179678, 20.887737, 12.004755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.799080, 20.797569, 11.921001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274635, -0.315537, -0.908302,
		0.138683, -0.921749, 0.362141,
		-0.951495, -0.225422, -0.209385,
		17.513632, 20.729942, 11.858186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.214693, 20.292496, 11.563764>,  <18.179678, 20.887737, 12.004755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.214693, 20.292496, 11.563764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.846889, 20.436279, 11.500154>,  <17.626207, 20.522549, 11.461987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.846889, 20.436279, 11.500154>,  <18.214693, 20.292496, 11.563764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.846889, 20.436279, 11.500154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084059, -0.215386, -0.972904,
		-0.383972, -0.907963, 0.167834,
		-0.919510, 0.359460, -0.159025,
		17.571035, 20.544117, 11.452446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.991753, 19.821978, 11.070142>,  <18.214693, 20.292496, 11.563764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.991753, 19.821978, 11.070142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.763653, 20.148369, 11.032208>,  <17.626793, 20.344204, 11.009449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.763653, 20.148369, 11.032208>,  <17.991753, 19.821978, 11.070142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.763653, 20.148369, 11.032208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113463, -0.192573, -0.974701,
		-0.813597, -0.545064, 0.202399,
		-0.570251, 0.815978, -0.094832,
		17.592577, 20.393162, 11.003758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.299362, 19.605091, 10.756584>,  <17.991753, 19.821978, 11.070142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.299362, 19.605091, 10.756584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.415859, 19.985497, 10.715102>,  <17.485758, 20.213739, 10.690213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.415859, 19.985497, 10.715102>,  <17.299362, 19.605091, 10.756584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.415859, 19.985497, 10.715102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308389, -0.195949, -0.930860,
		-0.905579, 0.239124, -0.350351,
		0.291242, 0.951012, -0.103704,
		17.503231, 20.270800, 10.683990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.276190, 19.710855, 10.041740>,  <17.299362, 19.605091, 10.756584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.276190, 19.710855, 10.041740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.479855, 20.037838, 10.149458>,  <17.602055, 20.234028, 10.214088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.479855, 20.037838, 10.149458>,  <17.276190, 19.710855, 10.041740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.479855, 20.037838, 10.149458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296986, 0.126798, -0.946426,
		-0.807807, 0.561862, -0.178212,
		0.509163, 0.817455, 0.269293,
		17.632603, 20.283075, 10.230246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.918252, 21.904526, 18.193333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.265877, 22.049652, 18.058813>,  <16.474451, 22.136728, 17.978102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.265877, 22.049652, 18.058813>,  <15.918252, 21.904526, 18.193333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.265877, 22.049652, 18.058813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290786, -0.175313, -0.940590,
		-0.400219, 0.915221, -0.046856,
		0.869062, 0.362816, -0.336297,
		16.526596, 22.158497, 17.957924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.740451, 22.368906, 17.626930>,  <15.918252, 21.904526, 18.193333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.740451, 22.368906, 17.626930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128601, 22.288292, 17.573633>,  <16.361492, 22.239923, 17.541655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128601, 22.288292, 17.573633>,  <15.740451, 22.368906, 17.626930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.128601, 22.288292, 17.573633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165340, -0.151829, -0.974480,
		0.176161, 0.967642, -0.180653,
		0.970376, -0.201535, -0.133244,
		16.419714, 22.227831, 17.533661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.815557, 22.677216, 17.101627>,  <15.740451, 22.368906, 17.626930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.815557, 22.677216, 17.101627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.106617, 22.403027, 17.091393>,  <16.281254, 22.238514, 17.085251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.106617, 22.403027, 17.091393>,  <15.815557, 22.677216, 17.101627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.106617, 22.403027, 17.091393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134925, -0.106453, -0.985121,
		0.672547, 0.720276, -0.169948,
		0.727651, -0.685471, -0.025589,
		16.324913, 22.197386, 17.083715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.975456, 22.524185, 16.415869>,  <15.815557, 22.677216, 17.101627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.975456, 22.524185, 16.415869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.187164, 22.215118, 16.556074>,  <16.314190, 22.029678, 16.640198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.187164, 22.215118, 16.556074>,  <15.975456, 22.524185, 16.415869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.187164, 22.215118, 16.556074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019985, -0.401651, -0.915575,
		0.848218, 0.491592, -0.197140,
		0.529271, -0.772667, 0.350512,
		16.345945, 21.983318, 16.661228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.598053, 22.387287, 15.984092>,  <15.975456, 22.524185, 16.415869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.598053, 22.387287, 15.984092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.590260, 22.020203, 16.142801>,  <16.585583, 21.799952, 16.238028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.590260, 22.020203, 16.142801>,  <16.598053, 22.387287, 15.984092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.590260, 22.020203, 16.142801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219854, -0.391068, -0.893717,
		0.975338, 0.069818, 0.209382,
		-0.019485, -0.917710, 0.396773,
		16.584414, 21.744890, 16.261833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.233963, 21.942638, 15.888165>,  <16.598053, 22.387287, 15.984092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.233963, 21.942638, 15.888165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.944321, 21.676662, 15.961405>,  <16.770535, 21.517076, 16.005348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.944321, 21.676662, 15.961405>,  <17.233963, 21.942638, 15.888165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.944321, 21.676662, 15.961405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131617, -0.393827, -0.909713,
		0.677014, -0.634630, 0.372690,
		-0.724106, -0.664940, 0.183098,
		16.727089, 21.477180, 16.016335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.485188, 21.347687, 15.653403>,  <17.233963, 21.942638, 15.888165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.485188, 21.347687, 15.653403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098167, 21.247219, 15.664471>,  <16.865955, 21.186939, 15.671111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098167, 21.247219, 15.664471>,  <17.485188, 21.347687, 15.653403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.098167, 21.247219, 15.664471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075635, -0.392347, -0.916702,
		0.241102, -0.884861, 0.398611,
		-0.967548, -0.251168, 0.027669,
		16.807903, 21.171869, 15.672771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.451723, 20.613743, 15.458878>,  <17.485188, 21.347687, 15.653403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.451723, 20.613743, 15.458878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.091385, 20.775742, 15.396328>,  <16.875181, 20.872940, 15.358798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.091385, 20.775742, 15.396328>,  <17.451723, 20.613743, 15.458878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.091385, 20.775742, 15.396328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050198, -0.260611, -0.964138,
		-0.431227, -0.876389, 0.214440,
		-0.900846, 0.404998, -0.156375,
		16.821131, 20.897242, 15.349416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.135633, 20.084517, 15.110340>,  <17.451723, 20.613743, 15.458878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.135633, 20.084517, 15.110340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.926205, 20.418392, 15.042032>,  <16.800547, 20.618717, 15.001047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.926205, 20.418392, 15.042032>,  <17.135633, 20.084517, 15.110340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.926205, 20.418392, 15.042032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018842, -0.211734, -0.977146,
		-0.851773, -0.508389, 0.126586,
		-0.523573, 0.834691, -0.170770,
		16.769133, 20.668800, 14.990801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.648941, 19.454660, 15.141314>,  <17.135633, 20.084517, 15.110340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.648941, 19.454660, 15.141314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.407036, 19.136864, 15.163397>,  <16.261892, 18.946186, 15.176646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.407036, 19.136864, 15.163397>,  <16.648941, 19.454660, 15.141314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.407036, 19.136864, 15.163397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039654, 0.099274, 0.994270,
		-0.795419, 0.599107, -0.091542,
		-0.604762, -0.794491, 0.055207,
		16.225607, 18.898516, 15.179959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.087276, 19.654070, 15.500751>,  <16.648941, 19.454660, 15.141314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.087276, 19.654070, 15.500751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040936, 19.257393, 15.523106>,  <16.013130, 19.019386, 15.536518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040936, 19.257393, 15.523106>,  <16.087276, 19.654070, 15.500751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.040936, 19.257393, 15.523106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148314, 0.072905, 0.986249,
		-0.982131, 0.105973, -0.155528,
		-0.115854, -0.991693, 0.055885,
		16.006180, 18.959885, 15.539871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.504793, 19.616272, 15.898573>,  <16.087276, 19.654070, 15.500751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.504793, 19.616272, 15.898573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.640235, 19.241325, 15.931292>,  <15.721500, 19.016357, 15.950923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.640235, 19.241325, 15.931292>,  <15.504793, 19.616272, 15.898573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.640235, 19.241325, 15.931292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366431, -0.051297, 0.929030,
		-0.866646, -0.344546, -0.360849,
		0.338604, -0.937367, 0.081796,
		15.741817, 18.960115, 15.955831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.016907, 19.224422, 16.233147>,  <15.504793, 19.616272, 15.898573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.016907, 19.224422, 16.233147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.347634, 19.003544, 16.275951>,  <15.546071, 18.871017, 16.301634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.347634, 19.003544, 16.275951>,  <15.016907, 19.224422, 16.233147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.347634, 19.003544, 16.275951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319891, -0.305157, 0.896967,
		-0.462648, -0.775859, -0.428952,
		0.826817, -0.552198, 0.107010,
		15.595679, 18.837885, 16.308054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.829412, 18.592825, 16.463120>,  <15.016907, 19.224422, 16.233147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.829412, 18.592825, 16.463120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.213120, 18.618259, 16.573214>,  <15.443346, 18.633520, 16.639271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.213120, 18.618259, 16.573214>,  <14.829412, 18.592825, 16.463120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.213120, 18.618259, 16.573214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243984, -0.304561, 0.920714,
		0.142372, -0.950368, -0.276643,
		0.959271, 0.063588, 0.275236,
		15.500902, 18.637335, 16.655785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.960567, 17.979630, 16.836027>,  <14.829412, 18.592825, 16.463120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.960567, 17.979630, 16.836027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.248071, 18.238297, 16.938169>,  <15.420573, 18.393497, 16.999454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.248071, 18.238297, 16.938169>,  <14.960567, 17.979630, 16.836027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.248071, 18.238297, 16.938169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219566, -0.137359, 0.965879,
		0.659679, -0.750301, 0.043258,
		0.718759, 0.646669, 0.255354,
		15.463698, 18.432297, 17.014776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.308424, 17.685535, 17.396069>,  <14.960567, 17.979630, 16.836027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.308424, 17.685535, 17.396069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.415687, 18.067837, 17.444448>,  <15.480044, 18.297218, 17.473476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.415687, 18.067837, 17.444448>,  <15.308424, 17.685535, 17.396069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.415687, 18.067837, 17.444448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074129, -0.104706, 0.991736,
		0.960519, -0.274906, 0.042771,
		0.268156, 0.955753, 0.120951,
		15.496134, 18.354563, 17.480734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.892220, 17.712343, 17.795492>,  <15.308424, 17.685535, 17.396069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.892220, 17.712343, 17.795492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696351, 18.059406, 17.829876>,  <15.578830, 18.267645, 17.850506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696351, 18.059406, 17.829876>,  <15.892220, 17.712343, 17.795492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.696351, 18.059406, 17.829876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037561, -0.119488, 0.992125,
		0.871096, 0.482589, 0.091100,
		-0.489674, 0.867658, 0.085959,
		15.549449, 18.319704, 17.855663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936635, 17.899490, 18.501871>,  <15.892220, 17.712343, 17.795492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.936635, 17.899490, 18.501871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.680848, 18.179222, 18.374107>,  <15.527376, 18.347061, 18.297449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.680848, 18.179222, 18.374107>,  <15.936635, 17.899490, 18.501871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.680848, 18.179222, 18.374107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344199, 0.111080, 0.932303,
		0.687465, 0.706117, 0.169677,
		-0.639467, 0.699328, -0.319408,
		15.489008, 18.389021, 18.278284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.038839, 18.537893, 18.956694>,  <15.936635, 17.899490, 18.501871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.038839, 18.537893, 18.956694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.666295, 18.565601, 18.813713>,  <15.442769, 18.582226, 18.727924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.666295, 18.565601, 18.813713>,  <16.038839, 18.537893, 18.956694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.666295, 18.565601, 18.813713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354215, 0.054874, 0.933553,
		0.084283, 0.996088, -0.026570,
		-0.931358, 0.069271, -0.357454,
		15.386888, 18.586382, 18.706476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.742828, 19.069044, 19.360422>,  <16.038839, 18.537893, 18.956694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.742828, 19.069044, 19.360422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.456088, 18.851540, 19.185860>,  <15.284043, 18.721037, 19.081123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.456088, 18.851540, 19.185860>,  <15.742828, 19.069044, 19.360422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.456088, 18.851540, 19.185860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527430, 0.013550, 0.849490,
		-0.456005, 0.839131, -0.296509,
		-0.716852, -0.543760, -0.436405,
		15.241033, 18.688412, 19.054939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.108459, 19.424162, 19.634649>,  <15.742828, 19.069044, 19.360422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.108459, 19.424162, 19.634649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040814, 19.051304, 19.506582>,  <15.000227, 18.827589, 19.429743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040814, 19.051304, 19.506582>,  <15.108459, 19.424162, 19.634649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.040814, 19.051304, 19.506582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623831, -0.150260, 0.766979,
		-0.763043, 0.329437, -0.556090,
		-0.169113, -0.932145, -0.320168,
		14.990081, 18.771660, 19.410532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.379686, 19.386452, 19.642801>,  <15.108459, 19.424162, 19.634649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.379686, 19.386452, 19.642801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.570893, 19.037148, 19.680569>,  <14.685617, 18.827564, 19.703228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.570893, 19.037148, 19.680569>,  <14.379686, 19.386452, 19.642801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.570893, 19.037148, 19.680569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563923, -0.222707, 0.795231,
		-0.673417, -0.433379, -0.598909,
		0.478018, -0.873261, 0.094418,
		14.714298, 18.775169, 19.708895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.910560, 18.919943, 19.835455>,  <14.379686, 19.386452, 19.642801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.910560, 18.919943, 19.835455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.233157, 18.726540, 19.971565>,  <14.426716, 18.610498, 20.053232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.233157, 18.726540, 19.971565>,  <13.910560, 18.919943, 19.835455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.233157, 18.726540, 19.971565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481123, -0.202194, 0.853017,
		-0.343638, -0.851668, -0.395695,
		0.806495, -0.483507, 0.340275,
		14.475105, 18.581488, 20.073648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<22.844831, 19.912010, 20.468557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.461643, 19.983326, 20.378662>,  <22.231731, 20.026115, 20.324724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.461643, 19.983326, 20.378662>,  <22.844831, 19.912010, 20.468557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.461643, 19.983326, 20.378662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137577, -0.401921, -0.905280,
		-0.251727, -0.898150, 0.360500,
		-0.957970, 0.178286, -0.224739,
		22.174252, 20.036812, 20.311239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.646152, 19.381466, 20.157928>,  <22.844831, 19.912010, 20.468557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.646152, 19.381466, 20.157928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.381081, 19.659348, 20.046040>,  <22.222038, 19.826077, 19.978907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.381081, 19.659348, 20.046040>,  <22.646152, 19.381466, 20.157928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.381081, 19.659348, 20.046040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029488, -0.349015, -0.936653,
		-0.748323, -0.628949, 0.210800,
		-0.662679, 0.694703, -0.279723,
		22.182278, 19.867758, 19.962122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.219393, 19.036673, 19.627636>,  <22.646152, 19.381466, 20.157928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.219393, 19.036673, 19.627636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.169483, 19.431896, 19.591486>,  <22.139538, 19.669031, 19.569796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.169483, 19.431896, 19.591486>,  <22.219393, 19.036673, 19.627636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.169483, 19.431896, 19.591486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013242, -0.092739, -0.995602,
		-0.992097, -0.123027, 0.024655,
		-0.124773, 0.988061, -0.090377,
		22.132051, 19.728313, 19.564373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.726999, 19.052282, 19.149624>,  <22.219393, 19.036673, 19.627636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.726999, 19.052282, 19.149624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.858074, 19.429848, 19.133389>,  <21.936720, 19.656387, 19.123648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.858074, 19.429848, 19.133389>,  <21.726999, 19.052282, 19.149624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.858074, 19.429848, 19.133389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087874, -0.012322, -0.996055,
		-0.940691, 0.329962, 0.078908,
		0.327688, 0.943914, -0.040586,
		21.956381, 19.713022, 19.121212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.348803, 19.322735, 18.489376>,  <21.726999, 19.052282, 19.149624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.348803, 19.322735, 18.489376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.649384, 19.575607, 18.564920>,  <21.829733, 19.727331, 18.610247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.649384, 19.575607, 18.564920>,  <21.348803, 19.322735, 18.489376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.649384, 19.575607, 18.564920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130776, 0.137854, -0.981781,
		-0.646698, 0.762460, 0.020917,
		0.751452, 0.632180, 0.188861,
		21.874819, 19.765261, 18.621578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.096804, 19.932274, 18.277845>,  <21.348803, 19.322735, 18.489376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.096804, 19.932274, 18.277845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.496410, 19.923660, 18.262365>,  <21.736176, 19.918491, 18.253078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.496410, 19.923660, 18.262365>,  <21.096804, 19.932274, 18.277845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.496410, 19.923660, 18.262365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035654, 0.127286, -0.991225,
		0.026270, 0.991632, 0.126393,
		0.999019, -0.021533, -0.038699,
		21.796116, 19.917200, 18.250755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.252056, 20.367554, 17.715324>,  <21.096804, 19.932274, 18.277845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.252056, 20.367554, 17.715324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.594112, 20.169521, 17.776812>,  <21.799347, 20.050703, 17.813704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.594112, 20.169521, 17.776812>,  <21.252056, 20.367554, 17.715324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.594112, 20.169521, 17.776812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065100, -0.191625, -0.979307,
		0.514292, 0.847453, -0.131636,
		0.855141, -0.495080, 0.153720,
		21.850655, 20.020998, 17.822927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.779081, 20.644197, 17.222855>,  <21.252056, 20.367554, 17.715324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.779081, 20.644197, 17.222855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.881935, 20.270111, 17.320225>,  <21.943647, 20.045660, 17.378647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.881935, 20.270111, 17.320225>,  <21.779081, 20.644197, 17.222855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.881935, 20.270111, 17.320225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005103, -0.253206, -0.967399,
		0.966362, 0.247511, -0.069881,
		0.257136, -0.935214, 0.243426,
		21.959076, 19.989548, 17.393253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.226347, 20.436182, 16.711018>,  <21.779081, 20.644197, 17.222855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.226347, 20.436182, 16.711018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.172401, 20.075436, 16.875187>,  <22.140034, 19.858988, 16.973688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.172401, 20.075436, 16.875187>,  <22.226347, 20.436182, 16.711018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.172401, 20.075436, 16.875187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040251, -0.418852, -0.907162,
		0.990046, -0.105825, 0.092790,
		-0.134866, -0.901867, 0.410423,
		22.131941, 19.804876, 16.998314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.647501, 20.134789, 16.260746>,  <22.226347, 20.436182, 16.711018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.647501, 20.134789, 16.260746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.413658, 19.860340, 16.433941>,  <22.273354, 19.695671, 16.537857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.413658, 19.860340, 16.433941>,  <22.647501, 20.134789, 16.260746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.413658, 19.860340, 16.433941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036589, -0.510842, -0.858896,
		0.810493, -0.517957, 0.273536,
		-0.584605, -0.686121, 0.432985,
		22.238277, 19.654505, 16.563837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.968792, 19.453064, 16.080667>,  <22.647501, 20.134789, 16.260746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.968792, 19.453064, 16.080667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.581596, 19.402832, 16.167591>,  <22.349279, 19.372692, 16.219746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.581596, 19.402832, 16.167591>,  <22.968792, 19.453064, 16.080667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.581596, 19.402832, 16.167591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113983, -0.551423, -0.826402,
		0.223610, -0.824719, 0.519458,
		-0.967991, -0.125582, 0.217307,
		22.291199, 19.365158, 16.232782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.706844, 18.728264, 16.109179>,  <22.968792, 19.453064, 16.080667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.706844, 18.728264, 16.109179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.371780, 18.934383, 16.036743>,  <22.170742, 19.058056, 15.993282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.371780, 18.934383, 16.036743>,  <22.706844, 18.728264, 16.109179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.371780, 18.934383, 16.036743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225986, -0.628814, -0.743992,
		-0.497249, -0.582289, 0.643182,
		-0.837660, 0.515299, -0.181088,
		22.120483, 19.088974, 15.982416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.314486, 18.235195, 15.774511>,  <22.706844, 18.728264, 16.109179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.314486, 18.235195, 15.774511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.114876, 18.578602, 15.727308>,  <21.995110, 18.784645, 15.698986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.114876, 18.578602, 15.727308>,  <22.314486, 18.235195, 15.774511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.114876, 18.578602, 15.727308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535006, -0.412339, -0.737390,
		-0.681720, -0.304841, 0.665079,
		-0.499024, 0.858516, -0.118008,
		21.965168, 18.836157, 15.691906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.601290, 18.123047, 15.824750>,  <22.314486, 18.235195, 15.774511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.601290, 18.123047, 15.824750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.644810, 18.472027, 15.634174>,  <21.670921, 18.681416, 15.519829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.644810, 18.472027, 15.634174>,  <21.601290, 18.123047, 15.824750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.644810, 18.472027, 15.634174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453599, -0.382906, -0.804755,
		-0.884540, 0.303668, 0.354082,
		0.108798, 0.872450, -0.476440,
		21.677448, 18.733761, 15.491242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.844734, 17.982988, 15.927459>,  <21.601290, 18.123047, 15.824750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.844734, 17.982988, 15.927459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.641487, 17.642101, 15.977320>,  <20.519539, 17.437569, 16.007236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.641487, 17.642101, 15.977320>,  <20.844734, 17.982988, 15.927459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.641487, 17.642101, 15.977320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104010, 0.204385, 0.973349,
		-0.854983, 0.481613, -0.192491,
		-0.508120, -0.852218, 0.124654,
		20.489052, 17.386436, 16.014715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.181955, 18.185095, 16.175850>,  <20.844734, 17.982988, 15.927459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.181955, 18.185095, 16.175850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.260349, 17.807426, 16.281776>,  <20.307384, 17.580826, 16.345333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.260349, 17.807426, 16.281776>,  <20.181955, 18.185095, 16.175850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.260349, 17.807426, 16.281776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125894, 0.243595, 0.961672,
		-0.972492, -0.221810, -0.071125,
		0.195983, -0.944173, 0.264818,
		20.319143, 17.524174, 16.361221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.977451, 18.195726, 16.835878>,  <20.181955, 18.185095, 16.175850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.977451, 18.195726, 16.835878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.171360, 17.846176, 16.821257>,  <20.287706, 17.636446, 16.812485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.171360, 17.846176, 16.821257>,  <19.977451, 18.195726, 16.835878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.171360, 17.846176, 16.821257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022560, -0.054271, 0.998271,
		-0.874349, -0.483110, -0.046024,
		0.484773, -0.873876, -0.036553,
		20.316792, 17.584013, 16.810291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.621208, 17.712534, 17.292248>,  <19.977451, 18.195726, 16.835878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.621208, 17.712534, 17.292248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.987183, 17.555653, 17.254148>,  <20.206766, 17.461525, 17.231289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.987183, 17.555653, 17.254148>,  <19.621208, 17.712534, 17.292248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.987183, 17.555653, 17.254148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019030, -0.193811, 0.980854,
		-0.403153, -0.899230, -0.169860,
		0.914935, -0.392202, -0.095248,
		20.261663, 17.437992, 17.225574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.555702, 17.036198, 17.667379>,  <19.621208, 17.712534, 17.292248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.555702, 17.036198, 17.667379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.939301, 17.147449, 17.645565>,  <20.169458, 17.214201, 17.632477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.939301, 17.147449, 17.645565>,  <19.555702, 17.036198, 17.667379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.939301, 17.147449, 17.645565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130645, -0.263039, 0.955899,
		0.251517, -0.923827, -0.288589,
		0.958995, 0.278128, -0.054534,
		20.226999, 17.230888, 17.629204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.872421, 16.515669, 17.989914>,  <19.555702, 17.036198, 17.667379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.872421, 16.515669, 17.989914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.138363, 16.813251, 18.016731>,  <20.297928, 16.991802, 18.032822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.138363, 16.813251, 18.016731>,  <19.872421, 16.515669, 17.989914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.138363, 16.813251, 18.016731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047615, -0.131780, 0.990135,
		0.745454, -0.655103, -0.123038,
		0.664854, 0.743959, 0.067044,
		20.337818, 17.036440, 18.036844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.275616, 16.321655, 18.601564>,  <19.872421, 16.515669, 17.989914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.275616, 16.321655, 18.601564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.374634, 16.697144, 18.505629>,  <20.434044, 16.922438, 18.448067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.374634, 16.697144, 18.505629>,  <20.275616, 16.321655, 18.601564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.374634, 16.697144, 18.505629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146680, 0.208380, 0.966986,
		0.957709, -0.274550, -0.086109,
		0.247543, 0.938722, -0.239839,
		20.448896, 16.978760, 18.433678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.959993, 16.475952, 18.893627>,  <20.275616, 16.321655, 18.601564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.959993, 16.475952, 18.893627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.764671, 16.822243, 18.849667>,  <20.647478, 17.030016, 18.823290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.764671, 16.822243, 18.849667>,  <20.959993, 16.475952, 18.893627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.764671, 16.822243, 18.849667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083288, 0.171596, 0.981640,
		0.868689, 0.470186, -0.155896,
		-0.488305, 0.865725, -0.109903,
		20.618179, 17.081961, 18.816696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.370872, 16.898458, 19.246328>,  <20.959993, 16.475952, 18.893627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.370872, 16.898458, 19.246328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.012234, 17.071526, 19.208570>,  <20.797050, 17.175365, 19.185915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.012234, 17.071526, 19.208570>,  <21.370872, 16.898458, 19.246328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.012234, 17.071526, 19.208570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012132, 0.237071, 0.971416,
		0.442680, 0.869825, -0.217807,
		-0.896598, 0.432669, -0.094394,
		20.743254, 17.201326, 19.180252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.435369, 17.534086, 19.522131>,  <21.370872, 16.898458, 19.246328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.435369, 17.534086, 19.522131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.039829, 17.474537, 19.523369>,  <20.802505, 17.438808, 19.524111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.039829, 17.474537, 19.523369>,  <21.435369, 17.534086, 19.522131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.039829, 17.474537, 19.523369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042161, 0.299859, 0.953052,
		-0.142810, 0.942296, -0.302792,
		-0.988852, -0.148871, 0.003095,
		20.743174, 17.429876, 19.524298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.238453, 18.140917, 19.738989>,  <21.435369, 17.534086, 19.522131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.238453, 18.140917, 19.738989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.944611, 17.884056, 19.826618>,  <20.768305, 17.729940, 19.879196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.944611, 17.884056, 19.826618>,  <21.238453, 18.140917, 19.738989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.944611, 17.884056, 19.826618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020794, 0.301423, 0.953264,
		-0.678173, 0.704831, -0.208075,
		-0.734608, -0.642151, 0.219073,
		20.724228, 17.691410, 19.892340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.850067, 18.559132, 20.093781>,  <21.238453, 18.140917, 19.738989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.850067, 18.559132, 20.093781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.694706, 18.197990, 20.167534>,  <20.601490, 17.981306, 20.211786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.694706, 18.197990, 20.167534>,  <20.850067, 18.559132, 20.093781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.694706, 18.197990, 20.167534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089977, 0.236296, 0.967506,
		-0.917086, 0.359192, -0.173014,
		-0.388403, -0.902854, 0.184385,
		20.578184, 17.927134, 20.222849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.211601, 18.772999, 20.462967>,  <20.850067, 18.559132, 20.093781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.211601, 18.772999, 20.462967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.322250, 18.397224, 20.543900>,  <20.388639, 18.171761, 20.592459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.322250, 18.397224, 20.543900>,  <20.211601, 18.772999, 20.462967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.322250, 18.397224, 20.543900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126073, 0.173252, 0.976775,
		-0.952673, -0.295707, -0.070512,
		0.276623, -0.939437, 0.202333,
		20.405237, 18.115393, 20.604599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.574415, 18.385353, 20.639530>,  <20.211601, 18.772999, 20.462967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.574415, 18.385353, 20.639530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.919659, 18.255108, 20.793943>,  <20.126804, 18.176962, 20.886591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.919659, 18.255108, 20.793943>,  <19.574415, 18.385353, 20.639530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.919659, 18.255108, 20.793943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336763, 0.198549, 0.920418,
		-0.376345, -0.924422, 0.061715,
		0.863108, -0.325612, 0.386034,
		20.178591, 18.157425, 20.909754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.411407, 17.707516, 20.448986>,  <19.574415, 18.385353, 20.639530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.411407, 17.707516, 20.448986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.039310, 17.599831, 20.548723>,  <18.816051, 17.535219, 20.608564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.039310, 17.599831, 20.548723>,  <19.411407, 17.707516, 20.448986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.039310, 17.599831, 20.548723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010281, -0.698369, -0.715664,
		0.366798, -0.663179, 0.652421,
		-0.930244, -0.269212, 0.249342,
		18.760237, 17.519068, 20.623526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.336113, 16.968761, 20.609863>,  <19.411407, 17.707516, 20.448986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.336113, 16.968761, 20.609863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.968651, 17.075619, 20.493444>,  <18.748175, 17.139734, 20.423592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.968651, 17.075619, 20.493444>,  <19.336113, 16.968761, 20.609863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.968651, 17.075619, 20.493444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072285, -0.610616, -0.788621,
		-0.388395, -0.745508, 0.541634,
		-0.918654, 0.267144, -0.291049,
		18.693054, 17.155762, 20.406130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.122269, 16.411652, 20.372431>,  <19.336113, 16.968761, 20.609863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.122269, 16.411652, 20.372431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.852814, 16.661964, 20.215151>,  <18.691141, 16.812153, 20.120783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.852814, 16.661964, 20.215151>,  <19.122269, 16.411652, 20.372431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.852814, 16.661964, 20.215151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009721, -0.524475, -0.851370,
		-0.738997, -0.577338, 0.347223,
		-0.673639, 0.625785, -0.393198,
		18.650723, 16.849699, 20.097191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.449781, 16.056374, 20.234686>,  <19.122269, 16.411652, 20.372431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.449781, 16.056374, 20.234686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.468189, 16.377430, 19.996811>,  <18.479235, 16.570063, 19.854086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.468189, 16.377430, 19.996811>,  <18.449781, 16.056374, 20.234686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.468189, 16.377430, 19.996811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095585, -0.589048, -0.802425,
		-0.994357, 0.093771, 0.049612,
		0.046020, 0.802639, -0.594687,
		18.481995, 16.618221, 19.818405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.908079, 15.970886, 19.816147>,  <18.449781, 16.056374, 20.234686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.908079, 15.970886, 19.816147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.132580, 16.241291, 19.625147>,  <18.267281, 16.403534, 19.510548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.132580, 16.241291, 19.625147>,  <17.908079, 15.970886, 19.816147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.132580, 16.241291, 19.625147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184112, -0.460503, -0.868355,
		-0.806908, 0.575278, -0.133996,
		0.561251, 0.676012, -0.477499,
		18.300955, 16.444096, 19.481897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.501272, 16.212297, 19.201090>,  <17.908079, 15.970886, 19.816147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.501272, 16.212297, 19.201090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.891102, 16.274544, 19.136604>,  <18.125000, 16.311892, 19.097912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.891102, 16.274544, 19.136604>,  <17.501272, 16.212297, 19.201090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.891102, 16.274544, 19.136604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118873, -0.250815, -0.960709,
		-0.189936, 0.955445, -0.225939,
		0.974573, 0.155615, -0.161216,
		18.183474, 16.321228, 19.088240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.568907, 16.337650, 18.418844>,  <17.501272, 16.212297, 19.201090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.568907, 16.337650, 18.418844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.953907, 16.277473, 18.509138>,  <18.184908, 16.241367, 18.563314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.953907, 16.277473, 18.509138>,  <17.568907, 16.337650, 18.418844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.953907, 16.277473, 18.509138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196477, -0.187161, -0.962480,
		0.187048, 0.970740, -0.150584,
		0.962502, -0.150444, 0.225736,
		18.242657, 16.232340, 18.576859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.991196, 16.851891, 18.036615>,  <17.568907, 16.337650, 18.418844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.991196, 16.851891, 18.036615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.217617, 16.539120, 18.141054>,  <18.353470, 16.351458, 18.203718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.217617, 16.539120, 18.141054>,  <17.991196, 16.851891, 18.036615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.217617, 16.539120, 18.141054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214587, -0.166044, -0.962487,
		0.795950, 0.600846, 0.073802,
		0.566052, -0.781929, 0.261097,
		18.387432, 16.304541, 18.219383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.544659, 16.935499, 17.661537>,  <17.991196, 16.851891, 18.036615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.544659, 16.935499, 17.661537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.502777, 16.547966, 17.751335>,  <18.477648, 16.315447, 17.805214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.502777, 16.547966, 17.751335>,  <18.544659, 16.935499, 17.661537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.502777, 16.547966, 17.751335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058601, -0.231355, -0.971103,
		0.992775, -0.088524, 0.080999,
		-0.104706, -0.968833, 0.224496,
		18.471365, 16.257317, 17.818684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.938086, 16.615318, 17.118134>,  <18.544659, 16.935499, 17.661537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.938086, 16.615318, 17.118134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.736328, 16.308151, 17.276066>,  <18.615273, 16.123852, 17.370825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.736328, 16.308151, 17.276066>,  <18.938086, 16.615318, 17.118134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.736328, 16.308151, 17.276066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044723, -0.433409, -0.900087,
		0.862314, -0.471657, 0.184266,
		-0.504395, -0.767917, 0.394828,
		18.585009, 16.077776, 17.394514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.302906, 16.026037, 16.930208>,  <18.938086, 16.615318, 17.118134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.302906, 16.026037, 16.930208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.932781, 15.905781, 17.022655>,  <18.710707, 15.833627, 17.078123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.932781, 15.905781, 17.022655>,  <19.302906, 16.026037, 16.930208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.932781, 15.905781, 17.022655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093889, -0.408865, -0.907752,
		0.367403, -0.861652, 0.350100,
		-0.925310, -0.300641, 0.231118,
		18.655188, 15.815589, 17.091991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.278761, 15.252885, 16.709219>,  <19.302906, 16.026037, 16.930208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.278761, 15.252885, 16.709219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.899811, 15.376480, 16.742701>,  <18.672441, 15.450638, 16.762789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.899811, 15.376480, 16.742701>,  <19.278761, 15.252885, 16.709219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.899811, 15.376480, 16.742701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201147, -0.371157, -0.906522,
		-0.249037, -0.875653, 0.413777,
		-0.947375, 0.308988, 0.083703,
		18.615599, 15.469177, 16.767811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.922583, 14.645491, 16.512047>,  <19.278761, 15.252885, 16.709219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.922583, 14.645491, 16.512047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.699673, 14.974743, 16.468409>,  <18.565928, 15.172295, 16.442226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.699673, 14.974743, 16.468409>,  <18.922583, 14.645491, 16.512047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.699673, 14.974743, 16.468409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239566, -0.285191, -0.928048,
		-0.795019, -0.491040, 0.356124,
		-0.557273, 0.823132, -0.109096,
		18.532492, 15.221683, 16.435680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.245617, 14.463971, 16.320398>,  <18.922583, 14.645491, 16.512047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.245617, 14.463971, 16.320398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.284443, 14.841133, 16.192957>,  <18.307737, 15.067430, 16.116491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.284443, 14.841133, 16.192957>,  <18.245617, 14.463971, 16.320398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.284443, 14.841133, 16.192957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308851, -0.275776, -0.910252,
		-0.946145, 0.186754, 0.264449,
		0.097064, 0.942906, -0.318603,
		18.313562, 15.124004, 16.097376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<13.914198, 17.287979, 20.648277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.199355, 17.566437, 20.614418>,  <14.370450, 17.733511, 20.594103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.199355, 17.566437, 20.614418>,  <13.914198, 17.287979, 20.648277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.199355, 17.566437, 20.614418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000654, 0.120044, 0.992768,
		0.701272, -0.707794, 0.085123,
		0.712894, 0.696145, -0.084646,
		14.413223, 17.775280, 20.589024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.365402, 17.192270, 21.142313>,  <13.914198, 17.287979, 20.648277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.365402, 17.192270, 21.142313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.476546, 17.570377, 21.073889>,  <14.543233, 17.797241, 21.032835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.476546, 17.570377, 21.073889>,  <14.365402, 17.192270, 21.142313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.476546, 17.570377, 21.073889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078326, 0.155186, 0.984775,
		0.957423, -0.287028, -0.030919,
		0.277860, 0.945269, -0.171061,
		14.559904, 17.853958, 21.022570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.929732, 17.243397, 21.516748>,  <14.365402, 17.192270, 21.142313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.929732, 17.243397, 21.516748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.817037, 17.621460, 21.450661>,  <14.749419, 17.848297, 21.411007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.817037, 17.621460, 21.450661>,  <14.929732, 17.243397, 21.516748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.817037, 17.621460, 21.450661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203743, 0.227202, 0.952296,
		0.937610, 0.234636, -0.256581,
		-0.281739, 0.945159, -0.165222,
		14.732515, 17.905008, 21.401094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.379302, 17.680414, 21.926758>,  <14.929732, 17.243397, 21.516748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.379302, 17.680414, 21.926758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.089040, 17.944977, 21.850899>,  <14.914883, 18.103714, 21.805384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.089040, 17.944977, 21.850899>,  <15.379302, 17.680414, 21.926758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.089040, 17.944977, 21.850899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161606, 0.431750, 0.887398,
		0.668811, 0.613297, -0.420189,
		-0.725655, 0.661407, -0.189646,
		14.871344, 18.143398, 21.794004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.645200, 18.353750, 21.947689>,  <15.379302, 17.680414, 21.926758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.645200, 18.353750, 21.947689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.254905, 18.409618, 22.015135>,  <15.020728, 18.443138, 22.055603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.254905, 18.409618, 22.015135>,  <15.645200, 18.353750, 21.947689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.254905, 18.409618, 22.015135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205933, 0.323874, 0.923416,
		0.074362, 0.935734, -0.344778,
		-0.975737, 0.139669, 0.168615,
		14.962184, 18.451519, 22.065720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.492135, 19.083185, 22.150724>,  <15.645200, 18.353750, 21.947689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.492135, 19.083185, 22.150724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.165805, 18.893536, 22.283169>,  <14.970007, 18.779747, 22.362637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.165805, 18.893536, 22.283169>,  <15.492135, 19.083185, 22.150724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.165805, 18.893536, 22.283169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047587, 0.515583, 0.855517,
		-0.576336, 0.713710, -0.398064,
		-0.815826, -0.474123, 0.331112,
		14.921057, 18.751299, 22.382502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.044629, 19.603683, 22.526600>,  <15.492135, 19.083185, 22.150724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.044629, 19.603683, 22.526600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.936831, 19.245625, 22.668634>,  <14.872153, 19.030788, 22.753855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.936831, 19.245625, 22.668634>,  <15.044629, 19.603683, 22.526600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.936831, 19.245625, 22.668634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012145, 0.371857, 0.928211,
		-0.962926, 0.245834, -0.111085,
		-0.269493, -0.895147, 0.355085,
		14.855984, 18.977081, 22.775160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.621948, 19.831989, 23.019033>,  <15.044629, 19.603683, 22.526600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.621948, 19.831989, 23.019033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.720248, 19.456226, 23.114635>,  <14.779228, 19.230768, 23.171997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.720248, 19.456226, 23.114635>,  <14.621948, 19.831989, 23.019033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.720248, 19.456226, 23.114635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290373, 0.306590, 0.906469,
		-0.924819, -0.153364, 0.348123,
		0.245751, -0.939405, 0.239007,
		14.793973, 19.174404, 23.186338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.368341, 19.690081, 23.701654>,  <14.621948, 19.831989, 23.019033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.368341, 19.690081, 23.701654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.633405, 19.396538, 23.641872>,  <14.792442, 19.220411, 23.606003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.633405, 19.396538, 23.641872>,  <14.368341, 19.690081, 23.701654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.633405, 19.396538, 23.641872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377581, 0.155027, 0.912907,
		-0.646774, -0.661377, 0.379821,
		0.662658, -0.733858, -0.149455,
		14.832202, 19.176380, 23.597036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.205687, 19.231041, 24.245443>,  <14.368341, 19.690081, 23.701654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.205687, 19.231041, 24.245443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.585380, 19.164310, 24.138763>,  <14.813195, 19.124271, 24.074757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.585380, 19.164310, 24.138763>,  <14.205687, 19.231041, 24.245443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.585380, 19.164310, 24.138763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272659, 0.013483, 0.962016,
		-0.156896, -0.985894, 0.058285,
		0.949231, -0.166828, -0.266698,
		14.870150, 19.114262, 24.058754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.397027, 18.901226, 24.820477>,  <14.205687, 19.231041, 24.245443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.397027, 18.901226, 24.820477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.741027, 19.009262, 24.647293>,  <14.947427, 19.074083, 24.543383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.741027, 19.009262, 24.647293>,  <14.397027, 18.901226, 24.820477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.741027, 19.009262, 24.647293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359738, 0.280870, 0.889775,
		0.361925, -0.920958, 0.144387,
		0.859999, 0.270090, -0.432958,
		14.999026, 19.090288, 24.517406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.968292, 18.451719, 25.131493>,  <14.397027, 18.901226, 24.820477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.968292, 18.451719, 25.131493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.118022, 18.785572, 24.969866>,  <15.207860, 18.985884, 24.872890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.118022, 18.785572, 24.969866>,  <14.968292, 18.451719, 25.131493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.118022, 18.785572, 24.969866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231818, 0.337684, 0.912266,
		0.897854, -0.435154, -0.067079,
		0.374325, 0.834632, -0.404067,
		15.230320, 19.035961, 24.848646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.727709, 18.581272, 25.414087>,  <14.968292, 18.451719, 25.131493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.727709, 18.581272, 25.414087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.542476, 18.923046, 25.319860>,  <15.431335, 19.128111, 25.263325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.542476, 18.923046, 25.319860>,  <15.727709, 18.581272, 25.414087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.542476, 18.923046, 25.319860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129305, 0.328067, 0.935763,
		0.876832, 0.402876, -0.262406,
		-0.463083, 0.854437, -0.235565,
		15.403551, 19.179377, 25.249191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.148809, 19.115686, 25.392050>,  <15.727709, 18.581272, 25.414087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.148809, 19.115686, 25.392050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.798171, 19.281296, 25.490162>,  <15.587788, 19.380661, 25.549030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.798171, 19.281296, 25.490162>,  <16.148809, 19.115686, 25.392050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.798171, 19.281296, 25.490162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394100, 0.325138, 0.859634,
		0.276157, 0.850218, -0.448181,
		-0.876597, 0.414022, 0.245282,
		15.535192, 19.405502, 25.563747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564678, 19.631723, 25.712713>,  <16.148809, 19.115686, 25.392050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.564678, 19.631723, 25.712713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.929760, 19.502663, 25.813007>,  <17.148809, 19.425226, 25.873184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.929760, 19.502663, 25.813007>,  <16.564678, 19.631723, 25.712713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.929760, 19.502663, 25.813007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135376, -0.340201, -0.930557,
		0.385545, 0.883267, -0.266824,
		0.912704, -0.322650, 0.250736,
		17.203571, 19.405869, 25.888227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.949226, 19.768112, 25.114702>,  <16.564678, 19.631723, 25.712713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.949226, 19.768112, 25.114702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.139629, 19.481251, 25.318312>,  <17.253870, 19.309134, 25.440477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.139629, 19.481251, 25.318312>,  <16.949226, 19.768112, 25.114702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.139629, 19.481251, 25.318312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317783, -0.399433, -0.859923,
		0.820020, 0.571088, 0.037767,
		0.476006, -0.717155, 0.509025,
		17.282431, 19.266104, 25.471020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.686712, 19.745291, 24.886509>,  <16.949226, 19.768112, 25.114702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.686712, 19.745291, 24.886509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.581081, 19.385624, 25.026085>,  <17.517702, 19.169823, 25.109831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.581081, 19.385624, 25.026085>,  <17.686712, 19.745291, 24.886509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.581081, 19.385624, 25.026085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281553, -0.417890, -0.863769,
		0.922492, -0.129857, 0.363519,
		-0.264077, -0.899169, 0.348938,
		17.501858, 19.115873, 25.130766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.218426, 19.407373, 24.633831>,  <17.686712, 19.745291, 24.886509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.218426, 19.407373, 24.633831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.964237, 19.118534, 24.743195>,  <17.811724, 18.945230, 24.808813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.964237, 19.118534, 24.743195>,  <18.218426, 19.407373, 24.633831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.964237, 19.118534, 24.743195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234724, -0.518006, -0.822541,
		0.735582, -0.458526, 0.498671,
		-0.635471, -0.722097, 0.273409,
		17.773596, 18.901905, 24.825218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.616180, 18.727137, 24.685726>,  <18.218426, 19.407373, 24.633831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.616180, 18.727137, 24.685726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.228241, 18.649426, 24.626865>,  <17.995478, 18.602798, 24.591549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.228241, 18.649426, 24.626865>,  <18.616180, 18.727137, 24.685726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.228241, 18.649426, 24.626865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238708, -0.635447, -0.734320,
		0.049154, -0.747304, 0.662662,
		-0.969847, -0.194278, -0.147152,
		17.937286, 18.591143, 24.582720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.680225, 17.946461, 24.491022>,  <18.616180, 18.727137, 24.685726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.680225, 17.946461, 24.491022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.327461, 18.107750, 24.393330>,  <18.115803, 18.204523, 24.334715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.327461, 18.107750, 24.393330>,  <18.680225, 17.946461, 24.491022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.327461, 18.107750, 24.393330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069316, -0.401531, -0.913219,
		-0.466299, -0.822304, 0.326163,
		-0.881907, 0.403224, -0.244232,
		18.062889, 18.228716, 24.320061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.303383, 17.431822, 24.113052>,  <18.680225, 17.946461, 24.491022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.303383, 17.431822, 24.113052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.100445, 17.764217, 24.021786>,  <17.978682, 17.963654, 23.967026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.100445, 17.764217, 24.021786>,  <18.303383, 17.431822, 24.113052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.100445, 17.764217, 24.021786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020963, -0.252794, -0.967293,
		-0.861487, -0.495536, 0.110834,
		-0.507346, 0.830987, -0.228166,
		17.948240, 18.013514, 23.953337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.802568, 17.205626, 23.703974>,  <18.303383, 17.431822, 24.113052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.802568, 17.205626, 23.703974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.845219, 17.594406, 23.620121>,  <17.870810, 17.827675, 23.569809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.845219, 17.594406, 23.620121>,  <17.802568, 17.205626, 23.703974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.845219, 17.594406, 23.620121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090035, -0.200528, -0.975542,
		-0.990214, 0.122893, 0.066128,
		0.106627, 0.971950, -0.209630,
		17.877207, 17.885990, 23.557232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.396477, 17.275690, 23.095778>,  <17.802568, 17.205626, 23.703974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.396477, 17.275690, 23.095778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.660076, 17.575699, 23.118355>,  <17.818235, 17.755705, 23.131901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.660076, 17.575699, 23.118355>,  <17.396477, 17.275690, 23.095778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.660076, 17.575699, 23.118355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124000, -0.034319, -0.991689,
		-0.741853, 0.660520, -0.115619,
		0.658998, 0.750024, 0.056444,
		17.857775, 17.800707, 23.135288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.259569, 17.609472, 22.615967>,  <17.396477, 17.275690, 23.095778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.259569, 17.609472, 22.615967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.632267, 17.749313, 22.655220>,  <17.855886, 17.833218, 22.678772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.632267, 17.749313, 22.655220>,  <17.259569, 17.609472, 22.615967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.632267, 17.749313, 22.655220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099288, 0.014659, -0.994951,
		-0.349274, 0.936784, -0.021053,
		0.931746, 0.349600, 0.098132,
		17.911791, 17.854193, 22.684660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.274567, 18.154070, 22.076824>,  <17.259569, 17.609472, 22.615967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.274567, 18.154070, 22.076824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.639362, 18.020119, 22.171597>,  <17.858240, 17.939749, 22.228460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.639362, 18.020119, 22.171597>,  <17.274567, 18.154070, 22.076824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.639362, 18.020119, 22.171597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274977, 0.070454, -0.958866,
		0.304409, 0.939624, 0.156337,
		0.911988, -0.334877, 0.236929,
		17.912958, 17.919655, 22.242676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.690599, 18.416710, 21.571173>,  <17.274567, 18.154070, 22.076824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.690599, 18.416710, 21.571173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.942352, 18.135464, 21.703539>,  <18.093405, 17.966717, 21.782959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.942352, 18.135464, 21.703539>,  <17.690599, 18.416710, 21.571173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.942352, 18.135464, 21.703539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438282, -0.030464, -0.898321,
		0.641705, 0.710422, 0.288990,
		0.629384, -0.703116, 0.330914,
		18.131168, 17.924528, 21.802813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.215761, 18.631786, 21.195147>,  <17.690599, 18.416710, 21.571173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.215761, 18.631786, 21.195147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.264923, 18.249649, 21.302637>,  <18.294420, 18.020367, 21.367132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.264923, 18.249649, 21.302637>,  <18.215761, 18.631786, 21.195147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.264923, 18.249649, 21.302637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256867, -0.230929, -0.938451,
		0.958600, 0.184369, 0.217013,
		0.122907, -0.955343, 0.268727,
		18.301796, 17.963047, 21.383255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.851727, 18.478666, 20.818947>,  <18.215761, 18.631786, 21.195147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.851727, 18.478666, 20.818947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.700375, 18.122200, 20.919073>,  <18.609564, 17.908321, 20.979149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.700375, 18.122200, 20.919073>,  <18.851727, 18.478666, 20.818947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.700375, 18.122200, 20.919073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099989, -0.308187, -0.946056,
		0.920235, -0.332938, 0.205718,
		-0.378378, -0.891163, 0.250315,
		18.586861, 17.854851, 20.994167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.368410, 18.304285, 21.323332>,  <18.851727, 18.478666, 20.818947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.368410, 18.304285, 21.323332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.761700, 18.231998, 21.333252>,  <19.997673, 18.188627, 21.339205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.761700, 18.231998, 21.333252>,  <19.368410, 18.304285, 21.323332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.761700, 18.231998, 21.333252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001849, 0.126085, 0.992018,
		-0.182401, -0.975420, 0.123636,
		0.983222, -0.180716, 0.024801,
		20.056667, 18.177784, 21.340693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.434797, 17.769548, 21.886948>,  <19.368410, 18.304285, 21.323332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.434797, 17.769548, 21.886948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.787628, 17.951828, 21.839159>,  <19.999327, 18.061195, 21.810486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.787628, 17.951828, 21.839159>,  <19.434797, 17.769548, 21.886948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.787628, 17.951828, 21.839159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060546, 0.141840, 0.988036,
		0.467195, -0.878759, 0.097523,
		0.882078, 0.455701, -0.119473,
		20.052252, 18.088539, 21.803318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.962690, 17.441494, 22.231243>,  <19.434797, 17.769548, 21.886948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.962690, 17.441494, 22.231243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.116676, 17.808823, 22.194399>,  <20.209068, 18.029221, 22.172293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.116676, 17.808823, 22.194399>,  <19.962690, 17.441494, 22.231243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.116676, 17.808823, 22.194399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203539, 0.012873, 0.978982,
		0.900209, -0.395620, -0.181959,
		0.384963, 0.918324, -0.092112,
		20.232164, 18.084320, 22.166765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.410421, 17.495417, 22.742054>,  <19.962690, 17.441494, 22.231243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.410421, 17.495417, 22.742054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.418243, 17.888401, 22.667879>,  <20.422935, 18.124191, 22.623373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.418243, 17.888401, 22.667879>,  <20.410421, 17.495417, 22.742054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.418243, 17.888401, 22.667879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363891, 0.165761, 0.916573,
		0.931236, -0.085402, -0.354268,
		0.019553, 0.982461, -0.185439,
		20.424110, 18.183140, 22.612247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.038513, 17.729439, 23.099998>,  <20.410421, 17.495417, 22.742054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.038513, 17.729439, 23.099998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.797676, 18.045036, 23.051046>,  <20.653173, 18.234394, 23.021675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.797676, 18.045036, 23.051046>,  <21.038513, 17.729439, 23.099998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.797676, 18.045036, 23.051046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213484, 0.306783, 0.927528,
		0.769358, 0.532330, -0.353148,
		-0.602091, 0.788993, -0.122382,
		20.617048, 18.281734, 23.014332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.329149, 18.332930, 23.300350>,  <21.038513, 17.729439, 23.099998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.329149, 18.332930, 23.300350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.944351, 18.439293, 23.325182>,  <20.713472, 18.503111, 23.340082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.944351, 18.439293, 23.325182>,  <21.329149, 18.332930, 23.300350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.944351, 18.439293, 23.325182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172588, 0.415929, 0.892870,
		0.211601, 0.869653, -0.446015,
		-0.961997, 0.265909, 0.062081,
		20.655752, 18.519066, 23.343805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.279476, 19.088089, 23.348505>,  <21.329149, 18.332930, 23.300350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.279476, 19.088089, 23.348505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.940594, 18.944641, 23.505291>,  <20.737265, 18.858572, 23.599361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.940594, 18.944641, 23.505291>,  <21.279476, 19.088089, 23.348505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.940594, 18.944641, 23.505291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178401, 0.502907, 0.845729,
		-0.500417, 0.786433, -0.362087,
		-0.847205, -0.358621, 0.391963,
		20.686432, 18.837055, 23.622881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.151915, 19.804115, 23.075312>,  <21.279476, 19.088089, 23.348505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.151915, 19.804115, 23.075312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.323082, 20.160496, 23.014526>,  <21.425783, 20.374323, 22.978054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.323082, 20.160496, 23.014526>,  <21.151915, 19.804115, 23.075312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.323082, 20.160496, 23.014526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141136, -0.231945, -0.962436,
		-0.892730, 0.390396, -0.224999,
		0.427919, 0.890950, -0.151965,
		21.451458, 20.427780, 22.968937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.793879, 20.013575, 22.467609>,  <21.151915, 19.804115, 23.075312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.793879, 20.013575, 22.467609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.116489, 20.249535, 22.483290>,  <21.310055, 20.391109, 22.492699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.116489, 20.249535, 22.483290>,  <20.793879, 20.013575, 22.467609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.116489, 20.249535, 22.483290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015653, 0.087592, -0.996033,
		-0.590992, 0.802713, 0.079879,
		0.806525, 0.589899, 0.039201,
		21.358446, 20.426504, 22.495050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.583132, 20.498066, 22.061205>,  <20.793879, 20.013575, 22.467609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.583132, 20.498066, 22.061205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.982609, 20.477680, 22.063000>,  <21.222294, 20.465448, 22.064077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.982609, 20.477680, 22.063000>,  <20.583132, 20.498066, 22.061205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.982609, 20.477680, 22.063000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003729, -0.160011, -0.987108,
		0.051024, 0.985799, -0.159991,
		0.998690, -0.050963, 0.004488,
		21.282215, 20.462391, 22.064346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.924570, 21.044199, 21.589537>,  <20.583132, 20.498066, 22.061205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.924570, 21.044199, 21.589537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.202980, 20.758816, 21.621851>,  <21.370026, 20.587585, 21.641239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.202980, 20.758816, 21.621851>,  <20.924570, 21.044199, 21.589537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.202980, 20.758816, 21.621851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119265, 0.003931, -0.992855,
		0.708045, 0.700685, 0.087827,
		0.696024, -0.713460, 0.080783,
		21.411787, 20.544777, 21.646086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.335173, 21.236969, 21.067703>,  <20.924570, 21.044199, 21.589537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.335173, 21.236969, 21.067703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.458584, 20.863113, 21.138428>,  <21.532631, 20.638800, 21.180862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.458584, 20.863113, 21.138428>,  <21.335173, 21.236969, 21.067703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.458584, 20.863113, 21.138428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219967, -0.110736, -0.969202,
		0.925432, 0.337920, 0.171425,
		0.308529, -0.934638, 0.176810,
		21.551142, 20.582722, 21.191471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.086380, 21.174774, 20.807911>,  <21.335173, 21.236969, 21.067703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.086380, 21.174774, 20.807911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.943710, 20.804974, 20.861698>,  <21.858109, 20.583094, 20.893970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.943710, 20.804974, 20.861698>,  <22.086380, 21.174774, 20.807911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.943710, 20.804974, 20.861698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235944, -0.228413, -0.944541,
		0.903943, -0.305167, 0.299600,
		-0.356676, -0.924500, 0.134470,
		21.836708, 20.527624, 20.902039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.625477, 20.681927, 20.689348>,  <22.086380, 21.174774, 20.807911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.625477, 20.681927, 20.689348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.281372, 20.483658, 20.641586>,  <22.074909, 20.364697, 20.612928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.281372, 20.483658, 20.641586>,  <22.625477, 20.681927, 20.689348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.281372, 20.483658, 20.641586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341594, -0.386474, -0.856709,
		0.378502, -0.777782, 0.501788,
		-0.860261, -0.495674, -0.119405,
		22.023294, 20.334955, 20.605764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<15.886748, 22.727001, 24.456266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.866025, 22.335304, 24.377882>,  <15.853591, 22.100286, 24.330851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.866025, 22.335304, 24.377882>,  <15.886748, 22.727001, 24.456266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.866025, 22.335304, 24.377882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536736, 0.138170, -0.832360,
		0.842158, -0.148303, 0.518436,
		-0.051809, -0.979242, -0.195960,
		15.850482, 22.041533, 24.319094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.618292, 22.438574, 24.331823>,  <15.886748, 22.727001, 24.456266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.618292, 22.438574, 24.331823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.360115, 22.184532, 24.162094>,  <16.205210, 22.032108, 24.060257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.360115, 22.184532, 24.162094>,  <16.618292, 22.438574, 24.331823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.360115, 22.184532, 24.162094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493362, 0.077440, -0.866370,
		0.583094, -0.768535, 0.263353,
		-0.645442, -0.635104, -0.424321,
		16.166483, 21.994001, 24.034798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.912178, 22.267738, 23.870115>,  <16.618292, 22.438574, 24.331823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.912178, 22.267738, 23.870115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.561966, 22.144806, 23.720989>,  <16.351839, 22.071047, 23.631514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.561966, 22.144806, 23.720989>,  <16.912178, 22.267738, 23.870115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.561966, 22.144806, 23.720989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310060, 0.234390, -0.921371,
		0.370553, -0.922284, -0.109924,
		-0.875530, -0.307334, -0.372817,
		16.299307, 22.052607, 23.609144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.087742, 21.711958, 23.367233>,  <16.912178, 22.267738, 23.870115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.087742, 21.711958, 23.367233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.719700, 21.833988, 23.268980>,  <16.498875, 21.907206, 23.210028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.719700, 21.833988, 23.268980>,  <17.087742, 21.711958, 23.367233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.719700, 21.833988, 23.268980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301716, 0.152188, -0.941173,
		-0.249745, -0.940090, -0.232075,
		-0.920106, 0.305074, -0.245632,
		16.443668, 21.925510, 23.195290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.781044, 21.163404, 22.863573>,  <17.087742, 21.711958, 23.367233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.781044, 21.163404, 22.863573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.625591, 21.529942, 22.825029>,  <16.532320, 21.749863, 22.801903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.625591, 21.529942, 22.825029>,  <16.781044, 21.163404, 22.863573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.625591, 21.529942, 22.825029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161201, -0.035346, -0.986288,
		-0.907182, -0.398836, -0.133978,
		-0.388631, 0.916341, -0.096358,
		16.509003, 21.804844, 22.796122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.405914, 21.197014, 22.224072>,  <16.781044, 21.163404, 22.863573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.405914, 21.197014, 22.224072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.465096, 21.583035, 22.310589>,  <16.500605, 21.814648, 22.362499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.465096, 21.583035, 22.310589>,  <16.405914, 21.197014, 22.224072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.465096, 21.583035, 22.310589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099936, 0.202992, -0.974067,
		-0.983932, 0.165734, -0.066410,
		0.147955, 0.965053, 0.216293,
		16.509481, 21.872551, 22.375477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.062292, 21.540352, 21.737530>,  <16.405914, 21.197014, 22.224072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.062292, 21.540352, 21.737530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.311344, 21.826328, 21.864773>,  <16.460775, 21.997913, 21.941118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.311344, 21.826328, 21.864773>,  <16.062292, 21.540352, 21.737530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.311344, 21.826328, 21.864773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258050, 0.196187, -0.946002,
		-0.738743, 0.671099, -0.062338,
		0.622631, 0.714939, 0.318109,
		16.498133, 22.040810, 21.960205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.866065, 22.093172, 21.321507>,  <16.062292, 21.540352, 21.737530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.866065, 22.093172, 21.321507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.228416, 22.169971, 21.472513>,  <16.445827, 22.216051, 21.563118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.228416, 22.169971, 21.472513>,  <15.866065, 22.093172, 21.321507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.228416, 22.169971, 21.472513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283098, 0.388482, -0.876891,
		-0.315022, 0.901231, 0.297562,
		0.905879, 0.192001, 0.377518,
		16.500179, 22.227571, 21.585768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.010281, 22.780678, 21.143019>,  <15.866065, 22.093172, 21.321507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.010281, 22.780678, 21.143019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.373642, 22.629860, 21.215284>,  <16.591660, 22.539370, 21.258644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.373642, 22.629860, 21.215284>,  <16.010281, 22.780678, 21.143019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.373642, 22.629860, 21.215284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316240, 0.336984, -0.886811,
		0.273484, 0.862717, 0.425353,
		0.908404, -0.377043, 0.180666,
		16.646164, 22.516747, 21.269484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.363430, 23.204433, 20.697809>,  <16.010281, 22.780678, 21.143019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.363430, 23.204433, 20.697809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.618313, 22.916676, 20.808397>,  <16.771242, 22.744020, 20.874750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.618313, 22.916676, 20.808397>,  <16.363430, 23.204433, 20.697809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.618313, 22.916676, 20.808397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485316, 0.095882, -0.869065,
		0.598693, 0.687951, 0.410231,
		0.637208, -0.719396, 0.276470,
		16.809475, 22.700857, 20.891338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.065060, 23.430363, 20.644800>,  <16.363430, 23.204433, 20.697809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.065060, 23.430363, 20.644800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.086525, 23.031265, 20.628647>,  <17.099403, 22.791807, 20.618956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.086525, 23.031265, 20.628647>,  <17.065060, 23.430363, 20.644800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.086525, 23.031265, 20.628647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456006, 0.060463, -0.887920,
		0.888357, 0.029234, 0.458221,
		0.053663, -0.997742, -0.040382,
		17.102623, 22.731943, 20.616531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.699835, 23.337717, 20.339508>,  <17.065060, 23.430363, 20.644800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.699835, 23.337717, 20.339508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.512081, 22.988106, 20.289305>,  <17.399429, 22.778339, 20.259184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.512081, 22.988106, 20.289305>,  <17.699835, 23.337717, 20.339508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.512081, 22.988106, 20.289305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315144, -0.033046, -0.948469,
		0.824842, -0.484747, 0.290956,
		-0.469382, -0.874030, -0.125507,
		17.371267, 22.725897, 20.251652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.308540, 22.968239, 20.559689>,  <17.699835, 23.337717, 20.339508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.308540, 22.968239, 20.559689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.694324, 23.025032, 20.470551>,  <18.925795, 23.059109, 20.417067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.694324, 23.025032, 20.470551>,  <18.308540, 22.968239, 20.559689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.694324, 23.025032, 20.470551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257522, -0.316186, 0.913077,
		0.059181, -0.938012, -0.341512,
		0.964458, 0.141983, -0.222847,
		18.983662, 23.067627, 20.403696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.731318, 22.363693, 20.761232>,  <18.308540, 22.968239, 20.559689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.731318, 22.363693, 20.761232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.981327, 22.675934, 20.760471>,  <19.131332, 22.863279, 20.760014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.981327, 22.675934, 20.760471>,  <18.731318, 22.363693, 20.761232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.981327, 22.675934, 20.760471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330177, -0.262160, 0.906783,
		0.707338, -0.567390, -0.421594,
		0.625025, 0.780603, -0.001903,
		19.168835, 22.910114, 20.759901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.412533, 22.107826, 20.982679>,  <18.731318, 22.363693, 20.761232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.412533, 22.107826, 20.982679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.434578, 22.501152, 21.052023>,  <19.447805, 22.737148, 21.093630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.434578, 22.501152, 21.052023>,  <19.412533, 22.107826, 20.982679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.434578, 22.501152, 21.052023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324108, -0.181840, 0.928379,
		0.944413, 0.005024, -0.328722,
		0.055111, 0.983315, 0.173360,
		19.451111, 22.796146, 21.104031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.002977, 22.219223, 21.394192>,  <19.412533, 22.107826, 20.982679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.002977, 22.219223, 21.394192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.790222, 22.554935, 21.439276>,  <19.662569, 22.756363, 21.466326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.790222, 22.554935, 21.439276>,  <20.002977, 22.219223, 21.394192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.790222, 22.554935, 21.439276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261253, 0.036030, 0.964598,
		0.805508, 0.542502, -0.238429,
		-0.531887, 0.839281, 0.112708,
		19.630655, 22.806721, 21.473089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.428362, 22.598433, 21.779079>,  <20.002977, 22.219223, 21.394192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.428362, 22.598433, 21.779079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.091812, 22.809521, 21.825731>,  <19.889883, 22.936172, 21.853724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.091812, 22.809521, 21.825731>,  <20.428362, 22.598433, 21.779079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.091812, 22.809521, 21.825731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259702, 0.205520, 0.943566,
		0.473967, 0.824181, -0.309969,
		-0.841374, 0.527719, 0.116632,
		19.839399, 22.967836, 21.860722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.555405, 23.131302, 22.276651>,  <20.428362, 22.598433, 21.779079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.555405, 23.131302, 22.276651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.156551, 23.103737, 22.289175>,  <19.917240, 23.087198, 22.296690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.156551, 23.103737, 22.289175>,  <20.555405, 23.131302, 22.276651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.156551, 23.103737, 22.289175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024454, 0.098193, 0.994867,
		-0.071633, 0.992778, -0.096227,
		-0.997131, -0.068913, 0.031311,
		19.857412, 23.083063, 22.298569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.269070, 23.698561, 22.770834>,  <20.555405, 23.131302, 22.276651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.269070, 23.698561, 22.770834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.995640, 23.406609, 22.770927>,  <19.831583, 23.231438, 22.770985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.995640, 23.406609, 22.770927>,  <20.269070, 23.698561, 22.770834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.995640, 23.406609, 22.770927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083736, 0.078743, 0.993372,
		-0.725063, 0.679022, -0.114944,
		-0.683573, -0.729882, 0.000236,
		19.790567, 23.187643, 22.770998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.779243, 23.956274, 23.174173>,  <20.269070, 23.698561, 22.770834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.779243, 23.956274, 23.174173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.679623, 23.568928, 23.167933>,  <19.619850, 23.336519, 23.164188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.679623, 23.568928, 23.167933>,  <19.779243, 23.956274, 23.174173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.679623, 23.568928, 23.167933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067871, 0.001381, 0.997693,
		-0.966109, 0.249535, -0.066068,
		-0.249050, -0.968365, -0.015602,
		19.604908, 23.278418, 23.163252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.148293, 23.874979, 23.499918>,  <19.779243, 23.956274, 23.174173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.148293, 23.874979, 23.499918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.337284, 23.522469, 23.504196>,  <19.450680, 23.310963, 23.506763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.337284, 23.522469, 23.504196>,  <19.148293, 23.874979, 23.499918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.337284, 23.522469, 23.504196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027250, -0.002477, 0.999626,
		-0.880920, -0.472594, -0.025185,
		0.472479, -0.881277, 0.010696,
		19.479029, 23.258085, 23.507404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.674000, 23.363220, 23.672205>,  <19.148293, 23.874979, 23.499918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.674000, 23.363220, 23.672205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.035686, 23.233807, 23.783714>,  <19.252699, 23.156158, 23.850620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.035686, 23.233807, 23.783714>,  <18.674000, 23.363220, 23.672205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.035686, 23.233807, 23.783714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328700, -0.110461, 0.937952,
		-0.272667, -0.939746, -0.206227,
		0.904217, -0.323535, 0.278775,
		19.306952, 23.136745, 23.867348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.489889, 22.967220, 24.183996>,  <18.674000, 23.363220, 23.672205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.489889, 22.967220, 24.183996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.884476, 23.011654, 24.232233>,  <19.121227, 23.038315, 24.261175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.884476, 23.011654, 24.232233>,  <18.489889, 22.967220, 24.183996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.884476, 23.011654, 24.232233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100675, -0.170156, 0.980261,
		0.129411, -0.979136, -0.156670,
		0.986467, 0.111084, 0.120594,
		19.180416, 23.044979, 24.268412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.539703, 22.586401, 24.719633>,  <18.489889, 22.967220, 24.183996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.539703, 22.586401, 24.719633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.871960, 22.808956, 24.728262>,  <19.071314, 22.942490, 24.733438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.871960, 22.808956, 24.728262>,  <18.539703, 22.586401, 24.719633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.871960, 22.808956, 24.728262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041088, -0.099884, 0.994150,
		0.555289, -0.824897, -0.105829,
		0.830642, 0.556389, 0.021571,
		19.121153, 22.975872, 24.734734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.965433, 22.243076, 25.234501>,  <18.539703, 22.586401, 24.719633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.965433, 22.243076, 25.234501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.116688, 22.609768, 25.182928>,  <19.207441, 22.829782, 25.151985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.116688, 22.609768, 25.182928>,  <18.965433, 22.243076, 25.234501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.116688, 22.609768, 25.182928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123956, 0.087878, 0.988389,
		0.917413, -0.389728, -0.080404,
		0.378137, 0.916728, -0.128930,
		19.230129, 22.884787, 25.144249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.732563, 22.301416, 25.491087>,  <18.965433, 22.243076, 25.234501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.732563, 22.301416, 25.491087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.566200, 22.665100, 25.498652>,  <19.466383, 22.883310, 25.503189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.566200, 22.665100, 25.498652>,  <19.732563, 22.301416, 25.491087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.566200, 22.665100, 25.498652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296012, 0.115687, 0.948153,
		0.859883, 0.399941, -0.317252,
		-0.415907, 0.909211, 0.018910,
		19.441427, 22.937862, 25.504324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.206606, 22.361460, 24.948887>,  <19.732563, 22.301416, 25.491087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.206606, 22.361460, 24.948887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.430302, 22.075089, 25.116076>,  <20.564518, 21.903265, 25.216389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.430302, 22.075089, 25.116076>,  <20.206606, 22.361460, 24.948887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.430302, 22.075089, 25.116076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381631, -0.225253, -0.896448,
		0.735942, 0.660838, 0.147251,
		0.559238, -0.715929, 0.417970,
		20.598072, 21.860310, 25.241467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.839170, 22.464254, 24.798716>,  <20.206606, 22.361460, 24.948887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.839170, 22.464254, 24.798716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.871727, 22.074585, 24.882965>,  <20.891260, 21.840784, 24.933516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.871727, 22.074585, 24.882965>,  <20.839170, 22.464254, 24.798716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.871727, 22.074585, 24.882965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504507, -0.141985, -0.851653,
		0.859563, 0.175579, 0.479921,
		0.081390, -0.974173, 0.210626,
		20.896145, 21.782333, 24.946154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.520182, 22.264582, 24.539356>,  <20.839170, 22.464254, 24.798716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.520182, 22.264582, 24.539356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.358265, 21.905731, 24.610132>,  <21.261114, 21.690420, 24.652597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.358265, 21.905731, 24.610132>,  <21.520182, 22.264582, 24.539356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.358265, 21.905731, 24.610132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473762, -0.371266, -0.798568,
		0.782107, -0.239429, 0.575311,
		-0.404793, -0.897126, 0.176938,
		21.236826, 21.636593, 24.663214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.987240, 21.818832, 24.405411>,  <21.520182, 22.264582, 24.539356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.987240, 21.818832, 24.405411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.652599, 21.600914, 24.382458>,  <21.451815, 21.470163, 24.368685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.652599, 21.600914, 24.382458>,  <21.987240, 21.818832, 24.405411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.652599, 21.600914, 24.382458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321449, -0.403384, -0.856710,
		0.443586, -0.735171, 0.512596,
		-0.836601, -0.544798, -0.057384,
		21.401619, 21.437475, 24.365242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.193205, 21.070292, 24.391640>,  <21.987240, 21.818832, 24.405411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.193205, 21.070292, 24.391640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.820015, 21.076294, 24.247789>,  <21.596102, 21.079895, 24.161478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.820015, 21.076294, 24.247789>,  <22.193205, 21.070292, 24.391640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.820015, 21.076294, 24.247789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309549, -0.476401, -0.822935,
		-0.183674, -0.879100, 0.439826,
		-0.932975, 0.015004, -0.359627,
		21.540123, 21.080795, 24.139902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.030502, 20.393959, 24.153624>,  <22.193205, 21.070292, 24.391640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.030502, 20.393959, 24.153624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.786499, 20.640305, 23.954184>,  <21.640097, 20.788111, 23.834520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.786499, 20.640305, 23.954184>,  <22.030502, 20.393959, 24.153624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.786499, 20.640305, 23.954184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166578, -0.515504, -0.840540,
		-0.774688, -0.595792, 0.211872,
		-0.610008, 0.615863, -0.498600,
		21.603497, 20.825064, 23.804604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.535793, 19.974482, 23.732023>,  <22.030502, 20.393959, 24.153624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.535793, 19.974482, 23.732023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.508522, 20.327278, 23.545502>,  <21.492159, 20.538956, 23.433588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.508522, 20.327278, 23.545502>,  <21.535793, 19.974482, 23.732023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.508522, 20.327278, 23.545502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100552, -0.458937, -0.882760,
		-0.992593, -0.107075, -0.057396,
		-0.068180, 0.881993, -0.466304,
		21.488068, 20.591877, 23.405611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.038521, 19.546780, 23.869991>,  <21.535793, 19.974482, 23.732023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.038521, 19.546780, 23.869991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.766319, 19.273869, 23.976885>,  <20.602999, 19.110123, 24.041021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.766319, 19.273869, 23.976885>,  <21.038521, 19.546780, 23.869991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.766319, 19.273869, 23.976885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156321, 0.221127, 0.962635,
		-0.715876, 0.696851, -0.043824,
		-0.680504, -0.682277, 0.267232,
		20.562168, 19.069185, 24.057055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.678770, 19.834841, 24.290756>,  <21.038521, 19.546780, 23.869991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.678770, 19.834841, 24.290756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.588703, 19.462528, 24.405956>,  <20.534664, 19.239140, 24.475077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.588703, 19.462528, 24.405956>,  <20.678770, 19.834841, 24.290756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.588703, 19.462528, 24.405956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062927, 0.281082, 0.957618,
		-0.972286, 0.233746, -0.004719,
		-0.225166, -0.930782, 0.288001,
		20.521152, 19.183294, 24.492357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.025349, 19.912018, 24.650635>,  <20.678770, 19.834841, 24.290756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.025349, 19.912018, 24.650635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.217072, 19.578320, 24.759665>,  <20.332106, 19.378101, 24.825083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.217072, 19.578320, 24.759665>,  <20.025349, 19.912018, 24.650635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.217072, 19.578320, 24.759665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234908, 0.177296, 0.955712,
		-0.845625, -0.522111, -0.110991,
		0.479309, -0.834246, 0.272574,
		20.360865, 19.328045, 24.841436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.531284, 19.607998, 25.052826>,  <20.025349, 19.912018, 24.650635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.531284, 19.607998, 25.052826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.864559, 19.406315, 25.143665>,  <20.064524, 19.285305, 25.198168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.864559, 19.406315, 25.143665>,  <19.531284, 19.607998, 25.052826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.864559, 19.406315, 25.143665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281751, -0.033694, 0.958896,
		-0.475832, -0.862924, -0.170135,
		0.833187, -0.504209, 0.227097,
		20.114515, 19.255053, 25.211794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.319929, 19.016169, 25.503714>,  <19.531284, 19.607998, 25.052826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.319929, 19.016169, 25.503714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.695496, 19.136543, 25.570492>,  <19.920835, 19.208769, 25.610558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.695496, 19.136543, 25.570492>,  <19.319929, 19.016169, 25.503714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.695496, 19.136543, 25.570492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225434, 0.171304, 0.959080,
		0.260029, -0.938131, 0.228683,
		0.938917, 0.300941, 0.166942,
		19.977171, 19.226824, 25.620575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.543741, 18.667517, 26.114153>,  <19.319929, 19.016169, 25.503714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.543741, 18.667517, 26.114153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.794033, 18.978817, 26.093019>,  <19.944208, 19.165598, 26.080339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.794033, 18.978817, 26.093019>,  <19.543741, 18.667517, 26.114153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.794033, 18.978817, 26.093019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222670, 0.243122, 0.944092,
		0.747585, -0.578980, 0.325421,
		0.625728, 0.778250, -0.052833,
		19.981752, 19.212292, 26.077169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.937063, 18.528931, 26.768276>,  <19.543741, 18.667517, 26.114153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.937063, 18.528931, 26.768276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.990646, 18.900661, 26.630636>,  <20.022797, 19.123699, 26.548052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.990646, 18.900661, 26.630636>,  <19.937063, 18.528931, 26.768276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.990646, 18.900661, 26.630636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264467, 0.368164, 0.891355,
		0.955046, -0.028402, 0.295095,
		0.133960, 0.929327, -0.344102,
		20.030834, 19.179461, 26.527405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.348839, 18.911341, 27.333454>,  <19.937063, 18.528931, 26.768276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.348839, 18.911341, 27.333454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.235207, 19.231831, 27.122803>,  <20.167027, 19.424124, 26.996412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.235207, 19.231831, 27.122803>,  <20.348839, 18.911341, 27.333454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.235207, 19.231831, 27.122803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046449, 0.560114, 0.827112,
		0.957675, 0.210506, -0.196333,
		-0.284081, 0.801224, -0.526630,
		20.149982, 19.472198, 26.964813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.860725, 19.421938, 27.527706>,  <20.348839, 18.911341, 27.333454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.860725, 19.421938, 27.527706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.513374, 19.565315, 27.390631>,  <20.304964, 19.651340, 27.308386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.513374, 19.565315, 27.390631>,  <20.860725, 19.421938, 27.527706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.513374, 19.565315, 27.390631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049029, 0.625601, 0.778601,
		0.493470, 0.692923, -0.525685,
		-0.868380, 0.358442, -0.342689,
		20.252861, 19.672848, 27.287825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<21.070885, 16.960869, 11.605227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.692425, 16.991177, 11.479332>,  <20.465349, 17.009361, 11.403794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.692425, 16.991177, 11.479332>,  <21.070885, 16.960869, 11.605227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.692425, 16.991177, 11.479332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314558, 0.014619, 0.949126,
		0.076516, 0.997018, 0.010002,
		-0.946149, 0.075770, -0.314738,
		20.408581, 17.013908, 11.384911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.703966, 17.574497, 11.856020>,  <21.070885, 16.960869, 11.605227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.703966, 17.574497, 11.856020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.374916, 17.353321, 11.803036>,  <20.177486, 17.220615, 11.771245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.374916, 17.353321, 11.803036>,  <20.703966, 17.574497, 11.856020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.374916, 17.353321, 11.803036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166706, 0.011826, 0.985936,
		-0.543597, 0.833137, -0.101907,
		-0.822625, -0.552940, -0.132460,
		20.128128, 17.187439, 11.763298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.118021, 17.983255, 12.171402>,  <20.703966, 17.574497, 11.856020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.118021, 17.983255, 12.171402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.041496, 17.591095, 12.152578>,  <19.995581, 17.355799, 12.141284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.041496, 17.591095, 12.152578>,  <20.118021, 17.983255, 12.171402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.041496, 17.591095, 12.152578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192059, -0.009626, 0.981336,
		-0.962555, 0.196779, -0.186453,
		-0.191312, -0.980401, -0.047059,
		19.984102, 17.296974, 12.138460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.485291, 17.866592, 12.507689>,  <20.118021, 17.983255, 12.171402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.485291, 17.866592, 12.507689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.688770, 17.522217, 12.506706>,  <19.810860, 17.315592, 12.506117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.688770, 17.522217, 12.506706>,  <19.485291, 17.866592, 12.507689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.688770, 17.522217, 12.506706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086991, -0.054237, 0.994732,
		-0.856537, -0.505808, -0.102484,
		0.508702, -0.860940, -0.002455,
		19.841381, 17.263935, 12.505970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.110685, 17.370020, 12.907831>,  <19.485291, 17.866592, 12.507689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.110685, 17.370020, 12.907831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.474449, 17.205994, 12.880068>,  <19.692707, 17.107578, 12.863410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.474449, 17.205994, 12.880068>,  <19.110685, 17.370020, 12.907831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.474449, 17.205994, 12.880068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008991, -0.147462, 0.989027,
		-0.415803, -0.900055, -0.130416,
		0.909410, -0.410068, -0.069408,
		19.747272, 17.082973, 12.859245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.118965, 16.773575, 13.340735>,  <19.110685, 17.370020, 12.907831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.118965, 16.773575, 13.340735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.511646, 16.845081, 13.314503>,  <19.747255, 16.887985, 13.298763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.511646, 16.845081, 13.314503>,  <19.118965, 16.773575, 13.340735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.511646, 16.845081, 13.314503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080778, -0.079095, 0.993589,
		0.172435, -0.980707, -0.092088,
		0.981703, 0.178768, -0.065581,
		19.806158, 16.898712, 13.294828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.382792, 16.268961, 13.791648>,  <19.118965, 16.773575, 13.340735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.382792, 16.268961, 13.791648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.697208, 16.509853, 13.735847>,  <19.885859, 16.654388, 13.702367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.697208, 16.509853, 13.735847>,  <19.382792, 16.268961, 13.791648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.697208, 16.509853, 13.735847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346011, -0.241618, 0.906586,
		0.512266, -0.760882, -0.398299,
		0.786041, 0.602229, -0.139501,
		19.933022, 16.690521, 13.693997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.035721, 15.896462, 13.960028>,  <19.382792, 16.268961, 13.791648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.035721, 15.896462, 13.960028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.074551, 16.291004, 14.013216>,  <20.097849, 16.527729, 14.045129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.074551, 16.291004, 14.013216>,  <20.035721, 15.896462, 13.960028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.074551, 16.291004, 14.013216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322546, -0.157569, 0.933347,
		0.941563, -0.047715, -0.333441,
		0.097075, 0.986354, 0.132971,
		20.103674, 16.586910, 14.053107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.325686, 15.946110, 14.594355>,  <20.035721, 15.896462, 13.960028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.325686, 15.946110, 14.594355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.281231, 16.339252, 14.535513>,  <20.254559, 16.575138, 14.500208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.281231, 16.339252, 14.535513>,  <20.325686, 15.946110, 14.594355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.281231, 16.339252, 14.535513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214500, 0.168256, 0.962123,
		0.970381, 0.075373, -0.229522,
		-0.111137, 0.982857, -0.147104,
		20.247890, 16.634109, 14.491382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.847816, 16.238211, 14.979357>,  <20.325686, 15.946110, 14.594355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.847816, 16.238211, 14.979357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.593567, 16.543709, 14.934324>,  <20.441017, 16.727007, 14.907305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.593567, 16.543709, 14.934324>,  <20.847816, 16.238211, 14.979357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.593567, 16.543709, 14.934324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133247, 0.252178, 0.958463,
		0.760412, 0.594221, -0.262057,
		-0.635624, 0.763746, -0.112581,
		20.402880, 16.772833, 14.900550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.161301, 16.761187, 15.247637>,  <20.847816, 16.238211, 14.979357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.161301, 16.761187, 15.247637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.772610, 16.855179, 15.238400>,  <20.539396, 16.911573, 15.232857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.772610, 16.855179, 15.238400>,  <21.161301, 16.761187, 15.247637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.772610, 16.855179, 15.238400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073303, 0.393207, 0.916523,
		0.224446, 0.888916, -0.399314,
		-0.971726, 0.234981, -0.023093,
		20.481092, 16.925673, 15.231472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.144835, 17.443762, 15.447654>,  <21.161301, 16.761187, 15.247637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.144835, 17.443762, 15.447654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.782017, 17.288933, 15.513920>,  <20.564325, 17.196035, 15.553679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.782017, 17.288933, 15.513920>,  <21.144835, 17.443762, 15.447654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.782017, 17.288933, 15.513920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091015, 0.203910, 0.974750,
		-0.411079, 0.899220, -0.149726,
		-0.907045, -0.387072, 0.165665,
		20.509903, 17.172812, 15.563620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.040373, 18.192686, 15.264984>,  <21.144835, 17.443762, 15.447654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.040373, 18.192686, 15.264984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.303539, 18.468060, 15.142868>,  <21.461439, 18.633284, 15.069598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.303539, 18.468060, 15.142868>,  <21.040373, 18.192686, 15.264984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.303539, 18.468060, 15.142868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309415, -0.122483, -0.943006,
		-0.686591, 0.714881, 0.132429,
		0.657917, 0.688435, -0.305291,
		21.500914, 18.674589, 15.051281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.682440, 18.652817, 14.728999>,  <21.040373, 18.192686, 15.264984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.682440, 18.652817, 14.728999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.077026, 18.647354, 14.663645>,  <21.313778, 18.644075, 14.624432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.077026, 18.647354, 14.663645>,  <20.682440, 18.652817, 14.728999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.077026, 18.647354, 14.663645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163846, -0.118649, -0.979325,
		-0.006009, 0.992842, -0.119282,
		0.986468, -0.013659, -0.163387,
		21.372967, 18.643257, 14.614629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.789562, 19.132006, 14.197402>,  <20.682440, 18.652817, 14.728999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.789562, 19.132006, 14.197402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.142597, 18.944645, 14.181236>,  <21.354420, 18.832228, 14.171536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.142597, 18.944645, 14.181236>,  <20.789562, 19.132006, 14.197402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.142597, 18.944645, 14.181236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001151, 0.088114, -0.996110,
		0.470142, 0.879110, 0.078308,
		0.882590, -0.468404, -0.040414,
		21.407373, 18.804123, 14.169112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.185509, 19.499914, 13.810306>,  <20.789562, 19.132006, 14.197402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.185509, 19.499914, 13.810306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.347759, 19.134304, 13.808353>,  <21.445110, 18.914938, 13.807182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.347759, 19.134304, 13.808353>,  <21.185509, 19.499914, 13.810306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.347759, 19.134304, 13.808353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136760, 0.065970, -0.988405,
		0.903750, 0.400256, 0.151761,
		0.405627, -0.914026, -0.004881,
		21.469448, 18.860096, 13.806890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.719925, 19.564512, 13.385213>,  <21.185509, 19.499914, 13.810306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.719925, 19.564512, 13.385213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.688091, 19.165791, 13.382395>,  <21.668991, 18.926558, 13.380704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.688091, 19.165791, 13.382395>,  <21.719925, 19.564512, 13.385213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.688091, 19.165791, 13.382395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191909, -0.008386, -0.981377,
		0.978180, -0.079456, 0.191963,
		-0.079586, -0.996803, -0.007045,
		21.664215, 18.866749, 13.380281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.397602, 19.278397, 13.000976>,  <21.719925, 19.564512, 13.385213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.397602, 19.278397, 13.000976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.111103, 18.999401, 13.009941>,  <21.939203, 18.832005, 13.015321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.111103, 18.999401, 13.009941>,  <22.397602, 19.278397, 13.000976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.111103, 18.999401, 13.009941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069658, -0.103416, -0.992196,
		0.694363, -0.709094, 0.122657,
		-0.716245, -0.697489, 0.022414,
		21.896229, 18.790155, 13.016665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.700336, 18.675812, 12.606560>,  <22.397602, 19.278397, 13.000976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.700336, 18.675812, 12.606560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.301414, 18.648430, 12.617106>,  <22.062061, 18.632000, 12.623434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.301414, 18.648430, 12.617106>,  <22.700336, 18.675812, 12.606560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.301414, 18.648430, 12.617106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022213, -0.060732, -0.997907,
		0.069916, -0.995804, 0.059048,
		-0.997306, -0.068458, 0.026366,
		22.002222, 18.627893, 12.625016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.451256, 18.123407, 12.161565>,  <22.700336, 18.675812, 12.606560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.451256, 18.123407, 12.161565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.123505, 18.349426, 12.200217>,  <21.926853, 18.485039, 12.223409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.123505, 18.349426, 12.200217>,  <22.451256, 18.123407, 12.161565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.123505, 18.349426, 12.200217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207991, -0.135959, -0.968636,
		-0.534190, -0.813778, 0.228927,
		-0.819378, 0.565050, 0.096630,
		21.877691, 18.518942, 12.229206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.929037, 17.779716, 11.700351>,  <22.451256, 18.123407, 12.161565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.929037, 17.779716, 11.700351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.805771, 18.156750, 11.751848>,  <21.731812, 18.382969, 11.782747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.805771, 18.156750, 11.751848>,  <21.929037, 17.779716, 11.700351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.805771, 18.156750, 11.751848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203268, 0.066967, -0.976830,
		-0.929364, -0.327193, 0.170960,
		-0.308164, 0.942581, 0.128744,
		21.713322, 18.439524, 11.790471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.401619, 17.772093, 11.277394>,  <21.929037, 17.779716, 11.700351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.401619, 17.772093, 11.277394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.418678, 18.167103, 11.338023>,  <21.428913, 18.404108, 11.374401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.418678, 18.167103, 11.338023>,  <21.401619, 17.772093, 11.277394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.418678, 18.167103, 11.338023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355655, 0.156779, -0.921374,
		-0.933644, -0.014614, 0.357904,
		0.042646, 0.987526, 0.151573,
		21.431473, 18.463360, 11.383495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.775715, 17.998812, 10.968039>,  <21.401619, 17.772093, 11.277394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.775715, 17.998812, 10.968039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.008495, 18.324078, 10.972026>,  <21.148163, 18.519238, 10.974419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.008495, 18.324078, 10.972026>,  <20.775715, 17.998812, 10.968039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.008495, 18.324078, 10.972026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198367, 0.153830, -0.967981,
		-0.788660, 0.561339, 0.250826,
		0.581950, 0.813163, 0.009968,
		21.183081, 18.568027, 10.975017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.422403, 18.631588, 10.512881>,  <20.775715, 17.998812, 10.968039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.422403, 18.631588, 10.512881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.813179, 18.708622, 10.549753>,  <21.047646, 18.754843, 10.571877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.813179, 18.708622, 10.549753>,  <20.422403, 18.631588, 10.512881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.813179, 18.708622, 10.549753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053756, 0.195962, -0.979137,
		-0.206631, 0.961514, 0.181090,
		0.976941, 0.192585, 0.092179,
		21.106262, 18.766397, 10.577407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.563400, 19.202646, 10.058966>,  <20.422403, 18.631588, 10.512881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.563400, 19.202646, 10.058966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.934578, 19.070400, 10.127795>,  <21.157286, 18.991053, 10.169093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.934578, 19.070400, 10.127795>,  <20.563400, 19.202646, 10.058966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.934578, 19.070400, 10.127795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247442, 0.201218, -0.947778,
		0.278726, 0.922065, 0.268528,
		0.927946, -0.330616, 0.172073,
		21.212961, 18.971216, 10.179417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.942198, 19.708267, 9.850739>,  <20.563400, 19.202646, 10.058966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.942198, 19.708267, 9.850739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.172634, 19.382801, 9.819588>,  <21.310896, 19.187521, 9.800898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.172634, 19.382801, 9.819588>,  <20.942198, 19.708267, 9.850739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.172634, 19.382801, 9.819588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137711, 0.190530, -0.971974,
		0.805702, 0.549221, 0.221814,
		0.576091, -0.813668, -0.077876,
		21.345461, 19.138700, 9.796225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.532572, 20.115206, 9.454997>,  <20.942198, 19.708267, 9.850739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.532572, 20.115206, 9.454997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.349075, 19.795631, 9.610564>,  <20.238977, 19.603888, 9.703904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.349075, 19.795631, 9.610564>,  <20.532572, 20.115206, 9.454997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.349075, 19.795631, 9.610564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284558, -0.546729, -0.787473,
		0.841774, -0.250577, 0.478151,
		-0.458741, -0.798936, 0.388918,
		20.211452, 19.555950, 9.727240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.528944, 20.161684, 10.206548>,  <20.532572, 20.115206, 9.454997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.528944, 20.161684, 10.206548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.275761, 20.437740, 10.066222>,  <20.123852, 20.603374, 9.982027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.275761, 20.437740, 10.066222>,  <20.528944, 20.161684, 10.206548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.275761, 20.437740, 10.066222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166317, 0.563773, 0.809011,
		0.756111, 0.453723, -0.471626,
		-0.632957, 0.690142, -0.350813,
		20.085873, 20.644783, 9.960979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.881721, 20.815182, 10.257318>,  <20.528944, 20.161684, 10.206548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.881721, 20.815182, 10.257318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.485744, 20.871738, 10.255626>,  <20.248158, 20.905672, 10.254610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.485744, 20.871738, 10.255626>,  <20.881721, 20.815182, 10.257318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.485744, 20.871738, 10.255626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058157, 0.434093, 0.898989,
		0.128945, 0.889703, -0.437951,
		-0.989945, 0.141390, -0.004232,
		20.188761, 20.914156, 10.254356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.734276, 21.491266, 10.495391>,  <20.881721, 20.815182, 10.257318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.734276, 21.491266, 10.495391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.378731, 21.313194, 10.538729>,  <20.165403, 21.206350, 10.564732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.378731, 21.313194, 10.538729>,  <20.734276, 21.491266, 10.495391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.378731, 21.313194, 10.538729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098394, 0.416425, 0.903830,
		-0.447485, 0.792720, -0.413947,
		-0.888862, -0.445181, 0.108345,
		20.112072, 21.179640, 10.571233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.151344, 22.032198, 10.540858>,  <20.734276, 21.491266, 10.495391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.151344, 22.032198, 10.540858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.031902, 21.691780, 10.713629>,  <19.960238, 21.487530, 10.817291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.031902, 21.691780, 10.713629>,  <20.151344, 22.032198, 10.540858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.031902, 21.691780, 10.713629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237551, 0.504608, 0.830025,
		-0.924340, 0.145244, -0.352844,
		-0.298604, -0.851044, 0.431926,
		19.942322, 21.436466, 10.843206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.598871, 22.215519, 11.038928>,  <20.151344, 22.032198, 10.540858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.598871, 22.215519, 11.038928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.656769, 21.835842, 11.150705>,  <19.691507, 21.608036, 11.217772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.656769, 21.835842, 11.150705>,  <19.598871, 22.215519, 11.038928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.656769, 21.835842, 11.150705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233505, 0.241673, 0.941844,
		-0.961522, -0.201577, -0.186660,
		0.144743, -0.949190, 0.279443,
		19.700191, 21.551085, 11.234538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.908144, 21.903175, 11.405120>,  <19.598871, 22.215519, 11.038928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.908144, 21.903175, 11.405120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.257008, 21.749977, 11.526875>,  <19.466326, 21.658058, 11.599927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.257008, 21.749977, 11.526875>,  <18.908144, 21.903175, 11.405120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.257008, 21.749977, 11.526875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239116, 0.209077, 0.948214,
		-0.426804, -0.899778, 0.090768,
		0.872160, -0.382997, 0.304386,
		19.518656, 21.635078, 11.618191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.729870, 21.708950, 12.036568>,  <18.908144, 21.903175, 11.405120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.729870, 21.708950, 12.036568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.129791, 21.715240, 12.041434>,  <19.369743, 21.719015, 12.044354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.129791, 21.715240, 12.041434>,  <18.729870, 21.708950, 12.036568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.129791, 21.715240, 12.041434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017043, 0.362735, 0.931737,
		0.010239, -0.931760, 0.362931,
		0.999802, 0.015726, 0.012166,
		19.429731, 21.719957, 12.045084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842543, 21.531204, 12.662200>,  <18.729870, 21.708950, 12.036568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.842543, 21.531204, 12.662200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.207146, 21.659599, 12.559341>,  <19.425907, 21.736637, 12.497626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.207146, 21.659599, 12.559341>,  <18.842543, 21.531204, 12.662200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.207146, 21.659599, 12.559341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149182, 0.324613, 0.934008,
		0.383281, -0.889714, 0.248000,
		0.911504, 0.320990, -0.257148,
		19.480597, 21.755896, 12.482198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.441122, 21.214157, 13.117905>,  <18.842543, 21.531204, 12.662200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.441122, 21.214157, 13.117905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.599319, 21.551647, 12.972736>,  <19.694237, 21.754141, 12.885635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.599319, 21.551647, 12.972736>,  <19.441122, 21.214157, 13.117905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.599319, 21.551647, 12.972736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207876, 0.302655, 0.930154,
		0.894636, -0.443310, -0.055693,
		0.395491, 0.843727, -0.362920,
		19.717966, 21.804766, 12.863860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.150854, 21.165649, 13.334582>,  <19.441122, 21.214157, 13.117905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.150854, 21.165649, 13.334582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.031563, 21.540352, 13.261318>,  <19.959988, 21.765173, 13.217360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.031563, 21.540352, 13.261318>,  <20.150854, 21.165649, 13.334582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.031563, 21.540352, 13.261318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210012, 0.251589, 0.944774,
		0.931103, 0.243294, -0.271762,
		-0.298230, 0.936755, -0.183160,
		19.942093, 21.821379, 13.206370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.627171, 21.532801, 13.706364>,  <20.150854, 21.165649, 13.334582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.627171, 21.532801, 13.706364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.352509, 21.807945, 13.612255>,  <20.187712, 21.973032, 13.555790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.352509, 21.807945, 13.612255>,  <20.627171, 21.532801, 13.706364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.352509, 21.807945, 13.612255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071285, 0.385774, 0.919835,
		0.723481, 0.614837, -0.313928,
		-0.686654, 0.687862, -0.235272,
		20.146513, 22.014303, 13.541674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.971291, 22.286011, 13.927774>,  <20.627171, 21.532801, 13.706364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.971291, 22.286011, 13.927774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.573399, 22.312927, 13.896826>,  <20.334663, 22.329077, 13.878257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.573399, 22.312927, 13.896826>,  <20.971291, 22.286011, 13.927774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.573399, 22.312927, 13.896826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033540, 0.499521, 0.865653,
		0.096900, 0.863685, -0.494631,
		-0.994729, 0.067292, -0.077371,
		20.274981, 22.333115, 13.873614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.788282, 23.022280, 14.057626>,  <20.971291, 22.286011, 13.927774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.788282, 23.022280, 14.057626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.473282, 22.786850, 14.130758>,  <20.284283, 22.645592, 14.174638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.473282, 22.786850, 14.130758>,  <20.788282, 23.022280, 14.057626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.473282, 22.786850, 14.130758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232312, 0.558245, 0.796489,
		-0.570855, 0.584760, -0.576350,
		-0.787499, -0.588573, 0.182830,
		20.237032, 22.610277, 14.185607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.320608, 23.483387, 14.251238>,  <20.788282, 23.022280, 14.057626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.320608, 23.483387, 14.251238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.183968, 23.132946, 14.387329>,  <20.101984, 22.922682, 14.468984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.183968, 23.132946, 14.387329>,  <20.320608, 23.483387, 14.251238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.183968, 23.132946, 14.387329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419842, 0.466124, 0.778756,
		-0.840858, 0.123181, -0.527052,
		-0.341599, -0.876103, 0.340227,
		20.081488, 22.870115, 14.489397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.707745, 23.692371, 14.618113>,  <20.320608, 23.483387, 14.251238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.707745, 23.692371, 14.618113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.780537, 23.323097, 14.753529>,  <19.824213, 23.101532, 14.834779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.780537, 23.323097, 14.753529>,  <19.707745, 23.692371, 14.618113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.780537, 23.323097, 14.753529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452066, 0.227197, 0.862565,
		-0.873223, -0.310014, -0.375995,
		0.181982, -0.923186, 0.338541,
		19.835131, 23.046141, 14.855091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.074966, 23.540356, 14.959251>,  <19.707745, 23.692371, 14.618113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.074966, 23.540356, 14.959251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.344223, 23.283150, 15.105352>,  <19.505777, 23.128826, 15.193013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.344223, 23.283150, 15.105352>,  <19.074966, 23.540356, 14.959251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.344223, 23.283150, 15.105352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414505, 0.080957, 0.906439,
		-0.612424, -0.761562, -0.212037,
		0.673144, -0.643015, 0.365252,
		19.546165, 23.090244, 15.214928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.802004, 22.991365, 15.451805>,  <19.074966, 23.540356, 14.959251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.802004, 22.991365, 15.451805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.183247, 23.006912, 15.571854>,  <19.411993, 23.016241, 15.643883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.183247, 23.006912, 15.571854>,  <18.802004, 22.991365, 15.451805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.183247, 23.006912, 15.571854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302456, 0.088916, 0.949007,
		0.010196, -0.995281, 0.096501,
		0.953109, 0.038863, 0.300122,
		19.469179, 23.018572, 15.661890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.836708, 22.466215, 16.106308>,  <18.802004, 22.991365, 15.451805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.836708, 22.466215, 16.106308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.181171, 22.668682, 16.125071>,  <19.387850, 22.790161, 16.136328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.181171, 22.668682, 16.125071>,  <18.836708, 22.466215, 16.106308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.181171, 22.668682, 16.125071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008639, -0.077690, 0.996940,
		0.508261, -0.858930, -0.062531,
		0.861160, 0.506166, 0.046907,
		19.439520, 22.820532, 16.139143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.162458, 22.172905, 16.735525>,  <18.836708, 22.466215, 16.106308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.162458, 22.172905, 16.735525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.370644, 22.511745, 16.692558>,  <19.495556, 22.715050, 16.666779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.370644, 22.511745, 16.692558>,  <19.162458, 22.172905, 16.735525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.370644, 22.511745, 16.692558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041904, 0.100309, 0.994073,
		0.852854, -0.521882, 0.016710,
		0.520465, 0.847100, -0.107418,
		19.526783, 22.765875, 16.660334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.792633, 22.111622, 17.162998>,  <19.162458, 22.172905, 16.735525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.792633, 22.111622, 17.162998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.691574, 22.493568, 17.100521>,  <19.630938, 22.722736, 17.063036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.691574, 22.493568, 17.100521>,  <19.792633, 22.111622, 17.162998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.691574, 22.493568, 17.100521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048208, 0.173650, 0.983627,
		0.966356, 0.240983, -0.089905,
		-0.252650, 0.954868, -0.156191,
		19.615780, 22.780029, 17.053663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.240208, 22.445595, 17.600792>,  <19.792633, 22.111622, 17.162998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.240208, 22.445595, 17.600792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.936920, 22.701385, 17.549919>,  <19.754948, 22.854860, 17.519396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.936920, 22.701385, 17.549919>,  <20.240208, 22.445595, 17.600792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.936920, 22.701385, 17.549919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077326, 0.281882, 0.956328,
		0.647398, 0.715272, -0.263177,
		-0.758219, 0.639475, -0.127180,
		19.709454, 22.893229, 17.511765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.465084, 23.061239, 17.944691>,  <20.240208, 22.445595, 17.600792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.465084, 23.061239, 17.944691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.070026, 23.107803, 17.902729>,  <19.832991, 23.135742, 17.877552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.070026, 23.107803, 17.902729>,  <20.465084, 23.061239, 17.944691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.070026, 23.107803, 17.902729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082291, 0.184429, 0.979395,
		0.133362, 0.975927, -0.172571,
		-0.987645, 0.116413, -0.104906,
		19.773733, 23.142727, 17.871258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.197044, 23.704617, 18.258766>,  <20.465084, 23.061239, 17.944691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.197044, 23.704617, 18.258766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.873611, 23.469612, 18.245956>,  <19.679552, 23.328609, 18.238272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.873611, 23.469612, 18.245956>,  <20.197044, 23.704617, 18.258766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.873611, 23.469612, 18.245956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243492, 0.284575, 0.927215,
		-0.535635, 0.757528, -0.373157,
		-0.808583, -0.587510, -0.032024,
		19.631037, 23.293360, 18.236349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.717646, 24.039856, 18.576115>,  <20.197044, 23.704617, 18.258766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.717646, 24.039856, 18.576115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.531239, 23.686836, 18.601213>,  <19.419394, 23.475025, 18.616272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.531239, 23.686836, 18.601213>,  <19.717646, 24.039856, 18.576115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.531239, 23.686836, 18.601213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145818, 0.146559, 0.978395,
		-0.872677, 0.446799, -0.196990,
		-0.466017, -0.882548, 0.062747,
		19.391434, 23.422071, 18.620037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.255424, 24.130625, 19.098169>,  <19.717646, 24.039856, 18.576115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.255424, 24.130625, 19.098169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.244644, 23.731003, 19.084549>,  <19.238176, 23.491230, 19.076376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.244644, 23.731003, 19.084549>,  <19.255424, 24.130625, 19.098169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.244644, 23.731003, 19.084549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089621, -0.031511, 0.995477,
		-0.995611, 0.029880, -0.088687,
		-0.026950, -0.999057, -0.034051,
		19.236559, 23.431286, 19.074333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.686340, 24.025482, 19.518291>,  <19.255424, 24.130625, 19.098169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.686340, 24.025482, 19.518291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.912437, 23.695557, 19.512934>,  <19.048096, 23.497601, 19.509720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.912437, 23.695557, 19.512934>,  <18.686340, 24.025482, 19.518291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.912437, 23.695557, 19.512934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256314, -0.191036, 0.947527,
		-0.784093, -0.532152, -0.319394,
		0.565244, -0.824815, -0.013392,
		19.082010, 23.448112, 19.508917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.317892, 23.559734, 19.903694>,  <18.686340, 24.025482, 19.518291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.317892, 23.559734, 19.903694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.684929, 23.400749, 19.906412>,  <18.905151, 23.305359, 19.908043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.684929, 23.400749, 19.906412>,  <18.317892, 23.559734, 19.903694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.684929, 23.400749, 19.906412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056396, -0.113236, 0.991966,
		-0.393500, -0.910605, -0.126320,
		0.917593, -0.397463, 0.006796,
		18.960207, 23.281511, 19.908451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.018032, 22.884232, 19.763063>,  <18.317892, 23.559734, 19.903694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.018032, 22.884232, 19.763063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.673008, 22.681877, 19.766447>,  <17.465994, 22.560465, 19.768476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.673008, 22.681877, 19.766447>,  <18.018032, 22.884232, 19.763063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.673008, 22.681877, 19.766447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100263, -0.187291, -0.977174,
		0.495921, -0.842023, 0.212271,
		-0.862560, -0.505884, 0.008458,
		17.414240, 22.530111, 19.768984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.137489, 22.256334, 19.442083>,  <18.018032, 22.884232, 19.763063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.137489, 22.256334, 19.442083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.742905, 22.321636, 19.435844>,  <17.506155, 22.360817, 19.432100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.742905, 22.321636, 19.435844>,  <18.137489, 22.256334, 19.442083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.742905, 22.321636, 19.435844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021557, -0.223371, -0.974495,
		-0.162573, -0.960965, 0.223866,
		-0.986461, 0.163252, -0.015598,
		17.446966, 22.370613, 19.431164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.860771, 21.663496, 19.111235>,  <18.137489, 22.256334, 19.442083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.860771, 21.663496, 19.111235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.574520, 21.940792, 19.077059>,  <17.402769, 22.107170, 19.056553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.574520, 21.940792, 19.077059>,  <17.860771, 21.663496, 19.111235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.574520, 21.940792, 19.077059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166619, -0.288219, -0.942957,
		-0.678320, -0.660568, 0.321764,
		-0.715626, 0.693238, -0.085441,
		17.359833, 22.148764, 19.051426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.271702, 21.357313, 18.807409>,  <17.860771, 21.663496, 19.111235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.271702, 21.357313, 18.807409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.197876, 21.745480, 18.745150>,  <17.153580, 21.978380, 18.707794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.197876, 21.745480, 18.745150>,  <17.271702, 21.357313, 18.807409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.197876, 21.745480, 18.745150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297721, -0.206135, -0.932132,
		-0.936642, -0.125699, 0.326959,
		-0.184566, 0.970416, -0.155652,
		17.142506, 22.036604, 18.698454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.434362, 21.476625, 18.591646>,  <17.271702, 21.357313, 18.807409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.434362, 21.476625, 18.591646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.636463, 21.793777, 18.455376>,  <16.757723, 21.984070, 18.373613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.636463, 21.793777, 18.455376>,  <16.434362, 21.476625, 18.591646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.636463, 21.793777, 18.455376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390412, -0.142050, -0.909615,
		-0.769611, 0.592588, 0.237779,
		0.505251, 0.792882, -0.340676,
		16.788038, 22.031643, 18.353172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
