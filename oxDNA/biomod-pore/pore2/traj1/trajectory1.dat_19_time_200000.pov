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
	<22.773369, 17.420694, -2.038335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.991180, 17.098198, -2.130826>,  <23.121868, 16.904701, -2.186321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.991180, 17.098198, -2.130826>,  <22.773369, 17.420694, -2.038335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.991180, 17.098198, -2.130826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585238, 0.167741, 0.793322,
		-0.600821, -0.567311, 0.563181,
		0.544528, -0.806239, -0.231230,
		23.154539, 16.856327, -2.200195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.084326, 17.660913, -2.661426>,  <22.773369, 17.420694, -2.038335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.084326, 17.660913, -2.661426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.891399, 18.001331, -2.578385>,  <22.775644, 18.205582, -2.528561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.891399, 18.001331, -2.578385>,  <23.084326, 17.660913, -2.661426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.891399, 18.001331, -2.578385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202084, -0.122500, 0.971677,
		0.852369, 0.510608, -0.112898,
		-0.482316, 0.851042, 0.207601,
		22.746704, 18.256643, -2.516105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.589500, 18.138357, -2.400473>,  <23.084326, 17.660913, -2.661426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.589500, 18.138357, -2.400473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.220284, 18.199715, -2.259357>,  <22.998753, 18.236528, -2.174688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.220284, 18.199715, -2.259357>,  <23.589500, 18.138357, -2.400473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.220284, 18.199715, -2.259357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339840, -0.104605, 0.934648,
		0.180273, 0.982613, 0.044426,
		-0.923044, 0.153394, 0.352789,
		22.943371, 18.245733, -2.153521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.901037, 18.560860, -1.699719>,  <23.589500, 18.138357, -2.400473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.901037, 18.560860, -1.699719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245369, 18.763599, -1.681495>,  <24.451969, 18.885242, -1.670561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245369, 18.763599, -1.681495>,  <23.901037, 18.560860, -1.699719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.245369, 18.763599, -1.681495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365575, 0.678197, -0.637498,
		-0.354013, 0.532122, 0.769104,
		0.860831, 0.506848, 0.045560,
		24.503618, 18.915653, -1.667827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.916082, 18.023014, -1.168013>,  <23.901037, 18.560860, -1.699719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.916082, 18.023014, -1.168013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.549843, 18.180908, -1.137379>,  <23.330099, 18.275644, -1.118999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.549843, 18.180908, -1.137379>,  <23.916082, 18.023014, -1.168013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.549843, 18.180908, -1.137379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063057, -0.329062, 0.942201,
		0.397120, 0.857848, 0.326179,
		-0.915598, 0.394735, 0.076584,
		23.275164, 18.299328, -1.114404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.857758, 18.567532, -0.555095>,  <23.916082, 18.023014, -1.168013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.857758, 18.567532, -0.555095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.506058, 18.396812, -0.639729>,  <23.295038, 18.294382, -0.690510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.506058, 18.396812, -0.639729>,  <23.857758, 18.567532, -0.555095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.506058, 18.396812, -0.639729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014493, -0.419995, 0.907411,
		-0.476145, 0.800905, 0.363094,
		-0.879248, -0.426796, -0.211586,
		23.242283, 18.268774, -0.703205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.366060, 18.683434, -0.090831>,  <23.857758, 18.567532, -0.555095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.366060, 18.683434, -0.090831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.251614, 18.331257, -0.242072>,  <23.182945, 18.119951, -0.332817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.251614, 18.331257, -0.242072>,  <23.366060, 18.683434, -0.090831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.251614, 18.331257, -0.242072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058353, -0.409878, 0.910272,
		-0.956417, 0.238380, 0.168649,
		-0.286116, -0.880440, -0.378104,
		23.165779, 18.067125, -0.355504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.078686, 18.441921, 0.413341>,  <23.366060, 18.683434, -0.090831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.078686, 18.441921, 0.413341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.150146, 18.112701, 0.197684>,  <23.193024, 17.915169, 0.068290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.150146, 18.112701, 0.197684>,  <23.078686, 18.441921, 0.413341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.150146, 18.112701, 0.197684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042426, -0.541003, 0.839950,
		-0.982997, -0.172931, -0.061732,
		0.178651, -0.823049, -0.539141,
		23.203741, 17.865788, 0.035942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.935137, 18.077995, 1.071528>,  <23.078686, 18.441921, 0.413341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.935137, 18.077995, 1.071528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.627640, 17.869316, 0.923549>,  <22.443142, 17.744108, 0.834762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.627640, 17.869316, 0.923549>,  <22.935137, 18.077995, 1.071528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.627640, 17.869316, 0.923549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232168, 0.311344, -0.921500,
		0.595927, -0.794288, -0.118222,
		-0.768745, -0.521700, -0.369947,
		22.397017, 17.712807, 0.812565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.889469, 17.850510, 1.783543>,  <22.935137, 18.077995, 1.071528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.889469, 17.850510, 1.783543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.671471, 17.622566, 2.029548>,  <22.540672, 17.485800, 2.177151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.671471, 17.622566, 2.029548>,  <22.889469, 17.850510, 1.783543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.671471, 17.622566, 2.029548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299158, 0.817405, 0.492294,
		-0.783253, 0.084312, -0.615960,
		-0.544995, -0.569860, 0.615012,
		22.507973, 17.451609, 2.214052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.070261, 17.901188, 1.662892>,  <22.889469, 17.850510, 1.783543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.070261, 17.901188, 1.662892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.253578, 17.839664, 2.013049>,  <22.363567, 17.802752, 2.223143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.253578, 17.839664, 2.013049>,  <22.070261, 17.901188, 1.662892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.253578, 17.839664, 2.013049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261225, 0.918105, 0.298070,
		-0.849547, -0.365277, 0.380581,
		0.458291, -0.153807, 0.875393,
		22.391066, 17.793522, 2.275666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.536411, 17.996021, 2.232114>,  <22.070261, 17.901188, 1.662892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.536411, 17.996021, 2.232114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.894749, 18.114780, 2.364367>,  <22.109751, 18.186037, 2.443719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.894749, 18.114780, 2.364367>,  <21.536411, 17.996021, 2.232114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.894749, 18.114780, 2.364367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387695, 0.885809, 0.255018,
		-0.217163, -0.356641, 0.908651,
		0.895842, 0.296899, 0.330633,
		22.163502, 18.203850, 2.463557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.512995, 18.176022, 2.980100>,  <21.536411, 17.996021, 2.232114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.512995, 18.176022, 2.980100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.747635, 18.380600, 2.728920>,  <21.888420, 18.503347, 2.578212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.747635, 18.380600, 2.728920>,  <21.512995, 18.176022, 2.980100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.747635, 18.380600, 2.728920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614619, 0.786053, 0.066068,
		0.527392, 0.347194, 0.775445,
		0.586602, 0.511447, -0.627950,
		21.923615, 18.534035, 2.540535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.567055, 18.809126, 3.310230>,  <21.512995, 18.176022, 2.980100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.567055, 18.809126, 3.310230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.641975, 18.883392, 2.924391>,  <21.686928, 18.927952, 2.692888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.641975, 18.883392, 2.924391>,  <21.567055, 18.809126, 3.310230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.641975, 18.883392, 2.924391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501063, 0.862675, 0.068753,
		0.844898, 0.470447, 0.254609,
		0.187300, 0.185664, -0.964597,
		21.698166, 18.939091, 2.635012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.721642, 19.535244, 3.467703>,  <21.567055, 18.809126, 3.310230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.721642, 19.535244, 3.467703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.627163, 19.450935, 3.088274>,  <21.570477, 19.400351, 2.860617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.627163, 19.450935, 3.088274>,  <21.721642, 19.535244, 3.467703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.627163, 19.450935, 3.088274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587381, 0.808621, -0.033413,
		0.774077, 0.549280, -0.314796,
		-0.236197, -0.210770, -0.948571,
		21.556303, 19.387705, 2.803703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.824369, 20.114496, 3.070225>,  <21.721642, 19.535244, 3.467703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.824369, 20.114496, 3.070225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.556046, 19.908512, 2.856748>,  <21.395052, 19.784922, 2.728661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.556046, 19.908512, 2.856748>,  <21.824369, 20.114496, 3.070225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.556046, 19.908512, 2.856748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577008, 0.814484, -0.060643,
		0.465913, 0.267265, -0.843501,
		-0.670810, -0.514961, -0.533693,
		21.354803, 19.754025, 2.696640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.541109, 20.709675, 2.643329>,  <21.824369, 20.114496, 3.070225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.541109, 20.709675, 2.643329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.288937, 20.400696, 2.612641>,  <21.137634, 20.215309, 2.594229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.288937, 20.400696, 2.612641>,  <21.541109, 20.709675, 2.643329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.288937, 20.400696, 2.612641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776029, 0.629503, 0.038789,
		0.018333, 0.083990, -0.996298,
		-0.630430, -0.772445, -0.076720,
		21.099808, 20.168962, 2.589625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.124670, 20.835810, 2.192724>,  <21.541109, 20.709675, 2.643329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.124670, 20.835810, 2.192724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.866592, 20.596107, 2.382300>,  <20.711746, 20.452286, 2.496046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.866592, 20.596107, 2.382300>,  <21.124670, 20.835810, 2.192724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.866592, 20.596107, 2.382300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744219, 0.633247, -0.212452,
		-0.172808, -0.489788, -0.854544,
		-0.645194, -0.599255, 0.473940,
		20.673035, 20.416330, 2.524482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.502235, 20.846773, 1.804120>,  <21.124670, 20.835810, 2.192724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.502235, 20.846773, 1.804120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.370689, 20.727753, 2.162630>,  <20.291761, 20.656342, 2.377736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.370689, 20.727753, 2.162630>,  <20.502235, 20.846773, 1.804120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.370689, 20.727753, 2.162630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790072, 0.606589, -0.088519,
		-0.517332, -0.737234, -0.434573,
		-0.328866, -0.297550, 0.896276,
		20.272030, 20.638487, 2.431513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.747326, 20.542442, 1.733962>,  <20.502235, 20.846773, 1.804120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.747326, 20.542442, 1.733962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.800560, 20.729210, 2.083653>,  <19.832500, 20.841270, 2.293468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.800560, 20.729210, 2.083653>,  <19.747326, 20.542442, 1.733962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.800560, 20.729210, 2.083653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785682, 0.587388, -0.194113,
		-0.604146, -0.661031, 0.445024,
		0.133086, 0.466920, 0.874227,
		19.840487, 20.869286, 2.345922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.145996, 19.991634, 1.888921>,  <19.747326, 20.542442, 1.733962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.145996, 19.991634, 1.888921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.049007, 19.666134, 2.100209>,  <18.990814, 19.470833, 2.226982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.049007, 19.666134, 2.100209>,  <19.145996, 19.991634, 1.888921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.049007, 19.666134, 2.100209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102356, 0.519972, 0.848029,
		-0.964744, 0.259688, -0.042785,
		-0.242469, -0.813752, 0.528221,
		18.976267, 19.422009, 2.258676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.592600, 20.189880, 2.366253>,  <19.145996, 19.991634, 1.888921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.592600, 20.189880, 2.366253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.803753, 19.873123, 2.489052>,  <18.930445, 19.683069, 2.562732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.803753, 19.873123, 2.489052>,  <18.592600, 20.189880, 2.366253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.803753, 19.873123, 2.489052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099597, 0.301253, 0.948328,
		-0.843459, -0.531180, 0.080156,
		0.527880, -0.791893, 0.306998,
		18.962116, 19.635555, 2.581152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.179380, 19.819695, 2.959603>,  <18.592600, 20.189880, 2.366253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.179380, 19.819695, 2.959603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.577412, 19.780525, 2.965641>,  <18.816231, 19.757023, 2.969263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.577412, 19.780525, 2.965641>,  <18.179380, 19.819695, 2.959603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.577412, 19.780525, 2.965641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004344, 0.109073, 0.994024,
		-0.098986, -0.989199, 0.108111,
		0.995079, -0.097925, 0.015093,
		18.875935, 19.751148, 2.970169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.365154, 19.228815, 3.315759>,  <18.179380, 19.819695, 2.959603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.365154, 19.228815, 3.315759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.624874, 19.532936, 3.308280>,  <18.780706, 19.715408, 3.303792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.624874, 19.532936, 3.308280>,  <18.365154, 19.228815, 3.315759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.624874, 19.532936, 3.308280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031029, 0.051047, 0.998214,
		0.759900, -0.647559, 0.056736,
		0.649299, 0.760304, -0.018698,
		18.819664, 19.761026, 3.302670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.799696, 19.127323, 3.904341>,  <18.365154, 19.228815, 3.315759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.799696, 19.127323, 3.904341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.781609, 19.517414, 3.817728>,  <18.770756, 19.751469, 3.765759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.781609, 19.517414, 3.817728>,  <18.799696, 19.127323, 3.904341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.781609, 19.517414, 3.817728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048781, 0.218653, 0.974583,
		0.997785, 0.033507, -0.057460,
		-0.045219, 0.975227, -0.216534,
		18.768044, 19.809982, 3.752767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.390657, 19.441624, 4.174267>,  <18.799696, 19.127323, 3.904341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.390657, 19.441624, 4.174267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.056469, 19.661308, 4.166675>,  <18.855957, 19.793119, 4.162120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.056469, 19.661308, 4.166675>,  <19.390657, 19.441624, 4.174267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.056469, 19.661308, 4.166675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127647, 0.227539, 0.965366,
		0.534507, 0.804111, -0.260207,
		-0.835469, 0.549210, -0.018979,
		18.805828, 19.826071, 4.160981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.511000, 20.084856, 4.344480>,  <19.390657, 19.441624, 4.174267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.511000, 20.084856, 4.344480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.133217, 20.021397, 4.459599>,  <18.906548, 19.983320, 4.528672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.133217, 20.021397, 4.459599>,  <19.511000, 20.084856, 4.344480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.133217, 20.021397, 4.459599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234265, 0.289159, 0.928174,
		-0.230475, 0.944043, -0.235933,
		-0.944458, -0.158650, 0.287800,
		18.849880, 19.973803, 4.545939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.195612, 20.648750, 4.641930>,  <19.511000, 20.084856, 4.344480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.195612, 20.648750, 4.641930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.998898, 20.359226, 4.835526>,  <18.880869, 20.185513, 4.951683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.998898, 20.359226, 4.835526>,  <19.195612, 20.648750, 4.641930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.998898, 20.359226, 4.835526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173094, 0.463487, 0.869033,
		-0.853337, 0.511155, -0.102650,
		-0.491788, -0.723809, 0.483989,
		18.851360, 20.142084, 4.980722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.729345, 21.048767, 5.060071>,  <19.195612, 20.648750, 4.641930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.729345, 21.048767, 5.060071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.823963, 20.680241, 5.183506>,  <18.880733, 20.459126, 5.257567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.823963, 20.680241, 5.183506>,  <18.729345, 21.048767, 5.060071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.823963, 20.680241, 5.183506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209563, 0.358504, 0.909702,
		-0.948752, -0.150516, 0.277875,
		0.236544, -0.921314, 0.308589,
		18.894926, 20.403847, 5.276083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.295055, 20.869802, 5.791901>,  <18.729345, 21.048767, 5.060071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.295055, 20.869802, 5.791901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.648556, 20.693172, 5.729939>,  <18.860657, 20.587194, 5.692761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.648556, 20.693172, 5.729939>,  <18.295055, 20.869802, 5.791901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.648556, 20.693172, 5.729939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343760, 0.387997, 0.855154,
		-0.317512, -0.808993, 0.494689,
		0.883751, -0.441576, -0.154905,
		18.913681, 20.560699, 5.683467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.454264, 20.386086, 6.335757>,  <18.295055, 20.869802, 5.791901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.454264, 20.386086, 6.335757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.785431, 20.535576, 6.168483>,  <18.984131, 20.625271, 6.068118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.785431, 20.535576, 6.168483>,  <18.454264, 20.386086, 6.335757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.785431, 20.535576, 6.168483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252515, 0.417388, 0.872939,
		0.500791, -0.828319, 0.251190,
		0.827915, 0.373731, -0.418187,
		19.033806, 20.647694, 6.043027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.130112, 20.175282, 6.587846>,  <18.454264, 20.386086, 6.335757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.130112, 20.175282, 6.587846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.084465, 20.556637, 6.476114>,  <19.057077, 20.785450, 6.409075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.084465, 20.556637, 6.476114>,  <19.130112, 20.175282, 6.587846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.084465, 20.556637, 6.476114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137556, 0.293620, 0.945973,
		0.983898, 0.069527, -0.164651,
		-0.114116, 0.953390, -0.279329,
		19.050230, 20.842653, 6.392316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.694557, 20.742935, 6.651948>,  <19.130112, 20.175282, 6.587846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.694557, 20.742935, 6.651948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.334248, 20.906292, 6.711037>,  <19.118061, 21.004307, 6.746490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.334248, 20.906292, 6.711037>,  <19.694557, 20.742935, 6.651948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.334248, 20.906292, 6.711037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232234, 0.165538, 0.958470,
		0.366980, 0.897670, -0.243955,
		-0.900774, 0.408394, 0.147720,
		19.064016, 21.028811, 6.755353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.759552, 21.307501, 6.986189>,  <19.694557, 20.742935, 6.651948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.759552, 21.307501, 6.986189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.384502, 21.190331, 7.061086>,  <19.159473, 21.120028, 7.106024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.384502, 21.190331, 7.061086>,  <19.759552, 21.307501, 6.986189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.384502, 21.190331, 7.061086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155130, 0.129475, 0.979373,
		-0.311126, 0.947328, -0.075957,
		-0.937622, -0.292926, 0.187242,
		19.103216, 21.102453, 7.117258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.391735, 21.735483, 6.967462>,  <19.759552, 21.307501, 6.986189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.391735, 21.735483, 6.967462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.429241, 22.075546, 7.174706>,  <20.451744, 22.279585, 7.299053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.429241, 22.075546, 7.174706>,  <20.391735, 21.735483, 6.967462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.429241, 22.075546, 7.174706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024647, -0.518262, 0.854866,
		0.995289, -0.092927, -0.027641,
		0.093765, 0.850158, 0.518111,
		20.457371, 22.330593, 7.330140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.839706, 21.551712, 7.450643>,  <20.391735, 21.735483, 6.967462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.839706, 21.551712, 7.450643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.632736, 21.870060, 7.576409>,  <20.508554, 22.061069, 7.651869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.632736, 21.870060, 7.576409>,  <20.839706, 21.551712, 7.450643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.632736, 21.870060, 7.576409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092459, -0.313279, 0.945149,
		0.850718, 0.518116, 0.088514,
		-0.517427, 0.795872, 0.314417,
		20.477509, 22.108822, 7.670734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.232401, 21.945858, 7.957885>,  <20.839706, 21.551712, 7.450643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.232401, 21.945858, 7.957885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.844303, 22.016224, 8.024430>,  <20.611444, 22.058443, 8.064358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.844303, 22.016224, 8.024430>,  <21.232401, 21.945858, 7.957885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.844303, 22.016224, 8.024430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131311, -0.194967, 0.971980,
		0.203421, 0.964905, 0.166066,
		-0.970246, 0.175915, 0.166364,
		20.553230, 22.068998, 8.074339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.251841, 22.372589, 8.498144>,  <21.232401, 21.945858, 7.957885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.251841, 22.372589, 8.498144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883507, 22.220398, 8.463975>,  <20.662506, 22.129082, 8.443474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883507, 22.220398, 8.463975>,  <21.251841, 22.372589, 8.498144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.883507, 22.220398, 8.463975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054590, -0.091126, 0.994342,
		-0.386112, 0.920288, 0.063142,
		-0.920835, -0.380480, -0.085423,
		20.607256, 22.106255, 8.438348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.785908, 22.703255, 9.114183>,  <21.251841, 22.372589, 8.498144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.785908, 22.703255, 9.114183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.619198, 22.359413, 8.995945>,  <20.519173, 22.153109, 8.925002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.619198, 22.359413, 8.995945>,  <20.785908, 22.703255, 9.114183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.619198, 22.359413, 8.995945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080578, -0.288968, 0.953942,
		-0.905431, 0.421398, 0.051170,
		-0.416775, -0.859605, -0.295596,
		20.494165, 22.101532, 8.907266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.220314, 22.664915, 9.570929>,  <20.785908, 22.703255, 9.114183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.220314, 22.664915, 9.570929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.238605, 22.287224, 9.440491>,  <20.249580, 22.060608, 9.362228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.238605, 22.287224, 9.440491>,  <20.220314, 22.664915, 9.570929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.238605, 22.287224, 9.440491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041012, -0.324386, 0.945035,
		-0.998112, -0.056591, 0.023890,
		0.045731, -0.944230, -0.326095,
		20.252325, 22.003954, 9.342662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.719891, 22.257757, 9.975228>,  <20.220314, 22.664915, 9.570929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.719891, 22.257757, 9.975228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.976898, 21.986790, 9.831965>,  <20.131102, 21.824209, 9.746008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.976898, 21.986790, 9.831965>,  <19.719891, 22.257757, 9.975228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.976898, 21.986790, 9.831965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105740, -0.384549, 0.917028,
		-0.758940, -0.627078, -0.175450,
		0.642517, -0.677418, -0.358157,
		20.169653, 21.783564, 9.724519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.283037, 21.672237, 10.246812>,  <19.719891, 22.257757, 9.975228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.283037, 21.672237, 10.246812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.645653, 21.540672, 10.140979>,  <19.863222, 21.461733, 10.077478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.645653, 21.540672, 10.140979>,  <19.283037, 21.672237, 10.246812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.645653, 21.540672, 10.140979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046352, -0.700562, 0.712084,
		-0.419571, -0.633268, -0.650332,
		0.906538, -0.328914, -0.264583,
		19.917614, 21.441998, 10.061604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.315039, 20.932573, 10.054834>,  <19.283037, 21.672237, 10.246812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.315039, 20.932573, 10.054834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.696133, 21.002209, 10.154421>,  <19.924789, 21.043991, 10.214173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.696133, 21.002209, 10.154421>,  <19.315039, 20.932573, 10.054834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.696133, 21.002209, 10.154421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072151, -0.666405, 0.742090,
		0.295104, -0.724980, -0.622348,
		0.952737, 0.174090, 0.248967,
		19.981955, 21.054436, 10.229111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.604317, 20.230637, 10.210740>,  <19.315039, 20.932573, 10.054834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.604317, 20.230637, 10.210740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.817661, 20.521988, 10.382781>,  <19.945667, 20.696798, 10.486006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.817661, 20.521988, 10.382781>,  <19.604317, 20.230637, 10.210740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.817661, 20.521988, 10.382781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142157, -0.424047, 0.894413,
		0.833856, -0.538188, -0.122626,
		0.533362, 0.728380, 0.430102,
		19.977671, 20.740501, 10.511811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.056015, 19.859838, 10.638080>,  <19.604317, 20.230637, 10.210740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.056015, 19.859838, 10.638080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.057800, 20.239742, 10.763262>,  <20.058872, 20.467684, 10.838371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.057800, 20.239742, 10.763262>,  <20.056015, 19.859838, 10.638080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.057800, 20.239742, 10.763262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199418, -0.305826, 0.930969,
		0.979904, -0.066566, 0.188033,
		0.004465, 0.949757, 0.312954,
		20.059139, 20.524670, 10.857148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.402632, 19.793453, 11.313308>,  <20.056015, 19.859838, 10.638080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.402632, 19.793453, 11.313308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.175766, 20.122894, 11.313179>,  <20.039646, 20.320559, 11.313102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.175766, 20.122894, 11.313179>,  <20.402632, 19.793453, 11.313308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.175766, 20.122894, 11.313179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237733, -0.163339, 0.957498,
		0.788547, 0.543136, 0.288438,
		-0.567165, 0.823604, -0.000321,
		20.005617, 20.369976, 11.313083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.557856, 20.199167, 11.963505>,  <20.402632, 19.793453, 11.313308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.557856, 20.199167, 11.963505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.185890, 20.292603, 11.849875>,  <19.962711, 20.348663, 11.781698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.185890, 20.292603, 11.849875>,  <20.557856, 20.199167, 11.963505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.185890, 20.292603, 11.849875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294898, -0.012036, 0.955453,
		0.219765, 0.972261, 0.080077,
		-0.929913, 0.233590, -0.284072,
		19.906916, 20.362679, 11.764654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.385118, 20.721188, 12.548867>,  <20.557856, 20.199167, 11.963505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.385118, 20.721188, 12.548867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.026169, 20.662952, 12.382242>,  <19.810799, 20.628012, 12.282267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.026169, 20.662952, 12.382242>,  <20.385118, 20.721188, 12.548867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.026169, 20.662952, 12.382242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439227, 0.203933, 0.874924,
		-0.042426, 0.968099, -0.246949,
		-0.897374, -0.145586, -0.416563,
		19.756956, 20.619276, 12.257274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.945312, 21.238672, 12.774860>,  <20.385118, 20.721188, 12.548867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.945312, 21.238672, 12.774860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.679714, 20.973270, 12.636951>,  <19.520355, 20.814030, 12.554206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.679714, 20.973270, 12.636951>,  <19.945312, 21.238672, 12.774860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.679714, 20.973270, 12.636951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563357, 0.140729, 0.814140,
		-0.491667, 0.734817, -0.467234,
		-0.663998, -0.663506, -0.344772,
		19.480515, 20.774220, 12.533520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.320211, 21.635185, 12.619607>,  <19.945312, 21.238672, 12.774860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.320211, 21.635185, 12.619607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.198738, 21.260902, 12.691417>,  <19.125854, 21.036333, 12.734503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.198738, 21.260902, 12.691417>,  <19.320211, 21.635185, 12.619607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.198738, 21.260902, 12.691417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663265, 0.342890, 0.665212,
		-0.684000, 0.082942, -0.724751,
		-0.303684, -0.935707, 0.179524,
		19.107634, 20.980190, 12.745274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.545303, 21.658127, 12.705905>,  <19.320211, 21.635185, 12.619607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.545303, 21.658127, 12.705905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.683090, 21.330414, 12.889259>,  <18.765762, 21.133785, 12.999271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.683090, 21.330414, 12.889259>,  <18.545303, 21.658127, 12.705905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.683090, 21.330414, 12.889259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635107, 0.156209, 0.756465,
		-0.691363, -0.551699, -0.466524,
		0.344466, -0.819284, 0.458385,
		18.786430, 21.084629, 13.026774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.974180, 21.269045, 12.899178>,  <18.545303, 21.658127, 12.705905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.974180, 21.269045, 12.899178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.250347, 21.093498, 13.129211>,  <18.416046, 20.988171, 13.267232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.250347, 21.093498, 13.129211>,  <17.974180, 21.269045, 12.899178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.250347, 21.093498, 13.129211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632173, 0.020449, 0.774557,
		-0.351686, -0.898320, -0.263320,
		0.690416, -0.438865, 0.575086,
		18.457472, 20.961840, 13.301737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.652576, 20.780834, 13.242244>,  <17.974180, 21.269045, 12.899178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.652576, 20.780834, 13.242244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.988010, 20.791492, 13.459892>,  <18.189270, 20.797888, 13.590482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.988010, 20.791492, 13.459892>,  <17.652576, 20.780834, 13.242244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.988010, 20.791492, 13.459892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539690, -0.095501, 0.836429,
		0.074252, -0.995073, -0.065704,
		0.838583, 0.026647, 0.544122,
		18.239586, 20.799486, 13.623129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.623730, 20.192982, 13.734489>,  <17.652576, 20.780834, 13.242244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.623730, 20.192982, 13.734489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.895351, 20.452362, 13.872126>,  <18.058325, 20.607990, 13.954707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.895351, 20.452362, 13.872126>,  <17.623730, 20.192982, 13.734489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.895351, 20.452362, 13.872126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418387, -0.043279, 0.907237,
		0.603189, -0.760026, 0.241915,
		0.679054, 0.648450, 0.344091,
		18.099068, 20.646896, 13.975353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.813288, 19.864996, 14.320140>,  <17.623730, 20.192982, 13.734489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.813288, 19.864996, 14.320140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.908772, 20.251938, 14.354181>,  <17.966063, 20.484102, 14.374606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.908772, 20.251938, 14.354181>,  <17.813288, 19.864996, 14.320140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.908772, 20.251938, 14.354181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234046, -0.027742, 0.971829,
		0.942464, -0.251905, 0.219783,
		0.238712, 0.967354, 0.085103,
		17.980385, 20.542145, 14.379712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.241308, 19.930080, 14.939387>,  <17.813288, 19.864996, 14.320140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.241308, 19.930080, 14.939387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.038204, 20.268745, 14.875708>,  <17.916342, 20.471945, 14.837500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.038204, 20.268745, 14.875708>,  <18.241308, 19.930080, 14.939387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.038204, 20.268745, 14.875708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312373, -0.008721, 0.949919,
		0.802871, 0.532061, 0.268903,
		-0.507760, 0.846661, -0.159199,
		17.885876, 20.522743, 14.827948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.223204, 20.169121, 15.551717>,  <18.241308, 19.930080, 14.939387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.223204, 20.169121, 15.551717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.990501, 20.458591, 15.403202>,  <17.850880, 20.632275, 15.314094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.990501, 20.458591, 15.403202>,  <18.223204, 20.169121, 15.551717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.990501, 20.458591, 15.403202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325007, 0.211628, 0.921729,
		0.745609, 0.656890, 0.112085,
		-0.581754, 0.723677, -0.371286,
		17.815975, 20.675695, 15.291817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.410830, 20.826445, 15.766448>,  <18.223204, 20.169121, 15.551717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.410830, 20.826445, 15.766448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.030499, 20.894695, 15.663055>,  <17.802299, 20.935646, 15.601020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.030499, 20.894695, 15.663055>,  <18.410830, 20.826445, 15.766448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.030499, 20.894695, 15.663055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192988, 0.326357, 0.925336,
		0.242244, 0.929719, -0.277381,
		-0.950828, 0.170626, -0.258482,
		17.745251, 20.945883, 15.585510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.304312, 21.532831, 15.935844>,  <18.410830, 20.826445, 15.766448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.304312, 21.532831, 15.935844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.952377, 21.342743, 15.938723>,  <17.741217, 21.228689, 15.940450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.952377, 21.342743, 15.938723>,  <18.304312, 21.532831, 15.935844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.952377, 21.342743, 15.938723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120942, 0.238504, 0.963581,
		-0.459630, 0.846924, -0.267319,
		-0.879837, -0.475221, 0.007195,
		17.688427, 21.200176, 15.940881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.970648, 21.967974, 16.313688>,  <18.304312, 21.532831, 15.935844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.970648, 21.967974, 16.313688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.732662, 21.646545, 16.320553>,  <17.589870, 21.453690, 16.324671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.732662, 21.646545, 16.320553>,  <17.970648, 21.967974, 16.313688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.732662, 21.646545, 16.320553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159308, 0.138824, 0.977420,
		-0.787807, 0.578795, -0.210610,
		-0.594964, -0.803569, 0.017160,
		17.554173, 21.405474, 16.325701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.363621, 22.176313, 16.704657>,  <17.970648, 21.967974, 16.313688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.363621, 22.176313, 16.704657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.412296, 21.780064, 16.729502>,  <17.441502, 21.542315, 16.744408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.412296, 21.780064, 16.729502>,  <17.363621, 22.176313, 16.704657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.412296, 21.780064, 16.729502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013659, 0.060899, 0.998050,
		-0.992474, -0.122300, -0.006120,
		0.121689, -0.990623, 0.062111,
		17.448803, 21.482876, 16.748135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.918200, 22.021605, 17.229698>,  <17.363621, 22.176313, 16.704657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.918200, 22.021605, 17.229698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.180977, 21.721046, 17.204947>,  <17.338644, 21.540712, 17.190096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.180977, 21.721046, 17.204947>,  <16.918200, 22.021605, 17.229698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.180977, 21.721046, 17.204947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101715, 0.007005, 0.994789,
		-0.747046, -0.659815, 0.081031,
		0.656944, -0.751395, -0.061880,
		17.378059, 21.495628, 17.186382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.736483, 21.605680, 17.810040>,  <16.918200, 22.021605, 17.229698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.736483, 21.605680, 17.810040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.100582, 21.480877, 17.701155>,  <17.319042, 21.405994, 17.635824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.100582, 21.480877, 17.701155>,  <16.736483, 21.605680, 17.810040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.100582, 21.480877, 17.701155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220350, -0.191589, 0.956420,
		-0.350566, -0.930561, -0.105642,
		0.910247, -0.312010, -0.272213,
		17.373657, 21.387274, 17.619492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.837130, 20.874578, 18.004375>,  <16.736483, 21.605680, 17.810040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.837130, 20.874578, 18.004375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.192444, 21.058018, 17.994286>,  <17.405632, 21.168081, 17.988232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.192444, 21.058018, 17.994286>,  <16.837130, 20.874578, 18.004375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.192444, 21.058018, 17.994286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163881, -0.265165, 0.950174,
		0.429060, -0.848159, -0.310698,
		0.888285, 0.458599, -0.025226,
		17.458929, 21.195597, 17.986717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.371752, 20.362217, 18.291861>,  <16.837130, 20.874578, 18.004375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.371752, 20.362217, 18.291861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.496723, 20.741226, 18.318960>,  <17.571707, 20.968632, 18.335220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.496723, 20.741226, 18.318960>,  <17.371752, 20.362217, 18.291861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.496723, 20.741226, 18.318960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329600, -0.175014, 0.927758,
		0.890928, -0.267528, -0.366982,
		0.312428, 0.947523, 0.067747,
		17.590452, 21.025482, 18.339285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.989010, 20.329596, 18.602375>,  <17.371752, 20.362217, 18.291861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.989010, 20.329596, 18.602375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.906696, 20.715942, 18.665306>,  <17.857307, 20.947750, 18.703064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.906696, 20.715942, 18.665306>,  <17.989010, 20.329596, 18.602375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.906696, 20.715942, 18.665306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257012, -0.101782, 0.961034,
		0.944245, 0.238200, -0.227294,
		-0.205784, 0.965868, 0.157327,
		17.844961, 21.005703, 18.712503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.504263, 20.505308, 19.096817>,  <17.989010, 20.329596, 18.602375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.504263, 20.505308, 19.096817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.259853, 20.821869, 19.104090>,  <18.113207, 21.011806, 19.108454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.259853, 20.821869, 19.104090>,  <18.504263, 20.505308, 19.096817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.259853, 20.821869, 19.104090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149604, 0.092890, 0.984373,
		0.777348, 0.604195, -0.175155,
		-0.611023, 0.791404, 0.018182,
		18.076546, 21.059290, 19.109545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.841702, 21.034914, 19.532087>,  <18.504263, 20.505308, 19.096817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.841702, 21.034914, 19.532087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.441963, 21.047581, 19.539080>,  <18.202120, 21.055182, 19.543276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.441963, 21.047581, 19.539080>,  <18.841702, 21.034914, 19.532087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.441963, 21.047581, 19.539080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017538, 0.001488, 0.999845,
		0.031635, 0.999497, -0.002042,
		-0.999346, 0.031666, 0.017482,
		18.142160, 21.057081, 19.544325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.712658, 21.595379, 19.874783>,  <18.841702, 21.034914, 19.532087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.712658, 21.595379, 19.874783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.365135, 21.397465, 19.882362>,  <18.156622, 21.278715, 19.886909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.365135, 21.397465, 19.882362>,  <18.712658, 21.595379, 19.874783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.365135, 21.397465, 19.882362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015686, 0.065752, 0.997713,
		-0.494901, 0.866523, -0.064887,
		-0.868808, -0.494787, 0.018949,
		18.104492, 21.249029, 19.888046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.373598, 21.953365, 20.338640>,  <18.712658, 21.595379, 19.874783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.373598, 21.953365, 20.338640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.151093, 21.621967, 20.312822>,  <18.017590, 21.423128, 20.297331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.151093, 21.621967, 20.312822>,  <18.373598, 21.953365, 20.338640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.151093, 21.621967, 20.312822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349604, 0.162848, 0.922636,
		-0.753888, 0.535796, -0.380231,
		-0.556264, -0.828495, -0.064547,
		17.984213, 21.373419, 20.293459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.738565, 22.124063, 20.572863>,  <18.373598, 21.953365, 20.338640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.738565, 22.124063, 20.572863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.743458, 21.725098, 20.601194>,  <17.746393, 21.485718, 20.618193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.743458, 21.725098, 20.601194>,  <17.738565, 22.124063, 20.572863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.743458, 21.725098, 20.601194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344539, 0.062294, 0.936703,
		-0.938692, -0.035859, -0.342886,
		0.012230, -0.997413, 0.070830,
		17.747128, 21.425873, 20.622444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.112925, 21.896244, 20.878311>,  <17.738565, 22.124063, 20.572863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.112925, 21.896244, 20.878311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.360340, 21.596226, 20.971985>,  <17.508789, 21.416214, 21.028189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.360340, 21.596226, 20.971985>,  <17.112925, 21.896244, 20.878311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.360340, 21.596226, 20.971985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296420, 0.053283, 0.953570,
		-0.727700, -0.659235, -0.189371,
		0.618537, -0.750046, 0.234184,
		17.545900, 21.371212, 21.042240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.786413, 21.629601, 21.456127>,  <17.112925, 21.896244, 20.878311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.786413, 21.629601, 21.456127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.145306, 21.456223, 21.489828>,  <17.360641, 21.352196, 21.510048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.145306, 21.456223, 21.489828>,  <16.786413, 21.629601, 21.456127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.145306, 21.456223, 21.489828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142578, -0.103809, 0.984325,
		-0.417905, -0.895181, -0.154941,
		0.897232, -0.433446, 0.084251,
		17.414476, 21.326189, 21.515104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.664389, 20.908541, 21.797672>,  <16.786413, 21.629601, 21.456127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.664389, 20.908541, 21.797672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.019650, 21.086716, 21.842882>,  <17.232805, 21.193621, 21.870008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.019650, 21.086716, 21.842882>,  <16.664389, 20.908541, 21.797672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019650, 21.086716, 21.842882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111951, -0.028823, 0.993296,
		0.445709, -0.894849, 0.024267,
		0.888150, 0.445437, 0.113026,
		17.286095, 21.220346, 21.876789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.115330, 20.490013, 22.372726>,  <16.664389, 20.908541, 21.797672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.115330, 20.490013, 22.372726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.259327, 20.862980, 22.360041>,  <17.345726, 21.086760, 22.352428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.259327, 20.862980, 22.360041>,  <17.115330, 20.490013, 22.372726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.259327, 20.862980, 22.360041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165021, -0.030181, 0.985828,
		0.918244, -0.360125, -0.164733,
		0.359993, 0.932415, -0.031715,
		17.367325, 21.142704, 22.350527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.485554, 20.504749, 23.038221>,  <17.115330, 20.490013, 22.372726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.485554, 20.504749, 23.038221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.462215, 20.881550, 22.906019>,  <17.448214, 21.107630, 22.826698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.462215, 20.881550, 22.906019>,  <17.485554, 20.504749, 23.038221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.462215, 20.881550, 22.906019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140368, 0.320038, 0.936948,
		0.988379, 0.101058, 0.113554,
		-0.058344, 0.941999, -0.330504,
		17.444712, 21.164150, 22.806868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.849352, 20.878397, 23.510141>,  <17.485554, 20.504749, 23.038221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.849352, 20.878397, 23.510141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.618694, 21.147972, 23.325409>,  <17.480301, 21.309717, 23.214569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.618694, 21.147972, 23.325409>,  <17.849352, 20.878397, 23.510141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.618694, 21.147972, 23.325409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095070, 0.506089, 0.857226,
		0.811446, 0.538219, -0.227761,
		-0.576642, 0.673939, -0.461832,
		17.445702, 21.350155, 23.186859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.139025, 21.502485, 23.592194>,  <17.849352, 20.878397, 23.510141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.139025, 21.502485, 23.592194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.747658, 21.574078, 23.550880>,  <17.512838, 21.617033, 23.526093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.747658, 21.574078, 23.550880>,  <18.139025, 21.502485, 23.592194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.747658, 21.574078, 23.550880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013704, 0.442506, 0.896661,
		0.206186, 0.878724, -0.430502,
		-0.978417, 0.178980, -0.103281,
		17.454132, 21.627771, 23.519896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.037178, 22.191210, 23.736834>,  <18.139025, 21.502485, 23.592194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.037178, 22.191210, 23.736834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.718575, 21.978069, 23.851131>,  <17.527412, 21.850185, 23.919710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.718575, 21.978069, 23.851131>,  <18.037178, 22.191210, 23.736834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.718575, 21.978069, 23.851131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045682, 0.418206, 0.907203,
		-0.602901, 0.735646, -0.308763,
		-0.796507, -0.532849, 0.285743,
		17.479622, 21.818214, 23.936853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.690748, 22.384653, 24.108307>,  <18.037178, 22.191210, 23.736834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.690748, 22.384653, 24.108307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.668598, 22.149406, 23.785555>,  <18.655308, 22.008259, 23.591904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.668598, 22.149406, 23.785555>,  <18.690748, 22.384653, 24.108307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.668598, 22.149406, 23.785555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027819, 0.806897, -0.590037,
		0.998078, -0.055120, -0.028322,
		-0.055375, -0.588115, -0.806879,
		18.651985, 21.972973, 23.543491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.065464, 22.756964, 23.671200>,  <18.690748, 22.384653, 24.108307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.065464, 22.756964, 23.671200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.886021, 22.471298, 23.456268>,  <18.778355, 22.299898, 23.327309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.886021, 22.471298, 23.456268>,  <19.065464, 22.756964, 23.671200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.886021, 22.471298, 23.456268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062579, 0.574645, -0.816007,
		0.891535, -0.399693, -0.213098,
		-0.448608, -0.714163, -0.537328,
		18.751438, 22.257050, 23.295071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.809948, 23.338598, 23.268646>,  <19.065464, 22.756964, 23.671200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.809948, 23.338598, 23.268646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.987431, 23.282318, 23.622669>,  <19.093920, 23.248550, 23.835083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.987431, 23.282318, 23.622669>,  <18.809948, 23.338598, 23.268646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.987431, 23.282318, 23.622669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885030, 0.086459, 0.457434,
		-0.140883, -0.986270, -0.086163,
		0.443704, -0.140702, 0.885059,
		19.120543, 23.240108, 23.888187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.110853, 23.111328, 23.603374>,  <18.809948, 23.338598, 23.268646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.110853, 23.111328, 23.603374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.227379, 23.493954, 23.607811>,  <18.297295, 23.723528, 23.610474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.227379, 23.493954, 23.607811>,  <18.110853, 23.111328, 23.603374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.227379, 23.493954, 23.607811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891155, -0.275575, 0.360418,
		0.347819, -0.095111, -0.932725,
		0.291316, 0.956563, 0.011092,
		18.314774, 23.780922, 23.611139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.452314, 23.402557, 23.824759>,  <18.110853, 23.111328, 23.603374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.452314, 23.402557, 23.824759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.377132, 23.776936, 23.943872>,  <17.332024, 24.001562, 24.015341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.377132, 23.776936, 23.943872>,  <17.452314, 23.402557, 23.824759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.377132, 23.776936, 23.943872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732451, 0.068427, -0.677372,
		-0.654361, -0.345429, 0.672674,
		-0.187955, 0.935947, 0.297786,
		17.320745, 24.057720, 24.033209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.702318, 23.513077, 23.878199>,  <17.452314, 23.402557, 23.824759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.702318, 23.513077, 23.878199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.883934, 23.850342, 23.763012>,  <16.992905, 24.052700, 23.693899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.883934, 23.850342, 23.763012>,  <16.702318, 23.513077, 23.878199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.883934, 23.850342, 23.763012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623830, 0.070080, -0.778412,
		-0.636146, 0.533074, 0.557809,
		0.454042, 0.843162, -0.287966,
		17.020147, 24.103291, 23.676622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.186781, 23.801779, 23.412548>,  <16.702318, 23.513077, 23.878199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.186781, 23.801779, 23.412548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.524094, 24.013035, 23.372663>,  <16.726482, 24.139788, 23.348732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.524094, 24.013035, 23.372663>,  <16.186781, 23.801779, 23.412548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.524094, 24.013035, 23.372663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262016, 0.241980, -0.934234,
		-0.469278, 0.813949, 0.342439,
		0.843283, 0.528140, -0.099711,
		16.777079, 24.171476, 23.342751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.056112, 24.482492, 23.021536>,  <16.186781, 23.801779, 23.412548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.056112, 24.482492, 23.021536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.439991, 24.377640, 22.980993>,  <16.670319, 24.314728, 22.956667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.439991, 24.377640, 22.980993>,  <16.056112, 24.482492, 23.021536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.439991, 24.377640, 22.980993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079263, 0.093561, -0.992453,
		0.269636, 0.960486, 0.069013,
		0.959695, -0.262131, -0.101358,
		16.727900, 24.299000, 22.950586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.376144, 24.968929, 22.598759>,  <16.056112, 24.482492, 23.021536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.376144, 24.968929, 22.598759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.574303, 24.622520, 22.571653>,  <16.693197, 24.414675, 22.555391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.574303, 24.622520, 22.571653>,  <16.376144, 24.968929, 22.598759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.574303, 24.622520, 22.571653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104688, 0.017917, -0.994344,
		0.862337, 0.499686, -0.081786,
		0.495395, -0.866021, -0.067761,
		16.722921, 24.362715, 22.551325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.987640, 25.038767, 22.126669>,  <16.376144, 24.968929, 22.598759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.987640, 25.038767, 22.126669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.860821, 24.659786, 22.143709>,  <16.784729, 24.432398, 22.153934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.860821, 24.659786, 22.143709>,  <16.987640, 25.038767, 22.126669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.860821, 24.659786, 22.143709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204949, 0.024586, -0.978464,
		0.926000, -0.318953, -0.201974,
		-0.317049, -0.947452, 0.042602,
		16.765705, 24.375551, 22.156490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.310287, 24.834360, 21.551949>,  <16.987640, 25.038767, 22.126669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.310287, 24.834360, 21.551949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.019119, 24.579136, 21.652359>,  <16.844419, 24.426003, 21.712606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.019119, 24.579136, 21.652359>,  <17.310287, 24.834360, 21.551949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019119, 24.579136, 21.652359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297837, -0.035528, -0.953956,
		0.617599, -0.769167, -0.164176,
		-0.727918, -0.638060, 0.251028,
		16.800743, 24.387718, 21.727667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.295538, 24.388092, 20.994520>,  <17.310287, 24.834360, 21.551949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.295538, 24.388092, 20.994520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.954018, 24.356174, 21.200300>,  <16.749105, 24.337025, 21.323769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.954018, 24.356174, 21.200300>,  <17.295538, 24.388092, 20.994520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.954018, 24.356174, 21.200300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471835, -0.298977, -0.829448,
		0.219994, -0.950918, 0.217617,
		-0.853800, -0.079794, 0.514449,
		16.697878, 24.332235, 21.354635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.992367, 23.665010, 20.995701>,  <17.295538, 24.388092, 20.994520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.992367, 23.665010, 20.995701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.695343, 23.927208, 21.050749>,  <16.517130, 24.084526, 21.083776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.695343, 23.927208, 21.050749>,  <16.992367, 23.665010, 20.995701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.695343, 23.927208, 21.050749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407969, -0.279694, -0.869098,
		-0.531196, -0.701500, 0.475109,
		-0.742558, 0.655492, 0.137618,
		16.472576, 24.123856, 21.092033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.358397, 23.260990, 20.883556>,  <16.992367, 23.665010, 20.995701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.358397, 23.260990, 20.883556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.255653, 23.644176, 20.832455>,  <16.194008, 23.874088, 20.801794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.255653, 23.644176, 20.832455>,  <16.358397, 23.260990, 20.883556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.255653, 23.644176, 20.832455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311744, -0.207251, -0.927288,
		-0.914789, -0.198356, 0.351875,
		-0.256859, 0.957967, -0.127755,
		16.178596, 23.931566, 20.794128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.842917, 23.185705, 20.353390>,  <16.358397, 23.260990, 20.883556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.842917, 23.185705, 20.353390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.852923, 23.583515, 20.393980>,  <15.858927, 23.822201, 20.418333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.852923, 23.583515, 20.393980>,  <15.842917, 23.185705, 20.353390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.852923, 23.583515, 20.393980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433918, 0.102246, -0.895132,
		-0.900605, -0.021640, 0.434100,
		0.025014, 0.994524, 0.101474,
		15.860428, 23.881872, 20.424421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.116599, 23.463501, 20.304119>,  <15.842917, 23.185705, 20.353390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.116599, 23.463501, 20.304119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.384377, 23.742226, 20.201128>,  <15.545044, 23.909460, 20.139334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.384377, 23.742226, 20.201128>,  <15.116599, 23.463501, 20.304119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.384377, 23.742226, 20.201128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505998, 0.173960, -0.844810,
		-0.543884, 0.695837, 0.469043,
		0.669445, 0.696813, -0.257478,
		15.585211, 23.951269, 20.123884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.760066, 23.829718, 19.950190>,  <15.116599, 23.463501, 20.304119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.760066, 23.829718, 19.950190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.112918, 23.988564, 19.848881>,  <15.324629, 24.083872, 19.788095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.112918, 23.988564, 19.848881>,  <14.760066, 23.829718, 19.950190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.112918, 23.988564, 19.848881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372205, 0.258203, -0.891513,
		-0.288639, 0.880698, 0.375577,
		0.882129, 0.397117, -0.253273,
		15.377557, 24.107698, 19.772900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.679740, 24.526907, 19.692760>,  <14.760066, 23.829718, 19.950190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.679740, 24.526907, 19.692760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.014386, 24.384903, 19.525887>,  <15.215174, 24.299702, 19.425762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.014386, 24.384903, 19.525887>,  <14.679740, 24.526907, 19.692760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.014386, 24.384903, 19.525887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394377, 0.138221, -0.908494,
		0.380187, 0.924589, -0.024369,
		0.836615, -0.355008, -0.417186,
		15.265370, 24.278400, 19.400730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.700772, 24.961191, 19.203293>,  <14.679740, 24.526907, 19.692760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.700772, 24.961191, 19.203293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.963607, 24.680000, 19.094437>,  <15.121307, 24.511286, 19.029123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.963607, 24.680000, 19.094437>,  <14.700772, 24.961191, 19.203293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.963607, 24.680000, 19.094437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281737, 0.105835, -0.953637,
		0.699187, 0.703294, -0.128512,
		0.657086, -0.702977, -0.272143,
		15.160732, 24.469107, 19.012794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.080077, 25.220278, 18.625715>,  <14.700772, 24.961191, 19.203293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.080077, 25.220278, 18.625715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.131585, 24.823784, 18.613892>,  <15.162490, 24.585888, 18.606798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.131585, 24.823784, 18.613892>,  <15.080077, 25.220278, 18.625715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.131585, 24.823784, 18.613892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008895, 0.030959, -0.999481,
		0.991635, 0.128439, 0.012803,
		0.128769, -0.991234, -0.029558,
		15.170216, 24.526413, 18.605024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.539063, 25.087345, 18.033436>,  <15.080077, 25.220278, 18.625715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.539063, 25.087345, 18.033436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.382680, 24.724072, 18.093237>,  <15.288850, 24.506107, 18.129118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.382680, 24.724072, 18.093237>,  <15.539063, 25.087345, 18.033436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.382680, 24.724072, 18.093237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059044, -0.186843, -0.980614,
		0.918513, -0.374552, 0.126670,
		-0.390959, -0.908185, 0.149502,
		15.265392, 24.451616, 18.138088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.015444, 24.645914, 17.674557>,  <15.539063, 25.087345, 18.033436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.015444, 24.645914, 17.674557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.670030, 24.449154, 17.718992>,  <15.462781, 24.331099, 17.745653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.670030, 24.449154, 17.718992>,  <16.015444, 24.645914, 17.674557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.670030, 24.449154, 17.718992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012394, -0.199519, -0.979815,
		0.504136, -0.847482, 0.166195,
		-0.863535, -0.491901, 0.111088,
		15.410969, 24.301584, 17.752319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.135315, 23.990980, 17.584051>,  <16.015444, 24.645914, 17.674557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.135315, 23.990980, 17.584051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.754071, 24.037712, 17.472383>,  <15.525325, 24.065752, 17.405384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.754071, 24.037712, 17.472383>,  <16.135315, 23.990980, 17.584051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.754071, 24.037712, 17.472383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221711, -0.358311, -0.906894,
		-0.205980, -0.926264, 0.315607,
		-0.953109, 0.116828, -0.279167,
		15.468139, 24.072762, 17.388634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.057291, 23.508591, 17.042488>,  <16.135315, 23.990980, 17.584051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.057291, 23.508591, 17.042488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.730376, 23.732407, 16.987419>,  <15.534227, 23.866697, 16.954378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.730376, 23.732407, 16.987419>,  <16.057291, 23.508591, 17.042488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.730376, 23.732407, 16.987419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009643, -0.225602, -0.974172,
		-0.576148, -0.797507, 0.178986,
		-0.817288, 0.559541, -0.137670,
		15.485189, 23.900269, 16.946117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.693205, 23.035240, 16.626612>,  <16.057291, 23.508591, 17.042488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.693205, 23.035240, 16.626612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.564364, 23.413364, 16.606077>,  <15.487061, 23.640240, 16.593756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.564364, 23.413364, 16.606077>,  <15.693205, 23.035240, 16.626612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.564364, 23.413364, 16.606077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207249, 0.017498, -0.978132,
		-0.923742, -0.325697, -0.201551,
		-0.322101, 0.945312, -0.051336,
		15.467734, 23.696959, 16.590675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.407804, 23.066875, 16.000208>,  <15.693205, 23.035240, 16.626612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.407804, 23.066875, 16.000208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.450814, 23.455879, 16.082830>,  <15.476621, 23.689281, 16.132404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.450814, 23.455879, 16.082830>,  <15.407804, 23.066875, 16.000208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.450814, 23.455879, 16.082830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377976, 0.152176, -0.913223,
		-0.919550, 0.176268, -0.351222,
		0.107525, 0.972508, 0.206558,
		15.483071, 23.747631, 16.144798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.084392, 23.447802, 15.399343>,  <15.407804, 23.066875, 16.000208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.084392, 23.447802, 15.399343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.344874, 23.695694, 15.574553>,  <15.501163, 23.844429, 15.679678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.344874, 23.695694, 15.574553>,  <15.084392, 23.447802, 15.399343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.344874, 23.695694, 15.574553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420757, 0.185512, -0.888003,
		-0.631580, 0.762575, -0.139949,
		0.651206, 0.619730, 0.438024,
		15.540236, 23.881613, 15.705960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.035609, 24.111698, 15.020551>,  <15.084392, 23.447802, 15.399343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.035609, 24.111698, 15.020551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.392346, 24.094139, 15.200636>,  <15.606388, 24.083605, 15.308687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.392346, 24.094139, 15.200636>,  <15.035609, 24.111698, 15.020551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.392346, 24.094139, 15.200636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446068, 0.250595, -0.859200,
		-0.075106, 0.967096, 0.243071,
		0.891842, -0.043895, 0.450212,
		15.659899, 24.080971, 15.335699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.337614, 24.706041, 14.820021>,  <15.035609, 24.111698, 15.020551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.337614, 24.706041, 14.820021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.615251, 24.435905, 14.919741>,  <15.781833, 24.273823, 14.979572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.615251, 24.435905, 14.919741>,  <15.337614, 24.706041, 14.820021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.615251, 24.435905, 14.919741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390353, 0.062107, -0.918568,
		0.604864, 0.734886, 0.306730,
		0.694092, -0.675341, 0.249299,
		15.823479, 24.233303, 14.994531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.825998, 24.937330, 14.418099>,  <15.337614, 24.706041, 14.820021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.825998, 24.937330, 14.418099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.965734, 24.581650, 14.536278>,  <16.049574, 24.368242, 14.607184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.965734, 24.581650, 14.536278>,  <15.825998, 24.937330, 14.418099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.965734, 24.581650, 14.536278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438996, -0.123242, -0.889996,
		0.827796, 0.440608, 0.347302,
		0.349337, -0.889200, 0.295445,
		16.070534, 24.314890, 14.624911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.546627, 24.935026, 14.177060>,  <15.825998, 24.937330, 14.418099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.546627, 24.935026, 14.177060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463058, 24.547993, 14.233818>,  <16.412918, 24.315773, 14.267873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463058, 24.547993, 14.233818>,  <16.546627, 24.935026, 14.177060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.463058, 24.547993, 14.233818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434025, -0.221765, -0.873180,
		0.876342, -0.120839, 0.466286,
		-0.208920, -0.967584, 0.141895,
		16.400383, 24.257717, 14.276386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.201088, 24.610329, 14.174952>,  <16.546627, 24.935026, 14.177060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.201088, 24.610329, 14.174952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.932213, 24.321995, 14.107353>,  <16.770887, 24.148994, 14.066794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.932213, 24.321995, 14.107353>,  <17.201088, 24.610329, 14.174952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.932213, 24.321995, 14.107353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523533, -0.301365, -0.796927,
		0.523525, -0.624158, 0.579955,
		-0.672186, -0.720837, -0.168995,
		16.730556, 24.105743, 14.056655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.495050, 23.953075, 14.162193>,  <17.201088, 24.610329, 14.174952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.495050, 23.953075, 14.162193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.166428, 23.890194, 13.942982>,  <16.969254, 23.852465, 13.811455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.166428, 23.890194, 13.942982>,  <17.495050, 23.953075, 14.162193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.166428, 23.890194, 13.942982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562039, -0.384676, -0.732213,
		-0.095706, -0.909567, 0.404387,
		-0.821555, -0.157204, -0.548028,
		16.919962, 23.843033, 13.778573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.605049, 23.340527, 13.894320>,  <17.495050, 23.953075, 14.162193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.605049, 23.340527, 13.894320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.336315, 23.495026, 13.641512>,  <17.175076, 23.587725, 13.489827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.336315, 23.495026, 13.641512>,  <17.605049, 23.340527, 13.894320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.336315, 23.495026, 13.641512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513252, -0.372459, -0.773205,
		-0.534051, -0.843853, 0.051989,
		-0.671835, 0.386247, -0.632021,
		17.134764, 23.610899, 13.451905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.539804, 22.835152, 13.388364>,  <17.605049, 23.340527, 13.894320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.539804, 22.835152, 13.388364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.373955, 23.158112, 13.220463>,  <17.274445, 23.351887, 13.119722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.373955, 23.158112, 13.220463>,  <17.539804, 22.835152, 13.388364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.373955, 23.158112, 13.220463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485417, -0.193925, -0.852504,
		-0.769712, -0.557225, -0.311520,
		-0.414625, 0.807400, -0.419752,
		17.249567, 23.400331, 13.094537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.279905, 22.624008, 12.668027>,  <17.539804, 22.835152, 13.388364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.279905, 22.624008, 12.668027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.333721, 23.020344, 12.672671>,  <17.366011, 23.258146, 12.675458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.333721, 23.020344, 12.672671>,  <17.279905, 22.624008, 12.668027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.333721, 23.020344, 12.672671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481114, -0.055076, -0.874927,
		-0.866273, 0.123300, -0.484117,
		0.134542, 0.990840, 0.011611,
		17.374084, 23.317596, 12.676154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.165344, 22.744286, 12.028879>,  <17.279905, 22.624008, 12.668027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.165344, 22.744286, 12.028879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.345997, 23.075768, 12.161107>,  <17.454388, 23.274656, 12.240443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.345997, 23.075768, 12.161107>,  <17.165344, 22.744286, 12.028879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.345997, 23.075768, 12.161107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337212, 0.184478, -0.923177,
		-0.826025, 0.528407, -0.196133,
		0.451631, 0.828706, 0.330569,
		17.481485, 23.324379, 12.260278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.082047, 23.277294, 11.496935>,  <17.165344, 22.744286, 12.028879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.082047, 23.277294, 11.496935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.404026, 23.402447, 11.698592>,  <17.597214, 23.477537, 11.819587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.404026, 23.402447, 11.698592>,  <17.082047, 23.277294, 11.496935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.404026, 23.402447, 11.698592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441106, 0.252713, -0.861140,
		-0.396836, 0.915556, 0.065409,
		0.804951, 0.312879, 0.504143,
		17.645512, 23.496311, 11.849835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.270676, 23.867754, 11.222227>,  <17.082047, 23.277294, 11.496935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.270676, 23.867754, 11.222227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.598457, 23.826019, 11.447655>,  <17.795126, 23.800978, 11.582911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.598457, 23.826019, 11.447655>,  <17.270676, 23.867754, 11.222227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.598457, 23.826019, 11.447655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562879, 0.331787, -0.757023,
		-0.107998, 0.937566, 0.330614,
		0.819453, -0.104338, 0.563569,
		17.844294, 23.794718, 11.616725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.647522, 24.432976, 11.134255>,  <17.270676, 23.867754, 11.222227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.647522, 24.432976, 11.134255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.937153, 24.188896, 11.262858>,  <18.110931, 24.042448, 11.340020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.937153, 24.188896, 11.262858>,  <17.647522, 24.432976, 11.134255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.937153, 24.188896, 11.262858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589293, 0.305109, -0.748092,
		0.358390, 0.731140, 0.580509,
		0.724079, -0.610199, 0.321507,
		18.154377, 24.005836, 11.359310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.287598, 24.766901, 11.039540>,  <17.647522, 24.432976, 11.134255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.287598, 24.766901, 11.039540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.373280, 24.378025, 11.077412>,  <18.424688, 24.144699, 11.100134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.373280, 24.378025, 11.077412>,  <18.287598, 24.766901, 11.039540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.373280, 24.378025, 11.077412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800905, 0.119322, -0.586783,
		0.559167, 0.201520, 0.804190,
		0.214207, -0.972189, 0.094677,
		18.437542, 24.086369, 11.105815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.050898, 24.700016, 11.109062>,  <18.287598, 24.766901, 11.039540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.050898, 24.700016, 11.109062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.913593, 24.345657, 10.984256>,  <18.831211, 24.133041, 10.909371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.913593, 24.345657, 10.984256>,  <19.050898, 24.700016, 11.109062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.913593, 24.345657, 10.984256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583844, 0.058963, -0.809722,
		0.735729, -0.460116, 0.496986,
		-0.343262, -0.885899, -0.312017,
		18.810616, 24.079887, 10.890651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.675116, 24.271242, 10.854677>,  <19.050898, 24.700016, 11.109062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.675116, 24.271242, 10.854677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.348484, 24.124393, 10.676497>,  <19.152506, 24.036285, 10.569590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.348484, 24.124393, 10.676497>,  <19.675116, 24.271242, 10.854677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.348484, 24.124393, 10.676497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514776, -0.113997, -0.849712,
		0.261167, -0.923162, 0.282072,
		-0.816577, -0.367121, -0.445449,
		19.103512, 24.014257, 10.542863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.859104, 23.711582, 10.397717>,  <19.675116, 24.271242, 10.854677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.859104, 23.711582, 10.397717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.502407, 23.786957, 10.233140>,  <19.288389, 23.832182, 10.134394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.502407, 23.786957, 10.233140>,  <19.859104, 23.711582, 10.397717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.502407, 23.786957, 10.233140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392649, -0.129840, -0.910477,
		-0.224989, -0.973464, 0.041795,
		-0.891744, 0.188437, -0.411443,
		19.234884, 23.843487, 10.109707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.852596, 23.311558, 9.714743>,  <19.859104, 23.711582, 10.397717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.852596, 23.311558, 9.714743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.548630, 23.571323, 9.703506>,  <19.366249, 23.727182, 9.696765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.548630, 23.571323, 9.703506>,  <19.852596, 23.311558, 9.714743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.548630, 23.571323, 9.703506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038109, 0.001370, -0.999273,
		-0.648903, -0.760434, -0.025789,
		-0.759916, 0.649414, -0.028091,
		19.320654, 23.766148, 9.695079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.420769, 23.134611, 9.218029>,  <19.852596, 23.311558, 9.714743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.420769, 23.134611, 9.218029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.317383, 23.517658, 9.268882>,  <19.255352, 23.747486, 9.299394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.317383, 23.517658, 9.268882>,  <19.420769, 23.134611, 9.218029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.317383, 23.517658, 9.268882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136019, 0.094216, -0.986216,
		-0.956396, -0.272195, 0.105903,
		-0.258466, 0.957619, 0.127131,
		19.239843, 23.804943, 9.307021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.773249, 23.177401, 8.826784>,  <19.420769, 23.134611, 9.218029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.773249, 23.177401, 8.826784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.919312, 23.548931, 8.851902>,  <19.006950, 23.771849, 8.866973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.919312, 23.548931, 8.851902>,  <18.773249, 23.177401, 8.826784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.919312, 23.548931, 8.851902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002781, 0.068542, -0.997644,
		-0.930941, 0.364123, 0.027612,
		0.365158, 0.928825, 0.062796,
		19.028858, 23.827579, 8.870741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.445709, 23.480230, 8.358056>,  <18.773249, 23.177401, 8.826784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.445709, 23.480230, 8.358056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.768326, 23.700848, 8.443182>,  <18.961895, 23.833218, 8.494257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.768326, 23.700848, 8.443182>,  <18.445709, 23.480230, 8.358056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.768326, 23.700848, 8.443182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242350, 0.019873, -0.969985,
		-0.539219, 0.833909, -0.117638,
		0.806541, 0.551545, 0.212814,
		19.010288, 23.866310, 8.507026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939285, 23.129463, 8.887326>,  <18.445709, 23.480230, 8.358056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.939285, 23.129463, 8.887326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.702560, 22.837173, 8.751207>,  <17.560526, 22.661800, 8.669537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.702560, 22.837173, 8.751207>,  <17.939285, 23.129463, 8.887326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.702560, 22.837173, 8.751207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595110, 0.111330, 0.795896,
		-0.543695, 0.673533, -0.500748,
		-0.591811, -0.730725, -0.340296,
		17.525017, 22.617956, 8.649118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.225212, 23.325718, 9.025208>,  <17.939285, 23.129463, 8.887326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.225212, 23.325718, 9.025208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.221748, 22.930527, 8.963468>,  <17.219671, 22.693413, 8.926424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.221748, 22.930527, 8.963468>,  <17.225212, 23.325718, 9.025208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.221748, 22.930527, 8.963468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742191, -0.097094, 0.663118,
		-0.670133, 0.120298, -0.732428,
		-0.008657, -0.987979, -0.154350,
		17.219151, 22.634132, 8.917163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.578182, 23.156288, 8.999727>,  <17.225212, 23.325718, 9.025208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.578182, 23.156288, 8.999727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.731388, 22.793880, 9.071757>,  <16.823311, 22.576435, 9.114975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.731388, 22.793880, 9.071757>,  <16.578182, 23.156288, 8.999727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.731388, 22.793880, 9.071757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749649, -0.190960, 0.633688,
		-0.539747, -0.377704, -0.752338,
		0.383013, -0.906021, 0.180075,
		16.846292, 22.522074, 9.125780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.023529, 22.687571, 8.971248>,  <16.578182, 23.156288, 8.999727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.023529, 22.687571, 8.971248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.297901, 22.484116, 9.179397>,  <16.462524, 22.362043, 9.304286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.297901, 22.484116, 9.179397>,  <16.023529, 22.687571, 8.971248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.297901, 22.484116, 9.179397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712125, -0.322207, 0.623747,
		-0.149593, -0.798418, -0.583224,
		0.685929, -0.508637, 0.520374,
		16.503679, 22.331524, 9.335508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.781527, 21.873831, 9.104856>,  <16.023529, 22.687571, 8.971248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.781527, 21.873831, 9.104856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.026024, 22.010033, 9.390636>,  <16.172722, 22.091753, 9.562104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.026024, 22.010033, 9.390636>,  <15.781527, 21.873831, 9.104856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.026024, 22.010033, 9.390636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638120, -0.321965, 0.699386,
		0.468172, -0.883400, 0.020485,
		0.611242, 0.340505, 0.714450,
		16.209396, 22.112185, 9.604972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.809318, 21.341555, 9.573040>,  <15.781527, 21.873831, 9.104856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.809318, 21.341555, 9.573040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.902837, 21.680740, 9.763322>,  <15.958948, 21.884253, 9.877491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.902837, 21.680740, 9.763322>,  <15.809318, 21.341555, 9.573040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.902837, 21.680740, 9.763322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606690, -0.255098, 0.752896,
		0.759781, -0.464630, 0.454810,
		0.233797, 0.847964, 0.475705,
		15.972976, 21.935129, 9.906034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.419486, 21.315996, 10.140145>,  <15.809318, 21.341555, 9.573040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.419486, 21.315996, 10.140145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.594750, 21.659641, 10.245928>,  <15.699909, 21.865829, 10.309398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.594750, 21.659641, 10.245928>,  <15.419486, 21.315996, 10.140145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.594750, 21.659641, 10.245928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582071, 0.046979, 0.811780,
		0.684988, -0.509622, 0.520650,
		0.438161, 0.859115, 0.264456,
		15.726198, 21.917376, 10.325265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.674494, 21.182173, 10.792555>,  <15.419486, 21.315996, 10.140145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.674494, 21.182173, 10.792555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.641522, 21.579655, 10.762211>,  <15.621739, 21.818144, 10.744004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.641522, 21.579655, 10.762211>,  <15.674494, 21.182173, 10.792555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.641522, 21.579655, 10.762211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505213, 0.023948, 0.862662,
		0.859049, 0.109433, 0.500059,
		-0.082428, 0.993705, -0.075860,
		15.616794, 21.877766, 10.739453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.758403, 21.510214, 11.489257>,  <15.674494, 21.182173, 10.792555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.758403, 21.510214, 11.489257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.580239, 21.804474, 11.285128>,  <15.473341, 21.981030, 11.162650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.580239, 21.804474, 11.285128>,  <15.758403, 21.510214, 11.489257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.580239, 21.804474, 11.285128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534281, 0.238981, 0.810822,
		0.718439, 0.633802, 0.286601,
		-0.445409, 0.735651, -0.510322,
		15.446617, 22.025169, 11.132031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.718906, 21.992674, 11.968138>,  <15.758403, 21.510214, 11.489257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.718906, 21.992674, 11.968138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.444283, 22.074524, 11.689063>,  <15.279510, 22.123634, 11.521618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.444283, 22.074524, 11.689063>,  <15.718906, 21.992674, 11.968138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.444283, 22.074524, 11.689063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681442, 0.153501, 0.715593,
		0.253525, 0.966729, 0.034054,
		-0.686558, 0.204627, -0.697686,
		15.238317, 22.135912, 11.479757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.459888, 22.687140, 12.160937>,  <15.718906, 21.992674, 11.968138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.459888, 22.687140, 12.160937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.167289, 22.589611, 11.906233>,  <14.991730, 22.531094, 11.753410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.167289, 22.589611, 11.906233>,  <15.459888, 22.687140, 12.160937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.167289, 22.589611, 11.906233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681570, 0.287973, 0.672706,
		0.019350, 0.926079, -0.376832,
		-0.731497, -0.243821, -0.636761,
		14.947840, 22.516464, 11.715204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.213397, 23.317812, 11.981441>,  <15.459888, 22.687140, 12.160937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.213397, 23.317812, 11.981441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.939952, 23.038143, 11.897696>,  <14.775885, 22.870342, 11.847448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.939952, 23.038143, 11.897696>,  <15.213397, 23.317812, 11.981441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.939952, 23.038143, 11.897696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594924, 0.367652, 0.714771,
		-0.422775, 0.613181, -0.667285,
		-0.683614, -0.699171, -0.209362,
		14.734868, 22.828392, 11.834887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.501940, 23.566185, 11.815110>,  <15.213397, 23.317812, 11.981441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.501940, 23.566185, 11.815110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.439799, 23.192738, 11.944245>,  <14.402515, 22.968670, 12.021727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.439799, 23.192738, 11.944245>,  <14.501940, 23.566185, 11.815110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.439799, 23.192738, 11.944245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731092, 0.328444, 0.598022,
		-0.664358, -0.143121, -0.733584,
		-0.155351, -0.933617, 0.322839,
		14.393194, 22.912653, 12.041097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.798646, 23.584930, 11.889465>,  <14.501940, 23.566185, 11.815110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.798646, 23.584930, 11.889465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.949450, 23.283070, 12.104263>,  <14.039933, 23.101954, 12.233142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.949450, 23.283070, 12.104263>,  <13.798646, 23.584930, 11.889465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.949450, 23.283070, 12.104263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549497, 0.284479, 0.785573,
		-0.745598, -0.591246, -0.307427,
		0.377011, -0.754652, 0.536995,
		14.062553, 23.056675, 12.265362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.299301, 23.391155, 12.234957>,  <13.798646, 23.584930, 11.889465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.299301, 23.391155, 12.234957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.585040, 23.214634, 12.452198>,  <13.756483, 23.108721, 12.582542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.585040, 23.214634, 12.452198>,  <13.299301, 23.391155, 12.234957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.585040, 23.214634, 12.452198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504597, 0.212898, 0.836693,
		-0.484861, -0.871737, -0.070597,
		0.714347, -0.441303, 0.543103,
		13.799344, 23.082243, 12.615129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.999733, 22.915869, 12.676318>,  <13.299301, 23.391155, 12.234957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.999733, 22.915869, 12.676318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.351649, 22.988373, 12.852097>,  <13.562799, 23.031876, 12.957563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.351649, 22.988373, 12.852097>,  <12.999733, 22.915869, 12.676318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.351649, 22.988373, 12.852097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467711, 0.164881, 0.868367,
		0.084946, -0.969514, 0.229839,
		0.879790, 0.181262, 0.439446,
		13.615586, 23.042751, 12.983931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.002910, 22.536255, 13.259772>,  <12.999733, 22.915869, 12.676318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.002910, 22.536255, 13.259772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.277682, 22.820038, 13.322754>,  <13.442546, 22.990309, 13.360543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.277682, 22.820038, 13.322754>,  <13.002910, 22.536255, 13.259772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.277682, 22.820038, 13.322754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400004, 0.188232, 0.896976,
		0.606730, -0.679144, 0.413089,
		0.686932, 0.709459, 0.157454,
		13.483762, 23.032875, 13.369990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.479439, 22.280159, 13.829953>,  <13.002910, 22.536255, 13.259772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.479439, 22.280159, 13.829953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.499230, 22.679600, 13.822523>,  <13.511106, 22.919264, 13.818065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.499230, 22.679600, 13.822523>,  <13.479439, 22.280159, 13.829953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.499230, 22.679600, 13.822523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079353, 0.022471, 0.996593,
		0.995618, -0.047836, 0.080354,
		0.049478, 0.998603, -0.018576,
		13.514074, 22.979181, 13.816950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.987537, 22.438608, 14.322804>,  <13.479439, 22.280159, 13.829953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.987537, 22.438608, 14.322804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.778239, 22.774540, 14.264975>,  <13.652660, 22.976099, 14.230276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.778239, 22.774540, 14.264975>,  <13.987537, 22.438608, 14.322804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.778239, 22.774540, 14.264975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152805, 0.074440, 0.985449,
		0.838370, 0.537724, 0.089380,
		-0.523246, 0.839829, -0.144575,
		13.621265, 23.026489, 14.221602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.324214, 23.083780, 14.683395>,  <13.987537, 22.438608, 14.322804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.324214, 23.083780, 14.683395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.935988, 23.166016, 14.633211>,  <13.703053, 23.215357, 14.603101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.935988, 23.166016, 14.633211>,  <14.324214, 23.083780, 14.683395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.935988, 23.166016, 14.633211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134375, -0.029926, 0.990479,
		0.199878, 0.978181, 0.056671,
		-0.970563, 0.205590, -0.125461,
		13.644819, 23.227694, 14.595572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.091312, 23.510181, 15.357570>,  <14.324214, 23.083780, 14.683395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.091312, 23.510181, 15.357570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.750094, 23.378986, 15.195219>,  <13.545363, 23.300268, 15.097809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.750094, 23.378986, 15.195219>,  <14.091312, 23.510181, 15.357570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.750094, 23.378986, 15.195219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380448, -0.141465, 0.913918,
		-0.357173, 0.934029, -0.004107,
		-0.853045, -0.327990, -0.405877,
		13.494181, 23.280590, 15.073456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.397240, 23.865215, 15.495547>,  <14.091312, 23.510181, 15.357570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.397240, 23.865215, 15.495547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.399932, 23.468170, 15.447098>,  <13.401547, 23.229942, 15.418028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.399932, 23.468170, 15.447098>,  <13.397240, 23.865215, 15.495547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.399932, 23.468170, 15.447098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338214, -0.116248, 0.933862,
		-0.941045, 0.034680, -0.336499,
		0.006731, -0.992615, -0.121124,
		13.401951, 23.170385, 15.410761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.863010, 23.775383, 15.855193>,  <13.397240, 23.865215, 15.495547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.863010, 23.775383, 15.855193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.035855, 23.416576, 15.818012>,  <13.139562, 23.201292, 15.795704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.035855, 23.416576, 15.818012>,  <12.863010, 23.775383, 15.855193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.035855, 23.416576, 15.818012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231582, -0.209987, 0.949882,
		-0.871579, -0.388929, -0.298471,
		0.432112, -0.897017, -0.092951,
		13.165489, 23.147470, 15.790127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.434711, 23.321804, 16.241322>,  <12.863010, 23.775383, 15.855193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.434711, 23.321804, 16.241322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.785779, 23.130836, 16.224485>,  <12.996419, 23.016256, 16.214384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.785779, 23.130836, 16.224485>,  <12.434711, 23.321804, 16.241322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.785779, 23.130836, 16.224485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068493, -0.211867, 0.974895,
		-0.474350, -0.852751, -0.218649,
		0.877668, -0.477418, -0.042092,
		13.049080, 22.987612, 16.211857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.354259, 22.674330, 16.516556>,  <12.434711, 23.321804, 16.241322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.354259, 22.674330, 16.516556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.752778, 22.700825, 16.538465>,  <12.991890, 22.716722, 16.551611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.752778, 22.700825, 16.538465>,  <12.354259, 22.674330, 16.516556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.752778, 22.700825, 16.538465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040012, -0.206568, 0.977614,
		0.076069, -0.976188, -0.203153,
		0.996299, 0.066237, 0.054772,
		13.051668, 22.720695, 16.554897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.440771, 22.196173, 16.939850>,  <12.354259, 22.674330, 16.516556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.440771, 22.196173, 16.939850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.779632, 22.408672, 16.935604>,  <12.982947, 22.536171, 16.933056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.779632, 22.408672, 16.935604>,  <12.440771, 22.196173, 16.939850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.779632, 22.408672, 16.935604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135666, -0.196937, 0.970984,
		0.513743, -0.824010, -0.238907,
		0.847150, 0.531248, -0.010615,
		13.033776, 22.568047, 16.932419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.963846, 21.731489, 17.234325>,  <12.440771, 22.196173, 16.939850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.963846, 21.731489, 17.234325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.066915, 22.110966, 17.307634>,  <13.128756, 22.338652, 17.351620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.066915, 22.110966, 17.307634>,  <12.963846, 21.731489, 17.234325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.066915, 22.110966, 17.307634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189640, -0.235640, 0.953158,
		0.947440, -0.210846, -0.240628,
		0.257671, 0.948693, 0.183270,
		13.144216, 22.395573, 17.362616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.555979, 21.611719, 17.638266>,  <12.963846, 21.731489, 17.234325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.555979, 21.611719, 17.638266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.496524, 22.004501, 17.685032>,  <13.460851, 22.240171, 17.713091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.496524, 22.004501, 17.685032>,  <13.555979, 21.611719, 17.638266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.496524, 22.004501, 17.685032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321196, -0.063880, 0.944856,
		0.935275, 0.177994, -0.305905,
		-0.148638, 0.981956, 0.116916,
		13.451933, 22.299088, 17.720106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.247410, 22.000771, 17.842396>,  <13.555979, 21.611719, 17.638266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.247410, 22.000771, 17.842396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.909942, 22.173351, 17.970188>,  <13.707460, 22.276899, 18.046864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.909942, 22.173351, 17.970188>,  <14.247410, 22.000771, 17.842396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.909942, 22.173351, 17.970188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351667, -0.005514, 0.936109,
		0.405649, 0.902118, -0.147076,
		-0.843670, 0.431453, 0.319482,
		13.656840, 22.302788, 18.066032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.449142, 22.489239, 18.322058>,  <14.247410, 22.000771, 17.842396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.449142, 22.489239, 18.322058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.062589, 22.487831, 18.424894>,  <13.830657, 22.486986, 18.486595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.062589, 22.487831, 18.424894>,  <14.449142, 22.489239, 18.322058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.062589, 22.487831, 18.424894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253395, 0.156421, 0.954633,
		-0.043575, 0.987684, -0.150270,
		-0.966381, -0.003521, 0.257091,
		13.772675, 22.486774, 18.502022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.357183, 22.957155, 18.813049>,  <14.449142, 22.489239, 18.322058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.357183, 22.957155, 18.813049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.038844, 22.723244, 18.875866>,  <13.847841, 22.582897, 18.913555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.038844, 22.723244, 18.875866>,  <14.357183, 22.957155, 18.813049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.038844, 22.723244, 18.875866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078363, 0.157703, 0.984372,
		-0.600406, 0.795716, -0.079682,
		-0.795847, -0.584779, 0.157040,
		13.800090, 22.547810, 18.922977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.279988, 23.003902, 19.572058>,  <14.357183, 22.957155, 18.813049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.279988, 23.003902, 19.572058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.005795, 22.725067, 19.487980>,  <13.841280, 22.557766, 19.437532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.005795, 22.725067, 19.487980>,  <14.279988, 23.003902, 19.572058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.005795, 22.725067, 19.487980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010534, -0.298160, 0.954458,
		-0.728014, 0.652049, 0.211726,
		-0.685481, -0.697089, -0.210196,
		13.800151, 22.515940, 19.424921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.694526, 23.100561, 20.031452>,  <14.279988, 23.003902, 19.572058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.694526, 23.100561, 20.031452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.726459, 22.726509, 19.893373>,  <13.745619, 22.502079, 19.810526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.726459, 22.726509, 19.893373>,  <13.694526, 23.100561, 20.031452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.726459, 22.726509, 19.893373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120269, -0.334735, 0.934606,
		-0.989526, -0.116129, 0.085744,
		0.079833, -0.935129, -0.345196,
		13.750408, 22.445971, 19.789814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.384736, 22.763081, 20.525398>,  <13.694526, 23.100561, 20.031452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.384736, 22.763081, 20.525398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.565879, 22.466503, 20.327335>,  <13.674564, 22.288557, 20.208498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.565879, 22.466503, 20.327335>,  <13.384736, 22.763081, 20.525398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.565879, 22.466503, 20.327335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174729, -0.470797, 0.864765,
		-0.874294, -0.478133, -0.083652,
		0.452856, -0.741443, -0.495160,
		13.701735, 22.244070, 20.178787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.028445, 22.197296, 20.659300>,  <13.384736, 22.763081, 20.525398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.028445, 22.197296, 20.659300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.394034, 22.077145, 20.550173>,  <13.613388, 22.005054, 20.484697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.394034, 22.077145, 20.550173>,  <13.028445, 22.197296, 20.659300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.394034, 22.077145, 20.550173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054353, -0.575645, 0.815892,
		-0.402119, -0.760531, -0.509797,
		0.913973, -0.300377, -0.272815,
		13.668226, 21.987032, 20.468328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.090495, 21.625664, 20.912041>,  <13.028445, 22.197296, 20.659300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.090495, 21.625664, 20.912041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.478753, 21.689194, 20.839794>,  <13.711708, 21.727312, 20.796446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.478753, 21.689194, 20.839794>,  <13.090495, 21.625664, 20.912041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.478753, 21.689194, 20.839794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234018, -0.450289, 0.861670,
		0.055523, -0.878644, -0.474238,
		0.970645, 0.158823, -0.180617,
		13.769947, 21.736841, 20.785608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.538847, 20.914436, 20.932205>,  <13.090495, 21.625664, 20.912041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.538847, 20.914436, 20.932205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.800223, 21.205215, 21.016644>,  <13.957049, 21.379683, 21.067307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.800223, 21.205215, 21.016644>,  <13.538847, 20.914436, 20.932205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.800223, 21.205215, 21.016644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227409, -0.454505, 0.861226,
		0.722011, -0.514754, -0.462307,
		0.653441, 0.726948, 0.211098,
		13.996256, 21.423300, 21.079973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.009851, 20.540018, 21.229002>,  <13.538847, 20.914436, 20.932205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.009851, 20.540018, 21.229002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.084922, 20.912693, 21.353413>,  <14.129965, 21.136297, 21.428059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.084922, 20.912693, 21.353413>,  <14.009851, 20.540018, 21.229002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.084922, 20.912693, 21.353413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320593, -0.357415, 0.877197,
		0.928438, -0.064919, -0.365772,
		0.187679, 0.931687, 0.311025,
		14.141226, 21.192200, 21.446720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.194857, 19.973135, 21.680342>,  <14.009851, 20.540018, 21.229002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.194857, 19.973135, 21.680342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.896022, 19.710018, 21.642036>,  <13.716722, 19.552147, 21.619053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.896022, 19.710018, 21.642036>,  <14.194857, 19.973135, 21.680342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.896022, 19.710018, 21.642036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270140, 0.432072, -0.860429,
		0.607361, -0.616945, -0.500491,
		-0.747086, -0.657794, -0.095762,
		13.671896, 19.512680, 21.613308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.481221, 19.331869, 21.217476>,  <14.194857, 19.973135, 21.680342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.481221, 19.331869, 21.217476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.082534, 19.315540, 21.189514>,  <13.843322, 19.305744, 21.172737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.082534, 19.315540, 21.189514>,  <14.481221, 19.331869, 21.217476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.082534, 19.315540, 21.189514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066152, 0.087030, -0.994007,
		0.046655, -0.995369, -0.084044,
		-0.996718, -0.040815, -0.069906,
		13.783519, 19.303295, 21.168543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.414488, 18.787308, 20.698418>,  <14.481221, 19.331869, 21.217476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.414488, 18.787308, 20.698418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074740, 18.997948, 20.712645>,  <13.870892, 19.124332, 20.721180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074740, 18.997948, 20.712645>,  <14.414488, 18.787308, 20.698418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.074740, 18.997948, 20.712645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077922, -0.058461, -0.995244,
		-0.522017, -0.848100, 0.090689,
		-0.849368, 0.526601, 0.035568,
		13.819930, 19.155928, 20.723314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.032697, 18.481188, 20.244753>,  <14.414488, 18.787308, 20.698418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.032697, 18.481188, 20.244753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.842595, 18.829990, 20.291636>,  <13.728535, 19.039272, 20.319765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.842595, 18.829990, 20.291636>,  <14.032697, 18.481188, 20.244753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.842595, 18.829990, 20.291636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208353, 0.017881, -0.977890,
		-0.854824, -0.489165, 0.173187,
		-0.475253, 0.872008, 0.117204,
		13.700019, 19.091593, 20.326797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.454176, 18.401707, 19.828997>,  <14.032697, 18.481188, 20.244753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.454176, 18.401707, 19.828997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.481339, 18.796383, 19.888098>,  <13.497638, 19.033188, 19.923559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.481339, 18.796383, 19.888098>,  <13.454176, 18.401707, 19.828997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.481339, 18.796383, 19.888098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265299, 0.160623, -0.950693,
		-0.961771, 0.025362, 0.272676,
		0.067910, 0.986690, 0.147754,
		13.501713, 19.092390, 19.932425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.894379, 18.640314, 19.384867>,  <13.454176, 18.401707, 19.828997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.894379, 18.640314, 19.384867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.117806, 18.964256, 19.456575>,  <13.251863, 19.158621, 19.499599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.117806, 18.964256, 19.456575>,  <12.894379, 18.640314, 19.384867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.117806, 18.964256, 19.456575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126419, 0.296724, -0.946558,
		-0.819768, 0.506055, 0.268122,
		0.558569, 0.809854, 0.179270,
		13.285378, 19.207212, 19.510357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.505523, 19.263660, 19.295282>,  <12.894379, 18.640314, 19.384867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.505523, 19.263660, 19.295282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.898660, 19.310684, 19.238434>,  <13.134542, 19.338898, 19.204325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.898660, 19.310684, 19.238434>,  <12.505523, 19.263660, 19.295282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.898660, 19.310684, 19.238434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166858, 0.238377, -0.956731,
		-0.078594, 0.964031, 0.253903,
		0.982844, 0.117559, -0.142121,
		13.193513, 19.345951, 19.195797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.568639, 19.903780, 18.833998>,  <12.505523, 19.263660, 19.295282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.568639, 19.903780, 18.833998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.944356, 19.766708, 18.827047>,  <13.169786, 19.684465, 18.822876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.944356, 19.766708, 18.827047>,  <12.568639, 19.903780, 18.833998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.944356, 19.766708, 18.827047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158151, 0.477333, -0.864373,
		0.304496, 0.809151, 0.502550,
		0.939292, -0.342677, -0.017378,
		13.226144, 19.663904, 18.821835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.070949, 20.463461, 18.600933>,  <12.568639, 19.903780, 18.833998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.070949, 20.463461, 18.600933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.242347, 20.108215, 18.534422>,  <13.345185, 19.895069, 18.494514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.242347, 20.108215, 18.534422>,  <13.070949, 20.463461, 18.600933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.242347, 20.108215, 18.534422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261591, 0.298086, -0.917995,
		0.864848, 0.349858, 0.360051,
		0.428494, -0.888112, -0.166280,
		13.370895, 19.841782, 18.484537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.726968, 20.577114, 18.212776>,  <13.070949, 20.463461, 18.600933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.726968, 20.577114, 18.212776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.599544, 20.202713, 18.152887>,  <13.523088, 19.978073, 18.116953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.599544, 20.202713, 18.152887>,  <13.726968, 20.577114, 18.212776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.599544, 20.202713, 18.152887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029912, 0.147949, -0.988543,
		0.947430, -0.319390, -0.019133,
		-0.318561, -0.936003, -0.149724,
		13.503975, 19.921911, 18.107969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.176035, 20.378572, 17.661926>,  <13.726968, 20.577114, 18.212776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.176035, 20.378572, 17.661926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.897454, 20.091564, 17.666325>,  <13.730306, 19.919359, 17.668964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.897454, 20.091564, 17.666325>,  <14.176035, 20.378572, 17.661926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.897454, 20.091564, 17.666325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172810, -0.182569, -0.967887,
		0.696484, -0.672187, 0.251145,
		-0.696452, -0.717519, 0.010996,
		13.688519, 19.876308, 17.669622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.476776, 19.806669, 17.408762>,  <14.176035, 20.378572, 17.661926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.476776, 19.806669, 17.408762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.087426, 19.750416, 17.336359>,  <13.853816, 19.716663, 17.292917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.087426, 19.750416, 17.336359>,  <14.476776, 19.806669, 17.408762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.087426, 19.750416, 17.336359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189158, -0.046817, -0.980830,
		0.129465, -0.988954, 0.072173,
		-0.973374, -0.140635, -0.181007,
		13.795414, 19.708225, 17.282057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.444643, 19.288033, 16.827772>,  <14.476776, 19.806669, 17.408762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.444643, 19.288033, 16.827772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.087794, 19.468670, 16.822332>,  <13.873685, 19.577051, 16.819069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.087794, 19.468670, 16.822332>,  <14.444643, 19.288033, 16.827772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.087794, 19.468670, 16.822332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067656, -0.163299, -0.984254,
		-0.446703, -0.877153, 0.176235,
		-0.892120, 0.451593, -0.013601,
		13.820158, 19.604147, 16.818253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.970928, 18.842493, 16.546949>,  <14.444643, 19.288033, 16.827772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.970928, 18.842493, 16.546949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.823377, 19.210396, 16.493320>,  <13.734845, 19.431137, 16.461143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.823377, 19.210396, 16.493320>,  <13.970928, 18.842493, 16.546949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.823377, 19.210396, 16.493320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004794, -0.146125, -0.989254,
		-0.929465, -0.364273, 0.058311,
		-0.368880, 0.919757, -0.134072,
		13.712712, 19.486322, 16.453098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.421853, 18.790342, 16.073605>,  <13.970928, 18.842493, 16.546949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.421853, 18.790342, 16.073605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444015, 19.189728, 16.072680>,  <13.457312, 19.429359, 16.072124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444015, 19.189728, 16.072680>,  <13.421853, 18.790342, 16.073605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.444015, 19.189728, 16.072680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177990, 0.007597, -0.984003,
		-0.982471, 0.054930, 0.178137,
		0.055404, 0.998461, -0.002313,
		13.460636, 19.489265, 16.071985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.948806, 19.010288, 15.572960>,  <13.421853, 18.790342, 16.073605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.948806, 19.010288, 15.572960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.150910, 19.353802, 15.606909>,  <13.272173, 19.559910, 15.627278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.150910, 19.353802, 15.606909>,  <12.948806, 19.010288, 15.572960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.150910, 19.353802, 15.606909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236727, 0.232507, -0.943346,
		-0.829862, 0.456544, 0.320774,
		0.505261, 0.858783, 0.084872,
		13.302488, 19.611437, 15.632370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.510717, 19.623932, 15.403430>,  <12.948806, 19.010288, 15.572960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.510717, 19.623932, 15.403430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.889070, 19.742699, 15.351049>,  <13.116081, 19.813959, 15.319621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.889070, 19.742699, 15.351049>,  <12.510717, 19.623932, 15.403430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.889070, 19.742699, 15.351049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229849, 0.328123, -0.916245,
		-0.229082, 0.896758, 0.378611,
		0.945881, 0.296918, -0.130952,
		13.172833, 19.831774, 15.311764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.466776, 20.297413, 15.135836>,  <12.510717, 19.623932, 15.403430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.466776, 20.297413, 15.135836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.818191, 20.130192, 15.043396>,  <13.029039, 20.029860, 14.987932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.818191, 20.130192, 15.043396>,  <12.466776, 20.297413, 15.135836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.818191, 20.130192, 15.043396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107258, 0.298799, -0.948269,
		0.465479, 0.857876, 0.217666,
		0.878536, -0.418053, -0.231099,
		13.081751, 20.004776, 14.974066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.683672, 20.710823, 14.608592>,  <12.466776, 20.297413, 15.135836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.683672, 20.710823, 14.608592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911052, 20.384922, 14.562904>,  <13.047480, 20.189383, 14.535492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911052, 20.384922, 14.562904>,  <12.683672, 20.710823, 14.608592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.911052, 20.384922, 14.562904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132871, 0.227925, -0.964570,
		0.811918, 0.533133, 0.237821,
		0.568450, -0.814751, -0.114219,
		13.081587, 20.140497, 14.528639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.312128, 20.924644, 14.226345>,  <12.683672, 20.710823, 14.608592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.312128, 20.924644, 14.226345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.247071, 20.534122, 14.169241>,  <13.208037, 20.299810, 14.134978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.247071, 20.534122, 14.169241>,  <13.312128, 20.924644, 14.226345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.247071, 20.534122, 14.169241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149623, 0.118609, -0.981603,
		0.975275, -0.181011, 0.126786,
		-0.162643, -0.976303, -0.142760,
		13.198278, 20.241232, 14.126413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.727243, 20.824539, 13.637288>,  <13.312128, 20.924644, 14.226345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.727243, 20.824539, 13.637288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.491660, 20.501526, 13.650051>,  <13.350310, 20.307718, 13.657709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.491660, 20.501526, 13.650051>,  <13.727243, 20.824539, 13.637288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.491660, 20.501526, 13.650051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058626, -0.082067, -0.994901,
		0.806035, -0.584083, 0.095677,
		-0.588957, -0.807534, 0.031907,
		13.314973, 20.259266, 13.659623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.102563, 20.377497, 13.158880>,  <13.727243, 20.824539, 13.637288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.102563, 20.377497, 13.158880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.731910, 20.230881, 13.192345>,  <13.509518, 20.142912, 13.212423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.731910, 20.230881, 13.192345>,  <14.102563, 20.377497, 13.158880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.731910, 20.230881, 13.192345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047565, -0.106444, -0.993180,
		0.372944, -0.924294, 0.081201,
		-0.926634, -0.366538, 0.083662,
		13.453919, 20.120920, 13.217443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.058756, 19.820995, 12.592872>,  <14.102563, 20.377497, 13.158880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.058756, 19.820995, 12.592872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.683885, 19.915279, 12.695742>,  <13.458961, 19.971849, 12.757463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.683885, 19.915279, 12.695742>,  <14.058756, 19.820995, 12.592872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.683885, 19.915279, 12.695742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253758, 0.045261, -0.966208,
		-0.239383, -0.970769, 0.017396,
		-0.937178, 0.235709, 0.257176,
		13.402731, 19.985992, 12.772894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.690758, 19.541428, 12.040158>,  <14.058756, 19.820995, 12.592872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.690758, 19.541428, 12.040158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.437476, 19.813553, 12.187793>,  <13.285507, 19.976828, 12.276374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.437476, 19.813553, 12.187793>,  <13.690758, 19.541428, 12.040158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.437476, 19.813553, 12.187793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218636, 0.300223, -0.928474,
		-0.742462, -0.668611, -0.041361,
		-0.633205, 0.680313, 0.369086,
		13.247515, 20.017647, 12.298519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.212020, 19.455795, 11.554418>,  <13.690758, 19.541428, 12.040158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.212020, 19.455795, 11.554418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.159579, 19.787987, 11.770979>,  <13.128115, 19.987301, 11.900916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.159579, 19.787987, 11.770979>,  <13.212020, 19.455795, 11.554418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.159579, 19.787987, 11.770979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171372, 0.518911, -0.837474,
		-0.976445, -0.202576, 0.074291,
		-0.131101, 0.830478, 0.541404,
		13.120249, 20.037130, 11.933400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.557797, 19.674133, 11.427159>,  <13.212020, 19.455795, 11.554418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.557797, 19.674133, 11.427159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.758706, 20.002304, 11.536428>,  <12.879251, 20.199207, 11.601990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.758706, 20.002304, 11.536428>,  <12.557797, 19.674133, 11.427159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.758706, 20.002304, 11.536428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274915, 0.451030, -0.849114,
		-0.819845, 0.351385, 0.452087,
		0.502271, 0.820427, 0.273173,
		12.909388, 20.248432, 11.618381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.171369, 20.197601, 11.166088>,  <12.557797, 19.674133, 11.427159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.171369, 20.197601, 11.166088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.536397, 20.349941, 11.225641>,  <12.755414, 20.441345, 11.261373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.536397, 20.349941, 11.225641>,  <12.171369, 20.197601, 11.166088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.536397, 20.349941, 11.225641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050649, 0.466558, -0.883039,
		-0.405769, 0.798295, 0.445057,
		0.912571, 0.380852, 0.148882,
		12.810168, 20.464197, 11.270306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.254210, 20.788849, 10.865666>,  <12.171369, 20.197601, 11.166088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.254210, 20.788849, 10.865666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.646329, 20.730320, 10.918741>,  <12.881600, 20.695202, 10.950586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.646329, 20.730320, 10.918741>,  <12.254210, 20.788849, 10.865666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.646329, 20.730320, 10.918741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179935, 0.384393, -0.905464,
		0.081485, 0.911500, 0.403148,
		0.980298, -0.146322, 0.132688,
		12.940418, 20.686422, 10.958548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.647182, 21.353407, 10.674774>,  <12.254210, 20.788849, 10.865666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.647182, 21.353407, 10.674774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.920043, 21.067348, 10.613803>,  <13.083759, 20.895714, 10.577220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.920043, 21.067348, 10.613803>,  <12.647182, 21.353407, 10.674774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.920043, 21.067348, 10.613803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109085, 0.305658, -0.945872,
		0.723027, 0.628602, 0.286517,
		0.682153, -0.715146, -0.152428,
		13.124689, 20.852804, 10.568074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.244386, 21.646866, 10.243483>,  <12.647182, 21.353407, 10.674774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.244386, 21.646866, 10.243483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.276635, 21.250187, 10.203406>,  <13.295985, 21.012180, 10.179360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.276635, 21.250187, 10.203406>,  <13.244386, 21.646866, 10.243483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.276635, 21.250187, 10.203406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214106, 0.115403, -0.969969,
		0.973477, 0.056752, 0.221633,
		0.080625, -0.991696, -0.100191,
		13.300822, 20.952679, 10.173349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.933648, 21.505241, 9.920293>,  <13.244386, 21.646866, 10.243483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.933648, 21.505241, 9.920293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.699828, 21.181786, 9.893740>,  <13.559536, 20.987713, 9.877808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.699828, 21.181786, 9.893740>,  <13.933648, 21.505241, 9.920293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.699828, 21.181786, 9.893740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127791, -0.010965, -0.991741,
		0.801231, -0.588205, 0.109746,
		-0.584550, -0.808637, -0.066382,
		13.524463, 20.939194, 9.873825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.224396, 21.157871, 9.341990>,  <13.933648, 21.505241, 9.920293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.224396, 21.157871, 9.341990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.873754, 20.967247, 9.368690>,  <13.663368, 20.852873, 9.384711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.873754, 20.967247, 9.368690>,  <14.224396, 21.157871, 9.341990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.873754, 20.967247, 9.368690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023443, -0.180847, -0.983232,
		0.480641, -0.860340, 0.169704,
		-0.876604, -0.476560, 0.066753,
		13.610772, 20.824280, 9.388717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.363743, 20.582699, 9.075276>,  <14.224396, 21.157871, 9.341990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.363743, 20.582699, 9.075276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.965106, 20.600712, 9.047635>,  <13.725924, 20.611519, 9.031050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.965106, 20.600712, 9.047635>,  <14.363743, 20.582699, 9.075276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.965106, 20.600712, 9.047635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055712, -0.250296, -0.966565,
		-0.060822, -0.967121, 0.246935,
		-0.996593, 0.045031, -0.069104,
		13.666128, 20.614222, 9.026904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.137207, 19.974840, 8.819710>,  <14.363743, 20.582699, 9.075276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.137207, 19.974840, 8.819710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.862180, 20.251568, 8.731492>,  <13.697164, 20.417604, 8.678561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.862180, 20.251568, 8.731492>,  <14.137207, 19.974840, 8.819710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.862180, 20.251568, 8.731492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117309, -0.193907, -0.973981,
		-0.716582, -0.695549, 0.052168,
		-0.687567, 0.691818, -0.220545,
		13.655910, 20.459114, 8.665329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.695464, 19.651037, 8.334783>,  <14.137207, 19.974840, 8.819710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.695464, 19.651037, 8.334783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.640136, 20.045776, 8.301328>,  <13.606938, 20.282619, 8.281255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.640136, 20.045776, 8.301328>,  <13.695464, 19.651037, 8.334783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.640136, 20.045776, 8.301328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256705, -0.045839, -0.965402,
		-0.956541, -0.155006, -0.246989,
		-0.138321, 0.986850, -0.083638,
		13.598639, 20.341831, 8.276237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.423888, 19.710897, 7.656518>,  <13.695464, 19.651037, 8.334783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.423888, 19.710897, 7.656518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.534858, 20.080708, 7.761046>,  <13.601439, 20.302593, 7.823764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.534858, 20.080708, 7.761046>,  <13.423888, 19.710897, 7.656518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.534858, 20.080708, 7.761046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274965, 0.184216, -0.943641,
		-0.920560, 0.333643, -0.203106,
		0.277424, 0.924525, 0.261322,
		13.618085, 20.358065, 7.839443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.197638, 20.263371, 7.110956>,  <13.423888, 19.710897, 7.656518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.197638, 20.263371, 7.110956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.527234, 20.399948, 7.291823>,  <13.724992, 20.481894, 7.400343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.527234, 20.399948, 7.291823>,  <13.197638, 20.263371, 7.110956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.527234, 20.399948, 7.291823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402987, 0.207820, -0.891298,
		-0.398297, 0.916639, 0.033645,
		0.823991, 0.341443, 0.452167,
		13.774431, 20.502380, 7.427474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.385785, 20.779684, 6.741847>,  <13.197638, 20.263371, 7.110956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.385785, 20.779684, 6.741847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.733161, 20.738689, 6.935881>,  <13.941586, 20.714092, 7.052301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.733161, 20.738689, 6.935881>,  <13.385785, 20.779684, 6.741847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.733161, 20.738689, 6.935881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491392, 0.047855, -0.869623,
		0.065911, 0.993582, 0.091921,
		0.868441, -0.102487, 0.485085,
		13.993693, 20.707943, 7.081406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.787776, 21.161728, 6.431147>,  <13.385785, 20.779684, 6.741847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.787776, 21.161728, 6.431147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.057874, 20.924889, 6.607085>,  <14.219933, 20.782785, 6.712648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.057874, 20.924889, 6.607085>,  <13.787776, 21.161728, 6.431147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.057874, 20.924889, 6.607085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487723, -0.088932, -0.868457,
		0.553329, 0.800943, 0.228730,
		0.675243, -0.592099, 0.439847,
		14.260447, 20.747259, 6.739039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.458969, 21.440479, 6.120153>,  <13.787776, 21.161728, 6.431147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.458969, 21.440479, 6.120153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.521871, 21.086166, 6.294810>,  <14.559611, 20.873579, 6.399605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.521871, 21.086166, 6.294810>,  <14.458969, 21.440479, 6.120153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.521871, 21.086166, 6.294810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457163, -0.326621, -0.827236,
		0.875370, 0.329704, 0.353586,
		0.157255, -0.885784, 0.436643,
		14.569047, 20.820431, 6.425803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.207660, 21.184916, 6.156938>,  <14.458969, 21.440479, 6.120153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.207660, 21.184916, 6.156938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.954381, 20.885338, 6.078818>,  <14.802414, 20.705591, 6.031947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.954381, 20.885338, 6.078818>,  <15.207660, 21.184916, 6.156938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.954381, 20.885338, 6.078818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509518, -0.213404, -0.833577,
		0.582627, -0.627326, 0.516728,
		-0.633196, -0.748947, -0.195299,
		14.764422, 20.660654, 6.020229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.666025, 20.663456, 6.025420>,  <15.207660, 21.184916, 6.156938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.666025, 20.663456, 6.025420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.307374, 20.617256, 5.854438>,  <15.092183, 20.589537, 5.751849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.307374, 20.617256, 5.854438>,  <15.666025, 20.663456, 6.025420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.307374, 20.617256, 5.854438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441203, -0.314566, -0.840469,
		-0.037388, -0.942183, 0.333008,
		-0.896628, -0.115501, -0.427455,
		15.038385, 20.582605, 5.726201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.695080, 19.957737, 5.725894>,  <15.666025, 20.663456, 6.025420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.695080, 19.957737, 5.725894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.420722, 20.162628, 5.519139>,  <15.256107, 20.285563, 5.395086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.420722, 20.162628, 5.519139>,  <15.695080, 19.957737, 5.725894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.420722, 20.162628, 5.519139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348615, -0.392196, -0.851263,
		-0.638762, -0.764071, 0.090435,
		-0.685894, 0.512228, -0.516887,
		15.214953, 20.316296, 5.364073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.181484, 19.486908, 5.239642>,  <15.695080, 19.957737, 5.725894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.181484, 19.486908, 5.239642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255843, 19.857616, 5.109080>,  <15.300459, 20.080042, 5.030743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255843, 19.857616, 5.109080>,  <15.181484, 19.486908, 5.239642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.255843, 19.857616, 5.109080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199119, -0.360836, -0.911125,
		-0.962182, 0.104383, -0.251617,
		0.185898, 0.926770, -0.326405,
		15.311612, 20.135647, 5.011159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.693351, 19.615658, 4.689789>,  <15.181484, 19.486908, 5.239642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.693351, 19.615658, 4.689789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.042411, 19.804199, 4.638711>,  <15.251847, 19.917324, 4.608064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.042411, 19.804199, 4.638711>,  <14.693351, 19.615658, 4.689789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.042411, 19.804199, 4.638711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085067, -0.404210, -0.910702,
		-0.480880, 0.783861, -0.392830,
		0.872650, 0.471355, -0.127696,
		15.304206, 19.945606, 4.600402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.679808, 19.998528, 4.060803>,  <14.693351, 19.615658, 4.689789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.679808, 19.998528, 4.060803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.048051, 19.881184, 4.163892>,  <15.268997, 19.810778, 4.225745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.048051, 19.881184, 4.163892>,  <14.679808, 19.998528, 4.060803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.048051, 19.881184, 4.163892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049069, -0.567856, -0.821664,
		0.387391, 0.769077, -0.508379,
		0.920609, -0.293359, 0.257721,
		15.324233, 19.793177, 4.241208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.000158, 20.165129, 3.482121>,  <14.679808, 19.998528, 4.060803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.000158, 20.165129, 3.482121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.191520, 19.877296, 3.683448>,  <15.306336, 19.704597, 3.804245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.191520, 19.877296, 3.683448>,  <15.000158, 20.165129, 3.482121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.191520, 19.877296, 3.683448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108364, -0.520409, -0.847014,
		0.871428, 0.459757, -0.170989,
		0.478405, -0.719582, 0.503320,
		15.335041, 19.661423, 3.834444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635777, 20.094917, 3.102051>,  <15.000158, 20.165129, 3.482121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.635777, 20.094917, 3.102051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.514529, 19.768143, 3.298309>,  <15.441781, 19.572077, 3.416064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.514529, 19.768143, 3.298309>,  <15.635777, 20.094917, 3.102051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.514529, 19.768143, 3.298309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127137, -0.544933, -0.828785,
		0.944434, -0.188841, 0.269042,
		-0.303118, -0.816938, 0.490644,
		15.423594, 19.523062, 3.445502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.148409, 19.623650, 3.083795>,  <15.635777, 20.094917, 3.102051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.148409, 19.623650, 3.083795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.793750, 19.442589, 3.121668>,  <15.580955, 19.333952, 3.144392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.793750, 19.442589, 3.121668>,  <16.148409, 19.623650, 3.083795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.793750, 19.442589, 3.121668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256340, -0.651476, -0.714051,
		0.384901, -0.608840, 0.693661,
		-0.886646, -0.452652, 0.094684,
		15.527756, 19.306793, 3.150074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.303244, 18.839470, 3.069500>,  <16.148409, 19.623650, 3.083795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.303244, 18.839470, 3.069500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.924844, 18.907127, 2.958884>,  <15.697803, 18.947721, 2.892515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.924844, 18.907127, 2.958884>,  <16.303244, 18.839470, 3.069500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.924844, 18.907127, 2.958884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101006, -0.656808, -0.747263,
		-0.308029, -0.734843, 0.604255,
		-0.946000, 0.169145, -0.276539,
		15.641044, 18.957870, 2.875922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.953808, 18.154228, 3.008408>,  <16.303244, 18.839470, 3.069500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.953808, 18.154228, 3.008408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.776229, 18.432449, 2.782446>,  <15.669682, 18.599382, 2.646869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.776229, 18.432449, 2.782446>,  <15.953808, 18.154228, 3.008408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.776229, 18.432449, 2.782446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105970, -0.585258, -0.803893,
		-0.889765, -0.416749, 0.186115,
		-0.443947, 0.695553, -0.564905,
		15.643044, 18.641115, 2.612974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.039507, 18.093018, 2.224351>,  <15.953808, 18.154228, 3.008408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.039507, 18.093018, 2.224351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.094612, 17.705631, 2.141316>,  <16.127676, 17.473200, 2.091496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.094612, 17.705631, 2.141316>,  <16.039507, 18.093018, 2.224351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.094612, 17.705631, 2.141316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061837, 0.200767, -0.977685,
		0.988533, 0.147527, -0.032229,
		0.137765, -0.968467, -0.207587,
		16.135941, 17.415091, 2.079040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.321022, 18.090633, 1.525856>,  <16.039507, 18.093018, 2.224351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.321022, 18.090633, 1.525856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.288837, 17.694229, 1.568605>,  <16.269527, 17.456387, 1.594254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.288837, 17.694229, 1.568605>,  <16.321022, 18.090633, 1.525856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.288837, 17.694229, 1.568605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042267, -0.110515, -0.992975,
		0.995861, -0.075377, 0.050779,
		-0.080459, -0.991012, 0.106871,
		16.264700, 17.396925, 1.600666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.917002, 17.825266, 1.141793>,  <16.321022, 18.090633, 1.525856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.917002, 17.825266, 1.141793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.592999, 17.591003, 1.153746>,  <16.398596, 17.450447, 1.160917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.592999, 17.591003, 1.153746>,  <16.917002, 17.825266, 1.141793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.592999, 17.591003, 1.153746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003443, -0.046206, -0.998926,
		0.586406, -0.809243, 0.035411,
		-0.810009, -0.585655, 0.029881,
		16.349995, 17.415308, 1.162710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.929422, 17.215311, 0.613808>,  <16.917002, 17.825266, 1.141793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.929422, 17.215311, 0.613808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.551338, 17.307091, 0.706703>,  <16.324488, 17.362158, 0.762439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.551338, 17.307091, 0.706703>,  <16.929422, 17.215311, 0.613808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.551338, 17.307091, 0.706703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285789, -0.237673, -0.928352,
		-0.157810, -0.943857, 0.290223,
		-0.945209, 0.229445, 0.232237,
		16.267776, 17.375925, 0.776373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.512403, 16.759254, 0.249873>,  <16.929422, 17.215311, 0.613808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.512403, 16.759254, 0.249873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.294464, 17.084328, 0.332515>,  <16.163700, 17.279371, 0.382100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.294464, 17.084328, 0.332515>,  <16.512403, 16.759254, 0.249873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.294464, 17.084328, 0.332515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361296, -0.005174, -0.932437,
		-0.756707, -0.582683, 0.296438,
		-0.544849, 0.812683, 0.206606,
		16.131010, 17.328133, 0.394497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.768943, 16.596275, 0.251416>,  <16.512403, 16.759254, 0.249873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.768943, 16.596275, 0.251416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.891074, 16.957832, 0.131578>,  <15.964353, 17.174767, 0.059676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.891074, 16.957832, 0.131578>,  <15.768943, 16.596275, 0.251416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.891074, 16.957832, 0.131578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352751, -0.184873, -0.917272,
		-0.884500, 0.385751, 0.262402,
		0.305328, 0.903890, -0.299594,
		15.982673, 17.229000, 0.041700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.336795, 15.851936, 0.471258>,  <15.768943, 16.596275, 0.251416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.336795, 15.851936, 0.471258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137393, 15.883938, 0.125983>,  <15.017752, 15.903139, -0.081181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137393, 15.883938, 0.125983>,  <15.336795, 15.851936, 0.471258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.137393, 15.883938, 0.125983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799172, 0.343393, 0.493362,
		0.335883, 0.935778, -0.107246,
		-0.498505, 0.080004, -0.863187,
		14.987842, 15.907939, -0.132973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.067662, 16.461575, 0.549041>,  <15.336795, 15.851936, 0.471258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.067662, 16.461575, 0.549041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.877559, 16.192833, 0.321799>,  <14.763496, 16.031588, 0.185454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.877559, 16.192833, 0.321799>,  <15.067662, 16.461575, 0.549041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.877559, 16.192833, 0.321799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850729, 0.186164, 0.491532,
		-0.224477, 0.716908, -0.660040,
		-0.475259, -0.671852, -0.568105,
		14.734981, 15.991277, 0.151368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.439394, 16.611551, 0.348440>,  <15.067662, 16.461575, 0.549041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.439394, 16.611551, 0.348440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.368545, 17.004086, 0.318487>,  <14.326035, 17.239607, 0.300515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.368545, 17.004086, 0.318487>,  <14.439394, 16.611551, 0.348440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.368545, 17.004086, 0.318487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888609, -0.192166, -0.416468,
		-0.423085, -0.007224, 0.906061,
		-0.177123, 0.981336, -0.074883,
		14.315408, 17.298487, 0.296022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.799819, 16.631992, 0.667193>,  <14.439394, 16.611551, 0.348440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.799819, 16.631992, 0.667193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.886516, 16.933800, 0.419410>,  <13.938534, 17.114883, 0.270740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.886516, 16.933800, 0.419410>,  <13.799819, 16.631992, 0.667193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.886516, 16.933800, 0.419410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925816, -0.042410, -0.375589,
		-0.309659, 0.654910, 0.689351,
		0.216741, 0.754516, -0.619458,
		13.951538, 17.160154, 0.233572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.281202, 17.189346, 0.711683>,  <13.799819, 16.631992, 0.667193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.281202, 17.189346, 0.711683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.454734, 17.200394, 0.351454>,  <13.558853, 17.207022, 0.135316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.454734, 17.200394, 0.351454>,  <13.281202, 17.189346, 0.711683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.454734, 17.200394, 0.351454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899287, 0.074799, -0.430916,
		0.055461, 0.996816, 0.057285,
		0.433829, 0.027617, -0.900572,
		13.584883, 17.208679, 0.081282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.130438, 17.834494, 0.384084>,  <13.281202, 17.189346, 0.711683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.130438, 17.834494, 0.384084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.172059, 17.516037, 0.145644>,  <13.197032, 17.324963, 0.002581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.172059, 17.516037, 0.145644>,  <13.130438, 17.834494, 0.384084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.172059, 17.516037, 0.145644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933432, 0.128728, -0.334863,
		0.343332, 0.591262, -0.729748,
		0.104053, -0.796140, -0.596100,
		13.203275, 17.277195, -0.033185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.551470, 17.862097, 0.013178>,  <13.130438, 17.834494, 0.384084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.551470, 17.862097, 0.013178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.656262, 17.483021, -0.059763>,  <12.719138, 17.255575, -0.103528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.656262, 17.483021, -0.059763>,  <12.551470, 17.862097, 0.013178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.656262, 17.483021, -0.059763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910219, -0.179843, -0.373039,
		0.320729, 0.263711, -0.909719,
		0.261981, -0.947688, -0.182354,
		12.734857, 17.198715, -0.114469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.860135, 18.238270, -0.173285>,  <12.551470, 17.862097, 0.013178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.860135, 18.238270, -0.173285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.820405, 18.608742, -0.318789>,  <11.796567, 18.831026, -0.406092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.820405, 18.608742, -0.318789>,  <11.860135, 18.238270, -0.173285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.820405, 18.608742, -0.318789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255397, -0.377051, -0.890284,
		-0.961721, 0.004477, 0.273994,
		-0.099324, 0.926182, -0.363761,
		11.790607, 18.886597, -0.427917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.213624, 18.368216, -0.392728>,  <11.860135, 18.238270, -0.173285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.213624, 18.368216, -0.392728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.481278, 18.575073, -0.606201>,  <11.641871, 18.699188, -0.734284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.481278, 18.575073, -0.606201>,  <11.213624, 18.368216, -0.392728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.481278, 18.575073, -0.606201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334912, -0.431226, -0.837782,
		-0.663392, 0.739327, -0.115351,
		0.669137, 0.517145, -0.533682,
		11.682019, 18.730217, -0.766305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.932900, 18.667854, -1.042687>,  <11.213624, 18.368216, -0.392728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.932900, 18.667854, -1.042687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.323087, 18.622288, -1.118041>,  <11.557199, 18.594948, -1.163253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.323087, 18.622288, -1.118041>,  <10.932900, 18.667854, -1.042687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.323087, 18.622288, -1.118041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219489, -0.437091, -0.872225,
		0.017020, 0.892174, -0.451371,
		0.975466, -0.113917, -0.188383,
		11.615726, 18.588112, -1.174556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.928651, 18.614489, -1.748479>,  <10.932900, 18.667854, -1.042687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.928651, 18.614489, -1.748479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.317729, 18.528625, -1.713183>,  <11.551176, 18.477108, -1.692005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.317729, 18.528625, -1.713183>,  <10.928651, 18.614489, -1.748479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.317729, 18.528625, -1.713183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058822, -0.595803, -0.800974,
		0.224510, 0.773913, -0.592161,
		0.972695, -0.214658, 0.088241,
		11.609537, 18.464228, -1.686711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.999448, 19.332876, -1.867157>,  <10.928651, 18.614489, -1.748479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.999448, 19.332876, -1.867157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.898732, 19.565918, -2.176265>,  <10.838303, 19.705744, -2.361730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.898732, 19.565918, -2.176265>,  <10.999448, 19.332876, -1.867157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.898732, 19.565918, -2.176265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962670, -0.068813, 0.261785,
		0.099341, 0.809837, 0.578183,
		-0.251790, 0.582605, -0.772770,
		10.823195, 19.740700, -2.408096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.762163, 20.110277, -1.733432>,  <10.999448, 19.332876, -1.867157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.762163, 20.110277, -1.733432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.598573, 19.912804, -2.040422>,  <10.500419, 19.794319, -2.224616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.598573, 19.912804, -2.040422>,  <10.762163, 20.110277, -1.733432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.598573, 19.912804, -2.040422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838423, -0.128742, 0.529597,
		-0.360259, 0.860060, -0.361263,
		-0.408975, -0.493683, -0.767474,
		10.475880, 19.764698, -2.270664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.055406, 20.286995, -1.807287>,  <10.762163, 20.110277, -1.733432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.055406, 20.286995, -1.807287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.080184, 19.930042, -1.986091>,  <10.095051, 19.715870, -2.093373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.080184, 19.930042, -1.986091>,  <10.055406, 20.286995, -1.807287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.080184, 19.930042, -1.986091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894574, -0.248253, 0.371628,
		-0.442606, 0.376863, -0.813679,
		0.061945, -0.892381, -0.447010,
		10.098767, 19.662329, -2.120194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.407780, 20.176182, -2.056427>,  <10.055406, 20.286995, -1.807287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.407780, 20.176182, -2.056427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.589147, 19.826229, -1.988313>,  <9.697967, 19.616259, -1.947445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.589147, 19.826229, -1.988313>,  <9.407780, 20.176182, -2.056427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.589147, 19.826229, -1.988313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874212, -0.399303, 0.276242,
		-0.173683, -0.274118, -0.945882,
		0.453417, -0.874880, 0.170285,
		9.725172, 19.563765, -1.937228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.932772, 20.512840, -2.599182>,  <9.407780, 20.176182, -2.056427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.932772, 20.512840, -2.599182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.779338, 20.525780, -2.968358>,  <9.687278, 20.533543, -3.189863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.779338, 20.525780, -2.968358>,  <9.932772, 20.512840, -2.599182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.779338, 20.525780, -2.968358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917481, -0.100620, -0.384842,
		-0.105318, -0.994399, 0.008911,
		-0.383583, 0.032355, -0.922939,
		9.664263, 20.535484, -3.245240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.296185, 21.075361, -2.895030>,  <9.932772, 20.512840, -2.599182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.296185, 21.075361, -2.895030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.008218, 21.309578, -3.044086>,  <8.835438, 21.450108, -3.133519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.008218, 21.309578, -3.044086>,  <9.296185, 21.075361, -2.895030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.008218, 21.309578, -3.044086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179081, -0.675431, -0.715348,
		-0.670532, -0.448281, 0.591128,
		-0.719943, 0.585524, -0.372619,
		8.792242, 21.485241, -3.155877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.927868, 20.492676, -2.618128>,  <9.296185, 21.075361, -2.895030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.927868, 20.492676, -2.618128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.803401, 20.154549, -2.444408>,  <8.728721, 19.951672, -2.340177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.803401, 20.154549, -2.444408>,  <8.927868, 20.492676, -2.618128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.803401, 20.154549, -2.444408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823069, -0.011243, 0.567830,
		-0.475114, 0.534147, 0.699253,
		-0.311166, -0.845317, 0.434298,
		8.710052, 19.900953, -2.314119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<17.759047, 17.200085, 16.147594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.940773, 17.556374, 16.153334>,  <18.049809, 17.770147, 16.156776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.940773, 17.556374, 16.153334>,  <17.759047, 17.200085, 16.147594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.940773, 17.556374, 16.153334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037725, 0.035329, -0.998663,
		-0.890041, 0.453169, 0.049653,
		0.454317, 0.890725, 0.014349,
		18.077068, 17.823591, 16.157639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.491655, 17.541744, 15.621927>,  <17.759047, 17.200085, 16.147594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.491655, 17.541744, 15.621927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.828842, 17.749866, 15.676611>,  <18.031155, 17.874741, 15.709421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.828842, 17.749866, 15.676611>,  <17.491655, 17.541744, 15.621927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.828842, 17.749866, 15.676611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133221, 0.044309, -0.990095,
		-0.521212, 0.852829, -0.031965,
		0.842965, 0.520307, 0.136709,
		18.081732, 17.905958, 15.717624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.455851, 17.978157, 15.057196>,  <17.491655, 17.541744, 15.621927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.455851, 17.978157, 15.057196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.832664, 17.973190, 15.191309>,  <18.058754, 17.970209, 15.271777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.832664, 17.973190, 15.191309>,  <17.455851, 17.978157, 15.057196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.832664, 17.973190, 15.191309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335481, 0.021019, -0.941813,
		0.004648, 0.999702, 0.023967,
		0.942036, -0.012418, 0.335283,
		18.115274, 17.969465, 15.291894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.776821, 18.497314, 14.704197>,  <17.455851, 17.978157, 15.057196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.776821, 18.497314, 14.704197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.120964, 18.327194, 14.816559>,  <18.327450, 18.225122, 14.883976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.120964, 18.327194, 14.816559>,  <17.776821, 18.497314, 14.704197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.120964, 18.327194, 14.816559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355929, 0.106835, -0.928386,
		0.364831, 0.898726, 0.243292,
		0.860357, -0.425298, 0.280905,
		18.379070, 18.199604, 14.900830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.354841, 18.955374, 14.553389>,  <17.776821, 18.497314, 14.704197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.354841, 18.955374, 14.553389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.460377, 18.569859, 14.537882>,  <18.523697, 18.338549, 14.528578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.460377, 18.569859, 14.537882>,  <18.354841, 18.955374, 14.553389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.460377, 18.569859, 14.537882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330328, 0.128041, -0.935141,
		0.906241, 0.233919, 0.352148,
		0.263837, -0.963788, -0.038766,
		18.539528, 18.280722, 14.526252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.022209, 18.996046, 14.169173>,  <18.354841, 18.955374, 14.553389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.022209, 18.996046, 14.169173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.945110, 18.603748, 14.156578>,  <18.898851, 18.368370, 14.149021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.945110, 18.603748, 14.156578>,  <19.022209, 18.996046, 14.169173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.945110, 18.603748, 14.156578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286462, -0.025549, -0.957751,
		0.938503, -0.193625, 0.285871,
		-0.192748, -0.980743, -0.031488,
		18.887285, 18.309525, 14.147132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.590197, 18.657843, 13.905055>,  <19.022209, 18.996046, 14.169173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.590197, 18.657843, 13.905055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.279495, 18.413609, 13.843298>,  <19.093075, 18.267069, 13.806244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.279495, 18.413609, 13.843298>,  <19.590197, 18.657843, 13.905055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.279495, 18.413609, 13.843298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203291, -0.011052, -0.979056,
		0.596091, -0.791873, 0.132711,
		-0.776755, -0.610586, -0.154393,
		19.046469, 18.230433, 13.796980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.776989, 18.405890, 13.321559>,  <19.590197, 18.657843, 13.905055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.776989, 18.405890, 13.321559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.390369, 18.303528, 13.328451>,  <19.158398, 18.242111, 13.332586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.390369, 18.303528, 13.328451>,  <19.776989, 18.405890, 13.321559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.390369, 18.303528, 13.328451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031366, 0.051263, -0.998193,
		0.254560, -0.965342, -0.057575,
		-0.966548, -0.255906, 0.017229,
		19.100405, 18.226757, 13.333620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.706623, 17.820438, 12.824891>,  <19.776989, 18.405890, 13.321559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.706623, 17.820438, 12.824891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.354416, 18.005188, 12.867523>,  <19.143091, 18.116037, 12.893103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.354416, 18.005188, 12.867523>,  <19.706623, 17.820438, 12.824891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.354416, 18.005188, 12.867523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076336, 0.083741, -0.993559,
		-0.467825, -0.882983, -0.038478,
		-0.880518, 0.461874, 0.106579,
		19.090260, 18.143749, 12.899497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.146852, 17.427788, 12.379016>,  <19.706623, 17.820438, 12.824891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.146852, 17.427788, 12.379016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.977093, 17.784355, 12.442590>,  <18.875237, 17.998295, 12.480734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.977093, 17.784355, 12.442590>,  <19.146852, 17.427788, 12.379016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.977093, 17.784355, 12.442590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230560, 0.063354, -0.970994,
		-0.875629, -0.448733, 0.178638,
		-0.424400, 0.891417, 0.158934,
		18.849773, 18.051781, 12.490270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535353, 17.414221, 11.998425>,  <19.146852, 17.427788, 12.379016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.535353, 17.414221, 11.998425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.590858, 17.807640, 12.044692>,  <18.624163, 18.043692, 12.072452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.590858, 17.807640, 12.044692>,  <18.535353, 17.414221, 11.998425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.590858, 17.807640, 12.044692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513710, 0.171343, -0.840681,
		-0.846668, 0.057238, 0.529034,
		0.138765, 0.983548, 0.115667,
		18.632488, 18.102705, 12.079392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.937548, 17.764019, 11.789560>,  <18.535353, 17.414221, 11.998425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.937548, 17.764019, 11.789560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.212402, 18.044857, 11.714827>,  <18.377316, 18.213360, 11.669987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.212402, 18.044857, 11.714827>,  <17.937548, 17.764019, 11.789560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.212402, 18.044857, 11.714827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516391, 0.291075, -0.805367,
		-0.511060, 0.649877, 0.562563,
		0.687137, 0.702094, -0.186834,
		18.418543, 18.255486, 11.658776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.609558, 18.278282, 11.476894>,  <17.937548, 17.764019, 11.789560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.609558, 18.278282, 11.476894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.988636, 18.373550, 11.391903>,  <18.216084, 18.430712, 11.340908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.988636, 18.373550, 11.391903>,  <17.609558, 18.278282, 11.476894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.988636, 18.373550, 11.391903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303157, 0.463442, -0.832657,
		-0.099845, 0.853519, 0.511406,
		0.947696, 0.238173, -0.212478,
		18.272945, 18.445002, 11.328159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.576015, 19.089745, 11.460486>,  <17.609558, 18.278282, 11.476894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.576015, 19.089745, 11.460486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.887341, 18.950424, 11.251522>,  <18.074137, 18.866833, 11.126143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.887341, 18.950424, 11.251522>,  <17.576015, 19.089745, 11.460486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.887341, 18.950424, 11.251522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268397, 0.567617, -0.778314,
		0.567617, 0.745987, 0.348302,
		0.778314, -0.348302, -0.522410,
		18.120834, 18.845934, 11.094799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.979267, 19.678782, 11.039997>,  <17.576015, 19.089745, 11.460486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.979267, 19.678782, 11.039997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.081913, 19.352764, 10.832209>,  <18.143501, 19.157154, 10.707536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.081913, 19.352764, 10.832209>,  <17.979267, 19.678782, 11.039997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.081913, 19.352764, 10.832209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086082, 0.516059, -0.852217,
		0.962672, 0.263409, 0.062268,
		0.256616, -0.815045, -0.519470,
		18.158897, 19.108250, 10.676368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.457743, 19.892221, 10.571398>,  <17.979267, 19.678782, 11.039997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.457743, 19.892221, 10.571398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.336658, 19.540092, 10.425303>,  <18.264008, 19.328815, 10.337646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.336658, 19.540092, 10.425303>,  <18.457743, 19.892221, 10.571398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.336658, 19.540092, 10.425303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145541, 0.421421, -0.895110,
		0.941904, -0.217803, -0.255692,
		-0.302712, -0.880322, -0.365239,
		18.245846, 19.275995, 10.315731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.856724, 19.764154, 9.881224>,  <18.457743, 19.892221, 10.571398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.856724, 19.764154, 9.881224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.533318, 19.528915, 9.872787>,  <18.339273, 19.387772, 9.867725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.533318, 19.528915, 9.872787>,  <18.856724, 19.764154, 9.881224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.533318, 19.528915, 9.872787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179746, 0.280926, -0.942747,
		0.560351, -0.758435, -0.332841,
		-0.808515, -0.588096, -0.021091,
		18.290762, 19.352488, 9.866460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.896225, 19.416681, 9.228401>,  <18.856724, 19.764154, 9.881224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.896225, 19.416681, 9.228401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.515659, 19.373463, 9.343733>,  <18.287319, 19.347532, 9.412932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.515659, 19.373463, 9.343733>,  <18.896225, 19.416681, 9.228401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.515659, 19.373463, 9.343733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304015, 0.181184, -0.935279,
		0.048809, -0.977496, -0.205228,
		-0.951416, -0.108043, 0.288330,
		18.230234, 19.341049, 9.430232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.575739, 18.874090, 8.784945>,  <18.896225, 19.416681, 9.228401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.575739, 18.874090, 8.784945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.290253, 19.110912, 8.934654>,  <18.118961, 19.253006, 9.024480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.290253, 19.110912, 8.934654>,  <18.575739, 18.874090, 8.784945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.290253, 19.110912, 8.934654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317347, 0.203024, -0.926322,
		-0.624419, -0.779906, 0.042985,
		-0.713717, 0.592054, 0.374273,
		18.076138, 19.288528, 9.046936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.006020, 18.752247, 8.450257>,  <18.575739, 18.874090, 8.784945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.006020, 18.752247, 8.450257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.936333, 19.117317, 8.598135>,  <17.894520, 19.336359, 8.686862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.936333, 19.117317, 8.598135>,  <18.006020, 18.752247, 8.450257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.936333, 19.117317, 8.598135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407679, 0.274897, -0.870764,
		-0.896352, -0.302420, 0.324185,
		-0.174219, 0.912674, 0.369695,
		17.884068, 19.391119, 8.709044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.262320, 18.929165, 8.374731>,  <18.006020, 18.752247, 8.450257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.262320, 18.929165, 8.374731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.459820, 19.276955, 8.380674>,  <17.578320, 19.485628, 8.384240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.459820, 19.276955, 8.380674>,  <17.262320, 18.929165, 8.374731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.459820, 19.276955, 8.380674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542338, 0.321246, -0.776318,
		-0.679763, 0.375251, 0.630166,
		0.493752, 0.869476, 0.014858,
		17.607944, 19.537798, 8.385132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.748863, 19.393591, 8.243985>,  <17.262320, 18.929165, 8.374731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.748863, 19.393591, 8.243985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.057297, 19.641743, 8.186630>,  <17.242357, 19.790634, 8.152217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.057297, 19.641743, 8.186630>,  <16.748863, 19.393591, 8.243985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.057297, 19.641743, 8.186630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441061, 0.357985, -0.822990,
		-0.459236, 0.697836, 0.549662,
		0.771082, 0.620381, -0.143388,
		17.288622, 19.827856, 8.143614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.274706, 18.837980, 8.009519>,  <16.748863, 19.393591, 8.243985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.274706, 18.837980, 8.009519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.921538, 18.650196, 8.006424>,  <15.709638, 18.537525, 8.004567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.921538, 18.650196, 8.006424>,  <16.274706, 18.837980, 8.009519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.921538, 18.650196, 8.006424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003017, -0.022151, 0.999750,
		-0.469515, 0.882675, 0.020974,
		-0.882919, -0.469461, -0.007737,
		15.656663, 18.509357, 8.004103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.957232, 19.102068, 8.574383>,  <16.274706, 18.837980, 8.009519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.957232, 19.102068, 8.574383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.737990, 18.778030, 8.491117>,  <15.606446, 18.583609, 8.441156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.737990, 18.778030, 8.491117>,  <15.957232, 19.102068, 8.574383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.737990, 18.778030, 8.491117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200038, -0.114697, 0.973052,
		-0.812139, 0.574973, -0.099184,
		-0.548102, -0.810093, -0.208166,
		15.573560, 18.535002, 8.428667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.408059, 19.019230, 9.013671>,  <15.957232, 19.102068, 8.574383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.408059, 19.019230, 9.013671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.404998, 18.639740, 8.887269>,  <15.403161, 18.412046, 8.811428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.404998, 18.639740, 8.887269>,  <15.408059, 19.019230, 9.013671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.404998, 18.639740, 8.887269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214536, -0.307099, 0.927181,
		-0.976686, 0.074891, -0.201185,
		-0.007654, -0.948726, -0.316006,
		15.402701, 18.355122, 8.792467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.837936, 18.689451, 9.281306>,  <15.408059, 19.019230, 9.013671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.837936, 18.689451, 9.281306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.113206, 18.410275, 9.202017>,  <15.278368, 18.242769, 9.154443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.113206, 18.410275, 9.202017>,  <14.837936, 18.689451, 9.281306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.113206, 18.410275, 9.202017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111697, -0.371863, 0.921543,
		-0.716896, -0.612041, -0.333865,
		0.688174, -0.697942, -0.198224,
		15.319658, 18.200891, 9.142550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.648692, 18.107847, 9.672850>,  <14.837936, 18.689451, 9.281306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.648692, 18.107847, 9.672850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.028096, 18.007771, 9.595148>,  <15.255738, 17.947725, 9.548527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.028096, 18.007771, 9.595148>,  <14.648692, 18.107847, 9.672850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.028096, 18.007771, 9.595148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076703, -0.413599, 0.907222,
		-0.307321, -0.875409, -0.373112,
		0.948510, -0.250190, -0.194254,
		15.312649, 17.932714, 9.536872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.744511, 17.333670, 9.923719>,  <14.648692, 18.107847, 9.672850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.744511, 17.333670, 9.923719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.095197, 17.522221, 9.885407>,  <15.305609, 17.635351, 9.862420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.095197, 17.522221, 9.885407>,  <14.744511, 17.333670, 9.923719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.095197, 17.522221, 9.885407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241839, -0.259839, 0.934878,
		0.415792, -0.842786, -0.341802,
		0.876716, 0.471376, -0.095780,
		15.358212, 17.663633, 9.856673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.233272, 16.815428, 10.095999>,  <14.744511, 17.333670, 9.923719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.233272, 16.815428, 10.095999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.407157, 17.170116, 10.158924>,  <15.511488, 17.382931, 10.196679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.407157, 17.170116, 10.158924>,  <15.233272, 16.815428, 10.095999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.407157, 17.170116, 10.158924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314540, -0.313178, 0.896093,
		0.843854, -0.340061, -0.415053,
		0.434712, 0.886723, 0.157314,
		15.537571, 17.436132, 10.206119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.905167, 16.600101, 10.381758>,  <15.233272, 16.815428, 10.095999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.905167, 16.600101, 10.381758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.845840, 16.984180, 10.476433>,  <15.810243, 17.214628, 10.533238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.845840, 16.984180, 10.476433>,  <15.905167, 16.600101, 10.381758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.845840, 16.984180, 10.476433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287418, -0.187151, 0.939343,
		0.946252, 0.207351, -0.248220,
		-0.148319, 0.960198, 0.236688,
		15.801344, 17.272240, 10.547440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.346493, 16.742046, 10.936001>,  <15.905167, 16.600101, 10.381758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.346493, 16.742046, 10.936001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.106941, 17.061882, 10.953900>,  <15.963210, 17.253782, 10.964640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.106941, 17.061882, 10.953900>,  <16.346493, 16.742046, 10.936001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.106941, 17.061882, 10.953900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171061, 0.073135, 0.982542,
		0.782355, 0.596081, -0.180578,
		-0.598881, 0.799587, 0.044748,
		15.927277, 17.301758, 10.967325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.710299, 17.249521, 11.204354>,  <16.346493, 16.742046, 10.936001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.710299, 17.249521, 11.204354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.322853, 17.294697, 11.292926>,  <16.090385, 17.321802, 11.346069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.322853, 17.294697, 11.292926>,  <16.710299, 17.249521, 11.204354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.322853, 17.294697, 11.292926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218476, -0.038052, 0.975100,
		0.118553, 0.992873, 0.012183,
		-0.968614, 0.112939, 0.221430,
		16.032269, 17.328579, 11.359355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716396, 17.905521, 11.693726>,  <16.710299, 17.249521, 11.204354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.716396, 17.905521, 11.693726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.378574, 17.694714, 11.731631>,  <16.175882, 17.568230, 11.754375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.378574, 17.694714, 11.731631>,  <16.716396, 17.905521, 11.693726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.378574, 17.694714, 11.731631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073490, 0.061220, 0.995415,
		-0.530405, 0.847645, -0.012972,
		-0.844553, -0.527020, 0.094765,
		16.125208, 17.536608, 11.760060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.403036, 18.119144, 12.311060>,  <16.716396, 17.905521, 11.693726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.403036, 18.119144, 12.311060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.167381, 17.800133, 12.259105>,  <16.025990, 17.608727, 12.227932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.167381, 17.800133, 12.259105>,  <16.403036, 18.119144, 12.311060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.167381, 17.800133, 12.259105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131333, -0.064099, 0.989264,
		-0.797290, 0.599869, -0.066979,
		-0.589135, -0.797527, -0.129888,
		15.990641, 17.560875, 12.220139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.841043, 18.142107, 12.585635>,  <16.403036, 18.119144, 12.311060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.841043, 18.142107, 12.585635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.808711, 17.744896, 12.551309>,  <15.789312, 17.506569, 12.530713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.808711, 17.744896, 12.551309>,  <15.841043, 18.142107, 12.585635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.808711, 17.744896, 12.551309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089862, -0.078486, 0.992857,
		-0.992669, 0.087962, -0.082891,
		-0.080828, -0.993027, -0.085815,
		15.784463, 17.446987, 12.525564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.188553, 17.922087, 12.918885>,  <15.841043, 18.142107, 12.585635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.188553, 17.922087, 12.918885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.447726, 17.617493, 12.911716>,  <15.603230, 17.434736, 12.907415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.447726, 17.617493, 12.911716>,  <15.188553, 17.922087, 12.918885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.447726, 17.617493, 12.911716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091260, -0.100966, 0.990695,
		-0.756210, -0.640269, -0.134912,
		0.647934, -0.761486, -0.017921,
		15.642106, 17.389048, 12.906341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.851339, 17.302355, 13.215796>,  <15.188553, 17.922087, 12.918885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.851339, 17.302355, 13.215796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.246064, 17.254906, 13.259848>,  <15.482900, 17.226437, 13.286279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.246064, 17.254906, 13.259848>,  <14.851339, 17.302355, 13.215796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.246064, 17.254906, 13.259848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139321, -0.276122, 0.950971,
		-0.082398, -0.953774, -0.289008,
		0.986813, -0.118623, 0.110129,
		15.542109, 17.219318, 13.292887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.875031, 17.014585, 13.827188>,  <14.851339, 17.302355, 13.215796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.875031, 17.014585, 13.827188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.273301, 17.051441, 13.822392>,  <15.512263, 17.073555, 13.819513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.273301, 17.051441, 13.822392>,  <14.875031, 17.014585, 13.827188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.273301, 17.051441, 13.822392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033498, -0.235557, 0.971283,
		0.086667, -0.967483, -0.237625,
		0.995674, 0.092138, -0.011993,
		15.572003, 17.079082, 13.818793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.073803, 16.488213, 14.233343>,  <14.875031, 17.014585, 13.827188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.073803, 16.488213, 14.233343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.392959, 16.728264, 14.210646>,  <15.584453, 16.872293, 14.197027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.392959, 16.728264, 14.210646>,  <15.073803, 16.488213, 14.233343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.392959, 16.728264, 14.210646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193868, -0.166340, 0.966823,
		0.570777, -0.782419, -0.249066,
		0.797890, 0.600127, -0.056743,
		15.632326, 16.908302, 14.193623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.658007, 16.034626, 14.416490>,  <15.073803, 16.488213, 14.233343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.658007, 16.034626, 14.416490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.688752, 16.428925, 14.476345>,  <15.707200, 16.665504, 14.512259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.688752, 16.428925, 14.476345>,  <15.658007, 16.034626, 14.416490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.688752, 16.428925, 14.476345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165693, -0.160626, 0.973008,
		0.983177, -0.049995, -0.175678,
		0.076864, 0.985748, 0.149640,
		15.711811, 16.724649, 14.521237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.141619, 16.058165, 14.961619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.018433, 16.438591, 14.951591>,  <15.944521, 16.666847, 14.945575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.018433, 16.438591, 14.951591>,  <16.141619, 16.058165, 14.961619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.018433, 16.438591, 14.951591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108492, 0.061284, 0.992206,
		0.945191, 0.302845, -0.122057,
		-0.307965, 0.951067, -0.025069,
		15.926044, 16.723911, 14.944071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.625822, 16.480238, 15.352530>,  <16.141619, 16.058165, 14.961619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.625822, 16.480238, 15.352530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.267906, 16.658615, 15.343716>,  <16.053156, 16.765640, 15.338428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.267906, 16.658615, 15.343716>,  <16.625822, 16.480238, 15.352530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.267906, 16.658615, 15.343716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015198, 0.079742, 0.996700,
		0.446226, 0.891503, -0.078130,
		-0.894791, 0.445941, -0.022034,
		15.999469, 16.792397, 15.337106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.718184, 17.058842, 15.810626>,  <16.625822, 16.480238, 15.352530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.718184, 17.058842, 15.810626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.324001, 17.009235, 15.764160>,  <16.087492, 16.979471, 15.736280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.324001, 17.009235, 15.764160>,  <16.718184, 17.058842, 15.810626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.324001, 17.009235, 15.764160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133570, 0.142754, 0.980704,
		-0.105041, 0.981958, -0.157243,
		-0.985457, -0.124017, -0.116165,
		16.028364, 16.972031, 15.729311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.429855, 17.495483, 16.122778>,  <16.718184, 17.058842, 15.810626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.429855, 17.495483, 16.122778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.108036, 17.261311, 16.082830>,  <15.914945, 17.120806, 16.058861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.108036, 17.261311, 16.082830>,  <16.429855, 17.495483, 16.122778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.108036, 17.261311, 16.082830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202740, 0.112682, 0.972728,
		-0.558213, 0.802852, -0.209349,
		-0.804546, -0.585433, -0.099870,
		15.866673, 17.085680, 16.052870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.877136, 17.816057, 16.498302>,  <16.429855, 17.495483, 16.122778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.877136, 17.816057, 16.498302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.771121, 17.430485, 16.488573>,  <15.707512, 17.199141, 16.482737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.771121, 17.430485, 16.488573>,  <15.877136, 17.816057, 16.498302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.771121, 17.430485, 16.488573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265920, 0.048824, 0.962758,
		-0.926845, 0.261635, -0.269269,
		-0.265038, -0.963931, -0.024322,
		15.691609, 17.141306, 16.481276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.274245, 17.861904, 16.723217>,  <15.877136, 17.816057, 16.498302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.274245, 17.861904, 16.723217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.442269, 17.503410, 16.780222>,  <15.543084, 17.288313, 16.814425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.442269, 17.503410, 16.780222>,  <15.274245, 17.861904, 16.723217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.442269, 17.503410, 16.780222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215554, 0.054010, 0.974997,
		-0.881525, -0.440277, -0.170500,
		0.420060, -0.896236, 0.142515,
		15.568288, 17.234539, 16.822977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.830565, 17.526007, 17.279116>,  <15.274245, 17.861904, 16.723217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.830565, 17.526007, 17.279116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.158019, 17.296307, 17.275646>,  <15.354491, 17.158487, 17.273565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.158019, 17.296307, 17.275646>,  <14.830565, 17.526007, 17.279116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.158019, 17.296307, 17.275646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080457, -0.129623, 0.988294,
		-0.568652, -0.808353, -0.152317,
		0.818634, -0.574251, -0.008673,
		15.403609, 17.124031, 17.273045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667689, 17.118767, 17.726171>,  <14.830565, 17.526007, 17.279116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.667689, 17.118767, 17.726171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.065461, 17.088306, 17.697023>,  <15.304125, 17.070030, 17.679535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.065461, 17.088306, 17.697023>,  <14.667689, 17.118767, 17.726171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.065461, 17.088306, 17.697023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056445, -0.199082, 0.978356,
		-0.089008, -0.977020, -0.193675,
		0.994430, -0.076150, -0.072868,
		15.363791, 17.065460, 17.675163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.833850, 16.510981, 18.196609>,  <14.667689, 17.118767, 17.726171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.833850, 16.510981, 18.196609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.161725, 16.736980, 18.158903>,  <15.358450, 16.872581, 18.136278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.161725, 16.736980, 18.158903>,  <14.833850, 16.510981, 18.196609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.161725, 16.736980, 18.158903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129711, -0.022789, 0.991290,
		0.557932, -0.824775, -0.091967,
		0.819687, 0.565001, -0.094268,
		15.407631, 16.906481, 18.130623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.362363, 16.139315, 18.442146>,  <14.833850, 16.510981, 18.196609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.362363, 16.139315, 18.442146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.491141, 16.516319, 18.477970>,  <15.568408, 16.742523, 18.499464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.491141, 16.516319, 18.477970>,  <15.362363, 16.139315, 18.442146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.491141, 16.516319, 18.477970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034343, -0.082910, 0.995965,
		0.946135, -0.323722, 0.005676,
		0.321945, 0.942513, 0.089562,
		15.587725, 16.799072, 18.504839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.855107, 16.106098, 18.908749>,  <15.362363, 16.139315, 18.442146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.855107, 16.106098, 18.908749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.791251, 16.500496, 18.928049>,  <15.752937, 16.737135, 18.939629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.791251, 16.500496, 18.928049>,  <15.855107, 16.106098, 18.908749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.791251, 16.500496, 18.928049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004023, -0.049527, 0.998765,
		0.987167, 0.159248, 0.011874,
		-0.159640, 0.985996, 0.048251,
		15.743360, 16.796295, 18.942524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.314978, 16.261021, 19.461636>,  <15.855107, 16.106098, 18.908749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.314978, 16.261021, 19.461636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.036251, 16.540390, 19.396330>,  <15.869016, 16.708012, 19.357147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.036251, 16.540390, 19.396330>,  <16.314978, 16.261021, 19.461636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.036251, 16.540390, 19.396330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204245, 0.024983, 0.978601,
		0.687555, 0.715250, 0.125240,
		-0.696816, 0.698422, -0.163263,
		15.827207, 16.749916, 19.347351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.503340, 16.919945, 19.789175>,  <16.314978, 16.261021, 19.461636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.503340, 16.919945, 19.789175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.106915, 16.907963, 19.737186>,  <15.869059, 16.900774, 19.705994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.106915, 16.907963, 19.737186>,  <16.503340, 16.919945, 19.789175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.106915, 16.907963, 19.737186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132996, 0.148366, 0.979949,
		-0.010071, 0.988479, -0.151025,
		-0.991066, -0.029955, -0.129969,
		15.809595, 16.898977, 19.698196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.294579, 17.374315, 20.314220>,  <16.503340, 16.919945, 19.789175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.294579, 17.374315, 20.314220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.954226, 17.190704, 20.212011>,  <15.750015, 17.080538, 20.150686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.954226, 17.190704, 20.212011>,  <16.294579, 17.374315, 20.314220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.954226, 17.190704, 20.212011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361178, 0.157910, 0.919029,
		-0.381511, 0.874275, -0.300154,
		-0.850882, -0.459029, -0.255525,
		15.698962, 17.052996, 20.135353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.759591, 17.788046, 20.599649>,  <16.294579, 17.374315, 20.314220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.759591, 17.788046, 20.599649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.551515, 17.449383, 20.554796>,  <15.426669, 17.246185, 20.527885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.551515, 17.449383, 20.554796>,  <15.759591, 17.788046, 20.599649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.551515, 17.449383, 20.554796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383699, 0.114386, 0.916346,
		-0.763005, 0.519700, -0.384364,
		-0.520191, -0.846657, -0.112132,
		15.395457, 17.195385, 20.521156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.140683, 18.010729, 20.814093>,  <15.759591, 17.788046, 20.599649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.140683, 18.010729, 20.814093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.154344, 17.612015, 20.843092>,  <15.162539, 17.372787, 20.860491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.154344, 17.612015, 20.843092>,  <15.140683, 18.010729, 20.814093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.154344, 17.612015, 20.843092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397390, 0.053016, 0.916117,
		-0.917014, -0.060096, -0.394302,
		0.034151, -0.996784, 0.072498,
		15.164589, 17.312979, 20.864841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.464205, 17.848602, 21.023870>,  <15.140683, 18.010729, 20.814093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.464205, 17.848602, 21.023870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.702872, 17.540462, 21.113804>,  <14.846073, 17.355579, 21.167763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.702872, 17.540462, 21.113804>,  <14.464205, 17.848602, 21.023870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.702872, 17.540462, 21.113804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249150, 0.088493, 0.964413,
		-0.762831, -0.631452, -0.139131,
		0.596668, -0.770349, 0.224832,
		14.881873, 17.309359, 21.181253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.022331, 17.445055, 21.363873>,  <14.464205, 17.848602, 21.023870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.022331, 17.445055, 21.363873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.373172, 17.285580, 21.471012>,  <14.583676, 17.189896, 21.535295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.373172, 17.285580, 21.471012>,  <14.022331, 17.445055, 21.363873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.373172, 17.285580, 21.471012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289833, 0.005352, 0.957062,
		-0.383002, -0.917071, -0.110859,
		0.877101, -0.398687, 0.267847,
		14.636302, 17.165974, 21.551367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.924932, 16.905245, 21.913853>,  <14.022331, 17.445055, 21.363873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.924932, 16.905245, 21.913853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.315755, 16.984406, 21.945330>,  <14.550249, 17.031902, 21.964216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.315755, 16.984406, 21.945330>,  <13.924932, 16.905245, 21.913853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.315755, 16.984406, 21.945330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066378, -0.068111, 0.995467,
		0.202364, -0.977853, -0.053412,
		0.977058, 0.197902, 0.078691,
		14.608872, 17.043776, 21.968937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.281906, 16.306047, 22.369629>,  <13.924932, 16.905245, 21.913853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.281906, 16.306047, 22.369629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.491155, 16.646919, 22.374237>,  <14.616704, 16.851442, 22.377001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.491155, 16.646919, 22.374237>,  <14.281906, 16.306047, 22.369629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.491155, 16.646919, 22.374237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016107, -0.023399, 0.999597,
		0.852106, -0.522725, -0.025966,
		0.523122, 0.852180, 0.011519,
		14.648091, 16.902573, 22.377693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.743360, 16.248184, 22.925463>,  <14.281906, 16.306047, 22.369629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.743360, 16.248184, 22.925463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.768012, 16.641075, 22.854551>,  <14.782804, 16.876810, 22.812004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.768012, 16.641075, 22.854551>,  <14.743360, 16.248184, 22.925463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.768012, 16.641075, 22.854551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138985, 0.167442, 0.976036,
		0.988375, -0.084792, -0.126195,
		0.061630, 0.982229, -0.177280,
		14.786501, 16.935743, 22.801367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.283585, 16.521833, 23.372936>,  <14.743360, 16.248184, 22.925463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.283585, 16.521833, 23.372936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.060197, 16.838203, 23.272896>,  <14.926164, 17.028025, 23.212872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.060197, 16.838203, 23.272896>,  <15.283585, 16.521833, 23.372936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.060197, 16.838203, 23.272896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046671, 0.330978, 0.942484,
		0.828211, 0.514676, -0.221754,
		-0.558470, 0.790925, -0.250099,
		14.892656, 17.075481, 23.197866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.776396, 16.981531, 23.304535>,  <15.283585, 16.521833, 23.372936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.776396, 16.981531, 23.304535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.408530, 17.093330, 23.414877>,  <15.187811, 17.160410, 23.481083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.408530, 17.093330, 23.414877>,  <15.776396, 16.981531, 23.304535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.408530, 17.093330, 23.414877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342549, 0.227452, 0.911552,
		0.192033, 0.932816, -0.304921,
		-0.919665, 0.279498, 0.275857,
		15.132630, 17.177179, 23.497633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.862386, 17.701214, 23.543228>,  <15.776396, 16.981531, 23.304535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.862386, 17.701214, 23.543228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.574994, 17.475582, 23.706005>,  <15.402559, 17.340202, 23.803671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.574994, 17.475582, 23.706005>,  <15.862386, 17.701214, 23.543228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.574994, 17.475582, 23.706005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463609, 0.047775, 0.884751,
		-0.518511, 0.824338, 0.227187,
		-0.718480, -0.564079, 0.406942,
		15.359450, 17.306358, 23.828087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.444942, 17.851139, 23.971636>,  <15.862386, 17.701214, 23.543228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.444942, 17.851139, 23.971636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.694962, 18.161705, 24.003866>,  <16.844973, 18.348045, 24.023205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.694962, 18.161705, 24.003866>,  <16.444942, 17.851139, 23.971636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.694962, 18.161705, 24.003866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052690, 0.144956, -0.988034,
		-0.778807, 0.613322, 0.131514,
		0.625047, 0.776417, 0.080577,
		16.882475, 18.394630, 24.028040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.134209, 18.536245, 23.659466>,  <16.444942, 17.851139, 23.971636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.134209, 18.536245, 23.659466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.532272, 18.575367, 23.655687>,  <16.771111, 18.598841, 23.653419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.532272, 18.575367, 23.655687>,  <16.134209, 18.536245, 23.659466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.532272, 18.575367, 23.655687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022027, 0.128361, -0.991483,
		-0.095759, 0.986893, 0.129895,
		0.995161, 0.097804, -0.009447,
		16.830820, 18.604708, 23.652853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.313618, 19.054068, 23.233660>,  <16.134209, 18.536245, 23.659466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.313618, 19.054068, 23.233660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.651070, 18.839344, 23.229149>,  <16.853540, 18.710510, 23.226442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.651070, 18.839344, 23.229149>,  <16.313618, 19.054068, 23.233660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.651070, 18.839344, 23.229149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092719, 0.166336, -0.981700,
		0.528862, 0.827144, 0.190098,
		0.843628, -0.536810, -0.011277,
		16.904158, 18.678301, 23.225765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.753145, 19.524286, 22.834946>,  <16.313618, 19.054068, 23.233660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.753145, 19.524286, 22.834946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.940414, 19.171242, 22.851984>,  <17.052776, 18.959415, 22.862207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.940414, 19.171242, 22.851984>,  <16.753145, 19.524286, 22.834946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.940414, 19.171242, 22.851984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289249, 0.107526, -0.951196,
		0.834956, 0.457642, 0.305635,
		0.468171, -0.882611, 0.042594,
		17.080866, 18.906458, 22.864761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.489895, 19.710243, 22.645933>,  <16.753145, 19.524286, 22.834946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.489895, 19.710243, 22.645933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.423332, 19.321026, 22.582067>,  <17.383394, 19.087496, 22.543747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.423332, 19.321026, 22.582067>,  <17.489895, 19.710243, 22.645933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.423332, 19.321026, 22.582067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467852, 0.064623, -0.881441,
		0.867999, -0.221379, 0.444487,
		-0.166408, -0.973044, -0.159666,
		17.373409, 19.029112, 22.534168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.131769, 19.404083, 22.347456>,  <17.489895, 19.710243, 22.645933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.131769, 19.404083, 22.347456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.828522, 19.168762, 22.234921>,  <17.646572, 19.027569, 22.167398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.828522, 19.168762, 22.234921>,  <18.131769, 19.404083, 22.347456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.828522, 19.168762, 22.234921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461588, -0.179361, -0.868773,
		0.460642, -0.788497, 0.407532,
		-0.758120, -0.588305, -0.281340,
		17.601086, 18.992271, 22.150518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.435246, 18.922678, 21.769789>,  <18.131769, 19.404083, 22.347456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.435246, 18.922678, 21.769789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.041245, 18.871918, 21.723028>,  <17.804844, 18.841461, 21.694971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.041245, 18.871918, 21.723028>,  <18.435246, 18.922678, 21.769789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.041245, 18.871918, 21.723028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143165, -0.222957, -0.964258,
		0.096302, -0.966533, 0.237781,
		-0.985003, -0.126902, -0.116902,
		17.745743, 18.833847, 21.687958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.305393, 18.242868, 21.352961>,  <18.435246, 18.922678, 21.769789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.305393, 18.242868, 21.352961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.970673, 18.458588, 21.315187>,  <17.769840, 18.588020, 21.292522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.970673, 18.458588, 21.315187>,  <18.305393, 18.242868, 21.352961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.970673, 18.458588, 21.315187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060923, -0.263130, -0.962835,
		-0.544106, -0.799949, 0.253043,
		-0.836802, 0.539301, -0.094435,
		17.719631, 18.620378, 21.286858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.944366, 17.733936, 20.947533>,  <18.305393, 18.242868, 21.352961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.944366, 17.733936, 20.947533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.800667, 18.103165, 20.892567>,  <17.714447, 18.324701, 20.859587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.800667, 18.103165, 20.892567>,  <17.944366, 17.733936, 20.947533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.800667, 18.103165, 20.892567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041835, -0.163027, -0.985734,
		-0.932304, -0.348374, 0.097184,
		-0.359248, 0.923070, -0.137417,
		17.692892, 18.380085, 20.851341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.344398, 17.703543, 20.606728>,  <17.944366, 17.733936, 20.947533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.344398, 17.703543, 20.606728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.452461, 18.080620, 20.528400>,  <17.517298, 18.306866, 20.481403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.452461, 18.080620, 20.528400>,  <17.344398, 17.703543, 20.606728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.452461, 18.080620, 20.528400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190072, -0.147161, -0.970678,
		-0.943869, 0.299453, 0.139424,
		0.270155, 0.942694, -0.195818,
		17.533508, 18.363428, 20.469654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.803873, 17.967131, 20.232517>,  <17.344398, 17.703543, 20.606728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.803873, 17.967131, 20.232517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.121284, 18.203259, 20.173416>,  <17.311731, 18.344936, 20.137957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.121284, 18.203259, 20.173416>,  <16.803873, 17.967131, 20.232517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.121284, 18.203259, 20.173416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063160, -0.161592, -0.984834,
		-0.605244, 0.790828, -0.090944,
		0.793531, 0.590321, -0.147752,
		17.359344, 18.380354, 20.129091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.606035, 18.296648, 19.611856>,  <16.803873, 17.967131, 20.232517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.606035, 18.296648, 19.611856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.995617, 18.380192, 19.647161>,  <17.229366, 18.430317, 19.668344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.995617, 18.380192, 19.647161>,  <16.606035, 18.296648, 19.611856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.995617, 18.380192, 19.647161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078618, 0.054059, -0.995438,
		-0.212676, 0.976451, 0.036231,
		0.973955, 0.208858, 0.088264,
		17.287804, 18.442848, 19.673641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.832975, 18.696726, 19.032682>,  <16.606035, 18.296648, 19.611856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.832975, 18.696726, 19.032682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.186741, 18.560184, 19.159986>,  <17.399000, 18.478260, 19.236368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.186741, 18.560184, 19.159986>,  <16.832975, 18.696726, 19.032682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.186741, 18.560184, 19.159986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305915, -0.090990, -0.947701,
		0.352461, 0.935520, 0.023953,
		0.884413, -0.341356, 0.318260,
		17.452065, 18.457777, 19.255465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.269098, 19.020109, 18.547737>,  <16.832975, 18.696726, 19.032682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.269098, 19.020109, 18.547737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.489075, 18.737377, 18.725704>,  <17.621061, 18.567738, 18.832485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.489075, 18.737377, 18.725704>,  <17.269098, 19.020109, 18.547737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.489075, 18.737377, 18.725704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480541, -0.167923, -0.860745,
		0.683114, 0.687162, 0.247314,
		0.549942, -0.706831, 0.444920,
		17.654057, 18.525328, 18.859180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.971085, 19.115919, 18.446955>,  <17.269098, 19.020109, 18.547737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.971085, 19.115919, 18.446955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.937965, 18.720657, 18.498638>,  <17.918093, 18.483500, 18.529648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.937965, 18.720657, 18.498638>,  <17.971085, 19.115919, 18.446955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.937965, 18.720657, 18.498638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372798, -0.150953, -0.915551,
		0.924211, -0.027639, 0.380881,
		-0.082800, -0.988154, 0.129209,
		17.913126, 18.424212, 18.537401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.609318, 18.751741, 18.218988>,  <17.971085, 19.115919, 18.446955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.609318, 18.751741, 18.218988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.305573, 18.491955, 18.203188>,  <18.123325, 18.336082, 18.193708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.305573, 18.491955, 18.203188>,  <18.609318, 18.751741, 18.218988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.305573, 18.491955, 18.203188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323937, -0.324706, -0.888611,
		0.564297, -0.687575, 0.456957,
		-0.759364, -0.649466, -0.039500,
		18.077763, 18.297115, 18.191338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.713673, 17.876942, 18.266647>,  <18.609318, 18.751741, 18.218988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.713673, 17.876942, 18.266647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.415424, 17.990173, 18.025345>,  <18.236475, 18.058111, 17.880564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.415424, 17.990173, 18.025345>,  <18.713673, 17.876942, 18.266647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.415424, 17.990173, 18.025345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528557, -0.300068, -0.794095,
		-0.405811, -0.910947, 0.074112,
		-0.745618, 0.283080, -0.603258,
		18.191738, 18.075096, 17.844368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.968088, 17.924723, 17.616922>,  <18.713673, 17.876942, 18.266647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.968088, 17.924723, 17.616922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.587337, 17.946709, 17.496319>,  <18.358887, 17.959900, 17.423956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.587337, 17.946709, 17.496319>,  <18.968088, 17.924723, 17.616922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.587337, 17.946709, 17.496319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298872, -0.051351, -0.952911,
		-0.067867, -0.997166, 0.032450,
		-0.951877, 0.054973, -0.301510,
		18.301775, 17.963198, 17.405867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.838470, 17.328526, 17.166025>,  <18.968088, 17.924723, 17.616922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.838470, 17.328526, 17.166025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.568230, 17.609200, 17.075516>,  <18.406086, 17.777603, 17.021210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.568230, 17.609200, 17.075516>,  <18.838470, 17.328526, 17.166025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.568230, 17.609200, 17.075516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247547, -0.073196, -0.966107,
		-0.694466, -0.708717, -0.124249,
		-0.675602, 0.701686, -0.226273,
		18.365549, 17.819706, 17.007633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.634390, 17.166174, 16.577726>,  <18.838470, 17.328526, 17.166025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.634390, 17.166174, 16.577726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.484245, 17.536915, 16.574959>,  <18.394159, 17.759359, 16.573299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.484245, 17.536915, 16.574959>,  <18.634390, 17.166174, 16.577726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.484245, 17.536915, 16.574959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184388, 0.067356, -0.980543,
		-0.908353, -0.369333, -0.196184,
		-0.375361, 0.926853, -0.006917,
		18.371637, 17.814970, 16.572884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<15.299340, 16.458719, 12.079528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.505044, 16.797035, 12.136350>,  <15.628467, 17.000025, 12.170443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.505044, 16.797035, 12.136350>,  <15.299340, 16.458719, 12.079528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.505044, 16.797035, 12.136350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230541, 0.295867, -0.926992,
		-0.826068, 0.443965, 0.347141,
		0.514259, 0.845789, 0.142054,
		15.659322, 17.050772, 12.178966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.841621, 17.089693, 11.984157>,  <15.299340, 16.458719, 12.079528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.841621, 17.089693, 11.984157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.220769, 17.199226, 11.918966>,  <15.448257, 17.264946, 11.879852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.220769, 17.199226, 11.918966>,  <14.841621, 17.089693, 11.984157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.220769, 17.199226, 11.918966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264787, 0.392266, -0.880917,
		-0.177294, 0.878147, 0.444324,
		0.947869, 0.273833, -0.162975,
		15.505130, 17.281376, 11.870073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.759369, 17.654388, 11.457519>,  <14.841621, 17.089693, 11.984157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.759369, 17.654388, 11.457519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.148513, 17.562527, 11.446192>,  <15.381999, 17.507410, 11.439396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.148513, 17.562527, 11.446192>,  <14.759369, 17.654388, 11.457519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.148513, 17.562527, 11.446192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020920, 0.209172, -0.977655,
		0.230444, 0.950530, 0.208299,
		0.972861, -0.229652, -0.028317,
		15.440371, 17.493631, 11.437696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.033745, 18.193716, 11.080567>,  <14.759369, 17.654388, 11.457519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.033745, 18.193716, 11.080567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.338059, 17.936268, 11.047198>,  <15.520648, 17.781799, 11.027177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.338059, 17.936268, 11.047198>,  <15.033745, 18.193716, 11.080567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338059, 17.936268, 11.047198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151272, 0.300856, -0.941596,
		0.631127, 0.703733, 0.326249,
		0.760786, -0.643619, -0.083423,
		15.566296, 17.743183, 11.022171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.679072, 18.569813, 10.813946>,  <15.033745, 18.193716, 11.080567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.679072, 18.569813, 10.813946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.703368, 18.179974, 10.727716>,  <15.717946, 17.946070, 10.675979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.703368, 18.179974, 10.727716>,  <15.679072, 18.569813, 10.813946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.703368, 18.179974, 10.727716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205160, 0.223550, -0.952856,
		0.976842, 0.013649, 0.213527,
		0.060740, -0.974597, -0.215573,
		15.721590, 17.887594, 10.663045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.226444, 18.527996, 10.299064>,  <15.679072, 18.569813, 10.813946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.226444, 18.527996, 10.299064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.011631, 18.192989, 10.258751>,  <15.882743, 17.991985, 10.234563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.011631, 18.192989, 10.258751>,  <16.226444, 18.527996, 10.299064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.011631, 18.192989, 10.258751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062116, 0.079886, -0.994867,
		0.841271, -0.540537, 0.009121,
		-0.537034, -0.837519, -0.100782,
		15.850521, 17.941734, 10.228517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.535683, 18.245249, 9.735720>,  <16.226444, 18.527996, 10.299064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.535683, 18.245249, 9.735720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.184704, 18.057102, 9.773339>,  <15.974117, 17.944214, 9.795911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.184704, 18.057102, 9.773339>,  <16.535683, 18.245249, 9.735720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.184704, 18.057102, 9.773339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067911, -0.072278, -0.995070,
		0.474846, -0.879506, 0.031477,
		-0.877445, -0.470368, 0.094049,
		15.921471, 17.915993, 9.801554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.531900, 17.745577, 9.131370>,  <16.535683, 18.245249, 9.735720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.531900, 17.745577, 9.131370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.156429, 17.808472, 9.254114>,  <15.931147, 17.846209, 9.327761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.156429, 17.808472, 9.254114>,  <16.531900, 17.745577, 9.131370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.156429, 17.808472, 9.254114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301816, 0.055613, -0.951743,
		-0.166714, -0.985994, -0.004746,
		-0.938677, 0.157237, 0.306861,
		15.874826, 17.855642, 9.346172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.099754, 17.186152, 8.818288>,  <16.531900, 17.745577, 9.131370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.099754, 17.186152, 8.818288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.856627, 17.484520, 8.927217>,  <15.710751, 17.663540, 8.992574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.856627, 17.484520, 8.927217>,  <16.099754, 17.186152, 8.818288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.856627, 17.484520, 8.927217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243381, 0.151441, -0.958035,
		-0.755858, -0.648590, 0.089494,
		-0.607819, 0.745920, 0.272322,
		15.674282, 17.708296, 9.008913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.512850, 17.146618, 8.381443>,  <16.099754, 17.186152, 8.818288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.512850, 17.146618, 8.381443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.486861, 17.524807, 8.509105>,  <15.471268, 17.751720, 8.585702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.486861, 17.524807, 8.509105>,  <15.512850, 17.146618, 8.381443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.486861, 17.524807, 8.509105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288365, 0.288395, -0.913057,
		-0.955314, -0.151356, 0.253904,
		-0.064972, 0.945473, 0.319154,
		15.467370, 17.808449, 8.604851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.965635, 17.406374, 8.089171>,  <15.512850, 17.146618, 8.381443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.965635, 17.406374, 8.089171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.126321, 17.752869, 8.208004>,  <15.222733, 17.960766, 8.279304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.126321, 17.752869, 8.208004>,  <14.965635, 17.406374, 8.089171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.126321, 17.752869, 8.208004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208476, 0.402394, -0.891413,
		-0.891720, 0.296158, 0.342237,
		0.401713, 0.866238, 0.297081,
		15.246835, 18.012741, 8.297129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.463033, 17.959129, 7.821634>,  <14.965635, 17.406374, 8.089171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.463033, 17.959129, 7.821634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.838826, 18.071312, 7.900340>,  <15.064302, 18.138622, 7.947564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.838826, 18.071312, 7.900340>,  <14.463033, 17.959129, 7.821634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.838826, 18.071312, 7.900340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142000, 0.203908, -0.968637,
		-0.311783, 0.937958, 0.151743,
		0.939483, 0.280457, 0.196765,
		15.120671, 18.155449, 7.959370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.549311, 18.714067, 7.611504>,  <14.463033, 17.959129, 7.821634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.549311, 18.714067, 7.611504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.868945, 18.475079, 7.584712>,  <15.060726, 18.331686, 7.568637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.868945, 18.475079, 7.584712>,  <14.549311, 18.714067, 7.611504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.868945, 18.475079, 7.584712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175194, 0.337977, -0.924704,
		0.575124, 0.727185, 0.374747,
		0.799087, -0.597473, -0.066980,
		15.108671, 18.295837, 7.564618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.121142, 19.085348, 7.147662>,  <14.549311, 18.714067, 7.611504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.121142, 19.085348, 7.147662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.112378, 18.686535, 7.118150>,  <15.107120, 18.447247, 7.100442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.112378, 18.686535, 7.118150>,  <15.121142, 19.085348, 7.147662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.112378, 18.686535, 7.118150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212063, 0.067485, -0.974923,
		0.977010, -0.037008, 0.209955,
		-0.021911, -0.997034, -0.073781,
		15.105804, 18.387424, 7.096015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.749140, 19.577797, 6.782608>,  <15.121142, 19.085348, 7.147662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.749140, 19.577797, 6.782608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.752683, 19.973766, 6.726081>,  <14.754808, 20.211348, 6.692164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.752683, 19.973766, 6.726081>,  <14.749140, 19.577797, 6.782608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.752683, 19.973766, 6.726081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411561, 0.132407, 0.901713,
		0.911339, 0.050175, 0.408587,
		0.008856, 0.989925, -0.141318,
		14.755340, 20.270744, 6.683685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.084190, 19.967691, 7.308736>,  <14.749140, 19.577797, 6.782608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.084190, 19.967691, 7.308736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.796910, 20.200367, 7.155986>,  <14.624542, 20.339972, 7.064336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.796910, 20.200367, 7.155986>,  <15.084190, 19.967691, 7.308736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.796910, 20.200367, 7.155986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370003, 0.145538, 0.917560,
		0.589310, 0.800287, 0.110701,
		-0.718200, 0.581687, -0.381875,
		14.581450, 20.374872, 7.041423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.067594, 20.485752, 7.763460>,  <15.084190, 19.967691, 7.308736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.067594, 20.485752, 7.763460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.729632, 20.542885, 7.557261>,  <14.526855, 20.577164, 7.433541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.729632, 20.542885, 7.557261>,  <15.067594, 20.485752, 7.763460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.729632, 20.542885, 7.557261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483124, 0.209937, 0.850010,
		0.229631, 0.967226, -0.108370,
		-0.844903, 0.142832, -0.515498,
		14.476162, 20.585735, 7.402611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.747351, 21.100800, 8.097051>,  <15.067594, 20.485752, 7.763460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.747351, 21.100800, 8.097051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.451131, 20.923485, 7.895027>,  <14.273399, 20.817097, 7.773813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.451131, 20.923485, 7.895027>,  <14.747351, 21.100800, 8.097051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.451131, 20.923485, 7.895027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622113, 0.168059, 0.764678,
		-0.254092, 0.880484, -0.400231,
		-0.740549, -0.443287, -0.505058,
		14.228966, 20.790499, 7.743510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.107153, 21.505201, 8.124226>,  <14.747351, 21.100800, 8.097051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.107153, 21.505201, 8.124226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.968308, 21.136803, 8.053483>,  <13.885002, 20.915764, 8.011037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.968308, 21.136803, 8.053483>,  <14.107153, 21.505201, 8.124226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.968308, 21.136803, 8.053483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618829, 0.083233, 0.781104,
		-0.704674, 0.380574, -0.598831,
		-0.347110, -0.920997, -0.176858,
		13.864176, 20.860504, 8.000425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.348137, 21.604364, 8.309311>,  <14.107153, 21.505201, 8.124226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.348137, 21.604364, 8.309311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.409898, 21.211067, 8.270552>,  <13.446955, 20.975088, 8.247296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.409898, 21.211067, 8.270552>,  <13.348137, 21.604364, 8.309311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.409898, 21.211067, 8.270552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621452, -0.172894, 0.764137,
		-0.768087, -0.057767, -0.637735,
		0.154402, -0.983245, -0.096898,
		13.456219, 20.916094, 8.241483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.673036, 21.326904, 8.450001>,  <13.348137, 21.604364, 8.309311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.673036, 21.326904, 8.450001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.972646, 21.072807, 8.525288>,  <13.152412, 20.920349, 8.570459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.972646, 21.072807, 8.525288>,  <12.673036, 21.326904, 8.450001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.972646, 21.072807, 8.525288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319174, -0.097026, 0.942716,
		-0.580593, -0.766193, -0.275428,
		0.749026, -0.635244, 0.188217,
		13.197353, 20.882235, 8.581753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.369355, 20.782867, 8.895894>,  <12.673036, 21.326904, 8.450001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.369355, 20.782867, 8.895894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.765424, 20.733940, 8.923021>,  <13.003065, 20.704584, 8.939298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.765424, 20.733940, 8.923021>,  <12.369355, 20.782867, 8.895894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.765424, 20.733940, 8.923021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066261, 0.016754, 0.997662,
		-0.123168, -0.992350, 0.008485,
		0.990171, -0.122318, 0.067818,
		13.062475, 20.697245, 8.943367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.427012, 20.360758, 9.484763>,  <12.369355, 20.782867, 8.895894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.427012, 20.360758, 9.484763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.804996, 20.487347, 9.451530>,  <13.031785, 20.563299, 9.431591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.804996, 20.487347, 9.451530>,  <12.427012, 20.360758, 9.484763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.804996, 20.487347, 9.451530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124497, -0.112948, 0.985770,
		0.302583, -0.941854, -0.146130,
		0.944957, 0.316471, -0.083082,
		13.088483, 20.582287, 9.426606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.852622, 19.867872, 9.795482>,  <12.427012, 20.360758, 9.484763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.852622, 19.867872, 9.795482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.063970, 20.207180, 9.809711>,  <13.190778, 20.410765, 9.818248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.063970, 20.207180, 9.809711>,  <12.852622, 19.867872, 9.795482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.063970, 20.207180, 9.809711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026655, -0.058451, 0.997934,
		0.848597, -0.526329, -0.053495,
		0.528369, 0.848270, 0.035572,
		13.222480, 20.461660, 9.820382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.398642, 19.625647, 10.195424>,  <12.852622, 19.867872, 9.795482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.398642, 19.625647, 10.195424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.374625, 20.024872, 10.188888>,  <13.360215, 20.264406, 10.184966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.374625, 20.024872, 10.188888>,  <13.398642, 19.625647, 10.195424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.374625, 20.024872, 10.188888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009282, 0.015812, 0.999832,
		0.998153, 0.060182, 0.008315,
		-0.060041, 0.998062, -0.016341,
		13.356613, 20.324291, 10.183985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.901247, 19.888441, 10.703926>,  <13.398642, 19.625647, 10.195424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.901247, 19.888441, 10.703926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.671451, 20.210453, 10.644750>,  <13.533573, 20.403660, 10.609243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.671451, 20.210453, 10.644750>,  <13.901247, 19.888441, 10.703926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.671451, 20.210453, 10.644750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114724, 0.099764, 0.988375,
		0.810432, 0.584784, 0.035042,
		-0.574490, 0.805031, -0.147941,
		13.499104, 20.451962, 10.600368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.141530, 20.417870, 11.184957>,  <13.901247, 19.888441, 10.703926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.141530, 20.417870, 11.184957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.761895, 20.502468, 11.091573>,  <13.534115, 20.553226, 11.035542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.761895, 20.502468, 11.091573>,  <14.141530, 20.417870, 11.184957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.761895, 20.502468, 11.091573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195599, 0.185282, 0.963022,
		0.246932, 0.959656, -0.134480,
		-0.949087, 0.211497, -0.233460,
		13.477169, 20.565918, 11.021535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.008444, 21.013395, 11.568117>,  <14.141530, 20.417870, 11.184957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.008444, 21.013395, 11.568117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.667459, 20.823418, 11.480723>,  <13.462868, 20.709431, 11.428287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.667459, 20.823418, 11.480723>,  <14.008444, 21.013395, 11.568117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.667459, 20.823418, 11.480723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246370, -0.003637, 0.969169,
		-0.461096, 0.880009, -0.113911,
		-0.852463, -0.474944, -0.218485,
		13.411719, 20.680935, 11.415178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.980237, 21.705194, 11.710779>,  <14.008444, 21.013395, 11.568117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.980237, 21.705194, 11.710779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.182990, 22.049751, 11.697657>,  <14.304642, 22.256485, 11.689783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.182990, 22.049751, 11.697657>,  <13.980237, 21.705194, 11.710779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.182990, 22.049751, 11.697657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445994, -0.294632, -0.845151,
		-0.737671, 0.413761, -0.533519,
		0.506883, 0.861390, -0.032807,
		14.335055, 22.308168, 11.687815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.026881, 21.976419, 11.025297>,  <13.980237, 21.705194, 11.710779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.026881, 21.976419, 11.025297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.334159, 22.140488, 11.221925>,  <14.518525, 22.238928, 11.339901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.334159, 22.140488, 11.221925>,  <14.026881, 21.976419, 11.025297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.334159, 22.140488, 11.221925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577721, -0.113236, -0.808342,
		-0.275894, 0.904952, -0.323950,
		0.768193, 0.410170, 0.491568,
		14.564617, 22.263538, 11.369395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.315576, 22.590658, 10.658379>,  <14.026881, 21.976419, 11.025297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.315576, 22.590658, 10.658379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.600490, 22.453060, 10.903104>,  <14.771439, 22.370501, 11.049939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.600490, 22.453060, 10.903104>,  <14.315576, 22.590658, 10.658379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.600490, 22.453060, 10.903104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674475, 0.094219, -0.732261,
		0.194249, 0.934233, 0.299126,
		0.712286, -0.343994, 0.611814,
		14.814176, 22.349861, 11.086648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.882715, 22.837759, 10.357638>,  <14.315576, 22.590658, 10.658379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.882715, 22.837759, 10.357638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.063004, 22.604336, 10.627841>,  <15.171179, 22.464283, 10.789963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.063004, 22.604336, 10.627841>,  <14.882715, 22.837759, 10.357638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.063004, 22.604336, 10.627841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858664, 0.076569, -0.506787,
		0.244016, 0.808455, 0.535591,
		0.450724, -0.583556, 0.675507,
		15.198222, 22.429268, 10.830493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.460238, 23.164408, 10.687699>,  <14.882715, 22.837759, 10.357638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.460238, 23.164408, 10.687699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.532363, 22.770966, 10.689114>,  <15.575638, 22.534901, 10.689962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.532363, 22.770966, 10.689114>,  <15.460238, 23.164408, 10.687699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.532363, 22.770966, 10.689114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761802, 0.137374, -0.633077,
		0.622211, 0.116845, 0.774081,
		0.180311, -0.983603, 0.003537,
		15.586456, 22.475885, 10.690175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.118856, 23.158459, 10.634966>,  <15.460238, 23.164408, 10.687699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.118856, 23.158459, 10.634966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.032833, 22.778282, 10.545156>,  <15.981219, 22.550177, 10.491269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.032833, 22.778282, 10.545156>,  <16.118856, 23.158459, 10.634966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.032833, 22.778282, 10.545156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875586, -0.085821, -0.475377,
		0.432549, -0.298826, 0.850649,
		-0.215058, -0.950441, -0.224527,
		15.968315, 22.493151, 10.477798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.691483, 22.914904, 10.509970>,  <16.118856, 23.158459, 10.634966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.691483, 22.914904, 10.509970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.477283, 22.615498, 10.353528>,  <16.348764, 22.435854, 10.259663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.477283, 22.615498, 10.353528>,  <16.691483, 22.914904, 10.509970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.477283, 22.615498, 10.353528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741564, -0.195140, -0.641875,
		0.404134, -0.633752, 0.659571,
		-0.535498, -0.748517, -0.391105,
		16.316633, 22.390942, 10.236197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059107, 22.257942, 10.558783>,  <16.691483, 22.914904, 10.509970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.059107, 22.257942, 10.558783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.798054, 22.252586, 10.255760>,  <16.641422, 22.249372, 10.073947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.798054, 22.252586, 10.255760>,  <17.059107, 22.257942, 10.558783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.798054, 22.252586, 10.255760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731974, -0.269350, -0.625832,
		-0.195668, -0.962949, 0.185587,
		-0.652632, -0.013389, -0.757557,
		16.602264, 22.248569, 10.028493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.393311, 21.785839, 10.055120>,  <17.059107, 22.257942, 10.558783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.393311, 21.785839, 10.055120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.110798, 21.958340, 9.830555>,  <16.941290, 22.061840, 9.695815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.110798, 21.958340, 9.830555>,  <17.393311, 21.785839, 10.055120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.110798, 21.958340, 9.830555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503957, -0.250672, -0.826553,
		-0.497186, -0.866708, -0.040289,
		-0.706281, 0.431255, -0.561415,
		16.898914, 22.087715, 9.662130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.327375, 21.359941, 9.419170>,  <17.393311, 21.785839, 10.055120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.327375, 21.359941, 9.419170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.168972, 21.710232, 9.308696>,  <17.073931, 21.920406, 9.242411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.168972, 21.710232, 9.308696>,  <17.327375, 21.359941, 9.419170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.168972, 21.710232, 9.308696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525473, -0.030535, -0.850263,
		-0.753032, -0.481838, -0.448079,
		-0.396007, 0.875728, -0.276187,
		17.050171, 21.972950, 9.225840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.185377, 21.346634, 8.730543>,  <17.327375, 21.359941, 9.419170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.185377, 21.346634, 8.730543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.178776, 21.742653, 8.786443>,  <17.174814, 21.980265, 8.819983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.178776, 21.742653, 8.786443>,  <17.185377, 21.346634, 8.730543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.178776, 21.742653, 8.786443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337752, 0.137072, -0.931201,
		-0.941091, 0.031831, -0.336653,
		-0.016505, 0.990049, 0.139748,
		17.173824, 22.039667, 8.828367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.766972, 21.585829, 8.258720>,  <17.185377, 21.346634, 8.730543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.766972, 21.585829, 8.258720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.003029, 21.885731, 8.378451>,  <17.144663, 22.065672, 8.450290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.003029, 21.885731, 8.378451>,  <16.766972, 21.585829, 8.258720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.003029, 21.885731, 8.378451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346347, 0.099782, -0.932785,
		-0.729227, 0.654149, -0.200790,
		0.590145, 0.749755, 0.299326,
		17.180073, 22.110657, 8.468249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<12.317407, 22.986170, 14.713010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.686578, 23.095123, 14.821829>,  <12.908081, 23.160496, 14.887120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.686578, 23.095123, 14.821829>,  <12.317407, 22.986170, 14.713010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.686578, 23.095123, 14.821829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239683, 0.146435, -0.959744,
		-0.301255, 0.950981, 0.069863,
		0.922929, 0.272383, 0.272048,
		12.963456, 23.176838, 14.903443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.440194, 23.577877, 14.400798>,  <12.317407, 22.986170, 14.713010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.440194, 23.577877, 14.400798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.816321, 23.461716, 14.471752>,  <13.041998, 23.392019, 14.514325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.816321, 23.461716, 14.471752>,  <12.440194, 23.577877, 14.400798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.816321, 23.461716, 14.471752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230363, 0.159556, -0.959935,
		0.250467, 0.943508, 0.216932,
		0.940319, -0.290405, 0.177386,
		13.098417, 23.374594, 14.524968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.924753, 24.133196, 14.046163>,  <12.440194, 23.577877, 14.400798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.924753, 24.133196, 14.046163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.130631, 23.792671, 14.086868>,  <13.254158, 23.588356, 14.111292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.130631, 23.792671, 14.086868>,  <12.924753, 24.133196, 14.046163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.130631, 23.792671, 14.086868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384551, 0.123136, -0.914854,
		0.766296, 0.510005, 0.390751,
		0.514695, -0.851312, 0.101764,
		13.285040, 23.537277, 14.117397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.654003, 24.282852, 13.765578>,  <12.924753, 24.133196, 14.046163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.654003, 24.282852, 13.765578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.600455, 23.886559, 13.774729>,  <13.568327, 23.648783, 13.780219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.600455, 23.886559, 13.774729>,  <13.654003, 24.282852, 13.765578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.600455, 23.886559, 13.774729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518153, -0.089653, -0.850576,
		0.844746, -0.102014, 0.525354,
		-0.133870, -0.990735, 0.022875,
		13.560294, 23.589338, 13.781591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.293198, 23.999485, 13.353209>,  <13.654003, 24.282852, 13.765578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.293198, 23.999485, 13.353209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.059918, 23.677616, 13.397715>,  <13.919951, 23.484495, 13.424418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.059918, 23.677616, 13.397715>,  <14.293198, 23.999485, 13.353209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.059918, 23.677616, 13.397715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511894, -0.470395, -0.718814,
		0.630750, -0.362254, 0.686241,
		-0.583197, -0.804674, 0.111266,
		13.884959, 23.436214, 13.431094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.754794, 23.338558, 13.467250>,  <14.293198, 23.999485, 13.353209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.754794, 23.338558, 13.467250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.394128, 23.237362, 13.326967>,  <14.177729, 23.176643, 13.242798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.394128, 23.237362, 13.326967>,  <14.754794, 23.338558, 13.467250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.394128, 23.237362, 13.326967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431380, -0.582843, -0.688626,
		-0.030189, -0.772197, 0.634665,
		-0.901665, -0.252993, -0.350706,
		14.123629, 23.161465, 13.221755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.816986, 22.607069, 13.281196>,  <14.754794, 23.338558, 13.467250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.816986, 22.607069, 13.281196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.492089, 22.732388, 13.084377>,  <14.297152, 22.807579, 12.966287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.492089, 22.732388, 13.084377>,  <14.816986, 22.607069, 13.281196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.492089, 22.732388, 13.084377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212596, -0.626514, -0.749856,
		-0.543199, -0.713671, 0.442276,
		-0.812242, 0.313295, -0.492046,
		14.248417, 22.826376, 12.936764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.531617, 22.055416, 13.016286>,  <14.816986, 22.607069, 13.281196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.531617, 22.055416, 13.016286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.391677, 22.350533, 12.785367>,  <14.307713, 22.527601, 12.646815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.391677, 22.350533, 12.785367>,  <14.531617, 22.055416, 13.016286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.391677, 22.350533, 12.785367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205192, -0.540927, -0.815656,
		-0.914058, -0.403814, 0.037855,
		-0.349850, 0.737789, -0.577298,
		14.286722, 22.571869, 12.612178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.092321, 21.774408, 12.449113>,  <14.531617, 22.055416, 13.016286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.092321, 21.774408, 12.449113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.186954, 22.137779, 12.311249>,  <14.243733, 22.355801, 12.228530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.186954, 22.137779, 12.311249>,  <14.092321, 21.774408, 12.449113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.186954, 22.137779, 12.311249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337069, -0.409437, -0.847789,
		-0.911270, 0.084397, -0.403068,
		0.236582, 0.908427, -0.344660,
		14.257928, 22.410307, 12.207850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.508501, 21.266943, 12.052941>,  <14.092321, 21.774408, 12.449113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.508501, 21.266943, 12.052941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.299897, 20.947964, 11.931544>,  <13.174735, 20.756577, 11.858706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.299897, 20.947964, 11.931544>,  <13.508501, 21.266943, 12.052941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.299897, 20.947964, 11.931544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137874, -0.272259, 0.952295,
		-0.842032, 0.538475, 0.032039,
		-0.521510, -0.797446, -0.303493,
		13.143444, 20.708731, 11.840496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.919992, 21.273939, 12.384220>,  <13.508501, 21.266943, 12.052941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.919992, 21.273939, 12.384220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.963317, 20.892372, 12.272283>,  <12.989311, 20.663433, 12.205120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.963317, 20.892372, 12.272283>,  <12.919992, 21.273939, 12.384220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.963317, 20.892372, 12.272283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141176, -0.293407, 0.945506,
		-0.984042, -0.062901, -0.166449,
		0.108310, -0.953916, -0.279844,
		12.995810, 20.606197, 12.188330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.368179, 20.811052, 12.764720>,  <12.919992, 21.273939, 12.384220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.368179, 20.811052, 12.764720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.656211, 20.576942, 12.615621>,  <12.829030, 20.436476, 12.526161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.656211, 20.576942, 12.615621>,  <12.368179, 20.811052, 12.764720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.656211, 20.576942, 12.615621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151722, -0.391383, 0.907634,
		-0.677102, -0.710122, -0.193028,
		0.720079, -0.585274, -0.372748,
		12.872234, 20.401360, 12.503797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.222358, 20.379395, 13.155228>,  <12.368179, 20.811052, 12.764720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.222358, 20.379395, 13.155228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.587432, 20.257347, 13.046484>,  <12.806477, 20.184118, 12.981237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.587432, 20.257347, 13.046484>,  <12.222358, 20.379395, 13.155228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.587432, 20.257347, 13.046484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162415, -0.339623, 0.926433,
		-0.375004, -0.889695, -0.260412,
		0.912685, -0.305121, -0.271860,
		12.861238, 20.165812, 12.964926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.211976, 19.634596, 13.304943>,  <12.222358, 20.379395, 13.155228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.211976, 19.634596, 13.304943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.578721, 19.792892, 13.283953>,  <12.798768, 19.887871, 13.271358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.578721, 19.792892, 13.283953>,  <12.211976, 19.634596, 13.304943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.578721, 19.792892, 13.283953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183070, -0.299998, 0.936209,
		0.354753, -0.867981, -0.347505,
		0.916862, 0.395740, -0.052476,
		12.853780, 19.911615, 13.268209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.571848, 19.216215, 13.767659>,  <12.211976, 19.634596, 13.304943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.571848, 19.216215, 13.767659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.810069, 19.535809, 13.734329>,  <12.953002, 19.727564, 13.714332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.810069, 19.535809, 13.734329>,  <12.571848, 19.216215, 13.767659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.810069, 19.535809, 13.734329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253564, -0.088548, 0.963257,
		0.762249, -0.594797, -0.255329,
		0.595552, 0.798984, -0.083324,
		12.988735, 19.775503, 13.709332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.214622, 18.925880, 14.046453>,  <12.571848, 19.216215, 13.767659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.214622, 18.925880, 14.046453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.208041, 19.325291, 14.067135>,  <13.204093, 19.564938, 14.079543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.208041, 19.325291, 14.067135>,  <13.214622, 18.925880, 14.046453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.208041, 19.325291, 14.067135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363368, -0.042203, 0.930690,
		0.931501, 0.034098, -0.362138,
		-0.016451, 0.998527, 0.051702,
		13.203106, 19.624849, 14.082645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.752161, 19.025507, 14.501954>,  <13.214622, 18.925880, 14.046453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.752161, 19.025507, 14.501954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.547082, 19.368580, 14.517559>,  <13.424034, 19.574423, 14.526922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.547082, 19.368580, 14.517559>,  <13.752161, 19.025507, 14.501954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.547082, 19.368580, 14.517559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295262, 0.133467, 0.946048,
		0.806202, 0.496556, -0.321669,
		-0.512698, 0.857682, 0.039013,
		13.393272, 19.625885, 14.529263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.298974, 19.596262, 14.810441>,  <13.752161, 19.025507, 14.501954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.298974, 19.596262, 14.810441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.918954, 19.719540, 14.830120>,  <13.690942, 19.793507, 14.841928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.918954, 19.719540, 14.830120>,  <14.298974, 19.596262, 14.810441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.918954, 19.719540, 14.830120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119000, 0.211990, 0.970000,
		0.288519, 0.927403, -0.238076,
		-0.950050, 0.308194, 0.049198,
		13.633939, 19.811998, 14.844879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.391741, 20.241257, 15.217840>,  <14.298974, 19.596262, 14.810441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.391741, 20.241257, 15.217840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.011304, 20.120026, 15.241732>,  <13.783042, 20.047287, 15.256066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.011304, 20.120026, 15.241732>,  <14.391741, 20.241257, 15.217840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.011304, 20.120026, 15.241732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048229, 0.045293, 0.997809,
		-0.305119, 0.951889, -0.028461,
		-0.951092, -0.303078, 0.059728,
		13.725976, 20.029102, 15.259650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.099297, 20.672506, 15.665885>,  <14.391741, 20.241257, 15.217840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.099297, 20.672506, 15.665885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.861691, 20.350754, 15.661457>,  <13.719129, 20.157703, 15.658800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.861691, 20.350754, 15.661457>,  <14.099297, 20.672506, 15.665885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.861691, 20.350754, 15.661457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094007, 0.055741, 0.994010,
		-0.798945, 0.591495, -0.108728,
		-0.594012, -0.804380, -0.011070,
		13.683488, 20.109440, 15.658136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.524167, 20.812174, 16.046541>,  <14.099297, 20.672506, 15.665885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.524167, 20.812174, 16.046541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.537677, 20.412434, 16.041464>,  <13.545783, 20.172590, 16.038418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.537677, 20.412434, 16.041464>,  <13.524167, 20.812174, 16.046541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.537677, 20.412434, 16.041464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102990, -0.016116, 0.994552,
		-0.994109, -0.032283, -0.103467,
		0.033775, -0.999349, -0.012696,
		13.547810, 20.112629, 16.037655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.040524, 20.660667, 16.486889>,  <13.524167, 20.812174, 16.046541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.040524, 20.660667, 16.486889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.248157, 20.318996, 16.474649>,  <13.372736, 20.113993, 16.467306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.248157, 20.318996, 16.474649>,  <13.040524, 20.660667, 16.486889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.248157, 20.318996, 16.474649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191923, -0.151365, 0.969667,
		-0.832900, -0.497461, -0.242507,
		0.519079, -0.854178, -0.030598,
		13.403880, 20.062742, 16.465469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.701726, 20.247185, 16.982391>,  <13.040524, 20.660667, 16.486889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.701726, 20.247185, 16.982391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.041469, 20.043751, 16.925919>,  <13.245315, 19.921690, 16.892035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.041469, 20.043751, 16.925919>,  <12.701726, 20.247185, 16.982391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.041469, 20.043751, 16.925919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066879, -0.369024, 0.927011,
		-0.523566, -0.777920, -0.347446,
		0.849356, -0.508588, -0.141182,
		13.296276, 19.891174, 16.883564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<18.564461, 20.991392, 17.412199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.187954, 21.107536, 17.481136>,  <17.962049, 21.177223, 17.522499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.187954, 21.107536, 17.481136>,  <18.564461, 20.991392, 17.412199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.187954, 21.107536, 17.481136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207404, -0.094410, -0.973689,
		-0.266451, -0.952248, 0.149088,
		-0.941269, 0.290362, 0.172344,
		17.905573, 21.194645, 17.532839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.194983, 20.426094, 17.055296>,  <18.564461, 20.991392, 17.412199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.194983, 20.426094, 17.055296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.948326, 20.736629, 17.107527>,  <17.800331, 20.922951, 17.138865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.948326, 20.736629, 17.107527>,  <18.194983, 20.426094, 17.055296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.948326, 20.736629, 17.107527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427969, -0.191365, -0.883302,
		-0.660754, -0.600564, 0.450253,
		-0.616642, 0.776339, 0.130577,
		17.763334, 20.969532, 17.146700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.533560, 20.189280, 16.824886>,  <18.194983, 20.426094, 17.055296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.533560, 20.189280, 16.824886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.521866, 20.588638, 16.805508>,  <17.514849, 20.828255, 16.793880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.521866, 20.588638, 16.805508>,  <17.533560, 20.189280, 16.824886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.521866, 20.588638, 16.805508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327651, -0.055360, -0.943176,
		-0.944346, -0.011700, 0.328744,
		-0.029234, 0.998398, -0.048446,
		17.513096, 20.888157, 16.790974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.893238, 20.305883, 16.479023>,  <17.533560, 20.189280, 16.824886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.893238, 20.305883, 16.479023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.126526, 20.627449, 16.432409>,  <17.266499, 20.820389, 16.404442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.126526, 20.627449, 16.432409>,  <16.893238, 20.305883, 16.479023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.126526, 20.627449, 16.432409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014053, -0.153423, -0.988061,
		-0.812194, 0.574617, -0.100776,
		0.583218, 0.803913, -0.116535,
		17.301491, 20.868624, 16.397449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.452927, 20.608065, 15.850016>,  <16.893238, 20.305883, 16.479023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.452927, 20.608065, 15.850016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.817059, 20.769932, 15.884752>,  <17.035538, 20.867052, 15.905594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.817059, 20.769932, 15.884752>,  <16.452927, 20.608065, 15.850016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.817059, 20.769932, 15.884752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114579, -0.044786, -0.992404,
		-0.397707, 0.913365, -0.087136,
		0.910330, 0.404670, 0.086841,
		17.090158, 20.891333, 15.910805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.482212, 21.107473, 15.269858>,  <16.452927, 20.608065, 15.850016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.482212, 21.107473, 15.269858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.867371, 21.044212, 15.357328>,  <17.098465, 21.006256, 15.409810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.867371, 21.044212, 15.357328>,  <16.482212, 21.107473, 15.269858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.867371, 21.044212, 15.357328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225480, 0.026232, -0.973895,
		0.148288, 0.987066, 0.060919,
		0.962896, -0.158153, 0.218674,
		17.156239, 20.996767, 15.422931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.841166, 21.484129, 14.847551>,  <16.482212, 21.107473, 15.269858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.841166, 21.484129, 14.847551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.109444, 21.209991, 14.961021>,  <17.270411, 21.045509, 15.029103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.109444, 21.209991, 14.961021>,  <16.841166, 21.484129, 14.847551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.109444, 21.209991, 14.961021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257957, -0.143058, -0.955507,
		0.695434, 0.714028, 0.080841,
		0.670694, -0.685345, 0.283676,
		17.310652, 21.004387, 15.046124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.477972, 21.763191, 14.726678>,  <16.841166, 21.484129, 14.847551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.477972, 21.763191, 14.726678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.575455, 21.375481, 14.740011>,  <17.633944, 21.142855, 14.748012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.575455, 21.375481, 14.740011>,  <17.477972, 21.763191, 14.726678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.575455, 21.375481, 14.740011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480517, 0.090819, -0.872270,
		0.842443, 0.228594, 0.487887,
		0.243705, -0.969276, 0.033333,
		17.648565, 21.084698, 14.750011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.153337, 21.860085, 14.514239>,  <17.477972, 21.763191, 14.726678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.153337, 21.860085, 14.514239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.079662, 21.469471, 14.469593>,  <18.035458, 21.235104, 14.442805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.079662, 21.469471, 14.469593>,  <18.153337, 21.860085, 14.514239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.079662, 21.469471, 14.469593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575255, -0.015025, -0.817836,
		0.796966, -0.214844, 0.564523,
		-0.184189, -0.976533, -0.111616,
		18.024406, 21.176512, 14.436109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.802465, 21.502123, 14.552994>,  <18.153337, 21.860085, 14.514239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.802465, 21.502123, 14.552994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.554432, 21.265320, 14.347073>,  <18.405611, 21.123238, 14.223520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.554432, 21.265320, 14.347073>,  <18.802465, 21.502123, 14.552994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.554432, 21.265320, 14.347073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659642, -0.038206, -0.750609,
		0.424698, -0.805026, 0.414205,
		-0.620085, -0.592008, -0.514803,
		18.368406, 21.087717, 14.192632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.232618, 20.949627, 14.445877>,  <18.802465, 21.502123, 14.552994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.232618, 20.949627, 14.445877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.934032, 20.915466, 14.181908>,  <18.754881, 20.894970, 14.023526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.934032, 20.915466, 14.181908>,  <19.232618, 20.949627, 14.445877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.934032, 20.915466, 14.181908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665416, -0.101449, -0.739547,
		-0.003790, -0.991168, 0.132555,
		-0.746463, -0.085401, -0.659923,
		18.710093, 20.889847, 13.983931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.464693, 20.389372, 13.991806>,  <19.232618, 20.949627, 14.445877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.464693, 20.389372, 13.991806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.146854, 20.541920, 13.802841>,  <18.956152, 20.633448, 13.689463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.146854, 20.541920, 13.802841>,  <19.464693, 20.389372, 13.991806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.146854, 20.541920, 13.802841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398064, -0.260276, -0.879660,
		-0.458433, -0.887025, 0.055005,
		-0.794597, 0.381370, -0.472412,
		18.908476, 20.656330, 13.661118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.237507, 19.955257, 13.424361>,  <19.464693, 20.389372, 13.991806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.237507, 19.955257, 13.424361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.067024, 20.300438, 13.315800>,  <18.964735, 20.507547, 13.250663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.067024, 20.300438, 13.315800>,  <19.237507, 19.955257, 13.424361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.067024, 20.300438, 13.315800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316006, -0.139092, -0.938506,
		-0.847637, -0.485763, -0.213416,
		-0.426207, 0.862953, -0.271403,
		18.939161, 20.559324, 13.234379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.738976, 19.771866, 12.944459>,  <19.237507, 19.955257, 13.424361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.738976, 19.771866, 12.944459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.878830, 20.141228, 12.881115>,  <18.962744, 20.362844, 12.843108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.878830, 20.141228, 12.881115>,  <18.738976, 19.771866, 12.944459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.878830, 20.141228, 12.881115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298376, -0.269977, -0.915469,
		-0.888102, 0.272832, -0.369916,
		0.349638, 0.923404, -0.158361,
		18.983721, 20.418249, 12.833607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.295895, 19.213383, 12.646354>,  <18.738976, 19.771866, 12.944459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.295895, 19.213383, 12.646354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.489979, 18.868851, 12.586115>,  <18.606430, 18.662132, 12.549972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.489979, 18.868851, 12.586115>,  <18.295895, 19.213383, 12.646354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.489979, 18.868851, 12.586115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122027, -0.237248, 0.963755,
		-0.865841, -0.449247, -0.220221,
		0.485211, -0.861331, -0.150598,
		18.635542, 18.610451, 12.540936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.903669, 18.671957, 13.023360>,  <18.295895, 19.213383, 12.646354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.903669, 18.671957, 13.023360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.267471, 18.508549, 12.992601>,  <18.485752, 18.410503, 12.974146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.267471, 18.508549, 12.992601>,  <17.903669, 18.671957, 13.023360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.267471, 18.508549, 12.992601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072177, -0.337366, 0.938603,
		-0.409382, -0.848112, -0.336322,
		0.909504, -0.408522, -0.076898,
		18.540323, 18.385994, 12.969532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.862402, 18.003531, 13.272760>,  <17.903669, 18.671957, 13.023360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.862402, 18.003531, 13.272760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.257954, 18.057819, 13.297094>,  <18.495285, 18.090393, 13.311695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.257954, 18.057819, 13.297094>,  <17.862402, 18.003531, 13.272760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.257954, 18.057819, 13.297094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020234, -0.282457, 0.959067,
		0.147350, -0.949630, -0.276569,
		0.988877, 0.135723, 0.060835,
		18.554617, 18.098536, 13.315345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.073734, 17.401934, 13.606141>,  <17.862402, 18.003531, 13.272760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.073734, 17.401934, 13.606141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.358917, 17.676918, 13.661411>,  <18.530027, 17.841908, 13.694573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.358917, 17.676918, 13.661411>,  <18.073734, 17.401934, 13.606141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.358917, 17.676918, 13.661411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146180, -0.047011, 0.988140,
		0.685803, -0.724699, 0.066976,
		0.712955, 0.687460, 0.138176,
		18.572803, 17.883156, 13.702865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.476673, 17.099583, 14.060960>,  <18.073734, 17.401934, 13.606141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.476673, 17.099583, 14.060960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.603626, 17.476326, 14.105085>,  <18.679798, 17.702372, 14.131561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.603626, 17.476326, 14.105085>,  <18.476673, 17.099583, 14.060960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.603626, 17.476326, 14.105085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051707, -0.098968, 0.993746,
		0.946887, -0.321102, 0.017290,
		0.317383, 0.941859, 0.110315,
		18.698841, 17.758884, 14.138180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.072826, 17.120832, 14.643275>,  <18.476673, 17.099583, 14.060960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.072826, 17.120832, 14.643275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.912189, 17.485298, 14.606392>,  <18.815807, 17.703978, 14.584262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.912189, 17.485298, 14.606392>,  <19.072826, 17.120832, 14.643275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.912189, 17.485298, 14.606392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079617, 0.065568, 0.994667,
		0.912351, 0.406792, 0.046212,
		-0.401592, 0.911165, -0.092208,
		18.791712, 17.758648, 14.578730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.319813, 17.364563, 15.245527>,  <19.072826, 17.120832, 14.643275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.319813, 17.364563, 15.245527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.045971, 17.636749, 15.141001>,  <18.881666, 17.800060, 15.078285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.045971, 17.636749, 15.141001>,  <19.319813, 17.364563, 15.245527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.045971, 17.636749, 15.141001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246636, 0.121109, 0.961511,
		0.685923, 0.722703, 0.084916,
		-0.684603, 0.680466, -0.261316,
		18.840590, 17.840889, 15.062606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.399061, 18.014484, 15.629348>,  <19.319813, 17.364563, 15.245527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.399061, 18.014484, 15.629348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.013355, 18.000233, 15.524332>,  <18.781933, 17.991682, 15.461323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.013355, 18.000233, 15.524332>,  <19.399061, 18.014484, 15.629348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.013355, 18.000233, 15.524332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262970, 0.249494, 0.931987,
		0.032294, 0.967721, -0.249948,
		-0.964263, -0.035631, -0.262539,
		18.724075, 17.989544, 15.445570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.081146, 18.696583, 15.772655>,  <19.399061, 18.014484, 15.629348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.081146, 18.696583, 15.772655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.769272, 18.446136, 15.769295>,  <18.582148, 18.295870, 15.767278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.769272, 18.446136, 15.769295>,  <19.081146, 18.696583, 15.772655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.769272, 18.446136, 15.769295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319975, 0.386850, 0.864849,
		-0.538244, 0.676999, -0.501963,
		-0.779686, -0.626115, -0.008403,
		18.535366, 18.258303, 15.766774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.670263, 18.974932, 16.220877>,  <19.081146, 18.696583, 15.772655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.670263, 18.974932, 16.220877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.493656, 18.616482, 16.202883>,  <18.387691, 18.401413, 16.192087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.493656, 18.616482, 16.202883>,  <18.670263, 18.974932, 16.220877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.493656, 18.616482, 16.202883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365135, 0.133653, 0.921311,
		-0.819597, 0.423201, -0.386216,
		-0.441518, -0.896124, -0.044984,
		18.361200, 18.347645, 16.189388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.033159, 19.061350, 16.522346>,  <18.670263, 18.974932, 16.220877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.033159, 19.061350, 16.522346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.115620, 18.670670, 16.546192>,  <18.165096, 18.436260, 16.560499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.115620, 18.670670, 16.546192>,  <18.033159, 19.061350, 16.522346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.115620, 18.670670, 16.546192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449401, -0.040384, 0.892417,
		-0.869219, -0.210761, -0.447256,
		0.206149, -0.976703, 0.059614,
		18.177464, 18.377659, 16.564075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.492342, 18.737978, 16.816704>,  <18.033159, 19.061350, 16.522346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.492342, 18.737978, 16.816704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.759487, 18.444515, 16.866835>,  <17.919775, 18.268438, 16.896914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.759487, 18.444515, 16.866835>,  <17.492342, 18.737978, 16.816704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.759487, 18.444515, 16.866835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417202, -0.229572, 0.879340,
		-0.616362, -0.639565, -0.459406,
		0.667862, -0.733657, 0.125329,
		17.959846, 18.224419, 16.904434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.065554, 18.287121, 17.093691>,  <17.492342, 18.737978, 16.816704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.065554, 18.287121, 17.093691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.443653, 18.183659, 17.173292>,  <17.670513, 18.121582, 17.221052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.443653, 18.183659, 17.173292>,  <17.065554, 18.287121, 17.093691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.443653, 18.183659, 17.173292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252209, -0.191992, 0.948435,
		-0.207137, -0.946691, -0.246721,
		0.945243, -0.258681, 0.198996,
		17.727228, 18.106062, 17.232992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.047798, 17.602570, 17.445274>,  <17.065554, 18.287121, 17.093691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.047798, 17.602570, 17.445274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.377674, 17.807663, 17.540764>,  <17.575600, 17.930719, 17.598059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.377674, 17.807663, 17.540764>,  <17.047798, 17.602570, 17.445274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.377674, 17.807663, 17.540764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255679, -0.038522, 0.965994,
		0.504492, -0.857684, 0.099325,
		0.824692, 0.512731, 0.238726,
		17.625082, 17.961483, 17.612381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.688675, 16.941504, 17.726618>,  <17.047798, 17.602570, 17.445274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.688675, 16.941504, 17.726618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.288837, 16.947063, 17.716673>,  <16.048935, 16.950399, 17.710707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.288837, 16.947063, 17.716673>,  <16.688675, 16.941504, 17.726618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.288837, 16.947063, 17.716673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021175, -0.221142, -0.975012,
		-0.019048, -0.975143, 0.220758,
		-0.999595, 0.013897, -0.024860,
		15.988959, 16.951233, 17.709215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.450691, 16.315664, 17.504391>,  <16.688675, 16.941504, 17.726618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.450691, 16.315664, 17.504391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.154591, 16.571758, 17.422291>,  <15.976931, 16.725414, 17.373032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.154591, 16.571758, 17.422291>,  <16.450691, 16.315664, 17.504391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.154591, 16.571758, 17.422291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044399, -0.351162, -0.935261,
		-0.670864, -0.683215, 0.288374,
		-0.740251, 0.640236, -0.205248,
		15.932515, 16.763828, 17.360716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.017563, 15.981511, 16.906538>,  <16.450691, 16.315664, 17.504391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.017563, 15.981511, 16.906538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.885699, 16.359127, 16.910854>,  <15.806581, 16.585697, 16.913445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.885699, 16.359127, 16.910854>,  <16.017563, 15.981511, 16.906538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.885699, 16.359127, 16.910854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184905, -0.053351, -0.981307,
		-0.925816, -0.325491, 0.192145,
		-0.329658, 0.944039, 0.010792,
		15.786802, 16.642338, 16.914091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.445124, 15.889089, 16.448925>,  <16.017563, 15.981511, 16.906538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.445124, 15.889089, 16.448925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.513286, 16.283073, 16.437517>,  <15.554183, 16.519464, 16.430674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.513286, 16.283073, 16.437517>,  <15.445124, 15.889089, 16.448925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.513286, 16.283073, 16.437517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046903, -0.020801, -0.998683,
		-0.984257, 0.171518, 0.042653,
		0.170405, 0.984961, -0.028518,
		15.564407, 16.578562, 16.428963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.893051, 16.227764, 16.029989>,  <15.445124, 15.889089, 16.448925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.893051, 16.227764, 16.029989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.206140, 16.476540, 16.039272>,  <15.393992, 16.625805, 16.044842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.206140, 16.476540, 16.039272>,  <14.893051, 16.227764, 16.029989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.206140, 16.476540, 16.039272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064390, 0.118013, -0.990922,
		-0.619034, 0.774121, 0.132418,
		0.782720, 0.621941, 0.023208,
		15.440956, 16.663122, 16.046234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.745789, 16.842152, 15.605736>,  <14.893051, 16.227764, 16.029989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.745789, 16.842152, 15.605736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.141721, 16.844807, 15.662571>,  <15.379280, 16.846399, 15.696672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.141721, 16.844807, 15.662571>,  <14.745789, 16.842152, 15.605736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.141721, 16.844807, 15.662571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134688, 0.277488, -0.951241,
		-0.045744, 0.960706, 0.273772,
		0.989832, 0.006640, 0.142089,
		15.438670, 16.846798, 15.705197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.028208, 17.596951, 15.447888>,  <14.745789, 16.842152, 15.605736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.028208, 17.596951, 15.447888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.332007, 17.339031, 15.413477>,  <15.514287, 17.184280, 15.392830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.332007, 17.339031, 15.413477>,  <15.028208, 17.596951, 15.447888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.332007, 17.339031, 15.413477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118523, 0.267199, -0.956325,
		0.639621, 0.716130, 0.279360,
		0.759498, -0.644796, -0.086028,
		15.559856, 17.145592, 15.387669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.424343, 17.917688, 14.950744>,  <15.028208, 17.596951, 15.447888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.424343, 17.917688, 14.950744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.586307, 17.551945, 14.950895>,  <15.683484, 17.332499, 14.950986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.586307, 17.551945, 14.950895>,  <15.424343, 17.917688, 14.950744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.586307, 17.551945, 14.950895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207504, 0.091486, -0.973947,
		0.890501, 0.394437, 0.226776,
		0.404908, -0.914357, 0.000379,
		15.707779, 17.277637, 14.951009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.089636, 17.957403, 14.685745>,  <15.424343, 17.917688, 14.950744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.089636, 17.957403, 14.685745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.967671, 17.578636, 14.644997>,  <15.894492, 17.351376, 14.620547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.967671, 17.578636, 14.644997>,  <16.089636, 17.957403, 14.685745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.967671, 17.578636, 14.644997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094745, 0.076275, -0.992575,
		0.947656, -0.312300, 0.066458,
		-0.304912, -0.946916, -0.101871,
		15.876198, 17.294561, 14.614435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.552120, 17.782270, 14.296940>,  <16.089636, 17.957403, 14.685745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.552120, 17.782270, 14.296940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.265099, 17.507442, 14.251244>,  <16.092886, 17.342545, 14.223825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.265099, 17.507442, 14.251244>,  <16.552120, 17.782270, 14.296940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.265099, 17.507442, 14.251244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060334, 0.102090, -0.992944,
		0.693887, -0.719381, -0.031801,
		-0.717552, -0.687072, -0.114242,
		16.049833, 17.301321, 14.216971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.825354, 17.358425, 13.773389>,  <16.552120, 17.782270, 14.296940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.825354, 17.358425, 13.773389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.432323, 17.288929, 13.799812>,  <16.196507, 17.247232, 13.815666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.432323, 17.288929, 13.799812>,  <16.825354, 17.358425, 13.773389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.432323, 17.288929, 13.799812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082331, 0.088187, -0.992696,
		0.166649, -0.980835, -0.100955,
		-0.982573, -0.173743, 0.066057,
		16.137552, 17.236807, 13.819630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.756378, 16.831713, 13.261928>,  <16.825354, 17.358425, 13.773389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.756378, 16.831713, 13.261928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.372490, 16.942799, 13.278940>,  <16.142157, 17.009449, 13.289147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.372490, 16.942799, 13.278940>,  <16.756378, 16.831713, 13.261928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372490, 16.942799, 13.278940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059196, -0.051898, -0.996896,
		-0.274644, -0.959261, 0.066247,
		-0.959722, 0.277713, 0.042531,
		16.084574, 17.026112, 13.291699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.355755, 16.315895, 12.967313>,  <16.756378, 16.831713, 13.261928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.355755, 16.315895, 12.967313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.157120, 16.662258, 12.943312>,  <16.037939, 16.870077, 12.928911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.157120, 16.662258, 12.943312>,  <16.355755, 16.315895, 12.967313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.157120, 16.662258, 12.943312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135433, -0.145580, -0.980033,
		-0.857355, -0.478547, 0.189567,
		-0.496588, 0.865910, -0.060003,
		16.008142, 16.922031, 12.925311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.861926, 16.161469, 12.447253>,  <16.355755, 16.315895, 12.967313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.861926, 16.161469, 12.447253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.855342, 16.560238, 12.477913>,  <15.851392, 16.799500, 12.496309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.855342, 16.560238, 12.477913>,  <15.861926, 16.161469, 12.447253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.855342, 16.560238, 12.477913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275112, 0.069185, -0.958919,
		-0.961271, -0.036871, 0.273127,
		-0.016460, 0.996922, 0.076650,
		15.850404, 16.859314, 12.500908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<12.565437, 19.591904, 17.236561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.964898, 19.574474, 17.225273>,  <13.204575, 19.564016, 17.218500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.964898, 19.574474, 17.225273>,  <12.565437, 19.591904, 17.236561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.964898, 19.574474, 17.225273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013023, -0.315961, 0.948683,
		-0.050255, -0.947771, -0.314968,
		0.998651, -0.043575, -0.028221,
		13.264494, 19.561401, 17.216806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.730154, 18.916775, 17.533112>,  <12.565437, 19.591904, 17.236561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.730154, 18.916775, 17.533112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.014518, 19.189198, 17.603281>,  <13.185136, 19.352652, 17.645382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.014518, 19.189198, 17.603281>,  <12.730154, 18.916775, 17.533112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.014518, 19.189198, 17.603281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003397, -0.252753, 0.967525,
		0.703276, -0.687226, -0.181998,
		0.710908, 0.681056, 0.175421,
		13.227791, 19.393515, 17.655907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.262214, 18.668053, 17.974689>,  <12.730154, 18.916775, 17.533112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.262214, 18.668053, 17.974689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.323329, 19.061428, 18.013680>,  <13.359999, 19.297453, 18.037073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.323329, 19.061428, 18.013680>,  <13.262214, 18.668053, 17.974689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.323329, 19.061428, 18.013680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174295, -0.123901, 0.976867,
		0.972768, -0.132265, -0.190340,
		0.152789, 0.983440, 0.097473,
		13.369165, 19.356461, 18.042921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.934335, 18.719790, 18.327442>,  <13.262214, 18.668053, 17.974689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.934335, 18.719790, 18.327442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.755692, 19.076023, 18.361858>,  <13.648507, 19.289764, 18.382507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.755692, 19.076023, 18.361858>,  <13.934335, 18.719790, 18.327442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.755692, 19.076023, 18.361858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269020, 0.041945, 0.962221,
		0.853330, 0.452879, -0.258318,
		-0.446605, 0.890585, 0.086041,
		13.621711, 19.343199, 18.387671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.413404, 19.130701, 18.702223>,  <13.934335, 18.719790, 18.327442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.413404, 19.130701, 18.702223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.054948, 19.306122, 18.729359>,  <13.839873, 19.411373, 18.745640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.054948, 19.306122, 18.729359>,  <14.413404, 19.130701, 18.702223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.054948, 19.306122, 18.729359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100377, 0.051411, 0.993621,
		0.432265, 0.897235, -0.090091,
		-0.896143, 0.438550, 0.067838,
		13.786105, 19.437687, 18.749710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.459217, 19.688848, 19.180929>,  <14.413404, 19.130701, 18.702223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.459217, 19.688848, 19.180929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.091403, 19.531704, 19.176647>,  <13.870714, 19.437418, 19.174078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.091403, 19.531704, 19.176647>,  <14.459217, 19.688848, 19.180929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.091403, 19.531704, 19.176647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016450, 0.011260, 0.999801,
		-0.392661, 0.919530, -0.016817,
		-0.919536, -0.392860, -0.010705,
		13.815542, 19.413845, 19.173435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.184944, 20.103321, 19.696802>,  <14.459217, 19.688848, 19.180929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.184944, 20.103321, 19.696802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.912112, 19.817390, 19.635103>,  <13.748413, 19.645832, 19.598083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.912112, 19.817390, 19.635103>,  <14.184944, 20.103321, 19.696802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.912112, 19.817390, 19.635103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221805, 0.001238, 0.975090,
		-0.696829, 0.699301, -0.159396,
		-0.682079, -0.714826, -0.154246,
		13.707489, 19.602943, 19.588829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.672012, 20.373343, 20.066143>,  <14.184944, 20.103321, 19.696802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.672012, 20.373343, 20.066143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.650296, 19.976494, 20.020977>,  <13.637267, 19.738384, 19.993877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.650296, 19.976494, 20.020977>,  <13.672012, 20.373343, 20.066143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.650296, 19.976494, 20.020977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208529, -0.099323, 0.972960,
		-0.976508, 0.076368, -0.201494,
		-0.054290, -0.992120, -0.112914,
		13.634009, 19.678858, 19.987103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.021878, 20.174202, 20.462362>,  <13.672012, 20.373343, 20.066143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.021878, 20.174202, 20.462362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.230729, 19.834869, 20.427233>,  <13.356040, 19.631269, 20.406155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.230729, 19.834869, 20.427233>,  <13.021878, 20.174202, 20.462362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.230729, 19.834869, 20.427233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241519, -0.245831, 0.938741,
		-0.817955, -0.468932, -0.333244,
		0.522128, -0.848333, -0.087823,
		13.387367, 19.580370, 20.400887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.614696, 19.652811, 20.661255>,  <13.021878, 20.174202, 20.462362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.614696, 19.652811, 20.661255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.992297, 19.523434, 20.687304>,  <13.218859, 19.445808, 20.702932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.992297, 19.523434, 20.687304>,  <12.614696, 19.652811, 20.661255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.992297, 19.523434, 20.687304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176441, -0.328116, 0.928013,
		-0.278784, -0.887541, -0.366811,
		0.944007, -0.323436, 0.065125,
		13.275498, 19.426401, 20.706841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.482686, 19.090406, 21.122038>,  <12.614696, 19.652811, 20.661255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.482686, 19.090406, 21.122038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.877130, 19.155983, 21.132717>,  <13.113795, 19.195328, 21.139126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.877130, 19.155983, 21.132717>,  <12.482686, 19.090406, 21.122038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.877130, 19.155983, 21.132717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022505, -0.291129, 0.956419,
		0.164570, -0.942532, -0.290775,
		0.986108, 0.163941, 0.026700,
		13.172962, 19.205166, 21.140726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.758090, 18.508753, 21.396273>,  <12.482686, 19.090406, 21.122038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.758090, 18.508753, 21.396273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.019664, 18.802509, 21.468981>,  <13.176608, 18.978764, 21.512606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.019664, 18.802509, 21.468981>,  <12.758090, 18.508753, 21.396273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.019664, 18.802509, 21.468981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041101, -0.274394, 0.960739,
		0.755434, -0.620789, -0.209620,
		0.653935, 0.734390, 0.181771,
		13.215844, 19.022827, 21.523512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.354698, 18.267227, 21.732187>,  <12.758090, 18.508753, 21.396273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.354698, 18.267227, 21.732187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.306842, 18.652138, 21.829931>,  <13.278128, 18.883083, 21.888578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.306842, 18.652138, 21.829931>,  <13.354698, 18.267227, 21.732187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.306842, 18.652138, 21.829931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054049, -0.252075, 0.966197,
		0.991345, 0.102390, 0.082169,
		-0.119642, 0.962276, 0.244359,
		13.270949, 18.940821, 21.903238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.819275, 18.385651, 22.311289>,  <13.354698, 18.267227, 21.732187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.819275, 18.385651, 22.311289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.549947, 18.681328, 22.305147>,  <13.388350, 18.858734, 22.301462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.549947, 18.681328, 22.305147>,  <13.819275, 18.385651, 22.311289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.549947, 18.681328, 22.305147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011069, 0.010689, 0.999882,
		0.739267, 0.673411, 0.000985,
		-0.673321, 0.739191, -0.015356,
		13.347950, 18.903086, 22.300541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.239363, 18.137394, 22.756683>,  <13.819275, 18.385651, 22.311289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.239363, 18.137394, 22.756683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.476090, 17.853752, 22.910006>,  <14.618127, 17.683567, 23.001999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.476090, 17.853752, 22.910006>,  <14.239363, 18.137394, 22.756683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.476090, 17.853752, 22.910006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390738, -0.163547, -0.905857,
		0.705035, 0.685874, 0.180284,
		0.591819, -0.709104, 0.383303,
		14.653636, 17.641022, 23.024996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.897732, 18.218124, 22.533552>,  <14.239363, 18.137394, 22.756683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.897732, 18.218124, 22.533552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.877076, 17.833382, 22.641008>,  <14.864683, 17.602537, 22.705482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.877076, 17.833382, 22.641008>,  <14.897732, 18.218124, 22.533552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.877076, 17.833382, 22.641008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235375, -0.273145, -0.932733,
		0.970532, 0.015067, 0.240502,
		-0.051639, -0.961855, 0.268642,
		14.861585, 17.544825, 22.721601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.420472, 17.981659, 22.340176>,  <14.897732, 18.218124, 22.533552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.420472, 17.981659, 22.340176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.188458, 17.656330, 22.358362>,  <15.049250, 17.461132, 22.369274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.188458, 17.656330, 22.358362>,  <15.420472, 17.981659, 22.340176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.188458, 17.656330, 22.358362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304228, -0.268064, -0.914104,
		0.755649, -0.516381, 0.402922,
		-0.580035, -0.813322, 0.045464,
		15.014448, 17.412334, 22.372002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.801071, 17.449142, 22.015045>,  <15.420472, 17.981659, 22.340176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.801071, 17.449142, 22.015045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.418122, 17.334366, 22.001743>,  <15.188354, 17.265501, 21.993763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.418122, 17.334366, 22.001743>,  <15.801071, 17.449142, 22.015045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.418122, 17.334366, 22.001743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166425, -0.453820, -0.875414,
		0.236100, -0.843631, 0.482228,
		-0.957371, -0.286940, -0.033254,
		15.130911, 17.248283, 21.991766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.830045, 16.696262, 21.891449>,  <15.801071, 17.449142, 22.015045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.830045, 16.696262, 21.891449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.490981, 16.867741, 21.766424>,  <15.287543, 16.970627, 21.691408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.490981, 16.867741, 21.766424>,  <15.830045, 16.696262, 21.891449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.490981, 16.867741, 21.766424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132035, -0.400145, -0.906891,
		-0.513851, -0.810002, 0.282583,
		-0.847658, 0.428696, -0.312564,
		15.236684, 16.996349, 21.672655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.645961, 16.278784, 21.432743>,  <15.830045, 16.696262, 21.891449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.645961, 16.278784, 21.432743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.415391, 16.595764, 21.352989>,  <15.277049, 16.785954, 21.305138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.415391, 16.595764, 21.352989>,  <15.645961, 16.278784, 21.432743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.415391, 16.595764, 21.352989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012198, -0.235628, -0.971767,
		-0.817060, -0.562581, 0.126155,
		-0.576424, 0.792453, -0.199384,
		15.242464, 16.833500, 21.293175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.057180, 16.023403, 20.977489>,  <15.645961, 16.278784, 21.432743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.057180, 16.023403, 20.977489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.093127, 16.418198, 20.924143>,  <15.114696, 16.655073, 20.892136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.093127, 16.418198, 20.924143>,  <15.057180, 16.023403, 20.977489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.093127, 16.418198, 20.924143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056302, -0.138727, -0.988729,
		-0.994361, 0.081346, -0.068036,
		0.089867, 0.986984, -0.133365,
		15.120088, 16.714293, 20.884132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.832334, 16.096607, 20.237741>,  <15.057180, 16.023403, 20.977489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.832334, 16.096607, 20.237741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.013478, 16.441963, 20.326710>,  <15.122166, 16.649178, 20.380091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.013478, 16.441963, 20.326710>,  <14.832334, 16.096607, 20.237741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.013478, 16.441963, 20.326710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204215, 0.142389, -0.968515,
		-0.867878, 0.484026, -0.111834,
		0.452863, 0.863391, 0.222421,
		15.149337, 16.700981, 20.393436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.587140, 16.512327, 19.796881>,  <14.832334, 16.096607, 20.237741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.587140, 16.512327, 19.796881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.937520, 16.676132, 19.898869>,  <15.147748, 16.774416, 19.960060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.937520, 16.676132, 19.898869>,  <14.587140, 16.512327, 19.796881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.937520, 16.676132, 19.898869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202988, 0.166572, -0.964909,
		-0.437614, 0.896968, 0.062782,
		0.875951, 0.409514, 0.254968,
		15.200305, 16.798986, 19.975359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.592798, 17.172268, 19.549530>,  <14.587140, 16.512327, 19.796881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.592798, 17.172268, 19.549530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.976865, 17.070023, 19.594683>,  <15.207305, 17.008675, 19.621775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.976865, 17.070023, 19.594683>,  <14.592798, 17.172268, 19.549530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.976865, 17.070023, 19.594683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186124, 0.283736, -0.940666,
		0.208420, 0.924205, 0.320010,
		0.960166, -0.255615, 0.112881,
		15.264915, 16.993338, 19.628548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.889698, 17.687284, 19.245611>,  <14.592798, 17.172268, 19.549530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.889698, 17.687284, 19.245611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.161563, 17.395153, 19.272980>,  <15.324681, 17.219873, 19.289400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.161563, 17.395153, 19.272980>,  <14.889698, 17.687284, 19.245611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.161563, 17.395153, 19.272980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346297, 0.237241, -0.907631,
		0.646636, 0.640576, 0.414154,
		0.679662, -0.730328, 0.068421,
		15.365461, 17.176054, 19.293507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.451303, 18.019953, 19.043104>,  <14.889698, 17.687284, 19.245611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.451303, 18.019953, 19.043104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.536513, 17.633041, 18.987976>,  <15.587639, 17.400894, 18.954899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.536513, 17.633041, 18.987976>,  <15.451303, 18.019953, 19.043104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.536513, 17.633041, 18.987976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138984, 0.169623, -0.975659,
		0.967111, 0.188684, 0.170570,
		0.213024, -0.967278, -0.137820,
		15.600421, 17.342857, 18.946630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029940, 17.993280, 18.642992>,  <15.451303, 18.019953, 19.043104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.029940, 17.993280, 18.642992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.893004, 17.620525, 18.595011>,  <15.810843, 17.396872, 18.566221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.893004, 17.620525, 18.595011>,  <16.029940, 17.993280, 18.642992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.893004, 17.620525, 18.595011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171291, 0.063628, -0.983164,
		0.923830, -0.357124, 0.137842,
		-0.342340, -0.931887, -0.119954,
		15.790302, 17.340960, 18.559025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.492188, 17.668575, 18.110281>,  <16.029940, 17.993280, 18.642992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.492188, 17.668575, 18.110281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.168484, 17.433617, 18.113462>,  <15.974261, 17.292643, 18.115372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.168484, 17.433617, 18.113462>,  <16.492188, 17.668575, 18.110281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.168484, 17.433617, 18.113462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046185, -0.077112, -0.995952,
		0.585630, -0.805619, 0.089533,
		-0.809262, -0.587395, 0.007952,
		15.925705, 17.257399, 18.115849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.146227, 17.313318, 18.287741>,  <16.492188, 17.668575, 18.110281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.146227, 17.313318, 18.287741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.417988, 17.598946, 18.220190>,  <17.581045, 17.770323, 18.179659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.417988, 17.598946, 18.220190>,  <17.146227, 17.313318, 18.287741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.417988, 17.598946, 18.220190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069200, 0.166774, 0.983564,
		0.730496, -0.679921, 0.063893,
		0.679402, 0.714068, -0.168878,
		17.621809, 17.813166, 18.169527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.844830, 17.182409, 18.679277>,  <17.146227, 17.313318, 18.287741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.844830, 17.182409, 18.679277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.880836, 17.577309, 18.626755>,  <17.902441, 17.814247, 18.595242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.880836, 17.577309, 18.626755>,  <17.844830, 17.182409, 18.679277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.880836, 17.577309, 18.626755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114244, 0.141207, 0.983366,
		0.989366, -0.073517, 0.125498,
		0.090015, 0.987247, -0.131306,
		17.907841, 17.873482, 18.587362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.230043, 17.420561, 19.340094>,  <17.844830, 17.182409, 18.679277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.230043, 17.420561, 19.340094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.084965, 17.764595, 19.196594>,  <17.997917, 17.971016, 19.110495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.084965, 17.764595, 19.196594>,  <18.230043, 17.420561, 19.340094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.084965, 17.764595, 19.196594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027435, 0.374942, 0.926642,
		0.931503, 0.345934, -0.112394,
		-0.362699, 0.860086, -0.358750,
		17.976154, 18.022621, 19.088968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.528904, 17.945650, 19.594414>,  <18.230043, 17.420561, 19.340094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.528904, 17.945650, 19.594414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.192333, 18.137421, 19.494696>,  <17.990391, 18.252483, 19.434864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.192333, 18.137421, 19.494696>,  <18.528904, 17.945650, 19.594414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.192333, 18.137421, 19.494696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081070, 0.344124, 0.935418,
		0.534251, 0.807298, -0.250689,
		-0.841429, 0.479425, -0.249296,
		17.939905, 18.281248, 19.419907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.614325, 18.627068, 19.819956>,  <18.528904, 17.945650, 19.594414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.614325, 18.627068, 19.819956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.221066, 18.570339, 19.773809>,  <17.985111, 18.536303, 19.746122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.221066, 18.570339, 19.773809>,  <18.614325, 18.627068, 19.819956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.221066, 18.570339, 19.773809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166302, 0.431670, 0.886569,
		-0.075933, 0.890813, -0.447980,
		-0.983147, -0.141820, -0.115366,
		17.926121, 18.527794, 19.739199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.275986, 19.239935, 19.929508>,  <18.614325, 18.627068, 19.819956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.275986, 19.239935, 19.929508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.012081, 18.947838, 20.000462>,  <17.853739, 18.772579, 20.043034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.012081, 18.947838, 20.000462>,  <18.275986, 19.239935, 19.929508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.012081, 18.947838, 20.000462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171196, 0.375893, 0.910712,
		-0.731717, 0.570484, -0.373014,
		-0.659759, -0.730242, 0.177383,
		17.814154, 18.728765, 20.053677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.803169, 19.639462, 20.307495>,  <18.275986, 19.239935, 19.929508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.803169, 19.639462, 20.307495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.731068, 19.250031, 20.363573>,  <17.687807, 19.016373, 20.397219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.731068, 19.250031, 20.363573>,  <17.803169, 19.639462, 20.307495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.731068, 19.250031, 20.363573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240476, 0.181821, 0.953474,
		-0.953771, 0.138155, -0.266896,
		-0.180255, -0.973578, 0.140193,
		17.676991, 18.957956, 20.405630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.307137, 20.228209, 20.221754>,  <17.803169, 19.639462, 20.307495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.307137, 20.228209, 20.221754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.501110, 20.577526, 20.240507>,  <17.617495, 20.787117, 20.251759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.501110, 20.577526, 20.240507>,  <17.307137, 20.228209, 20.221754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.501110, 20.577526, 20.240507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016942, 0.044216, -0.998878,
		-0.874386, 0.485186, 0.006647,
		0.484935, 0.873293, 0.046882,
		17.646591, 20.839514, 20.254572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.938213, 20.638779, 19.810135>,  <17.307137, 20.228209, 20.221754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.938213, 20.638779, 19.810135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.294666, 20.816353, 19.847664>,  <17.508537, 20.922897, 19.870182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.294666, 20.816353, 19.847664>,  <16.938213, 20.638779, 19.810135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.294666, 20.816353, 19.847664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011568, 0.228933, -0.973373,
		-0.453596, 0.866319, 0.209145,
		0.891132, 0.443938, 0.093822,
		17.562006, 20.949533, 19.875811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.868877, 21.269279, 19.465090>,  <16.938213, 20.638779, 19.810135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.868877, 21.269279, 19.465090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.264755, 21.224571, 19.500889>,  <17.502283, 21.197746, 19.522369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.264755, 21.224571, 19.500889>,  <16.868877, 21.269279, 19.465090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.264755, 21.224571, 19.500889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127952, 0.409782, -0.903165,
		0.064270, 0.905310, 0.419860,
		0.989696, -0.111768, 0.089499,
		17.561665, 21.191040, 19.527739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.108028, 21.920219, 19.095463>,  <16.868877, 21.269279, 19.465090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.108028, 21.920219, 19.095463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.399761, 21.646873, 19.108629>,  <17.574800, 21.482866, 19.116529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.399761, 21.646873, 19.108629>,  <17.108028, 21.920219, 19.095463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.399761, 21.646873, 19.108629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118184, 0.078453, -0.989888,
		0.673873, 0.725849, 0.137981,
		0.729334, -0.683365, 0.032917,
		17.618561, 21.441864, 19.118504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.679459, 22.260355, 18.837446>,  <17.108028, 21.920219, 19.095463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.679459, 22.260355, 18.837446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.746468, 21.868076, 18.797112>,  <17.786673, 21.632710, 18.772911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.746468, 21.868076, 18.797112>,  <17.679459, 22.260355, 18.837446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.746468, 21.868076, 18.797112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152753, 0.126866, -0.980087,
		0.973963, 0.148782, 0.171057,
		0.167521, -0.980698, -0.100836,
		17.796724, 21.573868, 18.766861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.289015, 22.213379, 18.443245>,  <17.679459, 22.260355, 18.837446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.289015, 22.213379, 18.443245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.080608, 21.874046, 18.405554>,  <17.955564, 21.670446, 18.382938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.080608, 21.874046, 18.405554>,  <18.289015, 22.213379, 18.443245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.080608, 21.874046, 18.405554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073334, 0.065499, -0.995154,
		0.850392, -0.525400, 0.028086,
		-0.521015, -0.848331, -0.094230,
		17.924303, 21.619547, 18.377285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.551298, 21.882334, 17.881334>,  <18.289015, 22.213379, 18.443245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.551298, 21.882334, 17.881334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.218185, 21.663097, 17.912498>,  <18.018318, 21.531555, 17.931198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.218185, 21.663097, 17.912498>,  <18.551298, 21.882334, 17.881334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.218185, 21.663097, 17.912498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038324, -0.083321, -0.995785,
		0.552275, -0.832257, 0.048383,
		-0.832781, -0.548093, 0.077912,
		17.968351, 21.498669, 17.935871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.195535, 22.517704, 21.653923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.261060, 22.131180, 21.574518>,  <14.300375, 21.899265, 21.526876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.261060, 22.131180, 21.574518>,  <14.195535, 22.517704, 21.653923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.261060, 22.131180, 21.574518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087735, 0.214702, -0.972731,
		0.982582, 0.141929, 0.119951,
		0.163812, -0.966312, -0.198510,
		14.310204, 21.841286, 21.514965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.773586, 22.484327, 21.134071>,  <14.195535, 22.517704, 21.653923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.773586, 22.484327, 21.134071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.537278, 22.161682, 21.126461>,  <14.395494, 21.968094, 21.121895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.537278, 22.161682, 21.126461>,  <14.773586, 22.484327, 21.134071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.537278, 22.161682, 21.126461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043659, 0.055505, -0.997503,
		0.805658, -0.588465, -0.068007,
		-0.590770, -0.806615, -0.019026,
		14.360047, 21.919697, 21.120752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.930942, 22.254961, 20.535313>,  <14.773586, 22.484327, 21.134071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.930942, 22.254961, 20.535313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.597558, 22.048367, 20.613886>,  <14.397528, 21.924410, 20.661030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.597558, 22.048367, 20.613886>,  <14.930942, 22.254961, 20.535313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.597558, 22.048367, 20.613886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087291, -0.227960, -0.969750,
		0.545642, -0.825394, 0.144911,
		-0.833459, -0.516487, 0.196434,
		14.347520, 21.893421, 20.672815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.859789, 21.638874, 20.139704>,  <14.930942, 22.254961, 20.535313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.859789, 21.638874, 20.139704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.480989, 21.708584, 20.247643>,  <14.253709, 21.750410, 20.312407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.480989, 21.708584, 20.247643>,  <14.859789, 21.638874, 20.139704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.480989, 21.708584, 20.247643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306189, -0.235648, -0.922344,
		-0.097150, -0.956085, 0.276519,
		-0.947001, 0.174273, 0.269850,
		14.196888, 21.760866, 20.328598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.376561, 21.203918, 19.772028>,  <14.859789, 21.638874, 20.139704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.376561, 21.203918, 19.772028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.152589, 21.515095, 19.886074>,  <14.018206, 21.701799, 19.954502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.152589, 21.515095, 19.886074>,  <14.376561, 21.203918, 19.772028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.152589, 21.515095, 19.886074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325412, 0.109979, -0.939155,
		-0.761961, -0.618640, 0.191570,
		-0.559930, 0.777939, 0.285113,
		13.984610, 21.748476, 19.971607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.770891, 21.206194, 19.520290>,  <14.376561, 21.203918, 19.772028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.770891, 21.206194, 19.520290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.786103, 21.599789, 19.589949>,  <13.795231, 21.835945, 19.631742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.786103, 21.599789, 19.589949>,  <13.770891, 21.206194, 19.520290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.786103, 21.599789, 19.589949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322786, 0.177024, -0.929770,
		-0.945707, -0.020851, 0.324349,
		0.038031, 0.983986, 0.174143,
		13.797512, 21.894985, 19.642191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.200706, 21.406321, 19.269974>,  <13.770891, 21.206194, 19.520290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.200706, 21.406321, 19.269974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.372333, 21.766525, 19.298203>,  <13.475308, 21.982649, 19.315140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.372333, 21.766525, 19.298203>,  <13.200706, 21.406321, 19.269974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.372333, 21.766525, 19.298203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374221, 0.248323, -0.893473,
		-0.822108, 0.356949, 0.443537,
		0.429065, 0.900513, 0.070570,
		13.501052, 22.036678, 19.319374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.718430, 21.895658, 19.117138>,  <13.200706, 21.406321, 19.269974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.718430, 21.895658, 19.117138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.056102, 22.100990, 19.055361>,  <13.258705, 22.224190, 19.018293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.056102, 22.100990, 19.055361>,  <12.718430, 21.895658, 19.117138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.056102, 22.100990, 19.055361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355947, 0.321343, -0.877519,
		-0.400827, 0.795758, 0.453990,
		0.844180, 0.513329, -0.154445,
		13.309356, 22.254990, 19.009027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.510849, 22.554510, 18.783758>,  <12.718430, 21.895658, 19.117138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.510849, 22.554510, 18.783758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.897491, 22.495544, 18.699905>,  <13.129476, 22.460165, 18.649593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.897491, 22.495544, 18.699905>,  <12.510849, 22.554510, 18.783758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.897491, 22.495544, 18.699905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167810, 0.254160, -0.952493,
		0.193689, 0.955862, 0.220935,
		0.966605, -0.147412, -0.209631,
		13.187472, 22.451321, 18.637016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.656021, 23.050138, 18.381979>,  <12.510849, 22.554510, 18.783758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.656021, 23.050138, 18.381979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.971038, 22.815994, 18.304901>,  <13.160048, 22.675508, 18.258654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.971038, 22.815994, 18.304901>,  <12.656021, 23.050138, 18.381979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.971038, 22.815994, 18.304901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040234, 0.263178, -0.963908,
		0.614946, 0.766871, 0.183712,
		0.787542, -0.585360, -0.192695,
		13.207300, 22.640387, 18.247093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.030088, 23.461494, 18.010788>,  <12.656021, 23.050138, 18.381979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.030088, 23.461494, 18.010788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.186635, 23.104012, 17.923044>,  <13.280562, 22.889523, 17.870398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.186635, 23.104012, 17.923044>,  <13.030088, 23.461494, 18.010788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.186635, 23.104012, 17.923044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060499, 0.212872, -0.975205,
		0.918244, 0.394933, 0.029242,
		0.391366, -0.893708, -0.219361,
		13.304045, 22.835899, 17.857235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.646125, 23.559568, 17.586473>,  <13.030088, 23.461494, 18.010788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.646125, 23.559568, 17.586473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.471715, 23.205025, 17.524189>,  <13.367069, 22.992298, 17.486818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.471715, 23.205025, 17.524189>,  <13.646125, 23.559568, 17.586473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.471715, 23.205025, 17.524189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116186, 0.227022, -0.966934,
		0.892403, -0.403516, -0.201970,
		-0.436025, -0.886361, -0.155712,
		13.340907, 22.939116, 17.477476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.249852, 23.708256, 17.814688>,  <13.646125, 23.559568, 17.586473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.249852, 23.708256, 17.814688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.615132, 23.869236, 17.789080>,  <14.834300, 23.965824, 17.773714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.615132, 23.869236, 17.789080>,  <14.249852, 23.708256, 17.814688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.615132, 23.869236, 17.789080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099140, -0.067025, 0.992814,
		0.395270, -0.912984, -0.101106,
		0.913199, 0.402453, -0.064020,
		14.889092, 23.989971, 17.769873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.768416, 23.276966, 18.270874>,  <14.249852, 23.708256, 17.814688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.768416, 23.276966, 18.270874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.910640, 23.650013, 18.246208>,  <14.995974, 23.873840, 18.231409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.910640, 23.650013, 18.246208>,  <14.768416, 23.276966, 18.270874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.910640, 23.650013, 18.246208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455473, -0.115278, 0.882754,
		0.816163, -0.341958, -0.465770,
		0.355558, 0.932618, -0.061667,
		15.017307, 23.929798, 18.227709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.374222, 23.239311, 18.483042>,  <14.768416, 23.276966, 18.270874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.374222, 23.239311, 18.483042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.310473, 23.631432, 18.529701>,  <15.272224, 23.866705, 18.557697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.310473, 23.631432, 18.529701>,  <15.374222, 23.239311, 18.483042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.310473, 23.631432, 18.529701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462863, -0.030166, 0.885917,
		0.871985, 0.195182, -0.448938,
		-0.159372, 0.980303, 0.116646,
		15.262662, 23.925522, 18.564695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.999169, 23.512499, 18.654039>,  <15.374222, 23.239311, 18.483042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.999169, 23.512499, 18.654039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.755954, 23.812263, 18.758862>,  <15.610024, 23.992123, 18.821754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.755954, 23.812263, 18.758862>,  <15.999169, 23.512499, 18.654039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.755954, 23.812263, 18.758862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506696, 0.112206, 0.854792,
		0.611186, 0.652529, -0.447949,
		-0.608039, 0.749410, 0.262055,
		15.573542, 24.037086, 18.837479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.384697, 23.891150, 18.970819>,  <15.999169, 23.512499, 18.654039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.384697, 23.891150, 18.970819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.028839, 24.014896, 19.105177>,  <15.815324, 24.089144, 19.185791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.028839, 24.014896, 19.105177>,  <16.384697, 23.891150, 18.970819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.028839, 24.014896, 19.105177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414058, 0.236287, 0.879048,
		0.192579, 0.921120, -0.338306,
		-0.889646, 0.309365, 0.335893,
		15.761946, 24.107706, 19.205944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.590736, 24.347395, 19.443947>,  <16.384697, 23.891150, 18.970819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.590736, 24.347395, 19.443947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.209579, 24.252785, 19.519897>,  <15.980886, 24.196018, 19.565468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.209579, 24.252785, 19.519897>,  <16.590736, 24.347395, 19.443947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.209579, 24.252785, 19.519897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198275, -0.012005, 0.980073,
		-0.229535, 0.971551, 0.058337,
		-0.952891, -0.236527, 0.189879,
		15.923712, 24.181826, 19.576860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.484362, 24.909389, 19.901461>,  <16.590736, 24.347395, 19.443947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.484362, 24.909389, 19.901461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.220493, 24.612225, 19.946917>,  <16.062172, 24.433926, 19.974190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.220493, 24.612225, 19.946917>,  <16.484362, 24.909389, 19.901461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.220493, 24.612225, 19.946917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221283, -0.047493, 0.974053,
		-0.718238, 0.667703, 0.195724,
		-0.659673, -0.742912, 0.113640,
		16.022591, 24.389351, 19.981009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.090130, 25.155676, 20.330179>,  <16.484362, 24.909389, 19.901461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.090130, 25.155676, 20.330179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.028618, 24.761715, 20.361969>,  <15.991711, 24.525337, 20.381042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.028618, 24.761715, 20.361969>,  <16.090130, 25.155676, 20.330179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.028618, 24.761715, 20.361969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142859, 0.057424, 0.988076,
		-0.977723, 0.163301, 0.131872,
		-0.153781, -0.984904, 0.079474,
		15.982484, 24.466244, 20.385811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.583245, 25.107351, 20.741970>,  <16.090130, 25.155676, 20.330179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.583245, 25.107351, 20.741970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.767976, 24.752754, 20.753601>,  <15.878814, 24.539995, 20.760580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.767976, 24.752754, 20.753601>,  <15.583245, 25.107351, 20.741970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.767976, 24.752754, 20.753601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179639, 0.125586, 0.975683,
		-0.868589, -0.445373, 0.217248,
		0.461827, -0.886494, 0.029077,
		15.906524, 24.486807, 20.762323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.560031, 24.943001, 21.437347>,  <15.583245, 25.107351, 20.741970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.560031, 24.943001, 21.437347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.815837, 24.658043, 21.321753>,  <15.969320, 24.487068, 21.252396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.815837, 24.658043, 21.321753>,  <15.560031, 24.943001, 21.437347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.815837, 24.658043, 21.321753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401526, -0.011042, 0.915781,
		-0.655589, -0.701692, 0.278984,
		0.639515, -0.712395, -0.288987,
		16.007692, 24.444324, 21.235056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.481145, 24.346575, 21.908833>,  <15.560031, 24.943001, 21.437347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.481145, 24.346575, 21.908833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.842710, 24.344185, 21.737761>,  <16.059649, 24.342751, 21.635118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.842710, 24.344185, 21.737761>,  <15.481145, 24.346575, 21.908833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.842710, 24.344185, 21.737761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422314, -0.145992, 0.894616,
		-0.067783, -0.989268, -0.129440,
		0.903911, -0.005976, -0.427678,
		16.113884, 24.342392, 21.609457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.778049, 23.662361, 22.050093>,  <15.481145, 24.346575, 21.908833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.778049, 23.662361, 22.050093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.082165, 23.902664, 21.951260>,  <16.264633, 24.046846, 21.891960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.082165, 23.902664, 21.951260>,  <15.778049, 23.662361, 22.050093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.082165, 23.902664, 21.951260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395459, -0.126300, 0.909758,
		0.515338, -0.789391, -0.333599,
		0.760289, 0.600758, -0.247085,
		16.310251, 24.082891, 21.877134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.231451, 23.198326, 22.264008>,  <15.778049, 23.662361, 22.050093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.231451, 23.198326, 22.264008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.390976, 23.564163, 22.237259>,  <16.486691, 23.783665, 22.221210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.390976, 23.564163, 22.237259>,  <16.231451, 23.198326, 22.264008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.390976, 23.564163, 22.237259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471148, -0.141795, 0.870582,
		0.786745, -0.378705, -0.487457,
		0.398814, 0.914591, -0.066869,
		16.510620, 23.838541, 22.217197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.894251, 23.107567, 22.464897>,  <16.231451, 23.198326, 22.264008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.894251, 23.107567, 22.464897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.802383, 23.493446, 22.516447>,  <16.747263, 23.724974, 22.547377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.802383, 23.493446, 22.516447>,  <16.894251, 23.107567, 22.464897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.802383, 23.493446, 22.516447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268012, -0.064606, 0.961247,
		0.935640, 0.255309, -0.243712,
		-0.229669, 0.964699, 0.128873,
		16.733482, 23.782856, 22.555109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.798973, 22.341509, 22.639841>,  <16.894251, 23.107567, 22.464897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.798973, 22.341509, 22.639841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.020760, 22.052219, 22.804531>,  <17.153831, 21.878647, 22.903345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.020760, 22.052219, 22.804531>,  <16.798973, 22.341509, 22.639841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.020760, 22.052219, 22.804531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298869, -0.288689, -0.909580,
		0.776689, 0.627383, 0.056081,
		0.554465, -0.723222, 0.411727,
		17.187099, 21.835253, 22.928049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.511803, 22.384968, 22.358812>,  <16.798973, 22.341509, 22.639841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.511803, 22.384968, 22.358812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.481834, 22.009346, 22.493015>,  <17.463854, 21.783974, 22.573538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.481834, 22.009346, 22.493015>,  <17.511803, 22.384968, 22.358812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.481834, 22.009346, 22.493015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300646, -0.342070, -0.890281,
		0.950789, 0.034171, 0.307950,
		-0.074918, -0.939053, 0.335509,
		17.459358, 21.727631, 22.593668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.108137, 22.154043, 22.239267>,  <17.511803, 22.384968, 22.358812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.108137, 22.154043, 22.239267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.868809, 21.835342, 22.273195>,  <17.725212, 21.644121, 22.293552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.868809, 21.835342, 22.273195>,  <18.108137, 22.154043, 22.239267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.868809, 21.835342, 22.273195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229844, -0.272078, -0.934422,
		0.767583, -0.539589, 0.345919,
		-0.598321, -0.796754, 0.084821,
		17.689312, 21.596315, 22.298641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.515543, 21.545652, 21.991295>,  <18.108137, 22.154043, 22.239267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.515543, 21.545652, 21.991295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.126083, 21.459419, 21.961536>,  <17.892408, 21.407681, 21.943682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.126083, 21.459419, 21.961536>,  <18.515543, 21.545652, 21.991295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.126083, 21.459419, 21.961536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155850, -0.390817, -0.907178,
		0.166496, -0.894867, 0.414117,
		-0.973648, -0.215581, -0.074396,
		17.833988, 21.394745, 21.939219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.541298, 20.810822, 21.761650>,  <18.515543, 21.545652, 21.991295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.541298, 20.810822, 21.761650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.189243, 20.974030, 21.664587>,  <17.978010, 21.071955, 21.606350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.189243, 20.974030, 21.664587>,  <18.541298, 20.810822, 21.761650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.189243, 20.974030, 21.664587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098906, -0.342332, -0.934359,
		-0.464307, -0.846362, 0.260942,
		-0.880135, 0.408020, -0.242657,
		17.925203, 21.096436, 21.591789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.193651, 20.301649, 21.330357>,  <18.541298, 20.810822, 21.761650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.193651, 20.301649, 21.330357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.025665, 20.652069, 21.235563>,  <17.924873, 20.862322, 21.178688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.025665, 20.652069, 21.235563>,  <18.193651, 20.301649, 21.330357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.025665, 20.652069, 21.235563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063520, -0.232112, -0.970613,
		-0.905314, -0.422678, 0.041833,
		-0.419966, 0.876052, -0.236982,
		17.899675, 20.914885, 21.164469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.733442, 20.127993, 20.835419>,  <18.193651, 20.301649, 21.330357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.733442, 20.127993, 20.835419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.749443, 20.522724, 20.772722>,  <17.759043, 20.759563, 20.735104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.749443, 20.522724, 20.772722>,  <17.733442, 20.127993, 20.835419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.749443, 20.522724, 20.772722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086692, -0.152849, -0.984440,
		-0.995432, 0.052967, 0.079437,
		0.040001, 0.986829, -0.156743,
		17.761444, 20.818773, 20.725700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.222132, 19.570986, 20.722424>,  <17.733442, 20.127993, 20.835419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.222132, 19.570986, 20.722424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.344254, 19.192055, 20.761120>,  <17.417526, 18.964697, 20.784338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.344254, 19.192055, 20.761120>,  <17.222132, 19.570986, 20.722424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.344254, 19.192055, 20.761120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294596, 0.002646, 0.955618,
		-0.905540, -0.320254, -0.278271,
		0.305304, -0.947328, 0.096742,
		17.435844, 18.907856, 20.790142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.679621, 19.298758, 21.082491>,  <17.222132, 19.570986, 20.722424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.679621, 19.298758, 21.082491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.000389, 19.075802, 21.168505>,  <17.192850, 18.942028, 21.220114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.000389, 19.075802, 21.168505>,  <16.679621, 19.298758, 21.082491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.000389, 19.075802, 21.168505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281191, -0.034566, 0.959029,
		-0.527119, -0.829532, -0.184451,
		0.801921, -0.557388, 0.215037,
		17.240965, 18.908585, 21.233015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.447163, 18.857197, 21.583937>,  <16.679621, 19.298758, 21.082491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.447163, 18.857197, 21.583937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.844727, 18.832989, 21.620775>,  <17.083265, 18.818464, 21.642878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.844727, 18.832989, 21.620775>,  <16.447163, 18.857197, 21.583937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.844727, 18.832989, 21.620775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094063, -0.030515, 0.995099,
		-0.057426, -0.997700, -0.036023,
		0.993909, -0.060532, 0.092094,
		17.142899, 18.814833, 21.648403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.679670, 18.170950, 21.826099>,  <16.447163, 18.857197, 21.583937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.679670, 18.170950, 21.826099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.975456, 18.421310, 21.925249>,  <17.152927, 18.571527, 21.984739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.975456, 18.421310, 21.925249>,  <16.679670, 18.170950, 21.826099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.975456, 18.421310, 21.925249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140959, -0.216089, 0.966145,
		0.658274, -0.749369, -0.071563,
		0.739463, 0.625901, 0.247876,
		17.197296, 18.609081, 21.999613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.216434, 17.780783, 22.269110>,  <16.679670, 18.170950, 21.826099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.216434, 17.780783, 22.269110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.280754, 18.164139, 22.363455>,  <17.319345, 18.394152, 22.420061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.280754, 18.164139, 22.363455>,  <17.216434, 17.780783, 22.269110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.280754, 18.164139, 22.363455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105840, -0.220851, 0.969548,
		0.981296, -0.180866, 0.065924,
		0.160799, 0.958391, 0.235863,
		17.328993, 18.451656, 22.434214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.784414, 17.826944, 22.816622>,  <17.216434, 17.780783, 22.269110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.784414, 17.826944, 22.816622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.555138, 18.154221, 22.834578>,  <17.417572, 18.350586, 22.845352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.555138, 18.154221, 22.834578>,  <17.784414, 17.826944, 22.816622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.555138, 18.154221, 22.834578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102564, -0.125990, 0.986715,
		0.812976, 0.560975, 0.156134,
		-0.573194, 0.818189, 0.044890,
		17.383179, 18.399677, 22.848045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.040651, 18.118654, 23.420252>,  <17.784414, 17.826944, 22.816622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.040651, 18.118654, 23.420252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.684402, 18.289368, 23.357449>,  <17.470654, 18.391796, 23.319767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.684402, 18.289368, 23.357449>,  <18.040651, 18.118654, 23.420252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.684402, 18.289368, 23.357449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116278, 0.120058, 0.985934,
		0.439629, 0.896350, -0.057301,
		-0.890621, 0.426782, -0.157007,
		17.417215, 18.417402, 23.310347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.057665, 18.781574, 23.647284>,  <18.040651, 18.118654, 23.420252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.057665, 18.781574, 23.647284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.670292, 18.681862, 23.646770>,  <17.437868, 18.622034, 23.646463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.670292, 18.681862, 23.646770>,  <18.057665, 18.781574, 23.647284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.670292, 18.681862, 23.646770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055543, 0.210760, 0.975959,
		-0.243015, 0.945220, -0.217952,
		-0.968431, -0.249279, -0.001283,
		17.379763, 18.607079, 23.646385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.916275, 19.221508, 24.191965>,  <18.057665, 18.781574, 23.647284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.916275, 19.221508, 24.191965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.607346, 18.974285, 24.133284>,  <17.421988, 18.825953, 24.098074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.607346, 18.974285, 24.133284>,  <17.916275, 19.221508, 24.191965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.607346, 18.974285, 24.133284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099618, -0.110247, 0.988899,
		-0.627368, 0.778366, 0.023577,
		-0.772325, -0.618055, -0.146704,
		17.375648, 18.788868, 24.089272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.421631, 20.442205, 8.065598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.048092, 20.310993, 8.122625>,  <17.823969, 20.232265, 8.156842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.048092, 20.310993, 8.122625>,  <18.421631, 20.442205, 8.065598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.048092, 20.310993, 8.122625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267982, -0.377688, 0.886305,
		-0.236888, 0.865880, 0.440609,
		-0.933847, -0.328030, 0.142570,
		17.767939, 20.212584, 8.165397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.202444, 20.617794, 8.785172>,  <18.421631, 20.442205, 8.065598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.202444, 20.617794, 8.785172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.990734, 20.296841, 8.674864>,  <17.863708, 20.104269, 8.608680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.990734, 20.296841, 8.674864>,  <18.202444, 20.617794, 8.785172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.990734, 20.296841, 8.674864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067100, -0.363594, 0.929138,
		-0.845792, 0.473267, 0.246281,
		-0.529276, -0.802383, -0.275768,
		17.831951, 20.056126, 8.592134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637751, 20.578911, 9.170944>,  <18.202444, 20.617794, 8.785172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.637751, 20.578911, 9.170944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.729740, 20.208702, 9.050599>,  <17.784933, 19.986576, 8.978392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.729740, 20.208702, 9.050599>,  <17.637751, 20.578911, 9.170944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.729740, 20.208702, 9.050599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111275, -0.332129, 0.936647,
		-0.966815, -0.181924, -0.179368,
		0.229972, -0.925524, -0.300863,
		17.798733, 19.931046, 8.960340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.302164, 20.103352, 9.718274>,  <17.637751, 20.578911, 9.170944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.302164, 20.103352, 9.718274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.553810, 19.870110, 9.512671>,  <17.704798, 19.730164, 9.389309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.553810, 19.870110, 9.512671>,  <17.302164, 20.103352, 9.718274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.553810, 19.870110, 9.512671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288612, -0.438766, 0.850992,
		-0.721748, -0.683718, -0.107742,
		0.629112, -0.583107, -0.514008,
		17.742544, 19.695177, 9.358468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.017275, 19.340527, 9.836763>,  <17.302164, 20.103352, 9.718274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.017275, 19.340527, 9.836763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.397762, 19.324680, 9.714380>,  <17.626055, 19.315172, 9.640950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.397762, 19.324680, 9.714380>,  <17.017275, 19.340527, 9.836763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.397762, 19.324680, 9.714380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198919, -0.679292, 0.706395,
		-0.235820, -0.732799, -0.638276,
		0.951221, -0.039617, -0.305958,
		17.683128, 19.312796, 9.622593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.211081, 18.658634, 9.818539>,  <17.017275, 19.340527, 9.836763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.211081, 18.658634, 9.818539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.562080, 18.850147, 9.829576>,  <17.772680, 18.965055, 9.836198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.562080, 18.850147, 9.829576>,  <17.211081, 18.658634, 9.818539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.562080, 18.850147, 9.829576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273306, -0.546528, 0.791588,
		0.394079, -0.687076, -0.610432,
		0.877499, 0.478783, 0.027593,
		17.825331, 18.993782, 9.837853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.739813, 18.170889, 9.901335>,  <17.211081, 18.658634, 9.818539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.739813, 18.170889, 9.901335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.888359, 18.523876, 10.016807>,  <17.977488, 18.735668, 10.086090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.888359, 18.523876, 10.016807>,  <17.739813, 18.170889, 9.901335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.888359, 18.523876, 10.016807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306374, -0.409968, 0.859105,
		0.876483, -0.230599, -0.422614,
		0.371367, 0.882468, 0.288681,
		17.999769, 18.788616, 10.103411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.509190, 18.082485, 10.030511>,  <17.739813, 18.170889, 9.901335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.509190, 18.082485, 10.030511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.413567, 18.421871, 10.219383>,  <18.356192, 18.625504, 10.332706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.413567, 18.421871, 10.219383>,  <18.509190, 18.082485, 10.030511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.413567, 18.421871, 10.219383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464709, -0.327002, 0.822870,
		0.852582, 0.416142, -0.316117,
		-0.239060, 0.848467, 0.472181,
		18.341848, 18.676411, 10.361037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.161196, 18.403461, 10.432902>,  <18.509190, 18.082485, 10.030511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.161196, 18.403461, 10.432902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.845055, 18.534569, 10.639941>,  <18.655369, 18.613234, 10.764164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.845055, 18.534569, 10.639941>,  <19.161196, 18.403461, 10.432902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.845055, 18.534569, 10.639941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527734, -0.064891, 0.846927,
		0.311185, 0.942526, -0.121689,
		-0.790355, 0.327770, 0.517597,
		18.607948, 18.632900, 10.795220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.478804, 18.761618, 11.024487>,  <19.161196, 18.403461, 10.432902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.478804, 18.761618, 11.024487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.098030, 18.698254, 11.129353>,  <18.869566, 18.660234, 11.192271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.098030, 18.698254, 11.129353>,  <19.478804, 18.761618, 11.024487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.098030, 18.698254, 11.129353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282044, -0.119476, 0.951933,
		-0.119476, 0.980118, 0.158412,
		-0.951933, -0.158412, 0.262162,
		18.812450, 18.650730, 11.208001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.359831, 19.218405, 11.591284>,  <19.478804, 18.761618, 11.024487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.359831, 19.218405, 11.591284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.062927, 18.950413, 11.596631>,  <18.884785, 18.789618, 11.599839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.062927, 18.950413, 11.596631>,  <19.359831, 19.218405, 11.591284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.062927, 18.950413, 11.596631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035797, 0.059561, 0.997583,
		-0.669158, 0.739985, -0.068193,
		-0.742258, -0.669981, 0.013367,
		18.840250, 18.749418, 11.600641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.942856, 19.316975, 12.171426>,  <19.359831, 19.218405, 11.591284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.942856, 19.316975, 12.171426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.813599, 18.940460, 12.132317>,  <18.736044, 18.714552, 12.108851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.813599, 18.940460, 12.132317>,  <18.942856, 19.316975, 12.171426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.813599, 18.940460, 12.132317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004096, -0.101924, 0.994784,
		-0.946341, 0.321859, 0.029081,
		-0.323144, -0.941285, -0.097773,
		18.716656, 18.658075, 12.102984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.573048, 19.922638, 12.269601>,  <18.942856, 19.316975, 12.171426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.573048, 19.922638, 12.269601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.880665, 20.167252, 12.344003>,  <19.065235, 20.314020, 12.388644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.880665, 20.167252, 12.344003>,  <18.573048, 19.922638, 12.269601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.880665, 20.167252, 12.344003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285130, -0.067763, -0.956090,
		-0.572078, 0.788311, -0.226480,
		0.769043, 0.611534, 0.186006,
		19.111378, 20.350712, 12.399804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.583740, 20.267136, 11.661050>,  <18.573048, 19.922638, 12.269601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.583740, 20.267136, 11.661050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.922569, 20.382317, 11.839735>,  <19.125866, 20.451426, 11.946946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.922569, 20.382317, 11.839735>,  <18.583740, 20.267136, 11.661050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.922569, 20.382317, 11.839735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415416, 0.165550, -0.894440,
		-0.331508, 0.943227, 0.020613,
		0.847073, 0.287951, 0.446712,
		19.176691, 20.468702, 11.973749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.827221, 20.992235, 11.510735>,  <18.583740, 20.267136, 11.661050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.827221, 20.992235, 11.510735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.176365, 20.822258, 11.606685>,  <19.385851, 20.720272, 11.664255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.176365, 20.822258, 11.606685>,  <18.827221, 20.992235, 11.510735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.176365, 20.822258, 11.606685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419408, 0.402037, -0.813919,
		0.249431, 0.811041, 0.529147,
		0.872858, -0.424945, 0.239876,
		19.438223, 20.694775, 11.678648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.350641, 21.492226, 11.431333>,  <18.827221, 20.992235, 11.510735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.350641, 21.492226, 11.431333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.553352, 21.153156, 11.368567>,  <19.674980, 20.949715, 11.330909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.553352, 21.153156, 11.368567>,  <19.350641, 21.492226, 11.431333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.553352, 21.153156, 11.368567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403752, 0.394204, -0.825583,
		0.761682, 0.355035, 0.542025,
		0.506779, -0.847675, -0.156913,
		19.705387, 20.898853, 11.321494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.027931, 21.746630, 11.153962>,  <19.350641, 21.492226, 11.431333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.027931, 21.746630, 11.153962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.059704, 21.355267, 11.077636>,  <20.078768, 21.120449, 11.031839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.059704, 21.355267, 11.077636>,  <20.027931, 21.746630, 11.153962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.059704, 21.355267, 11.077636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363904, 0.206671, -0.908218,
		0.928043, 0.002703, 0.372463,
		0.079432, -0.978407, -0.190816,
		20.083534, 21.061745, 11.020391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.744547, 21.656595, 11.032907>,  <20.027931, 21.746630, 11.153962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.744547, 21.656595, 11.032907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.537613, 21.352036, 10.876631>,  <20.413452, 21.169300, 10.782865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.537613, 21.352036, 10.876631>,  <20.744547, 21.656595, 11.032907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.537613, 21.352036, 10.876631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294483, 0.270265, -0.916644,
		0.803521, -0.589263, 0.084401,
		-0.517334, -0.761397, -0.390691,
		20.382412, 21.123617, 10.759423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.194839, 21.339184, 10.547754>,  <20.744547, 21.656595, 11.032907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.194839, 21.339184, 10.547754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.813869, 21.265884, 10.450344>,  <20.585287, 21.221905, 10.391898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.813869, 21.265884, 10.450344>,  <21.194839, 21.339184, 10.547754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.813869, 21.265884, 10.450344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191716, 0.260920, -0.946132,
		0.236912, -0.947810, -0.213377,
		-0.952427, -0.183243, -0.243525,
		20.528141, 21.210909, 10.377286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.159626, 21.125061, 9.870682>,  <21.194839, 21.339184, 10.547754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.159626, 21.125061, 9.870682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.776474, 21.222195, 9.932005>,  <20.546583, 21.280474, 9.968799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.776474, 21.222195, 9.932005>,  <21.159626, 21.125061, 9.870682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.776474, 21.222195, 9.932005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110326, 0.181705, -0.977144,
		-0.265139, -0.952899, -0.147261,
		-0.957878, 0.242832, 0.153307,
		20.489111, 21.295044, 9.977997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.857985, 20.768446, 9.325290>,  <21.159626, 21.125061, 9.870682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.857985, 20.768446, 9.325290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.640728, 21.090897, 9.419233>,  <20.510374, 21.284367, 9.475599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.640728, 21.090897, 9.419233>,  <20.857985, 20.768446, 9.325290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.640728, 21.090897, 9.419233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070959, 0.234643, -0.969488,
		-0.836637, -0.543235, -0.070243,
		-0.543142, 0.806126, 0.234858,
		20.477785, 21.332735, 9.489691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.394445, 20.746939, 8.895761>,  <20.857985, 20.768446, 9.325290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.394445, 20.746939, 8.895761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.357075, 21.123882, 9.024281>,  <20.334652, 21.350048, 9.101392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.357075, 21.123882, 9.024281>,  <20.394445, 20.746939, 8.895761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.357075, 21.123882, 9.024281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259070, 0.288582, -0.921739,
		-0.961329, -0.169355, 0.217175,
		-0.093428, 0.942358, 0.321297,
		20.329046, 21.406590, 9.120669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.845169, 21.009319, 8.555511>,  <20.394445, 20.746939, 8.895761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.845169, 21.009319, 8.555511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.029278, 21.348732, 8.659932>,  <20.139744, 21.552380, 8.722585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.029278, 21.348732, 8.659932>,  <19.845169, 21.009319, 8.555511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.029278, 21.348732, 8.659932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119844, 0.350745, -0.928771,
		-0.879652, 0.396201, 0.263129,
		0.460272, 0.848530, 0.261051,
		20.167358, 21.603291, 8.738248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.390736, 21.644037, 8.445888>,  <19.845169, 21.009319, 8.555511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.390736, 21.644037, 8.445888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.771481, 21.766628, 8.443691>,  <19.999928, 21.840183, 8.442373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.771481, 21.766628, 8.443691>,  <19.390736, 21.644037, 8.445888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.771481, 21.766628, 8.443691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177929, 0.537848, -0.824052,
		-0.249600, 0.785360, 0.566488,
		0.951862, 0.306479, -0.005492,
		20.057039, 21.858572, 8.442043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.314379, 22.385271, 8.280084>,  <19.390736, 21.644037, 8.445888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.314379, 22.385271, 8.280084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.705639, 22.307705, 8.250095>,  <19.940395, 22.261166, 8.232102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.705639, 22.307705, 8.250095>,  <19.314379, 22.385271, 8.280084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.705639, 22.307705, 8.250095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043933, 0.545256, -0.837118,
		0.203209, 0.815532, 0.541861,
		0.978149, -0.193915, -0.074972,
		19.999084, 22.249531, 8.227604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.664446, 23.056410, 8.107865>,  <19.314379, 22.385271, 8.280084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.664446, 23.056410, 8.107865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.928043, 22.785873, 7.976236>,  <20.086203, 22.623552, 7.897259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.928043, 22.785873, 7.976236>,  <19.664446, 23.056410, 8.107865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.928043, 22.785873, 7.976236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099124, 0.511789, -0.853374,
		0.745586, 0.529751, 0.404309,
		0.658996, -0.676340, -0.329071,
		20.125742, 22.582972, 7.877515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.079416, 23.579243, 7.647877>,  <19.664446, 23.056410, 8.107865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.079416, 23.579243, 7.647877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.876141, 23.918304, 7.708835>,  <19.754175, 24.121742, 7.745409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.876141, 23.918304, 7.708835>,  <20.079416, 23.579243, 7.647877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.876141, 23.918304, 7.708835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087831, -0.227031, 0.969919,
		0.856755, 0.479518, 0.189825,
		-0.508190, 0.847655, 0.152393,
		19.723684, 24.172602, 7.754553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.275845, 23.921257, 8.337492>,  <20.079416, 23.579243, 7.647877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.275845, 23.921257, 8.337492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.909130, 24.061787, 8.261520>,  <19.689102, 24.146105, 8.215938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.909130, 24.061787, 8.261520>,  <20.275845, 23.921257, 8.337492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.909130, 24.061787, 8.261520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245588, -0.120904, 0.961805,
		0.314942, 0.928414, 0.197124,
		-0.916787, 0.351324, -0.189930,
		19.634094, 24.167183, 8.204541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.098791, 24.543381, 8.761436>,  <20.275845, 23.921257, 8.337492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.098791, 24.543381, 8.761436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.768753, 24.330738, 8.684897>,  <19.570730, 24.203152, 8.638975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.768753, 24.330738, 8.684897>,  <20.098791, 24.543381, 8.761436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.768753, 24.330738, 8.684897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269953, 0.073426, 0.960070,
		-0.496330, 0.843803, -0.204092,
		-0.825095, -0.531606, -0.191344,
		19.521225, 24.171257, 8.627494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.633341, 24.938667, 9.141547>,  <20.098791, 24.543381, 8.761436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.633341, 24.938667, 9.141547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.436043, 24.602436, 9.051985>,  <19.317663, 24.400698, 8.998247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.436043, 24.602436, 9.051985>,  <19.633341, 24.938667, 9.141547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.436043, 24.602436, 9.051985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355979, -0.039809, 0.933645,
		-0.793716, 0.540224, -0.279593,
		-0.493247, -0.840579, -0.223906,
		19.288069, 24.350262, 8.984813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.851610, 25.009607, 9.385128>,  <19.633341, 24.938667, 9.141547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.851610, 25.009607, 9.385128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.960518, 24.624950, 9.371798>,  <19.025862, 24.394156, 9.363799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.960518, 24.624950, 9.371798>,  <18.851610, 25.009607, 9.385128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.960518, 24.624950, 9.371798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528536, -0.178405, 0.829953,
		-0.804065, -0.208355, -0.556837,
		0.272267, -0.961644, -0.033326,
		19.042198, 24.336456, 9.361800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.360167, 24.687178, 9.748964>,  <18.851610, 25.009607, 9.385128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.360167, 24.687178, 9.748964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.644474, 24.408104, 9.713084>,  <18.815060, 24.240660, 9.691556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.644474, 24.408104, 9.713084>,  <18.360167, 24.687178, 9.748964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.644474, 24.408104, 9.713084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353879, -0.464863, 0.811586,
		-0.607928, -0.545107, -0.577306,
		0.710769, -0.697683, -0.089701,
		18.857704, 24.198799, 9.686174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.063442, 24.081673, 9.703754>,  <18.360167, 24.687178, 9.748964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.063442, 24.081673, 9.703754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.431858, 24.029675, 9.850609>,  <18.652908, 23.998476, 9.938722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.431858, 24.029675, 9.850609>,  <18.063442, 24.081673, 9.703754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.431858, 24.029675, 9.850609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389469, -0.309453, 0.867498,
		0.000840, -0.941987, -0.335648,
		0.921039, -0.129996, 0.367135,
		18.708170, 23.990675, 9.960750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.081720, 23.363560, 10.077008>,  <18.063442, 24.081673, 9.703754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.081720, 23.363560, 10.077008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.381435, 23.591717, 10.211599>,  <18.561264, 23.728611, 10.292354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.381435, 23.591717, 10.211599>,  <18.081720, 23.363560, 10.077008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.381435, 23.591717, 10.211599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220002, -0.264837, 0.938861,
		0.624632, -0.777505, -0.072952,
		0.749289, 0.570393, 0.336478,
		18.606222, 23.762835, 10.312543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.390423, 22.943489, 10.534184>,  <18.081720, 23.363560, 10.077008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.390423, 22.943489, 10.534184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.482166, 23.317272, 10.643128>,  <18.537212, 23.541542, 10.708495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.482166, 23.317272, 10.643128>,  <18.390423, 22.943489, 10.534184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.482166, 23.317272, 10.643128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333101, -0.187568, 0.924047,
		0.914570, -0.302662, 0.268249,
		0.229359, 0.934459, 0.272361,
		18.550974, 23.597610, 10.724836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.626438, 22.799397, 11.159258>,  <18.390423, 22.943489, 10.534184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.626438, 22.799397, 11.159258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.571167, 23.194309, 11.127803>,  <18.538004, 23.431257, 11.108930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.571167, 23.194309, 11.127803>,  <18.626438, 22.799397, 11.159258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.571167, 23.194309, 11.127803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268658, 0.039059, 0.962444,
		0.953273, 0.154115, 0.259843,
		-0.138178, 0.987281, -0.078639,
		18.529715, 23.490494, 11.104211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.979164, 23.079880, 11.648615>,  <18.626438, 22.799397, 11.159258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.979164, 23.079880, 11.648615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.709980, 23.361958, 11.559331>,  <18.548470, 23.531204, 11.505760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.709980, 23.361958, 11.559331>,  <18.979164, 23.079880, 11.648615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.709980, 23.361958, 11.559331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334494, -0.020990, 0.942164,
		0.659724, 0.708703, 0.250009,
		-0.672962, 0.705194, -0.223210,
		18.508091, 23.573517, 11.492368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.911678, 23.363146, 12.289158>,  <18.979164, 23.079880, 11.648615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.911678, 23.363146, 12.289158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.601265, 23.526188, 12.096646>,  <18.415016, 23.624014, 11.981139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.601265, 23.526188, 12.096646>,  <18.911678, 23.363146, 12.289158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.601265, 23.526188, 12.096646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475992, 0.122114, 0.870930,
		0.413768, 0.904956, 0.099253,
		-0.776033, 0.407607, -0.481279,
		18.368456, 23.648470, 11.952263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.620365, 23.941648, 12.627520>,  <18.911678, 23.363146, 12.289158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.620365, 23.941648, 12.627520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.326412, 23.810623, 12.389982>,  <18.150040, 23.732008, 12.247459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.326412, 23.810623, 12.389982>,  <18.620365, 23.941648, 12.627520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.326412, 23.810623, 12.389982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643841, 0.061815, 0.762658,
		-0.213109, 0.942806, -0.256325,
		-0.734883, -0.327562, -0.593843,
		18.105947, 23.712355, 12.211829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.146288, 24.386293, 12.667265>,  <18.620365, 23.941648, 12.627520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.146288, 24.386293, 12.667265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.944965, 24.069065, 12.530025>,  <17.824171, 23.878727, 12.447680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.944965, 24.069065, 12.530025>,  <18.146288, 24.386293, 12.667265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.944965, 24.069065, 12.530025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629428, 0.064439, 0.774382,
		-0.592032, 0.605710, -0.531615,
		-0.503308, -0.793072, -0.343101,
		17.793974, 23.831144, 12.427094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.509470, 24.594284, 12.776943>,  <18.146288, 24.386293, 12.667265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.509470, 24.594284, 12.776943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.473309, 24.199795, 12.721524>,  <17.451612, 23.963102, 12.688272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.473309, 24.199795, 12.721524>,  <17.509470, 24.594284, 12.776943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.473309, 24.199795, 12.721524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823489, -0.004214, 0.567317,
		-0.560083, 0.165380, -0.811761,
		-0.090402, -0.986221, -0.138548,
		17.446188, 23.903929, 12.679959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.743219, 24.449593, 12.592763>,  <17.509470, 24.594284, 12.776943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.743219, 24.449593, 12.592763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.894150, 24.101971, 12.720742>,  <16.984707, 23.893396, 12.797530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.894150, 24.101971, 12.720742>,  <16.743219, 24.449593, 12.592763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.894150, 24.101971, 12.720742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769104, -0.101623, 0.630993,
		-0.515855, -0.484162, -0.706740,
		0.377324, -0.869057, 0.319948,
		17.007347, 23.841253, 12.816727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.166985, 24.035666, 12.736951>,  <16.743219, 24.449593, 12.592763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.166985, 24.035666, 12.736951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.483234, 23.932091, 12.958893>,  <16.672985, 23.869946, 13.092058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.483234, 23.932091, 12.958893>,  <16.166985, 24.035666, 12.736951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.483234, 23.932091, 12.958893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597977, -0.131667, 0.790625,
		-0.131667, -0.956878, -0.258938,
		-0.790625, 0.258938, -0.554854,
		16.720423, 23.854410, 13.125349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.890232, 23.532701, 13.137970>,  <16.166985, 24.035666, 12.736951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.890232, 23.532701, 13.137970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.214661, 23.658527, 13.335236>,  <16.409319, 23.734024, 13.453595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.214661, 23.658527, 13.335236>,  <15.890232, 23.532701, 13.137970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.214661, 23.658527, 13.335236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524238, 0.016890, 0.851404,
		0.259493, -0.949085, 0.178606,
		0.811072, 0.314566, 0.493164,
		16.457983, 23.752897, 13.483185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.850601, 23.197332, 13.817540>,  <15.890232, 23.532701, 13.137970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.850601, 23.197332, 13.817540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.128819, 23.474079, 13.895039>,  <16.295750, 23.640127, 13.941538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.128819, 23.474079, 13.895039>,  <15.850601, 23.197332, 13.817540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.128819, 23.474079, 13.895039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371064, 0.114997, 0.921459,
		0.615247, -0.712808, 0.336713,
		0.695545, 0.691867, 0.193746,
		16.337482, 23.681639, 13.953162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.097912, 22.993322, 14.434929>,  <15.850601, 23.197332, 13.817540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.097912, 22.993322, 14.434929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.226585, 23.371136, 14.408453>,  <16.303789, 23.597824, 14.392568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.226585, 23.371136, 14.408453>,  <16.097912, 22.993322, 14.434929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.226585, 23.371136, 14.408453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258468, 0.154849, 0.953529,
		0.910887, -0.289625, 0.293943,
		0.321682, 0.944531, -0.066191,
		16.323090, 23.654495, 14.388596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.597282, 23.128702, 14.959311>,  <16.097912, 22.993322, 14.434929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.597282, 23.128702, 14.959311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.462849, 23.493851, 14.866610>,  <16.382189, 23.712940, 14.810988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.462849, 23.493851, 14.866610>,  <16.597282, 23.128702, 14.959311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.462849, 23.493851, 14.866610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202672, 0.170206, 0.964341,
		0.919768, 0.371068, 0.127811,
		-0.336082, 0.912874, -0.231756,
		16.362024, 23.767714, 14.797083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.952618, 23.642143, 15.388078>,  <16.597282, 23.128702, 14.959311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.952618, 23.642143, 15.388078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.610363, 23.819500, 15.281279>,  <16.405010, 23.925913, 15.217199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.610363, 23.819500, 15.281279>,  <16.952618, 23.642143, 15.388078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.610363, 23.819500, 15.281279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240138, 0.116891, 0.963675,
		0.458493, 0.888674, 0.006458,
		-0.855639, 0.443390, -0.266998,
		16.353672, 23.952517, 15.201180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.827116, 24.148909, 15.945165>,  <16.952618, 23.642143, 15.388078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.827116, 24.148909, 15.945165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.483871, 24.142300, 15.739885>,  <16.277925, 24.138334, 15.616718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.483871, 24.142300, 15.739885>,  <16.827116, 24.148909, 15.945165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.483871, 24.142300, 15.739885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512026, 0.102279, 0.852859,
		0.038396, 0.994618, -0.096228,
		-0.858112, -0.016525, -0.513197,
		16.226439, 24.137342, 15.585926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.418995, 24.758587, 16.119425>,  <16.827116, 24.148909, 15.945165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.418995, 24.758587, 16.119425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.136230, 24.519028, 15.968906>,  <15.966572, 24.375292, 15.878595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.136230, 24.519028, 15.968906>,  <16.418995, 24.758587, 16.119425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.136230, 24.519028, 15.968906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537871, 0.109690, 0.835861,
		-0.459320, 0.793277, -0.399670,
		-0.706909, -0.598899, -0.376298,
		15.924158, 24.339357, 15.856017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.792212, 25.077261, 16.303461>,  <16.418995, 24.758587, 16.119425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.792212, 25.077261, 16.303461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.713256, 24.689289, 16.246504>,  <15.665882, 24.456507, 16.212330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.713256, 24.689289, 16.246504>,  <15.792212, 25.077261, 16.303461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.713256, 24.689289, 16.246504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504193, -0.024124, 0.863254,
		-0.840730, 0.242190, -0.484269,
		-0.197389, -0.969929, -0.142392,
		15.654039, 24.398310, 16.203787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.061288, 24.984732, 16.374508>,  <15.792212, 25.077261, 16.303461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.061288, 24.984732, 16.374508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.174302, 24.607281, 16.443487>,  <15.242111, 24.380810, 16.484875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.174302, 24.607281, 16.443487>,  <15.061288, 24.984732, 16.374508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.174302, 24.607281, 16.443487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589562, -0.029006, 0.807202,
		-0.756697, -0.329733, -0.564523,
		0.282536, -0.943629, 0.172450,
		15.259063, 24.324192, 16.495222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.439666, 24.600277, 16.609976>,  <15.061288, 24.984732, 16.374508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.439666, 24.600277, 16.609976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.737685, 24.364307, 16.734488>,  <14.916497, 24.222727, 16.809195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.737685, 24.364307, 16.734488>,  <14.439666, 24.600277, 16.609976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.737685, 24.364307, 16.734488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434580, -0.075290, 0.897481,
		-0.506008, -0.803942, -0.312463,
		0.745048, -0.589923, 0.311279,
		14.961200, 24.187330, 16.827871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.220875, 24.090261, 17.068281>,  <14.439666, 24.600277, 16.609976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.220875, 24.090261, 17.068281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.608548, 24.087719, 17.166786>,  <14.841152, 24.086193, 17.225889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.608548, 24.087719, 17.166786>,  <14.220875, 24.090261, 17.068281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.608548, 24.087719, 17.166786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245915, -0.083870, 0.965656,
		0.014519, -0.996456, -0.082848,
		0.969182, -0.006353, 0.246261,
		14.899303, 24.085812, 17.240664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.078738, 23.367889, 17.020309>,  <14.220875, 24.090261, 17.068281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.078738, 23.367889, 17.020309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.784287, 23.097553, 17.005575>,  <13.607617, 22.935352, 16.996735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.784287, 23.097553, 17.005575>,  <14.078738, 23.367889, 17.020309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.784287, 23.097553, 17.005575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143896, -0.103090, -0.984208,
		0.661371, -0.729802, 0.173138,
		-0.736126, -0.675841, -0.036835,
		13.563450, 22.894800, 16.994524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.356177, 22.730061, 16.682959>,  <14.078738, 23.367889, 17.020309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.356177, 22.730061, 16.682959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.958011, 22.747852, 16.649094>,  <13.719110, 22.758528, 16.628775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.958011, 22.747852, 16.649094>,  <14.356177, 22.730061, 16.682959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.958011, 22.747852, 16.649094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083426, -0.028961, -0.996093,
		-0.046770, -0.998590, 0.025116,
		-0.995416, 0.044492, -0.084663,
		13.659386, 22.761196, 16.623695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.290016, 22.484289, 16.065643>,  <14.356177, 22.730061, 16.682959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.290016, 22.484289, 16.065643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.920033, 22.626442, 16.119541>,  <13.698044, 22.711735, 16.151880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.920033, 22.626442, 16.119541>,  <14.290016, 22.484289, 16.065643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.920033, 22.626442, 16.119541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118938, 0.066065, -0.990701,
		-0.360981, -0.932383, -0.018838,
		-0.924958, 0.355384, 0.134744,
		13.642546, 22.733057, 16.159964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.835009, 22.020269, 15.669239>,  <14.290016, 22.484289, 16.065643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.835009, 22.020269, 15.669239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.632880, 22.362972, 15.710451>,  <13.511603, 22.568594, 15.735178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.632880, 22.362972, 15.710451>,  <13.835009, 22.020269, 15.669239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.632880, 22.362972, 15.710451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130748, 0.042001, -0.990525,
		-0.852970, -0.514003, 0.090795,
		-0.505320, 0.856759, 0.103030,
		13.481284, 22.620001, 15.741361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.287926, 21.908506, 15.276384>,  <13.835009, 22.020269, 15.669239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.287926, 21.908506, 15.276384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.344975, 22.303291, 15.306231>,  <13.379205, 22.540161, 15.324139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.344975, 22.303291, 15.306231>,  <13.287926, 21.908506, 15.276384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.344975, 22.303291, 15.306231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219883, 0.105097, -0.969849,
		-0.965044, 0.121917, 0.232005,
		0.142624, 0.986961, 0.074616,
		13.387762, 22.599379, 15.328615>
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
