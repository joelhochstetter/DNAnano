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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.283363, 36.875450, 50.421257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133656, 36.506287, 50.385124>,  <40.043831, 36.284786, 50.363445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133656, 36.506287, 50.385124>,  <40.283363, 36.875450, 50.421257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133656, 36.506287, 50.385124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915411, -0.352139, -0.194991,
		0.148150, -0.155670, 0.976636,
		-0.374266, -0.922911, -0.090332,
		40.021378, 36.229412, 50.358025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512856, 36.527176, 51.088890>,  <40.283363, 36.875450, 50.421257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512856, 36.527176, 51.088890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445171, 36.317192, 50.755238>,  <40.404560, 36.191200, 50.555046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445171, 36.317192, 50.755238>,  <40.512856, 36.527176, 51.088890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445171, 36.317192, 50.755238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963782, -0.265150, -0.028638,
		-0.206137, -0.808770, 0.550817,
		-0.169210, -0.524964, -0.834135,
		40.394409, 36.159702, 50.504997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948601, 36.014042, 51.182861>,  <40.512856, 36.527176, 51.088890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948601, 36.014042, 51.182861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864632, 35.998089, 50.792099>,  <40.814251, 35.988518, 50.557644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864632, 35.998089, 50.792099>,  <40.948601, 36.014042, 51.182861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864632, 35.998089, 50.792099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977718, -0.009032, -0.209730,
		-0.000458, -0.999163, 0.040892,
		-0.209924, -0.039884, -0.976904,
		40.801655, 35.986126, 50.499027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206684, 35.403435, 51.009853>,  <40.948601, 36.014042, 51.182861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206684, 35.403435, 51.009853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192970, 35.655014, 50.699177>,  <41.184742, 35.805962, 50.512772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192970, 35.655014, 50.699177>,  <41.206684, 35.403435, 51.009853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192970, 35.655014, 50.699177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996062, -0.042075, -0.078037,
		-0.081761, -0.776311, -0.625025,
		-0.034283, 0.628945, -0.776694,
		41.182686, 35.843697, 50.466167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874466, 35.324574, 50.754314>,  <41.206684, 35.403435, 51.009853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874466, 35.324574, 50.754314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758236, 35.624172, 50.516129>,  <41.688499, 35.803932, 50.373219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.758236, 35.624172, 50.516129>,  <41.874466, 35.324574, 50.754314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758236, 35.624172, 50.516129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955429, 0.261045, -0.137879,
		0.052172, -0.608986, -0.791463,
		-0.290574, 0.748994, -0.595462,
		41.671062, 35.848869, 50.337490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132900, 35.206043, 50.147289>,  <41.874466, 35.324574, 50.754314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132900, 35.206043, 50.147289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090263, 35.600689, 50.196671>,  <42.064682, 35.837475, 50.226299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090263, 35.600689, 50.196671>,  <42.132900, 35.206043, 50.147289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090263, 35.600689, 50.196671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992199, 0.097465, 0.077727,
		0.064654, 0.130775, -0.989302,
		-0.106587, 0.986610, 0.123453,
		42.058289, 35.896671, 50.233707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493145, 35.635380, 49.534744>,  <42.132900, 35.206043, 50.147289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493145, 35.635380, 49.534744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462307, 35.860710, 49.863796>,  <42.443802, 35.995911, 50.061226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462307, 35.860710, 49.863796>,  <42.493145, 35.635380, 49.534744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462307, 35.860710, 49.863796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996186, 0.009717, 0.086708,
		0.040852, 0.826176, -0.561929,
		-0.077097, 0.563328, 0.822628,
		42.439178, 36.029709, 50.110584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056824, 36.103073, 49.480129>,  <42.493145, 35.635380, 49.534744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056824, 36.103073, 49.480129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950363, 36.119011, 49.865372>,  <42.886486, 36.128574, 50.096519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950363, 36.119011, 49.865372>,  <43.056824, 36.103073, 49.480129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950363, 36.119011, 49.865372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955903, 0.139607, 0.258380,
		-0.124160, 0.989405, -0.075248,
		-0.266147, 0.039849, 0.963108,
		42.870518, 36.130966, 50.154305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351955, 36.660080, 49.748474>,  <43.056824, 36.103073, 49.480129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351955, 36.660080, 49.748474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262493, 36.420685, 50.056187>,  <43.208817, 36.277046, 50.240814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262493, 36.420685, 50.056187>,  <43.351955, 36.660080, 49.748474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262493, 36.420685, 50.056187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933247, 0.096153, 0.346129,
		-0.281123, 0.795339, 0.537035,
		-0.223652, -0.598491, 0.769278,
		43.195396, 36.241138, 50.286968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762688, 36.932049, 50.317440>,  <43.351955, 36.660080, 49.748474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762688, 36.932049, 50.317440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684120, 36.548187, 50.397930>,  <43.636982, 36.317871, 50.446224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684120, 36.548187, 50.397930>,  <43.762688, 36.932049, 50.317440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684120, 36.548187, 50.397930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893439, -0.090612, 0.439950,
		-0.403966, 0.266193, 0.875187,
		-0.196415, -0.959651, 0.201223,
		43.625195, 36.260292, 50.458298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064690, 36.820679, 51.009277>,  <43.762688, 36.932049, 50.317440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064690, 36.820679, 51.009277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004829, 36.449757, 50.872044>,  <43.968914, 36.227203, 50.789703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004829, 36.449757, 50.872044>,  <44.064690, 36.820679, 51.009277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004829, 36.449757, 50.872044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856185, -0.295085, 0.424112,
		-0.494522, -0.230280, 0.838104,
		-0.149647, -0.927306, -0.343088,
		43.959934, 36.171566, 50.769115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323776, 36.375210, 51.512131>,  <44.064690, 36.820679, 51.009277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323776, 36.375210, 51.512131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287830, 36.083546, 51.240765>,  <44.266262, 35.908546, 51.077946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287830, 36.083546, 51.240765>,  <44.323776, 36.375210, 51.512131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287830, 36.083546, 51.240765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830526, -0.430815, 0.353024,
		-0.549682, -0.531716, 0.644304,
		-0.089867, -0.729162, -0.678415,
		44.260872, 35.864796, 51.037239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372200, 35.752365, 51.952187>,  <44.323776, 36.375210, 51.512131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372200, 35.752365, 51.952187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436939, 35.677032, 51.564716>,  <44.475784, 35.631832, 51.332233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436939, 35.677032, 51.564716>,  <44.372200, 35.752365, 51.952187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436939, 35.677032, 51.564716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781545, -0.574854, 0.242342,
		-0.602489, -0.796288, 0.054149,
		0.161846, -0.188328, -0.968679,
		44.485493, 35.620533, 51.274113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424889, 34.947227, 51.863045>,  <44.372200, 35.752365, 51.952187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424889, 34.947227, 51.863045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618790, 35.123116, 51.560616>,  <44.735130, 35.228649, 51.379158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618790, 35.123116, 51.560616>,  <44.424889, 34.947227, 51.863045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618790, 35.123116, 51.560616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769774, -0.624919, 0.130095,
		-0.415281, -0.645073, -0.641422,
		0.484757, 0.439724, -0.756077,
		44.764217, 35.255032, 51.333794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779606, 34.437428, 51.703972>,  <44.424889, 34.947227, 51.863045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.779606, 34.437428, 51.703972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956089, 34.754971, 51.536579>,  <45.061981, 34.945496, 51.436146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956089, 34.754971, 51.536579>,  <44.779606, 34.437428, 51.703972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.956089, 34.754971, 51.536579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896915, -0.405467, 0.176466,
		-0.029591, -0.453199, -0.890918,
		0.441212, 0.793856, -0.418479,
		45.088451, 34.993126, 51.411034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342888, 34.228573, 51.182400>,  <44.779606, 34.437428, 51.703972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342888, 34.228573, 51.182400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.428085, 34.607136, 51.279510>,  <45.479202, 34.834274, 51.337776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.428085, 34.607136, 51.279510>,  <45.342888, 34.228573, 51.182400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.428085, 34.607136, 51.279510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976209, -0.216462, -0.012629,
		0.040599, 0.239689, -0.970001,
		0.212995, 0.946411, 0.242775,
		45.491985, 34.891060, 51.352345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.867744, 34.475296, 50.712440>,  <45.342888, 34.228573, 51.182400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.867744, 34.475296, 50.712440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.905952, 34.728691, 51.019573>,  <45.928879, 34.880730, 51.203854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.905952, 34.728691, 51.019573>,  <45.867744, 34.475296, 50.712440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.905952, 34.728691, 51.019573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958980, -0.265384, 0.099646,
		0.266896, 0.726818, -0.632853,
		0.095524, 0.633488, 0.767833,
		45.934608, 34.918739, 51.249924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.432774, 34.811321, 50.677998>,  <45.867744, 34.475296, 50.712440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.432774, 34.811321, 50.677998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368595, 34.879555, 51.066875>,  <46.330090, 34.920494, 51.300201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368595, 34.879555, 51.066875>,  <46.432774, 34.811321, 50.677998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.368595, 34.879555, 51.066875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967964, -0.165540, 0.188790,
		0.193141, 0.971338, -0.138561,
		-0.160442, 0.170586, 0.972193,
		46.320461, 34.930729, 51.358532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.035091, 35.164989, 50.842670>,  <46.432774, 34.811321, 50.677998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.035091, 35.164989, 50.842670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.886761, 35.030865, 51.189095>,  <46.797764, 34.950390, 51.396950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.886761, 35.030865, 51.189095>,  <47.035091, 35.164989, 50.842670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.886761, 35.030865, 51.189095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925068, -0.215788, 0.312544,
		0.082084, 0.917060, 0.390208,
		-0.370824, -0.335314, 0.866056,
		46.775513, 34.930271, 51.448910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.456627, 35.451973, 51.330688>,  <47.035091, 35.164989, 50.842670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.456627, 35.451973, 51.330688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.276745, 35.137901, 51.500984>,  <47.168816, 34.949459, 51.603161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.276745, 35.137901, 51.500984>,  <47.456627, 35.451973, 51.330688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.276745, 35.137901, 51.500984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863116, -0.259408, 0.433287,
		-0.229768, 0.562316, 0.794359,
		-0.449708, -0.785180, 0.425741,
		47.141834, 34.902348, 51.628708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.834110, 35.422504, 52.057644>,  <47.456627, 35.451973, 51.330688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.834110, 35.422504, 52.057644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695133, 35.058895, 51.965599>,  <47.611748, 34.840729, 51.910370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695133, 35.058895, 51.965599>,  <47.834110, 35.422504, 52.057644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.695133, 35.058895, 51.965599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868203, -0.404570, 0.287310,
		-0.354271, -0.099963, 0.929785,
		-0.347443, -0.909027, -0.230116,
		47.590900, 34.786186, 51.896564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.465364, 35.310905, 51.730091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.406839, 35.019775, 51.998081>,  <24.371723, 34.845097, 52.158875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.406839, 35.019775, 51.998081>,  <24.465364, 35.310905, 51.730091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.406839, 35.019775, 51.998081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989185, -0.100617, 0.106722,
		-0.010264, 0.678342, 0.734675,
		-0.146315, -0.727825, 0.669973,
		24.362946, 34.801430, 52.199074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.724970, 35.435562, 52.378929>,  <24.465364, 35.310905, 51.730091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.724970, 35.435562, 52.378929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.738770, 35.038914, 52.329140>,  <24.747049, 34.800922, 52.299267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.738770, 35.038914, 52.329140>,  <24.724970, 35.435562, 52.378929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.738770, 35.038914, 52.329140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984813, 0.012524, 0.173163,
		-0.170154, -0.128557, 0.976996,
		0.034498, -0.991623, -0.124474,
		24.749119, 34.741428, 52.291798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.232489, 35.225468, 52.817104>,  <24.724970, 35.435562, 52.378929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.232489, 35.225468, 52.817104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.213284, 34.890953, 52.598629>,  <25.201761, 34.690243, 52.467545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.213284, 34.890953, 52.598629>,  <25.232489, 35.225468, 52.817104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213284, 34.890953, 52.598629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995738, -0.083182, 0.039833,
		-0.078744, -0.541947, 0.836715,
		-0.048012, -0.836286, -0.546187,
		25.198879, 34.640068, 52.434772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679926, 34.769497, 53.096138>,  <25.232489, 35.225468, 52.817104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679926, 34.769497, 53.096138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.620066, 34.605793, 52.736111>,  <25.584150, 34.507572, 52.520096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.620066, 34.605793, 52.736111>,  <25.679926, 34.769497, 53.096138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620066, 34.605793, 52.736111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972268, -0.226379, -0.058720,
		-0.179724, -0.883890, 0.431784,
		-0.149649, -0.409256, -0.900064,
		25.575171, 34.483017, 52.466091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055452, 34.180321, 53.180805>,  <25.679926, 34.769497, 53.096138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055452, 34.180321, 53.180805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.997639, 34.261768, 52.793476>,  <25.962952, 34.310638, 52.561077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.997639, 34.261768, 52.793476>,  <26.055452, 34.180321, 53.180805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997639, 34.261768, 52.793476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973063, -0.148377, -0.176441,
		-0.179604, -0.967741, -0.176691,
		-0.144533, 0.203622, -0.968323,
		25.954279, 34.322853, 52.502979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.260490, 33.634632, 52.861942>,  <26.055452, 34.180321, 53.180805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.260490, 33.634632, 52.861942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.292542, 33.929699, 52.593784>,  <26.311773, 34.106739, 52.432888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.292542, 33.929699, 52.593784>,  <26.260490, 33.634632, 52.861942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292542, 33.929699, 52.593784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950503, -0.259103, -0.171492,
		-0.300205, -0.623474, -0.721913,
		0.080129, 0.737663, -0.670398,
		26.316580, 34.150997, 52.392666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826082, 33.409222, 52.521263>,  <26.260490, 33.634632, 52.861942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826082, 33.409222, 52.521263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.811380, 33.779743, 52.371269>,  <26.802559, 34.002056, 52.281273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.811380, 33.779743, 52.371269>,  <26.826082, 33.409222, 52.521263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811380, 33.779743, 52.371269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995097, -0.000556, -0.098906,
		-0.091825, -0.376786, -0.921738,
		-0.036754, 0.926300, -0.374989,
		26.800354, 34.057632, 52.258774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065199, 33.355671, 51.850914>,  <26.826082, 33.409222, 52.521263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065199, 33.355671, 51.850914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.103830, 33.740582, 51.952656>,  <27.127010, 33.971527, 52.013702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.103830, 33.740582, 51.952656>,  <27.065199, 33.355671, 51.850914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.103830, 33.740582, 51.952656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909846, 0.018258, -0.414545,
		-0.403551, 0.271463, -0.873759,
		0.096580, 0.962276, 0.254358,
		27.132805, 34.029263, 52.028961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352831, 33.711838, 51.278339>,  <27.065199, 33.355671, 51.850914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352831, 33.711838, 51.278339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.437298, 33.942272, 51.594196>,  <27.487978, 34.080532, 51.783710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.437298, 33.942272, 51.594196>,  <27.352831, 33.711838, 51.278339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437298, 33.942272, 51.594196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913589, 0.170893, -0.368987,
		-0.347511, 0.799328, -0.490215,
		0.211168, 0.576082, 0.789644,
		27.500648, 34.115097, 51.831089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580421, 34.343452, 51.036491>,  <27.352831, 33.711838, 51.278339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580421, 34.343452, 51.036491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.720673, 34.325493, 51.410667>,  <27.804823, 34.314716, 51.635174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.720673, 34.325493, 51.410667>,  <27.580421, 34.343452, 51.036491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720673, 34.325493, 51.410667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911078, 0.247573, -0.329613,
		-0.216789, 0.967828, 0.127716,
		0.350628, -0.044903, 0.935438,
		27.825861, 34.312023, 51.691299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975939, 34.963882, 51.083569>,  <27.580421, 34.343452, 51.036491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975939, 34.963882, 51.083569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.100227, 34.736782, 51.388493>,  <28.174801, 34.600521, 51.571445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.100227, 34.736782, 51.388493>,  <27.975939, 34.963882, 51.083569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100227, 34.736782, 51.388493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949497, 0.148553, -0.276381,
		0.043673, 0.809686, 0.585237,
		0.310721, -0.567751, 0.762307,
		28.193443, 34.566456, 51.617184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331064, 35.384457, 51.512409>,  <27.975939, 34.963882, 51.083569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331064, 35.384457, 51.512409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.459606, 35.015865, 51.599686>,  <28.536732, 34.794708, 51.652050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.459606, 35.015865, 51.599686>,  <28.331064, 35.384457, 51.512409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459606, 35.015865, 51.599686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932969, 0.268627, -0.239600,
		0.162175, 0.280558, 0.946037,
		0.321353, -0.921481, 0.218187,
		28.556011, 34.739422, 51.665142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942493, 35.451290, 51.673100>,  <28.331064, 35.384457, 51.512409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942493, 35.451290, 51.673100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.925493, 35.054901, 51.622227>,  <28.915293, 34.817070, 51.591702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.925493, 35.054901, 51.622227>,  <28.942493, 35.451290, 51.673100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925493, 35.054901, 51.622227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912869, 0.013216, -0.408038,
		0.406033, -0.133446, 0.904063,
		-0.042503, -0.990968, -0.127185,
		28.912743, 34.757610, 51.584072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538052, 35.169586, 51.995087>,  <28.942493, 35.451290, 51.673100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538052, 35.169586, 51.995087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.459272, 34.904087, 51.706463>,  <29.412004, 34.744785, 51.533287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.459272, 34.904087, 51.706463>,  <29.538052, 35.169586, 51.995087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459272, 34.904087, 51.706463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980066, -0.152885, -0.126870,
		-0.026106, -0.732163, 0.680629,
		-0.196948, -0.663750, -0.721560,
		29.400188, 34.704964, 51.489994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042891, 34.527538, 52.137012>,  <29.538052, 35.169586, 51.995087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042891, 34.527538, 52.137012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.893314, 34.515621, 51.766224>,  <29.803568, 34.508469, 51.543751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.893314, 34.515621, 51.766224>,  <30.042891, 34.527538, 52.137012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893314, 34.515621, 51.766224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922113, -0.119041, -0.368153,
		-0.099379, -0.992442, 0.071988,
		-0.373940, -0.029795, -0.926974,
		29.781132, 34.506683, 51.488132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513653, 34.097332, 51.861534>,  <30.042891, 34.527538, 52.137012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513653, 34.097332, 51.861534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.324774, 34.264206, 51.550926>,  <30.211447, 34.364330, 51.364559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.324774, 34.264206, 51.550926>,  <30.513653, 34.097332, 51.861534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324774, 34.264206, 51.550926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825008, -0.101114, -0.556002,
		-0.310473, -0.903180, -0.296434,
		-0.472196, 0.417184, -0.776523,
		30.183115, 34.389362, 51.317970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754751, 33.718006, 51.301716>,  <30.513653, 34.097332, 51.861534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754751, 33.718006, 51.301716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.593407, 34.034554, 51.117962>,  <30.496601, 34.224483, 51.007710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.593407, 34.034554, 51.117962>,  <30.754751, 33.718006, 51.301716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593407, 34.034554, 51.117962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721149, -0.034103, -0.691940,
		-0.563246, -0.610388, -0.556938,
		-0.403359, 0.791368, -0.459389,
		30.472399, 34.271965, 50.980145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605440, 33.568909, 50.658802>,  <30.754751, 33.718006, 51.301716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605440, 33.568909, 50.658802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.676449, 33.962296, 50.673145>,  <30.719053, 34.198326, 50.681751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.676449, 33.962296, 50.673145>,  <30.605440, 33.568909, 50.658802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676449, 33.962296, 50.673145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818063, -0.127213, -0.560882,
		-0.547045, 0.128904, -0.827119,
		0.177520, 0.983463, 0.035860,
		30.729706, 34.257336, 50.683903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848721, 33.820229, 49.929943>,  <30.605440, 33.568909, 50.658802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848721, 33.820229, 49.929943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.940662, 34.153992, 50.130314>,  <30.995827, 34.354248, 50.250538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.940662, 34.153992, 50.130314>,  <30.848721, 33.820229, 49.929943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940662, 34.153992, 50.130314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661657, 0.243480, -0.709174,
		-0.713706, 0.494452, -0.496126,
		0.229855, 0.834407, 0.500931,
		31.009619, 34.404312, 50.280594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730780, 34.365925, 49.452766>,  <30.848721, 33.820229, 49.929943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730780, 34.365925, 49.452766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.959249, 34.540474, 49.730858>,  <31.096331, 34.645203, 49.897713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.959249, 34.540474, 49.730858>,  <30.730780, 34.365925, 49.452766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959249, 34.540474, 49.730858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646905, 0.282036, -0.708498,
		-0.505245, 0.854423, -0.121197,
		0.571175, 0.436369, 0.695228,
		31.130602, 34.671383, 49.939426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855764, 35.028370, 49.134415>,  <30.730780, 34.365925, 49.452766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855764, 35.028370, 49.134415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.129250, 34.936157, 49.411369>,  <31.293341, 34.880829, 49.577541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.129250, 34.936157, 49.411369>,  <30.855764, 35.028370, 49.134415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129250, 34.936157, 49.411369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728972, 0.259582, -0.633417,
		-0.033710, 0.937803, 0.345528,
		0.683713, -0.230528, 0.692382,
		31.334364, 34.867001, 49.619083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<23.700195, 34.826580, 35.067783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.080521, 34.871601, 34.952343>,  <24.308716, 34.898613, 34.883080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.080521, 34.871601, 34.952343>,  <23.700195, 34.826580, 35.067783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.080521, 34.871601, 34.952343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028828, 0.959766, 0.279317,
		0.308425, -0.257258, 0.915801,
		0.950812, 0.112549, -0.288600,
		24.365765, 34.905365, 34.865765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.137152, 35.144814, 35.633595>,  <23.700195, 34.826580, 35.067783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.137152, 35.144814, 35.633595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.286198, 35.249748, 35.277542>,  <24.375626, 35.312710, 35.063911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.286198, 35.249748, 35.277542>,  <24.137152, 35.144814, 35.633595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.286198, 35.249748, 35.277542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006750, 0.959952, 0.280085,
		0.927961, -0.098356, 0.359465,
		0.372617, 0.262334, -0.890133,
		24.397982, 35.328449, 35.010502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.780293, 35.583855, 35.685356>,  <24.137152, 35.144814, 35.633595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.780293, 35.583855, 35.685356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.556555, 35.672638, 35.365891>,  <24.422312, 35.725910, 35.174210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.556555, 35.672638, 35.365891>,  <24.780293, 35.583855, 35.685356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.556555, 35.672638, 35.365891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179699, 0.908104, 0.378228,
		0.809224, 0.355078, -0.468055,
		-0.559343, 0.221962, -0.798666,
		24.388752, 35.739227, 35.126289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.074827, 35.995243, 35.150490>,  <24.780293, 35.583855, 35.685356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.074827, 35.995243, 35.150490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.702209, 36.110428, 35.239307>,  <24.478640, 36.179539, 35.292599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.702209, 36.110428, 35.239307>,  <25.074827, 35.995243, 35.150490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702209, 36.110428, 35.239307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349681, 0.541911, 0.764235,
		0.099740, 0.789564, -0.605508,
		-0.931544, 0.287959, 0.222045,
		24.422747, 36.196815, 35.305920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.064297, 36.740746, 35.245934>,  <25.074827, 35.995243, 35.150490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.064297, 36.740746, 35.245934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.790613, 36.526127, 35.443508>,  <24.626402, 36.397358, 35.562054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.790613, 36.526127, 35.443508>,  <25.064297, 36.740746, 35.245934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.790613, 36.526127, 35.443508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364633, 0.334875, 0.868851,
		-0.631584, 0.774584, -0.033484,
		-0.684211, -0.536543, 0.493941,
		24.585350, 36.365166, 35.591690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.711731, 37.145790, 35.892029>,  <25.064297, 36.740746, 35.245934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.711731, 37.145790, 35.892029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.711941, 36.747559, 35.929604>,  <24.712067, 36.508621, 35.952148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.711941, 36.747559, 35.929604>,  <24.711731, 37.145790, 35.892029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.711941, 36.747559, 35.929604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263608, 0.090751, 0.960351,
		-0.964630, 0.024259, 0.262490,
		0.000524, -0.995578, 0.093936,
		24.712097, 36.448887, 35.957783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.328018, 36.907597, 36.573910>,  <24.711731, 37.145790, 35.892029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.328018, 36.907597, 36.573910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.631733, 36.662476, 36.486313>,  <24.813961, 36.515404, 36.433754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.631733, 36.662476, 36.486313>,  <24.328018, 36.907597, 36.573910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.631733, 36.662476, 36.486313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487271, 0.312319, 0.815490,
		-0.431336, -0.725901, 0.535739,
		0.759287, -0.612801, -0.218996,
		24.859518, 36.478634, 36.420612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.676935, 36.688011, 37.213375>,  <24.328018, 36.907597, 36.573910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.676935, 36.688011, 37.213375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.931107, 36.663712, 36.905468>,  <25.083609, 36.649132, 36.720722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.931107, 36.663712, 36.905468>,  <24.676935, 36.688011, 37.213375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931107, 36.663712, 36.905468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757608, 0.241671, 0.606320,
		0.149197, -0.968455, 0.199588,
		0.635428, -0.060748, -0.769766,
		25.121735, 36.645489, 36.674538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.297756, 36.202194, 37.413277>,  <24.676935, 36.688011, 37.213375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.297756, 36.202194, 37.413277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.402498, 36.488525, 37.154350>,  <25.465343, 36.660324, 36.998993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.402498, 36.488525, 37.154350>,  <25.297756, 36.202194, 37.413277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402498, 36.488525, 37.154350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794488, 0.220905, 0.565677,
		0.547924, -0.662411, -0.510873,
		0.261856, 0.715830, -0.647316,
		25.481054, 36.703274, 36.960155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.843410, 36.074749, 36.922455>,  <25.297756, 36.202194, 37.413277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.843410, 36.074749, 36.922455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.836123, 36.466312, 37.003841>,  <25.831749, 36.701252, 37.052673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.836123, 36.466312, 37.003841>,  <25.843410, 36.074749, 36.922455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.836123, 36.466312, 37.003841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799629, -0.107899, 0.590722,
		0.600219, 0.173465, -0.780800,
		-0.018222, 0.978912, 0.203470,
		25.830656, 36.759987, 37.064884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431976, 36.235840, 37.377808>,  <25.843410, 36.074749, 36.922455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431976, 36.235840, 37.377808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.713350, 36.519371, 37.356876>,  <26.882175, 36.689491, 37.344318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.713350, 36.519371, 37.356876>,  <26.431976, 36.235840, 37.377808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.713350, 36.519371, 37.356876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627376, -0.584623, 0.514407,
		0.334034, -0.394683, -0.855948,
		0.703435, 0.708831, -0.052331,
		26.924381, 36.732021, 37.341179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122885, 35.988743, 37.068783>,  <26.431976, 36.235840, 37.377808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122885, 35.988743, 37.068783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.155989, 36.294716, 37.324291>,  <27.175850, 36.478298, 37.477596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.155989, 36.294716, 37.324291>,  <27.122885, 35.988743, 37.068783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155989, 36.294716, 37.324291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592055, -0.553334, 0.585911,
		0.801637, 0.329700, -0.498674,
		0.082759, 0.764931, 0.638774,
		27.180817, 36.524197, 37.515923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786436, 36.211163, 37.008686>,  <27.122885, 35.988743, 37.068783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786436, 36.211163, 37.008686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.648476, 36.295856, 37.374466>,  <27.565701, 36.346672, 37.593933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.648476, 36.295856, 37.374466>,  <27.786436, 36.211163, 37.008686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648476, 36.295856, 37.374466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698528, -0.592849, 0.400734,
		0.626979, 0.776980, 0.056569,
		-0.344900, 0.211737, 0.914446,
		27.545006, 36.359379, 37.648800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235275, 36.462292, 37.511929>,  <27.786436, 36.211163, 37.008686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235275, 36.462292, 37.511929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.985868, 36.200226, 37.682571>,  <27.836226, 36.042988, 37.784958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.985868, 36.200226, 37.682571>,  <28.235275, 36.462292, 37.511929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985868, 36.200226, 37.682571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778997, -0.474377, 0.410037,
		-0.066270, 0.587988, 0.806150,
		-0.623516, -0.655162, 0.426604,
		27.798813, 36.003677, 37.810551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433994, 36.376598, 38.224747>,  <28.235275, 36.462292, 37.511929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433994, 36.376598, 38.224747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.249762, 36.035713, 38.125469>,  <28.139221, 35.831181, 38.065903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.249762, 36.035713, 38.125469>,  <28.433994, 36.376598, 38.224747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249762, 36.035713, 38.125469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816590, -0.516425, 0.257850,
		-0.347915, -0.083909, 0.933764,
		-0.460583, -0.852212, -0.248191,
		28.111588, 35.780048, 38.051010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186184, 36.416035, 38.277611>,  <28.433994, 36.376598, 38.224747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186184, 36.416035, 38.277611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.518780, 36.233204, 38.151302>,  <29.718336, 36.123505, 38.075516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.518780, 36.233204, 38.151302>,  <29.186184, 36.416035, 38.277611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518780, 36.233204, 38.151302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149975, -0.362617, 0.919791,
		-0.534917, -0.812153, -0.232962,
		0.831488, -0.457074, -0.315773,
		29.768227, 36.096081, 38.056572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157761, 35.859215, 38.629990>,  <29.186184, 36.416035, 38.277611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157761, 35.859215, 38.629990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.534182, 35.941124, 38.522297>,  <29.760035, 35.990269, 38.457680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.534182, 35.941124, 38.522297>,  <29.157761, 35.859215, 38.629990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534182, 35.941124, 38.522297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294970, -0.107192, 0.949475,
		0.165567, -0.972922, -0.161275,
		0.941053, 0.204773, -0.269235,
		29.816498, 36.002556, 38.441525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667635, 35.317986, 38.661545>,  <29.157761, 35.859215, 38.629990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667635, 35.317986, 38.661545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.811893, 35.679169, 38.755016>,  <29.898449, 35.895878, 38.811100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.811893, 35.679169, 38.755016>,  <29.667635, 35.317986, 38.661545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811893, 35.679169, 38.755016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037290, -0.264296, 0.963721,
		0.931957, -0.338850, -0.128989,
		0.360648, 0.902956, 0.233676,
		29.920088, 35.950054, 38.825119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189945, 35.233955, 39.151936>,  <29.667635, 35.317986, 38.661545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189945, 35.233955, 39.151936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.000530, 35.575996, 39.236382>,  <29.886881, 35.781219, 39.287048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.000530, 35.575996, 39.236382>,  <30.189945, 35.233955, 39.151936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000530, 35.575996, 39.236382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018508, -0.229975, 0.973020,
		0.880578, 0.464670, 0.093076,
		-0.473539, 0.855098, 0.211111,
		29.858469, 35.832527, 39.299713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329237, 35.255711, 39.891972>,  <30.189945, 35.233955, 39.151936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329237, 35.255711, 39.891972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.024309, 35.508068, 39.834236>,  <29.841352, 35.659485, 39.799595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.024309, 35.508068, 39.834236>,  <30.329237, 35.255711, 39.891972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024309, 35.508068, 39.834236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243427, -0.072854, 0.967179,
		0.599675, 0.772438, 0.209115,
		-0.762321, 0.630898, -0.144343,
		29.795612, 35.697338, 39.790932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213036, 35.824440, 40.466637>,  <30.329237, 35.255711, 39.891972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213036, 35.824440, 40.466637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.879095, 35.701416, 40.284019>,  <29.678730, 35.627602, 40.174450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.879095, 35.701416, 40.284019>,  <30.213036, 35.824440, 40.466637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879095, 35.701416, 40.284019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456632, -0.076257, 0.886381,
		-0.307426, 0.948469, -0.076777,
		-0.834851, -0.307556, -0.456545,
		29.628639, 35.609150, 40.147057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458229, 36.427216, 40.891396>,  <30.213036, 35.824440, 40.466637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458229, 36.427216, 40.891396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.498856, 36.064854, 41.055840>,  <30.523232, 35.847435, 41.154507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.498856, 36.064854, 41.055840>,  <30.458229, 36.427216, 40.891396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498856, 36.064854, 41.055840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841501, 0.298652, 0.450204,
		-0.530623, 0.300226, 0.792656,
		0.101565, -0.905909, 0.411112,
		30.529325, 35.793079, 41.179173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423859, 36.458088, 41.639519>,  <30.458229, 36.427216, 40.891396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423859, 36.458088, 41.639519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.654263, 36.167049, 41.490482>,  <30.792505, 35.992428, 41.401062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.654263, 36.167049, 41.490482>,  <30.423859, 36.458088, 41.639519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654263, 36.167049, 41.490482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768254, 0.326114, 0.550850,
		-0.279288, -0.603537, 0.746821,
		0.576007, -0.727593, -0.372590,
		30.827065, 35.948772, 41.378704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639938, 36.090343, 42.227058>,  <30.423859, 36.458088, 41.639519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639938, 36.090343, 42.227058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.907055, 36.096867, 41.929390>,  <31.067324, 36.100780, 41.750790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.907055, 36.096867, 41.929390>,  <30.639938, 36.090343, 42.227058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907055, 36.096867, 41.929390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670005, 0.422366, 0.610491,
		0.324269, -0.906278, 0.271126,
		0.667789, 0.016308, -0.744172,
		31.107391, 36.101761, 41.706139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734444, 36.305241, 42.955551>,  <30.639938, 36.090343, 42.227058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734444, 36.305241, 42.955551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.834164, 36.400711, 43.330971>,  <30.893995, 36.457993, 43.556225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.834164, 36.400711, 43.330971>,  <30.734444, 36.305241, 42.955551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834164, 36.400711, 43.330971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966074, -0.128796, -0.223857,
		0.067451, 0.962519, -0.262691,
		0.249300, 0.238680, 0.938553,
		30.908955, 36.472317, 43.612537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216850, 36.930077, 42.989418>,  <30.734444, 36.305241, 42.955551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216850, 36.930077, 42.989418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.283880, 36.719837, 43.323044>,  <31.324099, 36.593693, 43.523220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.283880, 36.719837, 43.323044>,  <31.216850, 36.930077, 42.989418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283880, 36.719837, 43.323044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959858, -0.106035, -0.259670,
		0.224922, 0.844099, 0.486731,
		0.167577, -0.525598, 0.834065,
		31.334154, 36.562157, 43.573265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631163, 37.319077, 43.527294>,  <31.216850, 36.930077, 42.989418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631163, 37.319077, 43.527294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.678665, 36.923630, 43.490341>,  <31.707167, 36.686363, 43.468170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.678665, 36.923630, 43.490341>,  <31.631163, 37.319077, 43.527294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678665, 36.923630, 43.490341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974054, 0.134047, -0.182348,
		0.192656, -0.068328, 0.978885,
		0.118757, -0.988617, -0.092380,
		31.714293, 36.627045, 43.462627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949999, 37.267494, 44.176899>,  <31.631163, 37.319077, 43.527294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949999, 37.267494, 44.176899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.149395, 37.593628, 44.294704>,  <32.269032, 37.789307, 44.365387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.149395, 37.593628, 44.294704>,  <31.949999, 37.267494, 44.176899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149395, 37.593628, 44.294704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451313, -0.045978, 0.891180,
		0.740152, -0.577160, 0.345052,
		0.498489, 0.815336, 0.294511,
		32.298943, 37.838230, 44.383057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412483, 36.988876, 44.652039>,  <31.949999, 37.267494, 44.176899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412483, 36.988876, 44.652039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.396084, 37.344345, 44.469353>,  <31.386244, 37.557625, 44.359741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.396084, 37.344345, 44.469353>,  <31.412483, 36.988876, 44.652039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396084, 37.344345, 44.469353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207278, 0.439587, 0.873956,
		0.977423, 0.130497, 0.166180,
		-0.040998, 0.888669, -0.456712,
		31.383785, 37.610947, 44.332340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820171, 37.645741, 44.985176>,  <31.412483, 36.988876, 44.652039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820171, 37.645741, 44.985176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.482363, 37.761742, 44.805096>,  <31.279678, 37.831341, 44.697048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.482363, 37.761742, 44.805096>,  <31.820171, 37.645741, 44.985176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482363, 37.761742, 44.805096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306643, 0.427343, 0.850499,
		0.439039, 0.856315, -0.271972,
		-0.844520, 0.290004, -0.450203,
		31.229006, 37.848743, 44.670036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190811, 37.406078, 45.395351>,  <31.820171, 37.645741, 44.985176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190811, 37.406078, 45.395351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.940189, 37.177986, 45.607864>,  <30.789816, 37.041130, 45.735374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.940189, 37.177986, 45.607864>,  <31.190811, 37.406078, 45.395351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940189, 37.177986, 45.607864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377628, 0.374204, 0.846976,
		-0.681781, 0.731306, -0.019125,
		-0.626556, -0.570230, 0.531287,
		30.752222, 37.006916, 45.767250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613176, 37.749855, 45.702057>,  <31.190811, 37.406078, 45.395351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613176, 37.749855, 45.702057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.727785, 37.429295, 45.912071>,  <30.796551, 37.236958, 46.038082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.727785, 37.429295, 45.912071>,  <30.613176, 37.749855, 45.702057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727785, 37.429295, 45.912071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312536, 0.596220, 0.739489,
		-0.905664, -0.047784, 0.421295,
		0.286520, -0.801398, 0.525040,
		30.813742, 37.188873, 46.069584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265696, 37.704605, 46.311798>,  <30.613176, 37.749855, 45.702057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265696, 37.704605, 46.311798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.627485, 37.540844, 46.359653>,  <30.844559, 37.442589, 46.388367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.627485, 37.540844, 46.359653>,  <30.265696, 37.704605, 46.311798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627485, 37.540844, 46.359653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172604, 0.607833, 0.775078,
		-0.390042, -0.680388, 0.620435,
		0.904475, -0.409402, 0.119642,
		30.898829, 37.418022, 46.395546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493061, 37.465252, 47.005306>,  <30.265696, 37.704605, 46.311798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493061, 37.465252, 47.005306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.807013, 37.594757, 46.793972>,  <30.995384, 37.672462, 46.667171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.807013, 37.594757, 46.793972>,  <30.493061, 37.465252, 47.005306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807013, 37.594757, 46.793972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108106, 0.768014, 0.631243,
		0.610144, -0.552566, 0.567798,
		0.784880, 0.323766, -0.528335,
		31.042477, 37.691887, 46.635471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167105, 37.662365, 47.401043>,  <30.493061, 37.465252, 47.005306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167105, 37.662365, 47.401043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.098743, 37.879829, 47.072353>,  <31.057726, 38.010307, 46.875141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.098743, 37.879829, 47.072353>,  <31.167105, 37.662365, 47.401043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098743, 37.879829, 47.072353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056349, 0.838019, 0.542723,
		0.983675, 0.046449, -0.173854,
		-0.170902, 0.543660, -0.821722,
		31.047472, 38.042927, 46.825836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773655, 37.263908, 47.490612>,  <31.167105, 37.662365, 47.401043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773655, 37.263908, 47.490612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.539234, 37.049534, 47.733696>,  <31.398582, 36.920910, 47.879547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.539234, 37.049534, 47.733696>,  <31.773655, 37.263908, 47.490612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539234, 37.049534, 47.733696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430333, -0.841359, -0.326999,
		0.686554, 0.069880, 0.723713,
		-0.586052, -0.535940, 0.607710,
		31.363419, 36.888752, 47.916008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149673, 36.742096, 47.777424>,  <31.773655, 37.263908, 47.490612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149673, 36.742096, 47.777424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.770000, 36.623013, 47.818256>,  <31.542196, 36.551563, 47.842758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.770000, 36.623013, 47.818256>,  <32.149673, 36.742096, 47.777424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770000, 36.623013, 47.818256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264373, -0.930207, -0.254600,
		0.170756, -0.214674, 0.961643,
		-0.949184, -0.297706, 0.102084,
		31.485245, 36.533699, 47.848881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027203, 36.171757, 48.283527>,  <32.149673, 36.742096, 47.777424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027203, 36.171757, 48.283527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.773827, 36.153645, 47.974541>,  <31.621801, 36.142776, 47.789146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.773827, 36.153645, 47.974541>,  <32.027203, 36.171757, 48.283527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773827, 36.153645, 47.974541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390646, -0.880444, -0.268726,
		-0.667947, -0.471983, 0.575394,
		-0.633436, -0.045280, -0.772468,
		31.583796, 36.140060, 47.742802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680571, 35.567268, 48.367683>,  <32.027203, 36.171757, 48.283527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680571, 35.567268, 48.367683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.685225, 35.695839, 47.988937>,  <31.688017, 35.772980, 47.761692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.685225, 35.695839, 47.988937>,  <31.680571, 35.567268, 48.367683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685225, 35.695839, 47.988937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371798, -0.880426, -0.294306,
		-0.928241, -0.348617, -0.129749,
		0.011634, 0.321427, -0.946863,
		31.688715, 35.792267, 47.704880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334145, 35.563663, 49.086552>,  <31.680571, 35.567268, 48.367683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334145, 35.563663, 49.086552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.535643, 35.304131, 49.314674>,  <31.656542, 35.148411, 49.451550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.535643, 35.304131, 49.314674>,  <31.334145, 35.563663, 49.086552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535643, 35.304131, 49.314674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826702, 0.170565, -0.536164,
		0.250605, 0.741568, 0.622313,
		0.503747, -0.648833, 0.570311,
		31.686768, 35.109482, 49.485767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865494, 35.943649, 49.335770>,  <31.334145, 35.563663, 49.086552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865494, 35.943649, 49.335770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.982948, 35.561718, 49.317551>,  <32.053421, 35.332558, 49.306618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.982948, 35.561718, 49.317551>,  <31.865494, 35.943649, 49.335770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982948, 35.561718, 49.317551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890465, 0.290551, -0.350218,
		0.347634, 0.062275, 0.935560,
		0.293637, -0.954831, -0.045552,
		32.071041, 35.275269, 49.303886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601505, 35.976196, 49.512749>,  <31.865494, 35.943649, 49.335770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601505, 35.976196, 49.512749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.591770, 35.613533, 49.344280>,  <32.585930, 35.395935, 49.243198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.591770, 35.613533, 49.344280>,  <32.601505, 35.976196, 49.512749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591770, 35.613533, 49.344280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954681, 0.103929, -0.278895,
		0.296634, -0.408867, 0.863039,
		-0.024336, -0.906657, -0.421167,
		32.584469, 35.341537, 49.217930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242851, 35.650322, 49.676239>,  <32.601505, 35.976196, 49.512749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242851, 35.650322, 49.676239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097946, 35.422672, 49.380978>,  <33.011002, 35.286083, 49.203823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097946, 35.422672, 49.380978>,  <33.242851, 35.650322, 49.676239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097946, 35.422672, 49.380978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927171, -0.301157, -0.222840,
		-0.095477, -0.765119, 0.636771,
		-0.362267, -0.569120, -0.738150,
		32.989265, 35.251938, 49.159534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514523, 34.991535, 49.817604>,  <33.242851, 35.650322, 49.676239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514523, 34.991535, 49.817604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.425762, 35.029697, 49.429447>,  <33.372505, 35.052597, 49.196552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.425762, 35.029697, 49.429447>,  <33.514523, 34.991535, 49.817604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425762, 35.029697, 49.429447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959379, -0.156448, -0.234766,
		-0.174215, -0.983067, -0.056818,
		-0.221902, 0.095410, -0.970390,
		33.359192, 35.058319, 49.138329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041172, 34.463013, 49.465145>,  <33.514523, 34.991535, 49.817604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041172, 34.463013, 49.465145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.893192, 34.712704, 49.189907>,  <33.804405, 34.862518, 49.024765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.893192, 34.712704, 49.189907>,  <34.041172, 34.463013, 49.465145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893192, 34.712704, 49.189907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915717, 0.119972, -0.383497,
		-0.156836, -0.771978, -0.615998,
		-0.369953, 0.624225, -0.688097,
		33.782207, 34.899971, 48.983479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434788, 34.297653, 48.797310>,  <34.041172, 34.463013, 49.465145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434788, 34.297653, 48.797310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.288315, 34.666473, 48.747124>,  <34.200432, 34.887764, 48.717014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.288315, 34.666473, 48.747124>,  <34.434788, 34.297653, 48.797310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288315, 34.666473, 48.747124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825597, 0.259711, -0.500940,
		-0.429307, -0.287014, -0.856340,
		-0.366178, 0.922048, -0.125462,
		34.178463, 34.943089, 48.709484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469280, 34.442451, 48.102169>,  <34.434788, 34.297653, 48.797310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469280, 34.442451, 48.102169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476433, 34.799248, 48.282848>,  <34.480724, 35.013325, 48.391258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476433, 34.799248, 48.282848>,  <34.469280, 34.442451, 48.102169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476433, 34.799248, 48.282848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942686, 0.135513, -0.304925,
		-0.333202, 0.431266, -0.838443,
		0.017884, 0.891990, 0.451702,
		34.481796, 35.066845, 48.418358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805656, 34.820061, 47.675022>,  <34.469280, 34.442451, 48.102169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805656, 34.820061, 47.675022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.814308, 35.085045, 47.974537>,  <34.819500, 35.244034, 48.154243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.814308, 35.085045, 47.974537>,  <34.805656, 34.820061, 47.675022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814308, 35.085045, 47.974537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920642, 0.278822, -0.273268,
		-0.389807, 0.695273, -0.603859,
		0.021627, 0.662461, 0.748784,
		34.820797, 35.283783, 48.199173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968391, 35.481567, 47.386139>,  <34.805656, 34.820061, 47.675022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968391, 35.481567, 47.386139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.070782, 35.475441, 47.772762>,  <35.132217, 35.471764, 48.004738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.070782, 35.475441, 47.772762>,  <34.968391, 35.481567, 47.386139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070782, 35.475441, 47.772762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939931, 0.237542, -0.245159,
		-0.225844, 0.971257, 0.075201,
		0.255975, -0.015316, 0.966562,
		35.147575, 35.470848, 48.062733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367252, 36.099796, 47.400124>,  <34.968391, 35.481567, 47.386139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367252, 36.099796, 47.400124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436863, 35.858425, 47.711403>,  <35.478630, 35.713604, 47.898170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436863, 35.858425, 47.711403>,  <35.367252, 36.099796, 47.400124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436863, 35.858425, 47.711403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977501, 0.201507, -0.062350,
		-0.119189, 0.771540, 0.624916,
		0.174031, -0.603424, 0.778198,
		35.489071, 35.677399, 47.944862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572899, 36.572582, 47.901371>,  <35.367252, 36.099796, 47.400124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572899, 36.572582, 47.901371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720032, 36.208553, 47.977753>,  <35.808311, 35.990135, 48.023582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720032, 36.208553, 47.977753>,  <35.572899, 36.572582, 47.901371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720032, 36.208553, 47.977753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922975, 0.382317, 0.044168,
		-0.113201, 0.159998, 0.980605,
		0.367835, -0.910074, 0.190953,
		35.830383, 35.935532, 48.035038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164055, 36.647564, 48.443745>,  <35.572899, 36.572582, 47.901371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164055, 36.647564, 48.443745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.228584, 36.288742, 48.279175>,  <36.267303, 36.073448, 48.180431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.228584, 36.288742, 48.279175>,  <36.164055, 36.647564, 48.443745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228584, 36.288742, 48.279175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984759, 0.118860, 0.126971,
		-0.064997, -0.425642, 0.902554,
		0.161322, -0.897051, -0.411429,
		36.276981, 36.019627, 48.155746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658577, 36.365723, 48.840866>,  <36.164055, 36.647564, 48.443745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658577, 36.365723, 48.840866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.668240, 36.151230, 48.503376>,  <36.674038, 36.022533, 48.300880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.668240, 36.151230, 48.503376>,  <36.658577, 36.365723, 48.840866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668240, 36.151230, 48.503376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985848, 0.152825, -0.068903,
		0.165891, -0.830121, 0.532334,
		0.024156, -0.536231, -0.843725,
		36.675488, 35.990360, 48.250259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240932, 35.913574, 48.970230>,  <36.658577, 36.365723, 48.840866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240932, 35.913574, 48.970230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.157860, 35.981918, 48.584969>,  <37.108017, 36.022926, 48.353809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.157860, 35.981918, 48.584969>,  <37.240932, 35.913574, 48.970230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157860, 35.981918, 48.584969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948743, 0.274979, -0.155798,
		0.238228, -0.946147, -0.219211,
		-0.207686, 0.170859, -0.963158,
		37.095554, 36.033176, 48.296021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610188, 35.452541, 48.517643>,  <37.240932, 35.913574, 48.970230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610188, 35.452541, 48.517643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.550896, 35.789318, 48.310120>,  <37.515320, 35.991383, 48.185604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.550896, 35.789318, 48.310120>,  <37.610188, 35.452541, 48.517643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550896, 35.789318, 48.310120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979528, 0.052740, -0.194277,
		-0.136208, -0.536988, -0.832521,
		-0.148232, 0.841939, -0.518812,
		37.506428, 36.041901, 48.154476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105885, 35.533344, 47.990108>,  <37.610188, 35.452541, 48.517643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105885, 35.533344, 47.990108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007431, 35.920448, 48.011478>,  <37.948360, 36.152710, 48.024300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007431, 35.920448, 48.011478>,  <38.105885, 35.533344, 47.990108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007431, 35.920448, 48.011478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945056, 0.251863, -0.208409,
		-0.215146, -0.000809, -0.976582,
		-0.246133, 0.967763, 0.053423,
		37.933590, 36.210777, 48.027504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426529, 34.875515, 47.676346>,  <38.105885, 35.533344, 47.990108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426529, 34.875515, 47.676346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367973, 35.228031, 47.496616>,  <38.332840, 35.439541, 47.388779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367973, 35.228031, 47.496616>,  <38.426529, 34.875515, 47.676346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367973, 35.228031, 47.496616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151549, 0.428878, 0.890560,
		0.977549, 0.198467, 0.070774,
		-0.146394, 0.881292, -0.449326,
		38.324055, 35.492420, 47.361820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901501, 34.649788, 48.234013>,  <38.426529, 34.875515, 47.676346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901501, 34.649788, 48.234013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063904, 34.634804, 48.599255>,  <39.161346, 34.625813, 48.818398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063904, 34.634804, 48.599255>,  <38.901501, 34.649788, 48.234013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063904, 34.634804, 48.599255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383721, -0.913803, 0.133129,
		0.829407, -0.404427, -0.385387,
		0.406008, -0.037463, 0.913101,
		39.185707, 34.623566, 48.873184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460651, 34.103500, 48.234684>,  <38.901501, 34.649788, 48.234013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460651, 34.103500, 48.234684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253319, 34.142048, 48.574577>,  <39.128918, 34.165176, 48.778511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253319, 34.142048, 48.574577>,  <39.460651, 34.103500, 48.234684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253319, 34.142048, 48.574577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233604, -0.971796, -0.032280,
		0.822655, -0.215233, 0.526226,
		-0.518332, 0.096373, 0.849732,
		39.097820, 34.170959, 48.829498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693832, 33.656544, 48.734283>,  <39.460651, 34.103500, 48.234684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693832, 33.656544, 48.734283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.307762, 33.723099, 48.815029>,  <39.076118, 33.763031, 48.863476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.307762, 33.723099, 48.815029>,  <39.693832, 33.656544, 48.734283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307762, 33.723099, 48.815029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140139, -0.980455, 0.138088,
		0.220899, 0.104990, 0.969629,
		-0.965176, 0.166386, 0.201869,
		39.018208, 33.773014, 48.875591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637711, 33.433765, 49.440987>,  <39.693832, 33.656544, 48.734283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637711, 33.433765, 49.440987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.303989, 33.406303, 49.222179>,  <39.103756, 33.389828, 49.090893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.303989, 33.406303, 49.222179>,  <39.637711, 33.433765, 49.440987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303989, 33.406303, 49.222179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102146, -0.955787, 0.275750,
		-0.541767, 0.285934, 0.790399,
		-0.834299, -0.068656, -0.547021,
		39.053699, 33.385708, 49.058075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024204, 33.190086, 49.818569>,  <39.637711, 33.433765, 49.440987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024204, 33.190086, 49.818569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.941315, 33.117989, 49.433952>,  <38.891582, 33.074730, 49.203182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.941315, 33.117989, 49.433952>,  <39.024204, 33.190086, 49.818569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941315, 33.117989, 49.433952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234419, -0.945098, 0.227679,
		-0.949792, 0.272585, 0.153596,
		-0.207225, -0.180242, -0.961546,
		38.879147, 33.063915, 49.145489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431435, 33.444534, 49.469280>,  <39.024204, 33.190086, 49.818569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431435, 33.444534, 49.469280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112980, 33.202591, 49.476475>,  <37.921909, 33.057426, 49.480793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112980, 33.202591, 49.476475>,  <38.431435, 33.444534, 49.469280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112980, 33.202591, 49.476475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069014, 0.120287, 0.990337,
		-0.601173, 0.787199, -0.137508,
		-0.796133, -0.604854, 0.017986,
		37.874142, 33.021133, 49.481869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360493, 33.221470, 50.168270>,  <38.431435, 33.444534, 49.469280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360493, 33.221470, 50.168270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.003170, 33.131062, 50.012875>,  <37.788776, 33.076817, 49.919636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.003170, 33.131062, 50.012875>,  <38.360493, 33.221470, 50.168270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003170, 33.131062, 50.012875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363921, -0.143512, 0.920307,
		-0.263759, 0.963494, 0.045947,
		-0.893304, -0.226018, -0.388488,
		37.735180, 33.063255, 49.896328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873318, 33.754669, 50.417984>,  <38.360493, 33.221470, 50.168270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873318, 33.754669, 50.417984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.640419, 33.446175, 50.315079>,  <37.500679, 33.261078, 50.253338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.640419, 33.446175, 50.315079>,  <37.873318, 33.754669, 50.417984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640419, 33.446175, 50.315079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557122, 0.148034, 0.817130,
		-0.592117, 0.619097, -0.515865,
		-0.582248, -0.771236, -0.257259,
		37.465744, 33.214806, 50.237900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063396, 33.975861, 50.405914>,  <37.873318, 33.754669, 50.417984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063396, 33.975861, 50.405914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.086464, 33.579620, 50.455517>,  <37.100304, 33.341877, 50.485279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.086464, 33.579620, 50.455517>,  <37.063396, 33.975861, 50.405914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086464, 33.579620, 50.455517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439428, 0.086347, 0.894118,
		-0.896424, -0.106060, -0.430319,
		0.057673, -0.990604, 0.124010,
		37.103767, 33.282440, 50.492722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390152, 33.734341, 50.710854>,  <37.063396, 33.975861, 50.405914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390152, 33.734341, 50.710854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.674557, 33.461773, 50.780289>,  <36.845200, 33.298233, 50.821949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.674557, 33.461773, 50.780289>,  <36.390152, 33.734341, 50.710854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674557, 33.461773, 50.780289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282008, -0.050183, 0.958099,
		-0.644154, -0.730173, -0.227846,
		0.711012, -0.681417, 0.173589,
		36.887859, 33.257347, 50.832367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074902, 33.226849, 51.072918>,  <36.390152, 33.734341, 50.710854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074902, 33.226849, 51.072918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.460724, 33.181545, 51.168259>,  <36.692215, 33.154362, 51.225464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.460724, 33.181545, 51.168259>,  <36.074902, 33.226849, 51.072918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460724, 33.181545, 51.168259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256002, -0.182396, 0.949313,
		-0.064044, -0.976680, -0.204925,
		0.964552, -0.113259, 0.238351,
		36.750088, 33.147568, 51.239765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172947, 32.521366, 51.381016>,  <36.074902, 33.226849, 51.072918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172947, 32.521366, 51.381016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.474407, 32.753300, 51.504818>,  <36.655285, 32.892460, 51.579102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.474407, 32.753300, 51.504818>,  <36.172947, 32.521366, 51.381016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474407, 32.753300, 51.504818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235955, -0.200827, 0.950786,
		0.613458, -0.789594, -0.014539,
		0.753654, 0.579836, 0.309508,
		36.700504, 32.927250, 51.597672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408623, 32.204502, 52.015427>,  <36.172947, 32.521366, 51.381016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408623, 32.204502, 52.015427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.574158, 32.568027, 52.036560>,  <36.673477, 32.786144, 52.049240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.574158, 32.568027, 52.036560>,  <36.408623, 32.204502, 52.015427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574158, 32.568027, 52.036560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292814, 0.077932, 0.952988,
		0.861973, -0.409854, 0.298365,
		0.413839, 0.908816, 0.052835,
		36.698311, 32.840672, 52.052410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721523, 32.152668, 52.710018>,  <36.408623, 32.204502, 52.015427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721523, 32.152668, 52.710018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675575, 32.536186, 52.606087>,  <36.648006, 32.766296, 52.543728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675575, 32.536186, 52.606087>,  <36.721523, 32.152668, 52.710018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675575, 32.536186, 52.606087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380126, 0.199229, 0.903223,
		0.917774, 0.202518, 0.341580,
		-0.114866, 0.958798, -0.259830,
		36.641117, 32.823826, 52.528137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874371, 32.528904, 53.303337>,  <36.721523, 32.152668, 52.710018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874371, 32.528904, 53.303337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670742, 32.793098, 53.082573>,  <36.548565, 32.951614, 52.950115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670742, 32.793098, 53.082573>,  <36.874371, 32.528904, 53.303337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670742, 32.793098, 53.082573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443870, 0.347929, 0.825787,
		0.737448, 0.665359, 0.116051,
		-0.509067, 0.660487, -0.551912,
		36.518021, 32.991245, 52.917000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480183, 32.767197, 53.751877>,  <36.874371, 32.528904, 53.303337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480183, 32.767197, 53.751877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.332294, 33.008896, 53.469547>,  <36.243561, 33.153915, 53.300148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.332294, 33.008896, 53.469547>,  <36.480183, 32.767197, 53.751877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332294, 33.008896, 53.469547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678710, 0.343169, 0.649297,
		0.634556, 0.719109, 0.283235,
		-0.369718, 0.604250, -0.705826,
		36.221378, 33.190170, 53.257801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603046, 33.521729, 53.951023>,  <36.480183, 32.767197, 53.751877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603046, 33.521729, 53.951023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.288986, 33.481785, 53.706539>,  <36.100552, 33.457817, 53.559849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.288986, 33.481785, 53.706539>,  <36.603046, 33.521729, 53.951023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288986, 33.481785, 53.706539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588082, 0.429647, 0.685247,
		0.194174, 0.897459, -0.396062,
		-0.785147, -0.099860, -0.611205,
		36.053444, 33.451828, 53.523178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306278, 34.200859, 53.805687>,  <36.603046, 33.521729, 53.951023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306278, 34.200859, 53.805687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.024265, 33.921528, 53.756256>,  <35.855057, 33.753929, 53.726597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.024265, 33.921528, 53.756256>,  <36.306278, 34.200859, 53.805687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024265, 33.921528, 53.756256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539976, 0.415644, 0.731892,
		-0.459736, 0.582735, -0.670122,
		-0.705031, -0.698327, -0.123577,
		35.812756, 33.712029, 53.719185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822010, 34.626175, 53.936192>,  <36.306278, 34.200859, 53.805687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822010, 34.626175, 53.936192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668648, 34.257061, 53.951561>,  <35.576630, 34.035595, 53.960785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668648, 34.257061, 53.951561>,  <35.822010, 34.626175, 53.936192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668648, 34.257061, 53.951561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679514, 0.310019, 0.664943,
		-0.625510, 0.228828, -0.745905,
		-0.383402, -0.922782, 0.038428,
		35.553627, 33.980225, 53.963089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161289, 34.720860, 53.935654>,  <35.822010, 34.626175, 53.936192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161289, 34.720860, 53.935654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.241508, 34.363907, 54.097363>,  <35.289639, 34.149734, 54.194389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.241508, 34.363907, 54.097363>,  <35.161289, 34.720860, 53.935654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241508, 34.363907, 54.097363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577560, 0.225626, 0.784549,
		-0.791332, -0.390830, -0.470156,
		0.200546, -0.892381, 0.404272,
		35.301674, 34.096191, 54.218643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539093, 34.291862, 54.048927>,  <35.161289, 34.720860, 53.935654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539093, 34.291862, 54.048927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.828720, 34.194298, 54.306988>,  <35.002499, 34.135757, 54.461826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.828720, 34.194298, 54.306988>,  <34.539093, 34.291862, 54.048927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828720, 34.194298, 54.306988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605691, 0.222587, 0.763933,
		-0.329938, -0.943907, 0.013432,
		0.724072, -0.243915, 0.645156,
		35.045940, 34.121124, 54.500534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145939, 34.333321, 54.640686>,  <34.539093, 34.291862, 54.048927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145939, 34.333321, 54.640686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.475082, 34.210133, 54.831707>,  <34.672569, 34.136219, 54.946320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.475082, 34.210133, 54.831707>,  <34.145939, 34.333321, 54.640686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475082, 34.210133, 54.831707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470146, 0.103035, 0.876554,
		-0.319160, -0.945799, -0.060010,
		0.822860, -0.307975, 0.477548,
		34.721939, 34.117741, 54.974972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946247, 33.903778, 55.118332>,  <34.145939, 34.333321, 54.640686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946247, 33.903778, 55.118332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.298763, 34.051193, 55.236652>,  <34.510273, 34.139645, 55.307644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.298763, 34.051193, 55.236652>,  <33.946247, 33.903778, 55.118332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298763, 34.051193, 55.236652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382426, 0.188469, 0.904561,
		0.277621, -0.910305, 0.307037,
		0.881292, 0.368544, 0.295802,
		34.563152, 34.161755, 55.325394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104168, 33.620266, 55.890007>,  <33.946247, 33.903778, 55.118332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104168, 33.620266, 55.890007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.314949, 33.956326, 55.838680>,  <34.441418, 34.157963, 55.807884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.314949, 33.956326, 55.838680>,  <34.104168, 33.620266, 55.890007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314949, 33.956326, 55.838680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238778, 0.291253, 0.926368,
		0.815663, -0.457512, 0.354086,
		0.526953, 0.840152, -0.128321,
		34.473034, 34.208370, 55.800182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401218, 33.721157, 56.602421>,  <34.104168, 33.620266, 55.890007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401218, 33.721157, 56.602421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.428715, 34.062500, 56.395714>,  <34.445213, 34.267307, 56.271690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.428715, 34.062500, 56.395714>,  <34.401218, 33.721157, 56.602421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428715, 34.062500, 56.395714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342106, 0.506750, 0.791308,
		0.937144, 0.122393, 0.326775,
		0.068743, 0.853361, -0.516769,
		34.449337, 34.318508, 56.240685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553856, 34.268314, 57.065105>,  <34.401218, 33.721157, 56.602421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553856, 34.268314, 57.065105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.407894, 34.468395, 56.750999>,  <34.320316, 34.588444, 56.562534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.407894, 34.468395, 56.750999>,  <34.553856, 34.268314, 57.065105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407894, 34.468395, 56.750999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586785, 0.531278, 0.611087,
		0.722861, 0.683771, 0.099645,
		-0.364904, 0.500201, -0.785267,
		34.298424, 34.618454, 56.515419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551334, 35.013958, 57.277138>,  <34.553856, 34.268314, 57.065105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551334, 35.013958, 57.277138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.321434, 34.976818, 56.951920>,  <34.183495, 34.954536, 56.756790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.321434, 34.976818, 56.951920>,  <34.551334, 35.013958, 57.277138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321434, 34.976818, 56.951920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688335, 0.592163, 0.418973,
		0.442554, 0.800452, -0.404257,
		-0.574753, -0.092846, -0.813043,
		34.149010, 34.948963, 56.708008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416542, 35.666077, 56.960876>,  <34.551334, 35.013958, 57.277138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416542, 35.666077, 56.960876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.102009, 35.442127, 56.856396>,  <33.913288, 35.307758, 56.793709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.102009, 35.442127, 56.856396>,  <34.416542, 35.666077, 56.960876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102009, 35.442127, 56.856396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600590, 0.593626, 0.535630,
		-0.144830, 0.578056, -0.803041,
		-0.786331, -0.559874, -0.261200,
		33.866108, 35.274166, 56.778034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927296, 36.109650, 57.009670>,  <34.416542, 35.666077, 56.960876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927296, 36.109650, 57.009670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712772, 35.772274, 56.997154>,  <33.584057, 35.569847, 56.989643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712772, 35.772274, 56.997154>,  <33.927296, 36.109650, 57.009670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712772, 35.772274, 56.997154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719788, 0.437697, 0.538819,
		-0.440765, 0.311498, -0.841840,
		-0.536312, -0.843439, -0.031291,
		33.551880, 35.519241, 56.987766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147869, 36.281151, 56.744488>,  <33.927296, 36.109650, 57.009670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147869, 36.281151, 56.744488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.135414, 35.941509, 56.955410>,  <33.127941, 35.737724, 57.081963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.135414, 35.941509, 56.955410>,  <33.147869, 36.281151, 56.744488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135414, 35.941509, 56.955410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766758, 0.358718, 0.532356,
		-0.641181, -0.387744, -0.662225,
		-0.031134, -0.849103, 0.527309,
		33.126076, 35.686779, 57.113602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364742, 36.143082, 56.792831>,  <33.147869, 36.281151, 56.744488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364742, 36.143082, 56.792831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.502216, 35.930286, 57.102379>,  <32.584702, 35.802608, 57.288105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.502216, 35.930286, 57.102379>,  <32.364742, 36.143082, 56.792831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502216, 35.930286, 57.102379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558223, 0.546933, 0.623900,
		-0.755158, -0.646418, -0.108992,
		0.343689, -0.531985, 0.773866,
		32.605324, 35.770691, 57.334538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809727, 35.930237, 57.173161>,  <32.364742, 36.143082, 56.792831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809727, 35.930237, 57.173161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.105846, 35.874939, 57.436325>,  <32.283520, 35.841763, 57.594223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.105846, 35.874939, 57.436325>,  <31.809727, 35.930237, 57.173161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105846, 35.874939, 57.436325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595196, 0.320227, 0.737019,
		-0.312566, -0.937200, 0.154784,
		0.740300, -0.138241, 0.657910,
		32.327938, 35.833466, 57.633698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515879, 35.553928, 57.758583>,  <31.809727, 35.930237, 57.173161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515879, 35.553928, 57.758583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.854733, 35.711357, 57.901394>,  <32.058044, 35.805813, 57.987080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.854733, 35.711357, 57.901394>,  <31.515879, 35.553928, 57.758583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854733, 35.711357, 57.901394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503535, 0.379931, 0.775954,
		0.169747, -0.837112, 0.520028,
		0.847136, 0.393568, 0.357023,
		32.108871, 35.829430, 58.008499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621120, 35.382999, 58.425594>,  <31.515879, 35.553928, 57.758583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621120, 35.382999, 58.425594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.855000, 35.704838, 58.384113>,  <31.995327, 35.897942, 58.359222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.855000, 35.704838, 58.384113>,  <31.621120, 35.382999, 58.425594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855000, 35.704838, 58.384113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427470, 0.414211, 0.803554,
		0.689493, -0.425503, 0.586129,
		0.584696, 0.804597, -0.103705,
		32.030407, 35.946217, 58.353001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826565, 35.583439, 59.041683>,  <31.621120, 35.382999, 58.425594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826565, 35.583439, 59.041683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.886759, 35.931240, 58.853504>,  <31.922876, 36.139919, 58.740597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.886759, 35.931240, 58.853504>,  <31.826565, 35.583439, 59.041683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886759, 35.931240, 58.853504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380072, 0.490177, 0.784392,
		0.912633, 0.060764, 0.404238,
		0.150486, 0.869502, -0.470447,
		31.931904, 36.192089, 58.712372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096149, 35.980145, 59.594685>,  <31.826565, 35.583439, 59.041683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096149, 35.980145, 59.594685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952728, 36.203945, 59.295780>,  <31.866676, 36.338226, 59.116440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952728, 36.203945, 59.295780>,  <32.096149, 35.980145, 59.594685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952728, 36.203945, 59.295780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486456, 0.571220, 0.661112,
		0.796744, 0.600551, 0.067363,
		-0.358552, 0.559506, -0.747257,
		31.845163, 36.371796, 59.071602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362328, 36.590046, 59.765392>,  <32.096149, 35.980145, 59.594685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362328, 36.590046, 59.765392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.062248, 36.651699, 59.508194>,  <31.882200, 36.688690, 59.353874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.062248, 36.651699, 59.508194>,  <32.362328, 36.590046, 59.765392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062248, 36.651699, 59.508194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425468, 0.631856, 0.647870,
		0.506141, 0.759605, -0.408437,
		-0.750199, 0.154137, -0.642996,
		31.837189, 36.697941, 59.315296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056511, 37.121124, 59.962143>,  <32.362328, 36.590046, 59.765392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056511, 37.121124, 59.962143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.763720, 37.025009, 59.707119>,  <31.588045, 36.967342, 59.554104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.763720, 37.025009, 59.707119>,  <32.056511, 37.121124, 59.962143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763720, 37.025009, 59.707119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597723, 0.675595, 0.431622,
		0.327018, 0.697018, -0.638141,
		-0.731974, -0.240284, -0.637556,
		31.544127, 36.952923, 59.515854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806053, 37.749542, 59.744019>,  <32.056511, 37.121124, 59.962143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806053, 37.749542, 59.744019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.502838, 37.492649, 59.698563>,  <31.320910, 37.338512, 59.671288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.502838, 37.492649, 59.698563>,  <31.806053, 37.749542, 59.744019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502838, 37.492649, 59.698563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584151, 0.591048, 0.556264,
		-0.290083, 0.488054, -0.823198,
		-0.758036, -0.642235, -0.113644,
		31.275427, 37.299980, 59.664471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187813, 38.128914, 59.923035>,  <31.806053, 37.749542, 59.744019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187813, 38.128914, 59.923035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.047108, 37.754482, 59.924995>,  <30.962685, 37.529823, 59.926170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.047108, 37.754482, 59.924995>,  <31.187813, 38.128914, 59.923035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047108, 37.754482, 59.924995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764081, 0.290147, 0.576190,
		-0.540779, 0.198939, -0.817301,
		-0.351764, -0.936076, 0.004899,
		30.941578, 37.473660, 59.926464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400530, 38.200359, 59.874306>,  <31.187813, 38.128914, 59.923035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400530, 38.200359, 59.874306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.500332, 37.846275, 60.031349>,  <30.560213, 37.633823, 60.125576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.500332, 37.846275, 60.031349>,  <30.400530, 38.200359, 59.874306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500332, 37.846275, 60.031349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706066, 0.111171, 0.699365,
		-0.662735, -0.451704, -0.597282,
		0.249505, -0.885215, 0.392610,
		30.575184, 37.580711, 60.149132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827984, 37.840466, 59.811344>,  <30.400530, 38.200359, 59.874306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827984, 37.840466, 59.811344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.034969, 37.663647, 60.104416>,  <30.159161, 37.557556, 60.280258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.034969, 37.663647, 60.104416>,  <29.827984, 37.840466, 59.811344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034969, 37.663647, 60.104416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784669, 0.096445, 0.612367,
		-0.341361, -0.891790, -0.296957,
		0.517462, -0.442051, 0.732682,
		30.190208, 37.531033, 60.324219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355593, 37.344242, 60.134731>,  <29.827984, 37.840466, 59.811344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355593, 37.344242, 60.134731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.646296, 37.402977, 60.403137>,  <29.820717, 37.438217, 60.564182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.646296, 37.402977, 60.403137>,  <29.355593, 37.344242, 60.134731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646296, 37.402977, 60.403137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685273, 0.222093, 0.693596,
		-0.047184, -0.963906, 0.262030,
		0.726757, 0.146835, 0.671017,
		29.864323, 37.447029, 60.604443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160099, 37.035042, 60.847672>,  <29.355593, 37.344242, 60.134731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160099, 37.035042, 60.847672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.435516, 37.316357, 60.918438>,  <29.600767, 37.485146, 60.960899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.435516, 37.316357, 60.918438>,  <29.160099, 37.035042, 60.847672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435516, 37.316357, 60.918438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497178, 0.280181, 0.821165,
		0.527945, -0.653366, 0.542575,
		0.688540, 0.703286, 0.176919,
		29.642078, 37.527344, 60.971516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222889, 37.000439, 61.609657>,  <29.160099, 37.035042, 60.847672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222889, 37.000439, 61.609657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.341402, 37.357540, 61.473885>,  <29.412510, 37.571800, 61.392422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.341402, 37.357540, 61.473885>,  <29.222889, 37.000439, 61.609657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341402, 37.357540, 61.473885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409336, 0.439782, 0.799397,
		0.862937, -0.097908, 0.495735,
		0.296283, 0.892752, -0.339427,
		29.430286, 37.625366, 61.372055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525444, 37.474144, 62.181206>,  <29.222889, 37.000439, 61.609657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525444, 37.474144, 62.181206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.348274, 37.665764, 61.878067>,  <29.241972, 37.780735, 61.696186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.348274, 37.665764, 61.878067>,  <29.525444, 37.474144, 62.181206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348274, 37.665764, 61.878067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452772, 0.610055, 0.650254,
		0.773831, 0.631145, -0.053309,
		-0.442926, 0.479050, -0.757844,
		29.215397, 37.809479, 61.650715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878117, 38.141548, 61.896736>,  <29.525444, 37.474144, 62.181206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878117, 38.141548, 61.896736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484844, 38.072311, 61.920036>,  <29.248880, 38.030769, 61.934017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484844, 38.072311, 61.920036>,  <29.878117, 38.141548, 61.896736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484844, 38.072311, 61.920036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042487, 0.526993, 0.848807,
		-0.177623, 0.832056, -0.525483,
		-0.983181, -0.173094, 0.058254,
		29.189890, 38.020382, 61.937511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462109, 38.791679, 61.832596>,  <29.878117, 38.141548, 61.896736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462109, 38.791679, 61.832596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.258080, 38.518082, 62.041199>,  <29.135662, 38.353924, 62.166363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.258080, 38.518082, 62.041199>,  <29.462109, 38.791679, 61.832596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258080, 38.518082, 62.041199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014152, 0.612907, 0.790028,
		-0.860015, 0.395591, -0.322307,
		-0.510072, -0.683997, 0.521511,
		29.105059, 38.312881, 62.197651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309149, 38.773960, 62.665939>,  <29.462109, 38.791679, 61.832596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309149, 38.773960, 62.665939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527721, 38.998581, 62.914478>,  <29.658865, 39.133354, 63.063602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527721, 38.998581, 62.914478>,  <29.309149, 38.773960, 62.665939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527721, 38.998581, 62.914478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231455, -0.611754, 0.756429,
		0.804884, -0.557152, -0.204309,
		0.546433, 0.561550, 0.621347,
		29.691652, 39.167046, 63.100883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694763, 39.166584, 63.038593>,  <29.309149, 38.773960, 62.665939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694763, 39.166584, 63.038593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.997158, 39.414757, 63.122063>,  <29.178595, 39.563660, 63.172146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.997158, 39.414757, 63.122063>,  <28.694763, 39.166584, 63.038593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997158, 39.414757, 63.122063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168288, 0.492289, -0.854008,
		-0.632581, 0.610504, 0.476577,
		0.755989, 0.620432, 0.208673,
		29.223955, 39.600887, 63.184666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424397, 39.893795, 63.136971>,  <28.694763, 39.166584, 63.038593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424397, 39.893795, 63.136971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.797264, 39.920509, 62.994648>,  <29.020985, 39.936539, 62.909256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.797264, 39.920509, 62.994648>,  <28.424397, 39.893795, 63.136971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797264, 39.920509, 62.994648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333204, 0.542552, -0.771111,
		0.141540, 0.837363, 0.528006,
		0.932170, 0.066791, -0.355805,
		29.076916, 39.940548, 62.887905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522085, 40.616695, 63.065990>,  <28.424397, 39.893795, 63.136971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522085, 40.616695, 63.065990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.737652, 40.392632, 62.814342>,  <28.866991, 40.258194, 62.663353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.737652, 40.392632, 62.814342>,  <28.522085, 40.616695, 63.065990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737652, 40.392632, 62.814342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428939, 0.460286, -0.777270,
		0.724970, 0.688736, 0.007781,
		0.538916, -0.560160, -0.629119,
		28.899326, 40.224583, 62.625607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951082, 40.996971, 62.594082>,  <28.522085, 40.616695, 63.065990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951082, 40.996971, 62.594082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.775558, 40.678410, 62.427616>,  <28.670244, 40.487274, 62.327736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.775558, 40.678410, 62.427616>,  <28.951082, 40.996971, 62.594082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775558, 40.678410, 62.427616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424470, 0.591917, -0.685171,
		0.792005, -0.124011, -0.597787,
		-0.438809, -0.796402, -0.416162,
		28.643915, 40.439487, 62.302769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034418, 41.175365, 61.796238>,  <28.951082, 40.996971, 62.594082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034418, 41.175365, 61.796238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730650, 40.917706, 61.832806>,  <28.548389, 40.763111, 61.854748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730650, 40.917706, 61.832806>,  <29.034418, 41.175365, 61.796238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730650, 40.917706, 61.832806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553094, 0.565205, -0.612071,
		0.342593, -0.515382, -0.785501,
		-0.759419, -0.644147, 0.091419,
		28.502825, 40.724461, 61.860229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898355, 40.808754, 61.193890>,  <29.034418, 41.175365, 61.796238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898355, 40.808754, 61.193890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.580475, 40.891525, 61.422146>,  <28.389746, 40.941189, 61.559101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.580475, 40.891525, 61.422146>,  <28.898355, 40.808754, 61.193890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580475, 40.891525, 61.422146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399871, 0.528809, -0.748641,
		-0.456676, -0.823129, -0.337500,
		-0.794701, 0.206930, 0.570640,
		28.342064, 40.953606, 61.593338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471624, 41.160236, 60.865147>,  <28.898355, 40.808754, 61.193890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471624, 41.160236, 60.865147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.627644, 40.795544, 60.813610>,  <29.721256, 40.576729, 60.782688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.627644, 40.795544, 60.813610>,  <29.471624, 41.160236, 60.865147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627644, 40.795544, 60.813610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111598, 0.185702, -0.976248,
		0.914006, 0.366407, 0.174181,
		0.390049, -0.911735, -0.128842,
		29.744658, 40.522022, 60.774956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097225, 41.205765, 60.452106>,  <29.471624, 41.160236, 60.865147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097225, 41.205765, 60.452106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.924522, 40.847427, 60.410061>,  <29.820902, 40.632423, 60.384834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.924522, 40.847427, 60.410061>,  <30.097225, 41.205765, 60.452106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924522, 40.847427, 60.410061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149401, 0.043896, -0.987802,
		0.889532, -0.442192, 0.114888,
		-0.431755, -0.895846, -0.105111,
		29.794996, 40.578674, 60.378529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534231, 40.792255, 59.947880>,  <30.097225, 41.205765, 60.452106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534231, 40.792255, 59.947880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.185907, 40.596397, 59.965515>,  <29.976913, 40.478882, 59.976097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.185907, 40.596397, 59.965515>,  <30.534231, 40.792255, 59.947880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185907, 40.596397, 59.965515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022517, -0.049855, -0.998502,
		0.491107, -0.870497, 0.032388,
		-0.870808, -0.489642, 0.044085,
		29.924665, 40.449505, 59.978741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676085, 40.180546, 59.590679>,  <30.534231, 40.792255, 59.947880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676085, 40.180546, 59.590679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.280691, 40.241043, 59.592838>,  <30.043455, 40.277344, 59.594135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.280691, 40.241043, 59.592838>,  <30.676085, 40.180546, 59.590679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280691, 40.241043, 59.592838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015380, -0.064892, -0.997774,
		-0.150564, -0.986363, 0.066471,
		-0.988480, 0.151251, 0.005400,
		29.984146, 40.286419, 59.594460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435001, 39.720760, 59.106544>,  <30.676085, 40.180546, 59.590679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435001, 39.720760, 59.106544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.127148, 39.975323, 59.127159>,  <29.942436, 40.128059, 59.139530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.127148, 39.975323, 59.127159>,  <30.435001, 39.720760, 59.106544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127148, 39.975323, 59.127159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150860, -0.102819, -0.983194,
		-0.620410, -0.764472, 0.175141,
		-0.769632, 0.636405, 0.051538,
		29.896257, 40.166245, 59.142620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801462, 39.370808, 58.837868>,  <30.435001, 39.720760, 59.106544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801462, 39.370808, 58.837868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.722454, 39.758430, 58.778664>,  <29.675049, 39.991005, 58.743141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.722454, 39.758430, 58.778664>,  <29.801462, 39.370808, 58.837868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722454, 39.758430, 58.778664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253028, -0.196268, -0.947342,
		-0.947081, -0.149668, 0.283966,
		-0.197520, 0.969060, -0.148012,
		29.663198, 40.049149, 58.734261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259888, 39.321526, 58.439873>,  <29.801462, 39.370808, 58.837868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259888, 39.321526, 58.439873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.364609, 39.706604, 58.412533>,  <29.427441, 39.937653, 58.396130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.364609, 39.706604, 58.412533>,  <29.259888, 39.321526, 58.439873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364609, 39.706604, 58.412533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251244, -0.000394, -0.967924,
		-0.931845, 0.270577, 0.241769,
		0.261803, 0.962698, -0.068349,
		29.443150, 39.995415, 58.392029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786192, 39.697430, 58.012131>,  <29.259888, 39.321526, 58.439873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786192, 39.697430, 58.012131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.086155, 39.961899, 58.003300>,  <29.266132, 40.120583, 57.998001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.086155, 39.961899, 58.003300>,  <28.786192, 39.697430, 58.012131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086155, 39.961899, 58.003300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219286, 0.216947, -0.951235,
		-0.624143, 0.718179, 0.307676,
		0.749906, 0.661176, -0.022081,
		29.311127, 40.160252, 57.996674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533728, 40.433849, 57.751305>,  <28.786192, 39.697430, 58.012131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533728, 40.433849, 57.751305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.926464, 40.389610, 57.689651>,  <29.162106, 40.363068, 57.652660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.926464, 40.389610, 57.689651>,  <28.533728, 40.433849, 57.751305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926464, 40.389610, 57.689651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150266, 0.042521, -0.987731,
		0.115797, 0.992955, 0.025129,
		0.981841, -0.110600, -0.154131,
		29.221016, 40.356430, 57.643414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800138, 41.078850, 57.469040>,  <28.533728, 40.433849, 57.751305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800138, 41.078850, 57.469040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.067112, 40.791679, 57.389931>,  <29.227297, 40.619377, 57.342464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.067112, 40.791679, 57.389931>,  <28.800138, 41.078850, 57.469040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067112, 40.791679, 57.389931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070690, 0.203297, -0.976562,
		0.741306, 0.665771, 0.084938,
		0.667435, -0.717927, -0.197768,
		29.267342, 40.576302, 57.330601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304222, 41.375656, 57.075565>,  <28.800138, 41.078850, 57.469040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304222, 41.375656, 57.075565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.343838, 40.989491, 56.979099>,  <29.367607, 40.757790, 56.921219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.343838, 40.989491, 56.979099>,  <29.304222, 41.375656, 57.075565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343838, 40.989491, 56.979099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036671, 0.245734, -0.968643,
		0.994407, 0.087092, 0.059741,
		0.099041, -0.965417, -0.241166,
		29.373550, 40.699867, 56.906750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738211, 41.412819, 56.457047>,  <29.304222, 41.375656, 57.075565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738211, 41.412819, 56.457047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.602261, 41.036633, 56.455807>,  <29.520691, 40.810921, 56.455063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.602261, 41.036633, 56.455807>,  <29.738211, 41.412819, 56.457047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602261, 41.036633, 56.455807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037416, -0.010232, -0.999248,
		0.939725, -0.339737, 0.038666,
		-0.339877, -0.940465, -0.003096,
		29.500298, 40.754494, 56.454876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320539, 40.865723, 56.253727>,  <29.738211, 41.412819, 56.457047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320539, 40.865723, 56.253727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.965425, 40.693523, 56.188606>,  <29.752357, 40.590202, 56.149532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.965425, 40.693523, 56.188606>,  <30.320539, 40.865723, 56.253727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965425, 40.693523, 56.188606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250408, -0.154992, -0.955653,
		0.386177, -0.889183, 0.245401,
		-0.887786, -0.430501, -0.162804,
		29.699089, 40.564373, 56.139767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564743, 40.360260, 55.920509>,  <30.320539, 40.865723, 56.253727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564743, 40.360260, 55.920509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.172207, 40.392963, 55.850899>,  <29.936686, 40.412586, 55.809132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.172207, 40.392963, 55.850899>,  <30.564743, 40.360260, 55.920509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172207, 40.392963, 55.850899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137665, -0.333091, -0.932791,
		-0.134230, -0.939343, 0.315621,
		-0.981341, 0.081758, -0.174026,
		29.877804, 40.417492, 55.798691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347734, 39.705132, 55.672855>,  <30.564743, 40.360260, 55.920509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347734, 39.705132, 55.672855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.085144, 39.973816, 55.535542>,  <29.927589, 40.135025, 55.453152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.085144, 39.973816, 55.535542>,  <30.347734, 39.705132, 55.672855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085144, 39.973816, 55.535542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202097, -0.281829, -0.937939,
		-0.726772, -0.685110, 0.049263,
		-0.656475, 0.671712, -0.343284,
		29.888201, 40.175331, 55.432556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043768, 39.430027, 55.033875>,  <30.347734, 39.705132, 55.672855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043768, 39.430027, 55.033875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.938099, 39.815350, 55.014877>,  <29.874699, 40.046543, 55.003479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.938099, 39.815350, 55.014877>,  <30.043768, 39.430027, 55.033875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938099, 39.815350, 55.014877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110294, -0.018742, -0.993722,
		-0.958149, -0.267750, -0.101296,
		-0.264171, 0.963306, -0.047489,
		29.858849, 40.104340, 55.000629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616615, 39.443539, 54.408958>,  <30.043768, 39.430027, 55.033875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616615, 39.443539, 54.408958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.761431, 39.802616, 54.509411>,  <29.848320, 40.018063, 54.569683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.761431, 39.802616, 54.509411>,  <29.616615, 39.443539, 54.408958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761431, 39.802616, 54.509411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291973, 0.146648, -0.945117,
		-0.885257, 0.415492, -0.209011,
		0.362038, 0.897697, 0.251134,
		29.870043, 40.071926, 54.584751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323465, 39.927090, 53.937561>,  <29.616615, 39.443539, 54.408958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323465, 39.927090, 53.937561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.665617, 40.081520, 54.075703>,  <29.870909, 40.174179, 54.158588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.665617, 40.081520, 54.075703>,  <29.323465, 39.927090, 53.937561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665617, 40.081520, 54.075703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256224, 0.264075, -0.929846,
		-0.450192, 0.883860, 0.126962,
		0.855381, 0.386079, 0.345351,
		29.922232, 40.197342, 54.179306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515116, 40.402008, 53.356598>,  <29.323465, 39.927090, 53.937561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515116, 40.402008, 53.356598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.831099, 40.397484, 53.601822>,  <30.020689, 40.394768, 53.748955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.831099, 40.397484, 53.601822>,  <29.515116, 40.402008, 53.356598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831099, 40.397484, 53.601822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612858, 0.045959, -0.788856,
		-0.019251, 0.998879, 0.043239,
		0.789959, -0.011313, 0.613055,
		30.068087, 40.394089, 53.785740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005354, 40.794308, 53.102047>,  <29.515116, 40.402008, 53.356598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005354, 40.794308, 53.102047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.262739, 40.615807, 53.350826>,  <30.417170, 40.508705, 53.500092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.262739, 40.615807, 53.350826>,  <30.005354, 40.794308, 53.102047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262739, 40.615807, 53.350826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696621, 0.004596, -0.717425,
		0.317292, 0.894897, 0.313824,
		0.643464, -0.446249, 0.621945,
		30.455778, 40.481934, 53.537411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543642, 41.300179, 53.140072>,  <30.005354, 40.794308, 53.102047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543642, 41.300179, 53.140072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.657358, 40.925594, 53.222260>,  <30.725588, 40.700844, 53.271572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.657358, 40.925594, 53.222260>,  <30.543642, 41.300179, 53.140072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657358, 40.925594, 53.222260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675889, 0.043761, -0.735703,
		0.679967, 0.348028, 0.645385,
		0.284288, -0.936462, 0.205472,
		30.742645, 40.644657, 53.283901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384016, 41.249557, 53.237663>,  <30.543642, 41.300179, 53.140072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384016, 41.249557, 53.237663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.263382, 40.875584, 53.162895>,  <31.191002, 40.651199, 53.118034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.263382, 40.875584, 53.162895>,  <31.384016, 41.249557, 53.237663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263382, 40.875584, 53.162895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749723, -0.111427, -0.652303,
		0.589035, -0.336862, 0.734549,
		-0.301585, -0.934937, -0.186919,
		31.172907, 40.595104, 53.106819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987757, 40.878654, 53.441341>,  <31.384016, 41.249557, 53.237663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987757, 40.878654, 53.441341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.755257, 40.680126, 53.183407>,  <31.615757, 40.561008, 53.028645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.755257, 40.680126, 53.183407>,  <31.987757, 40.878654, 53.441341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755257, 40.680126, 53.183407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808262, -0.260468, -0.528080,
		0.094137, -0.828144, 0.552554,
		-0.581249, -0.496321, -0.644837,
		31.580881, 40.531231, 52.989956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402821, 40.287117, 53.165001>,  <31.987757, 40.878654, 53.441341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402821, 40.287117, 53.165001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.118736, 40.345181, 52.889458>,  <31.948286, 40.380016, 52.724133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.118736, 40.345181, 52.889458>,  <32.402821, 40.287117, 53.165001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118736, 40.345181, 52.889458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621142, -0.331333, -0.710212,
		-0.331333, -0.932281, 0.145155,
		0.710212, -0.145155, 0.688861,
		31.905672, 40.388725, 52.682800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405643, 39.618950, 52.774738>,  <32.402821, 40.287117, 53.165001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405643, 39.618950, 52.774738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.211826, 39.881546, 52.543484>,  <32.095535, 40.039104, 52.404732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.211826, 39.881546, 52.543484>,  <32.405643, 39.618950, 52.774738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211826, 39.881546, 52.543484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556722, -0.278352, -0.782675,
		-0.674741, -0.701103, -0.230606,
		-0.484546, 0.656487, -0.578135,
		32.066463, 40.078491, 52.370045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213551, 39.240681, 52.212330>,  <32.405643, 39.618950, 52.774738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213551, 39.240681, 52.212330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.179031, 39.609547, 52.061508>,  <32.158321, 39.830864, 51.971016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.179031, 39.609547, 52.061508>,  <32.213551, 39.240681, 52.212330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179031, 39.609547, 52.061508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458004, -0.299382, -0.837020,
		-0.884752, -0.244923, -0.396519,
		-0.086295, 0.922162, -0.377054,
		32.153141, 39.886196, 51.948391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900822, 39.209747, 51.648701>,  <32.213551, 39.240681, 52.212330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900822, 39.209747, 51.648701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.091259, 39.557354, 51.594830>,  <32.205521, 39.765919, 51.562508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.091259, 39.557354, 51.594830>,  <31.900822, 39.209747, 51.648701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091259, 39.557354, 51.594830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533784, -0.407286, -0.741076,
		-0.698862, 0.280933, -0.657776,
		0.476095, 0.869019, -0.134679,
		32.234089, 39.818058, 51.554424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033188, 39.260456, 50.919827>,  <31.900822, 39.209747, 51.648701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033188, 39.260456, 50.919827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.292488, 39.520058, 51.079109>,  <32.448067, 39.675819, 51.174679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.292488, 39.520058, 51.079109>,  <32.033188, 39.260456, 50.919827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292488, 39.520058, 51.079109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587081, -0.092979, -0.804171,
		-0.484885, 0.755082, -0.441291,
		0.648246, 0.649003, 0.398210,
		32.486961, 39.714760, 51.198574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458168, 39.506805, 50.334743>,  <32.033188, 39.260456, 50.919827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458168, 39.506805, 50.334743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.653965, 39.544521, 50.681503>,  <32.771442, 39.567150, 50.889557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.653965, 39.544521, 50.681503>,  <32.458168, 39.506805, 50.334743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653965, 39.544521, 50.681503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807566, -0.424087, -0.409864,
		0.328991, 0.900699, -0.283735,
		0.489492, 0.094293, 0.866895,
		32.800812, 39.572807, 50.941570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125626, 39.714748, 50.177380>,  <32.458168, 39.506805, 50.334743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125626, 39.714748, 50.177380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.169315, 39.553890, 50.540997>,  <33.195530, 39.457375, 50.759167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.169315, 39.553890, 50.540997>,  <33.125626, 39.714748, 50.177380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169315, 39.553890, 50.540997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859574, -0.421064, -0.289548,
		0.499203, 0.813011, 0.299683,
		0.109220, -0.402143, 0.909039,
		33.202080, 39.433247, 50.813709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931412, 39.832817, 50.367336>,  <33.125626, 39.714748, 50.177380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931412, 39.832817, 50.367336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.765297, 39.552616, 50.599487>,  <33.665627, 39.384495, 50.738777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.765297, 39.552616, 50.599487>,  <33.931412, 39.832817, 50.367336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765297, 39.552616, 50.599487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816007, -0.568848, -0.102689,
		0.402079, 0.430944, 0.807849,
		-0.415290, -0.700499, 0.580375,
		33.640709, 39.342468, 50.773602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434578, 39.616928, 50.898979>,  <33.931412, 39.832817, 50.367336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434578, 39.616928, 50.898979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.173115, 39.314228, 50.895866>,  <34.016235, 39.132610, 50.894001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.173115, 39.314228, 50.895866>,  <34.434578, 39.616928, 50.898979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173115, 39.314228, 50.895866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756139, -0.653492, 0.034690,
		-0.031335, 0.016794, 0.999368,
		-0.653661, -0.756748, -0.007779,
		33.977016, 39.087204, 50.893532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710903, 39.095707, 51.334064>,  <34.434578, 39.616928, 50.898979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710903, 39.095707, 51.334064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.435986, 38.905010, 51.114849>,  <34.271034, 38.790592, 50.983322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.435986, 38.905010, 51.114849>,  <34.710903, 39.095707, 51.334064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435986, 38.905010, 51.114849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602854, -0.795261, -0.064245,
		-0.405202, -0.374541, 0.833985,
		-0.687297, -0.476739, -0.548035,
		34.229797, 38.761990, 50.950439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751564, 38.376396, 51.568924>,  <34.710903, 39.095707, 51.334064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751564, 38.376396, 51.568924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.563351, 38.333805, 51.218552>,  <34.450424, 38.308250, 51.008327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.563351, 38.333805, 51.218552>,  <34.751564, 38.376396, 51.568924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563351, 38.333805, 51.218552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414797, -0.902861, -0.113068,
		-0.778809, -0.416537, 0.468993,
		-0.470532, -0.106479, -0.875935,
		34.422192, 38.301861, 50.955772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824802, 37.645939, 51.555454>,  <34.751564, 38.376396, 51.568924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824802, 37.645939, 51.555454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.777145, 37.819172, 51.198078>,  <34.748550, 37.923111, 50.983650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.777145, 37.819172, 51.198078>,  <34.824802, 37.645939, 51.555454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777145, 37.819172, 51.198078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521939, -0.738168, -0.427420,
		-0.844621, -0.517247, -0.138098,
		-0.119143, 0.433087, -0.893443,
		34.741402, 37.949097, 50.930046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576885, 37.092808, 51.128918>,  <34.824802, 37.645939, 51.555454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576885, 37.092808, 51.128918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.720726, 37.380947, 50.891670>,  <34.807030, 37.553829, 50.749321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.720726, 37.380947, 50.891670>,  <34.576885, 37.092808, 51.128918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720726, 37.380947, 50.891670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575398, -0.671587, -0.466784,
		-0.734576, -0.173422, -0.655990,
		0.359604, 0.720344, -0.593119,
		34.828606, 37.597050, 50.713734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668789, 36.844776, 50.479969>,  <34.576885, 37.092808, 51.128918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668789, 36.844776, 50.479969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.899147, 37.167362, 50.426376>,  <35.037361, 37.360916, 50.394218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.899147, 37.167362, 50.426376>,  <34.668789, 36.844776, 50.479969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899147, 37.167362, 50.426376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587090, -0.522028, -0.618718,
		-0.568921, 0.277656, -0.774104,
		0.575895, 0.806470, -0.133983,
		35.071915, 37.409302, 50.386181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673359, 36.927876, 49.708347>,  <34.668789, 36.844776, 50.479969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673359, 36.927876, 49.708347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.993980, 37.082085, 49.891159>,  <35.186356, 37.174610, 50.000847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.993980, 37.082085, 49.891159>,  <34.673359, 36.927876, 49.708347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993980, 37.082085, 49.891159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597273, -0.551761, -0.582086,
		0.027760, 0.739546, -0.672533,
		0.801558, 0.385527, 0.457028,
		35.234447, 37.197742, 50.028267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102245, 37.167873, 49.170570>,  <34.673359, 36.927876, 49.708347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102245, 37.167873, 49.170570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.336082, 37.127316, 49.492558>,  <35.476383, 37.102982, 49.685749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.336082, 37.127316, 49.492558>,  <35.102245, 37.167873, 49.170570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336082, 37.127316, 49.492558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736226, -0.350610, -0.578830,
		0.340920, 0.931017, -0.130314,
		0.584590, -0.101395, 0.804968,
		35.511459, 37.096897, 49.734047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069668, 37.735104, 48.734192>,  <35.102245, 37.167873, 49.170570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069668, 37.735104, 48.734192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.813545, 37.800339, 48.433949>,  <34.659874, 37.839481, 48.253803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.813545, 37.800339, 48.433949>,  <35.069668, 37.735104, 48.734192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813545, 37.800339, 48.433949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593871, 0.514656, 0.618423,
		0.487165, 0.841742, -0.232680,
		-0.640303, 0.163092, -0.750609,
		34.621456, 37.849266, 48.208767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691746, 38.326332, 48.859039>,  <35.069668, 37.735104, 48.734192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691746, 38.326332, 48.859039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.434673, 38.171791, 48.594406>,  <34.280430, 38.079067, 48.435627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.434673, 38.171791, 48.594406>,  <34.691746, 38.326332, 48.859039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434673, 38.171791, 48.594406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765129, 0.367831, 0.528467,
		0.039178, 0.845834, -0.532006,
		-0.642684, -0.386349, -0.661583,
		34.241867, 38.055885, 48.395931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225006, 38.797195, 48.654968>,  <34.691746, 38.326332, 48.859039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225006, 38.797195, 48.654968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056686, 38.435665, 48.623936>,  <33.955692, 38.218746, 48.605316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056686, 38.435665, 48.623936>,  <34.225006, 38.797195, 48.654968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056686, 38.435665, 48.623936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900425, 0.405757, 0.156828,
		-0.110267, 0.135848, -0.984574,
		-0.420803, -0.903829, -0.077580,
		33.930447, 38.164516, 48.600662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684246, 39.005177, 48.344986>,  <34.225006, 38.797195, 48.654968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684246, 39.005177, 48.344986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.600105, 38.626148, 48.441196>,  <33.549622, 38.398731, 48.498924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.600105, 38.626148, 48.441196>,  <33.684246, 39.005177, 48.344986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600105, 38.626148, 48.441196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967669, 0.236835, 0.086749,
		-0.139166, -0.214502, -0.966758,
		-0.210354, -0.947575, 0.240526,
		33.536999, 38.341877, 48.513355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070412, 38.729530, 47.922817>,  <33.684246, 39.005177, 48.344986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070412, 38.729530, 47.922817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.075939, 38.492218, 48.244770>,  <33.079258, 38.349831, 48.437943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.075939, 38.492218, 48.244770>,  <33.070412, 38.729530, 47.922817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075939, 38.492218, 48.244770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997098, 0.052088, 0.055515,
		-0.074860, -0.803312, -0.590835,
		0.013821, -0.593276, 0.804880,
		33.080086, 38.314236, 48.486233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656837, 38.135052, 47.796139>,  <33.070412, 38.729530, 47.922817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656837, 38.135052, 47.796139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675808, 38.235367, 48.182892>,  <32.687191, 38.295555, 48.414944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675808, 38.235367, 48.182892>,  <32.656837, 38.135052, 47.796139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675808, 38.235367, 48.182892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998851, 0.018588, 0.044174,
		-0.006894, -0.967863, 0.251382,
		0.047427, 0.250788, 0.966879,
		32.690037, 38.310604, 48.472954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088947, 37.811119, 48.128773>,  <32.656837, 38.135052, 47.796139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088947, 37.811119, 48.128773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.166649, 38.040894, 48.446838>,  <32.213268, 38.178757, 48.637680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.166649, 38.040894, 48.446838>,  <32.088947, 37.811119, 48.128773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166649, 38.040894, 48.446838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969178, -0.012824, 0.246026,
		0.151523, -0.818449, 0.554240,
		0.194253, 0.574436, 0.795167,
		32.224926, 38.213223, 48.685387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917761, 37.480213, 48.727776>,  <32.088947, 37.811119, 48.128773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917761, 37.480213, 48.727776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.913706, 37.871483, 48.810783>,  <31.911274, 38.106247, 48.860588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.913706, 37.871483, 48.810783>,  <31.917761, 37.480213, 48.727776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913706, 37.871483, 48.810783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931680, -0.084604, 0.353290,
		0.363138, -0.189759, 0.912208,
		-0.010136, 0.978179, 0.207517,
		31.910666, 38.164936, 48.873039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511229, 37.452797, 49.233440>,  <31.917761, 37.480213, 48.727776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511229, 37.452797, 49.233440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.508270, 37.845436, 49.157116>,  <31.506496, 38.081020, 49.111320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.508270, 37.845436, 49.157116>,  <31.511229, 37.452797, 49.233440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508270, 37.845436, 49.157116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980086, 0.030751, 0.196177,
		0.198435, 0.188460, 0.961825,
		-0.007394, 0.981600, -0.190809,
		31.506052, 38.139915, 49.099873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195368, 37.778828, 49.779083>,  <31.511229, 37.452797, 49.233440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195368, 37.778828, 49.779083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.160799, 38.053192, 49.490067>,  <31.140059, 38.217812, 49.316658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.160799, 38.053192, 49.490067>,  <31.195368, 37.778828, 49.779083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160799, 38.053192, 49.490067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946042, 0.170852, 0.275345,
		0.312309, 0.707347, 0.634133,
		-0.086421, 0.685908, -0.722538,
		31.134872, 38.258965, 49.273304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787729, 38.354462, 50.096680>,  <31.195368, 37.778828, 49.779083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787729, 38.354462, 50.096680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.765715, 38.443192, 49.707268>,  <30.752506, 38.496429, 49.473621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.765715, 38.443192, 49.707268>,  <30.787729, 38.354462, 50.096680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765715, 38.443192, 49.707268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970209, 0.218508, 0.104635,
		0.235935, 0.950289, 0.203190,
		-0.055035, 0.221824, -0.973532,
		30.749205, 38.509739, 49.415207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624628, 39.071476, 49.971455>,  <30.787729, 38.354462, 50.096680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624628, 39.071476, 49.971455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.501472, 38.875469, 49.645245>,  <30.427578, 38.757866, 49.449516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.501472, 38.875469, 49.645245>,  <30.624628, 39.071476, 49.971455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501472, 38.875469, 49.645245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947895, 0.231725, 0.218630,
		0.081845, 0.840349, -0.535831,
		-0.307891, -0.490017, -0.815528,
		30.409105, 38.728462, 49.400585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984255, 39.367146, 49.697075>,  <30.624628, 39.071476, 49.971455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984255, 39.367146, 49.697075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.997189, 38.975277, 49.617886>,  <30.004948, 38.740154, 49.570370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.997189, 38.975277, 49.617886>,  <29.984255, 39.367146, 49.697075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997189, 38.975277, 49.617886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993089, -0.053849, 0.104278,
		-0.112819, 0.193238, -0.974644,
		0.032333, -0.979674, -0.197977,
		30.006889, 38.681374, 49.558491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722803, 40.008522, 49.315636>,  <29.984255, 39.367146, 49.697075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722803, 40.008522, 49.315636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.510452, 39.678402, 49.238651>,  <29.383041, 39.480328, 49.192459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.510452, 39.678402, 49.238651>,  <29.722803, 40.008522, 49.315636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510452, 39.678402, 49.238651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462011, 0.091468, 0.882145,
		-0.710434, 0.557230, -0.429859,
		-0.530876, -0.825305, -0.192465,
		29.351189, 39.430809, 49.180912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952377, 40.133560, 49.310402>,  <29.722803, 40.008522, 49.315636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952377, 40.133560, 49.310402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.015068, 39.758102, 49.433289>,  <29.052683, 39.532829, 49.507019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.015068, 39.758102, 49.433289>,  <28.952377, 40.133560, 49.310402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015068, 39.758102, 49.433289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539408, 0.179219, 0.822751,
		-0.827331, -0.294662, -0.478224,
		0.156727, -0.938645, 0.307216,
		29.062086, 39.476509, 49.525452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259033, 39.921318, 49.608261>,  <28.952377, 40.133560, 49.310402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259033, 39.921318, 49.608261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.515499, 39.651093, 49.753876>,  <28.669378, 39.488956, 49.841244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.515499, 39.651093, 49.753876>,  <28.259033, 39.921318, 49.608261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515499, 39.651093, 49.753876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536856, -0.055893, 0.841821,
		-0.548355, -0.735182, -0.398516,
		0.641166, -0.675562, 0.364038,
		28.707850, 39.448425, 49.863087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836348, 39.508274, 49.982262>,  <28.259033, 39.921318, 49.608261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836348, 39.508274, 49.982262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.201319, 39.423584, 50.122345>,  <28.420301, 39.372768, 50.206394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.201319, 39.423584, 50.122345>,  <27.836348, 39.508274, 49.982262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201319, 39.423584, 50.122345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335537, 0.102854, 0.936395,
		-0.234280, -0.971902, 0.022805,
		0.912430, -0.211727, 0.350205,
		28.475048, 39.360065, 50.227406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770548, 39.068920, 50.544819>,  <27.836348, 39.508274, 49.982262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770548, 39.068920, 50.544819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.137709, 39.207191, 50.622757>,  <28.358006, 39.290154, 50.669521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.137709, 39.207191, 50.622757>,  <27.770548, 39.068920, 50.544819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137709, 39.207191, 50.622757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201955, -0.015718, 0.979269,
		0.341573, -0.938222, 0.055383,
		0.917901, 0.345677, 0.194847,
		28.413078, 39.310894, 50.681210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882498, 38.916882, 51.303158>,  <27.770548, 39.068920, 50.544819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882498, 38.916882, 51.303158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.204212, 39.135990, 51.211010>,  <28.397242, 39.267456, 51.155720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.204212, 39.135990, 51.211010>,  <27.882498, 38.916882, 51.303158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204212, 39.135990, 51.211010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115267, 0.236501, 0.964770,
		0.582957, -0.802504, 0.127074,
		0.804285, 0.547772, -0.230372,
		28.445498, 39.300323, 51.141899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354845, 38.597015, 51.835361>,  <27.882498, 38.916882, 51.303158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354845, 38.597015, 51.835361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.397154, 38.971832, 51.702232>,  <28.422539, 39.196720, 51.622356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.397154, 38.971832, 51.702232>,  <28.354845, 38.597015, 51.835361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397154, 38.971832, 51.702232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059575, 0.340069, 0.938512,
		0.992604, -0.079440, 0.091793,
		0.105772, 0.937039, -0.332821,
		28.428885, 39.252945, 51.602386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889616, 38.824795, 52.205757>,  <28.354845, 38.597015, 51.835361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889616, 38.824795, 52.205757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.678263, 39.133591, 52.064423>,  <28.551451, 39.318867, 51.979622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.678263, 39.133591, 52.064423>,  <28.889616, 38.824795, 52.205757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678263, 39.133591, 52.064423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293836, 0.224180, 0.929195,
		0.796538, 0.594794, 0.108385,
		-0.528382, 0.771987, -0.353340,
		28.519749, 39.365189, 51.958420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050911, 39.415207, 52.671646>,  <28.889616, 38.824795, 52.205757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050911, 39.415207, 52.671646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.712700, 39.533504, 52.493828>,  <28.509773, 39.604485, 52.387138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.712700, 39.533504, 52.493828>,  <29.050911, 39.415207, 52.671646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712700, 39.533504, 52.493828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338026, 0.347993, 0.874436,
		0.413308, 0.889627, -0.194268,
		-0.845526, 0.295744, -0.444546,
		28.459042, 39.622227, 52.360466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931364, 40.161304, 52.804222>,  <29.050911, 39.415207, 52.671646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931364, 40.161304, 52.804222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.574678, 40.002701, 52.716923>,  <28.360668, 39.907539, 52.664543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.574678, 40.002701, 52.716923>,  <28.931364, 40.161304, 52.804222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574678, 40.002701, 52.716923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374692, 0.376241, 0.847377,
		-0.253879, 0.837392, -0.484067,
		-0.891712, -0.396507, -0.218244,
		28.307165, 39.883747, 52.651451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422352, 40.663044, 52.998375>,  <28.931364, 40.161304, 52.804222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422352, 40.663044, 52.998375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.233770, 40.310463, 53.009533>,  <28.120623, 40.098915, 53.016228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.233770, 40.310463, 53.009533>,  <28.422352, 40.663044, 52.998375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233770, 40.310463, 53.009533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365866, 0.224267, 0.903242,
		-0.802418, 0.415631, -0.428224,
		-0.471452, -0.881451, 0.027891,
		28.092335, 40.046028, 53.017899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791943, 40.881172, 53.252468>,  <28.422352, 40.663044, 52.998375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791943, 40.881172, 53.252468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.777391, 40.484962, 53.305435>,  <27.768661, 40.247234, 53.337215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.777391, 40.484962, 53.305435>,  <27.791943, 40.881172, 53.252468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777391, 40.484962, 53.305435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430700, 0.135104, 0.892325,
		-0.901762, -0.024569, -0.431534,
		-0.036378, -0.990527, 0.132413,
		27.766478, 40.187805, 53.345158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052523, 40.677135, 53.423100>,  <27.791943, 40.881172, 53.252468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052523, 40.677135, 53.423100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.296812, 40.383839, 53.542675>,  <27.443386, 40.207859, 53.614422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.296812, 40.383839, 53.542675>,  <27.052523, 40.677135, 53.423100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296812, 40.383839, 53.542675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519511, -0.086121, 0.850112,
		-0.597597, -0.674487, -0.433527,
		0.610725, -0.733247, 0.298937,
		27.480030, 40.163864, 53.632355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.565184, 40.209526, 53.799534>,  <27.052523, 40.677135, 53.423100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.565184, 40.209526, 53.799534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.933773, 40.094124, 53.903576>,  <27.154926, 40.024883, 53.966000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.933773, 40.094124, 53.903576>,  <26.565184, 40.209526, 53.799534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933773, 40.094124, 53.903576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326157, -0.210975, 0.921472,
		-0.210975, -0.933945, -0.288506,
		-0.921472, 0.288506, -0.260102,
		27.210215, 40.007572, 53.981606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483421, 39.536095, 54.049881>,  <26.565184, 40.209526, 53.799534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483421, 39.536095, 54.049881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.834122, 39.660439, 54.196674>,  <27.044542, 39.735046, 54.284748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.834122, 39.660439, 54.196674>,  <26.483421, 39.536095, 54.049881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834122, 39.660439, 54.196674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232213, -0.394594, 0.889029,
		0.421174, -0.864673, -0.273774,
		0.876749, 0.310862, 0.366982,
		27.097147, 39.753696, 54.306770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814367, 38.972908, 54.481262>,  <26.483421, 39.536095, 54.049881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814367, 38.972908, 54.481262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.023821, 39.293736, 54.596149>,  <27.149492, 39.486233, 54.665081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.023821, 39.293736, 54.596149>,  <26.814367, 38.972908, 54.481262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023821, 39.293736, 54.596149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017990, -0.347467, 0.937520,
		0.851754, -0.485749, -0.196374,
		0.523633, 0.802069, 0.287218,
		27.180910, 39.534355, 54.682316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363522, 38.689194, 54.937523>,  <26.814367, 38.972908, 54.481262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363522, 38.689194, 54.937523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.288601, 39.072262, 55.024956>,  <27.243649, 39.302105, 55.077415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.288601, 39.072262, 55.024956>,  <27.363522, 38.689194, 54.937523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288601, 39.072262, 55.024956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035003, -0.228885, 0.972824,
		0.981678, 0.174563, 0.076393,
		-0.187304, 0.957674, 0.218582,
		27.232410, 39.359566, 55.090530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756399, 38.780174, 55.594353>,  <27.363522, 38.689194, 54.937523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756399, 38.780174, 55.594353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.505871, 39.091854, 55.584873>,  <27.355553, 39.278862, 55.579185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.505871, 39.091854, 55.584873>,  <27.756399, 38.780174, 55.594353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505871, 39.091854, 55.584873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175092, -0.110992, 0.978276,
		0.759646, 0.616865, 0.205949,
		-0.626323, 0.779204, -0.023694,
		27.317974, 39.325615, 55.577766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966005, 39.228859, 56.080524>,  <27.756399, 38.780174, 55.594353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966005, 39.228859, 56.080524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.574371, 39.278370, 56.015938>,  <27.339392, 39.308079, 55.977184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.574371, 39.278370, 56.015938>,  <27.966005, 39.228859, 56.080524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574371, 39.278370, 56.015938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194291, -0.333336, 0.922571,
		0.060373, 0.934647, 0.350413,
		-0.979084, 0.123781, -0.161470,
		27.280645, 39.315502, 55.967499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663990, 39.608555, 56.665695>,  <27.966005, 39.228859, 56.080524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663990, 39.608555, 56.665695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.334248, 39.438263, 56.516464>,  <27.136402, 39.336086, 56.426926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.334248, 39.438263, 56.516464>,  <27.663990, 39.608555, 56.665695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.334248, 39.438263, 56.516464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366798, -0.100258, 0.924883,
		-0.431157, 0.899278, -0.073509,
		-0.824356, -0.425732, -0.373080,
		27.086941, 39.310543, 56.404541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112228, 39.821865, 57.074818>,  <27.663990, 39.608555, 56.665695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112228, 39.821865, 57.074818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.936977, 39.512596, 56.891407>,  <26.831827, 39.327034, 56.781361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.936977, 39.512596, 56.891407>,  <27.112228, 39.821865, 57.074818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936977, 39.512596, 56.891407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445626, -0.256185, 0.857780,
		-0.780681, 0.580148, -0.232306,
		-0.438126, -0.773174, -0.458527,
		26.805540, 39.280643, 56.753849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333332, 39.838360, 57.253891>,  <27.112228, 39.821865, 57.074818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333332, 39.838360, 57.253891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.458805, 39.467625, 57.171356>,  <26.534088, 39.245182, 57.121834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.458805, 39.467625, 57.171356>,  <26.333332, 39.838360, 57.253891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458805, 39.467625, 57.171356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424279, -0.331222, 0.842781,
		-0.849465, -0.176820, -0.497136,
		0.313683, -0.926837, -0.206340,
		26.552910, 39.189575, 57.109455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.876108, 39.455860, 57.542023>,  <26.333332, 39.838360, 57.253891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.876108, 39.455860, 57.542023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.122633, 39.152306, 57.457870>,  <26.270548, 38.970173, 57.407379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.122633, 39.152306, 57.457870>,  <25.876108, 39.455860, 57.542023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122633, 39.152306, 57.457870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312420, -0.480840, 0.819260,
		-0.722879, -0.439193, -0.533437,
		0.616311, -0.758882, -0.210377,
		26.307526, 38.924641, 57.394756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.511423, 38.829227, 57.580231>,  <25.876108, 39.455860, 57.542023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.511423, 38.829227, 57.580231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.885406, 38.711445, 57.659374>,  <26.109797, 38.640774, 57.706860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.885406, 38.711445, 57.659374>,  <25.511423, 38.829227, 57.580231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885406, 38.711445, 57.659374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329408, -0.513521, 0.792329,
		-0.131698, -0.805973, -0.577117,
		0.934958, -0.294456, 0.197864,
		26.165894, 38.623108, 57.718735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457062, 38.058998, 57.651043>,  <25.511423, 38.829227, 57.580231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457062, 38.058998, 57.651043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.791365, 38.188160, 57.828693>,  <25.991945, 38.265659, 57.935284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.791365, 38.188160, 57.828693>,  <25.457062, 38.058998, 57.651043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791365, 38.188160, 57.828693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239310, -0.513764, 0.823879,
		0.494211, -0.794844, -0.352106,
		0.835755, 0.322908, 0.444122,
		26.042091, 38.285030, 57.961929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.787609, 37.492336, 58.099506>,  <25.457062, 38.058998, 57.651043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.787609, 37.492336, 58.099506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.932968, 37.834118, 58.248020>,  <26.020184, 38.039185, 58.337128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.932968, 37.834118, 58.248020>,  <25.787609, 37.492336, 58.099506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932968, 37.834118, 58.248020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296816, -0.271580, 0.915502,
		0.883087, -0.442895, 0.154923,
		0.363398, 0.854452, 0.371287,
		26.041988, 38.090454, 58.359406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109613, 37.202271, 57.980476>,  <25.787609, 37.492336, 58.099506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109613, 37.202271, 57.980476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.957399, 36.839806, 57.906658>,  <24.866072, 36.622326, 57.862370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.957399, 36.839806, 57.906658>,  <25.109613, 37.202271, 57.980476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.957399, 36.839806, 57.906658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104636, 0.156083, -0.982186,
		0.918829, -0.393064, 0.035423,
		-0.380533, -0.906167, -0.184542,
		24.843239, 36.567955, 57.851295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635799, 36.959667, 57.554371>,  <25.109613, 37.202271, 57.980476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635799, 36.959667, 57.554371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.318308, 36.724586, 57.491623>,  <25.127813, 36.583538, 57.453976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.318308, 36.724586, 57.491623>,  <25.635799, 36.959667, 57.554371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318308, 36.724586, 57.491623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018857, 0.233990, -0.972056,
		0.607981, -0.774506, -0.174642,
		-0.793728, -0.587699, -0.156866,
		25.080189, 36.548279, 57.444565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851229, 36.428112, 56.955330>,  <25.635799, 36.959667, 57.554371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851229, 36.428112, 56.955330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.452372, 36.398758, 56.962498>,  <25.213057, 36.381145, 56.966801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.452372, 36.398758, 56.962498>,  <25.851229, 36.428112, 56.955330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452372, 36.398758, 56.962498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009698, -0.110929, -0.993781,
		0.074920, -0.991115, 0.109900,
		-0.997143, -0.073389, 0.017923,
		25.153229, 36.376743, 56.967873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.690262, 35.883392, 56.610153>,  <25.851229, 36.428112, 56.955330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.690262, 35.883392, 56.610153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.379505, 36.135139, 56.602806>,  <25.193052, 36.286186, 56.598396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.379505, 36.135139, 56.602806>,  <25.690262, 35.883392, 56.610153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379505, 36.135139, 56.602806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014554, -0.047116, -0.998783,
		-0.629469, -0.775677, 0.045763,
		-0.776889, 0.629369, -0.018369,
		25.146439, 36.323952, 56.597294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.229275, 35.703556, 56.054470>,  <25.690262, 35.883392, 56.610153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.229275, 35.703556, 56.054470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.126600, 36.080021, 56.142403>,  <25.064995, 36.305901, 56.195160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.126600, 36.080021, 56.142403>,  <25.229275, 35.703556, 56.054470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.126600, 36.080021, 56.142403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120107, 0.194624, -0.973497,
		-0.959002, -0.276288, 0.063083,
		-0.256688, 0.941162, 0.219829,
		25.049593, 36.362370, 56.208351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.737444, 35.871258, 55.561974>,  <25.229275, 35.703556, 56.054470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.737444, 35.871258, 55.561974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.855856, 36.231457, 55.689388>,  <24.926903, 36.447578, 55.765839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.855856, 36.231457, 55.689388>,  <24.737444, 35.871258, 55.561974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.855856, 36.231457, 55.689388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052448, 0.317661, -0.946752,
		-0.953738, 0.296972, 0.046807,
		0.296028, 0.900499, 0.318541,
		24.944664, 36.501606, 55.784950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.361065, 36.425346, 55.115452>,  <24.737444, 35.871258, 55.561974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.361065, 36.425346, 55.115452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.693819, 36.592102, 55.261967>,  <24.893473, 36.692158, 55.349876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.693819, 36.592102, 55.261967>,  <24.361065, 36.425346, 55.115452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.693819, 36.592102, 55.261967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222126, 0.354714, -0.908206,
		-0.508550, 0.836886, 0.202480,
		0.831887, 0.416893, 0.366284,
		24.943386, 36.717171, 55.371853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.357849, 37.149570, 54.906292>,  <24.361065, 36.425346, 55.115452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.357849, 37.149570, 54.906292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.739937, 37.059975, 54.983631>,  <24.969191, 37.006218, 55.030033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.739937, 37.059975, 54.983631>,  <24.357849, 37.149570, 54.906292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.739937, 37.059975, 54.983631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262831, 0.342160, -0.902135,
		0.135911, 0.912555, 0.385709,
		0.955222, -0.223986, 0.193345,
		25.026503, 36.992779, 55.041634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.741737, 37.598988, 54.658676>,  <24.357849, 37.149570, 54.906292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.741737, 37.598988, 54.658676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.059692, 37.358662, 54.692570>,  <25.250465, 37.214466, 54.712906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.059692, 37.358662, 54.692570>,  <24.741737, 37.598988, 54.658676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059692, 37.358662, 54.692570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318607, 0.294458, -0.900991,
		0.516378, 0.743180, 0.425484,
		0.794886, -0.600814, 0.084730,
		25.298159, 37.178417, 54.717987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316881, 38.005459, 54.494873>,  <24.741737, 37.598988, 54.658676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.316881, 38.005459, 54.494873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.441771, 37.631668, 54.426434>,  <25.516705, 37.407394, 54.385368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.441771, 37.631668, 54.426434>,  <25.316881, 38.005459, 54.494873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.441771, 37.631668, 54.426434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356912, 0.282289, -0.890464,
		0.880415, 0.216957, 0.421662,
		0.312223, -0.934474, -0.171097,
		25.535437, 37.351326, 54.375103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007927, 38.100025, 54.112366>,  <25.316881, 38.005459, 54.494873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007927, 38.100025, 54.112366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.891855, 37.723923, 54.041142>,  <25.822212, 37.498260, 53.998405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.891855, 37.723923, 54.041142>,  <26.007927, 38.100025, 54.112366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891855, 37.723923, 54.041142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389546, 0.053901, -0.919428,
		0.874100, -0.336162, 0.350634,
		-0.290177, -0.940260, -0.178065,
		25.804802, 37.441845, 53.987720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549599, 37.795673, 53.798149>,  <26.007927, 38.100025, 54.112366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549599, 37.795673, 53.798149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.255272, 37.544655, 53.696365>,  <26.078676, 37.394043, 53.635296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.255272, 37.544655, 53.696365>,  <26.549599, 37.795673, 53.798149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255272, 37.544655, 53.696365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321760, 0.006643, -0.946798,
		0.595855, -0.778547, 0.197032,
		-0.735818, -0.627551, -0.254463,
		26.034527, 37.356388, 53.620026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920862, 37.335480, 53.438820>,  <26.549599, 37.795673, 53.798149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920862, 37.335480, 53.438820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.535576, 37.273758, 53.350811>,  <26.304405, 37.236725, 53.298008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.535576, 37.273758, 53.350811>,  <26.920862, 37.335480, 53.438820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535576, 37.273758, 53.350811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241601, -0.138718, -0.960409,
		0.117680, -0.978236, 0.170897,
		-0.963214, -0.154310, -0.220019,
		26.246613, 37.227467, 53.284805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883478, 36.685425, 52.932392>,  <26.920862, 37.335480, 53.438820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883478, 36.685425, 52.932392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.575951, 36.935532, 52.878780>,  <26.391434, 37.085594, 52.846615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.575951, 36.935532, 52.878780>,  <26.883478, 36.685425, 52.932392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575951, 36.935532, 52.878780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356026, 0.244429, -0.901942,
		-0.531193, -0.741147, -0.410532,
		-0.768817, 0.625265, -0.134029,
		26.345304, 37.123112, 52.838573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605659, 36.630676, 52.266739>,  <26.883478, 36.685425, 52.932392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605659, 36.630676, 52.266739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.381613, 36.955898, 52.330246>,  <26.247185, 37.151031, 52.368351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.381613, 36.955898, 52.330246>,  <26.605659, 36.630676, 52.266739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381613, 36.955898, 52.330246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180354, 0.306741, -0.934549,
		-0.808543, -0.494823, -0.318449,
		-0.560118, 0.813056, 0.158770,
		26.213577, 37.199814, 52.377876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975210, 36.632076, 51.876831>,  <26.605659, 36.630676, 52.266739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975210, 36.632076, 51.876831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.041332, 37.021145, 51.942039>,  <26.081005, 37.254585, 51.981167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.041332, 37.021145, 51.942039>,  <25.975210, 36.632076, 51.876831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041332, 37.021145, 51.942039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082560, 0.178366, -0.980494,
		-0.982780, 0.148623, 0.109789,
		0.165307, 0.972675, 0.163025,
		26.090925, 37.312946, 51.990948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558718, 36.963631, 51.411701>,  <25.975210, 36.632076, 51.876831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558718, 36.963631, 51.411701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.863140, 37.195713, 51.527740>,  <26.045794, 37.334961, 51.597363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.863140, 37.195713, 51.527740>,  <25.558718, 36.963631, 51.411701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863140, 37.195713, 51.527740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098383, 0.338794, -0.935703,
		-0.641183, 0.740662, 0.200759,
		0.761055, 0.580205, 0.290098,
		26.091457, 37.369774, 51.614769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.533978, 37.635941, 50.874043>,  <25.558718, 36.963631, 51.411701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.533978, 37.635941, 50.874043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.888779, 37.589733, 51.052876>,  <26.101660, 37.562008, 51.160175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.888779, 37.589733, 51.052876>,  <25.533978, 37.635941, 50.874043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.888779, 37.589733, 51.052876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460070, 0.304047, -0.834201,
		-0.039565, 0.945627, 0.322838,
		0.887001, -0.115523, 0.447084,
		26.154879, 37.555077, 51.187000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912918, 38.048168, 50.479645>,  <25.533978, 37.635941, 50.874043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912918, 38.048168, 50.479645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.206945, 37.854679, 50.669670>,  <26.383362, 37.738586, 50.783688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.206945, 37.854679, 50.669670>,  <25.912918, 38.048168, 50.479645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206945, 37.854679, 50.669670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599005, 0.135109, -0.789265,
		0.317599, 0.864730, 0.389066,
		0.735067, -0.483722, 0.475067,
		26.427465, 37.709564, 50.812191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594133, 38.259567, 50.374382>,  <25.912918, 38.048168, 50.479645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594133, 38.259567, 50.374382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.716883, 37.908733, 50.522198>,  <26.790533, 37.698235, 50.610886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.716883, 37.908733, 50.522198>,  <26.594133, 38.259567, 50.374382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716883, 37.908733, 50.522198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740019, -0.024274, -0.672148,
		0.598498, 0.479729, 0.641607,
		0.306874, -0.877081, 0.369537,
		26.808945, 37.645611, 50.633060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272894, 38.282623, 50.398090>,  <26.594133, 38.259567, 50.374382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272894, 38.282623, 50.398090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.177164, 37.894955, 50.374657>,  <27.119726, 37.662354, 50.360596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.177164, 37.894955, 50.374657>,  <27.272894, 38.282623, 50.398090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.177164, 37.894955, 50.374657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705135, -0.132012, -0.696676,
		0.667465, -0.208039, 0.714989,
		-0.239323, -0.969171, -0.058583,
		27.105368, 37.604202, 50.357082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899967, 37.741516, 50.440643>,  <27.272894, 38.282623, 50.398090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899967, 37.741516, 50.440643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.612467, 37.506294, 50.292271>,  <27.439966, 37.365162, 50.203247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.612467, 37.506294, 50.292271>,  <27.899967, 37.741516, 50.440643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612467, 37.506294, 50.292271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652054, -0.384976, -0.653161,
		0.241295, -0.711326, 0.660146,
		-0.718750, -0.588055, -0.370930,
		27.396841, 37.329876, 50.180992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294546, 37.115433, 50.310734>,  <27.899967, 37.741516, 50.440643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294546, 37.115433, 50.310734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.962208, 37.105522, 50.088356>,  <27.762804, 37.099575, 49.954929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.962208, 37.105522, 50.088356>,  <28.294546, 37.115433, 50.310734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962208, 37.105522, 50.088356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491245, -0.502046, -0.711779,
		-0.261479, -0.864486, 0.429293,
		-0.830847, -0.024773, -0.555948,
		27.712954, 37.098091, 49.921570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147898, 36.441978, 50.164719>,  <28.294546, 37.115433, 50.310734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147898, 36.441978, 50.164719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.956757, 36.650078, 49.881592>,  <27.842072, 36.774937, 49.711716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.956757, 36.650078, 49.881592>,  <28.147898, 36.441978, 50.164719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956757, 36.650078, 49.881592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453753, -0.543759, -0.705999,
		-0.752175, -0.658535, 0.023772,
		-0.477851, 0.520248, -0.707814,
		27.813400, 36.806152, 49.669247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178051, 35.989651, 49.741955>,  <28.147898, 36.441978, 50.164719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178051, 35.989651, 49.741955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.066525, 36.320656, 49.547024>,  <27.999609, 36.519257, 49.430065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.066525, 36.320656, 49.547024>,  <28.178051, 35.989651, 49.741955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066525, 36.320656, 49.547024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459355, -0.330716, -0.824391,
		-0.843358, -0.453711, -0.287911,
		-0.278818, 0.827510, -0.487326,
		27.982880, 36.568909, 49.400826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060350, 35.745426, 49.056236>,  <28.178051, 35.989651, 49.741955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060350, 35.745426, 49.056236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.120731, 36.139740, 49.026730>,  <28.156960, 36.376328, 49.009026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.120731, 36.139740, 49.026730>,  <28.060350, 35.745426, 49.056236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120731, 36.139740, 49.026730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652100, -0.155383, -0.742039,
		-0.742952, 0.063912, -0.666286,
		0.150955, 0.985785, -0.073765,
		28.166018, 36.435474, 49.004601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000486, 35.926281, 48.354023>,  <28.060350, 35.745426, 49.056236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000486, 35.926281, 48.354023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.212751, 36.247108, 48.463623>,  <28.340111, 36.439606, 48.529385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.212751, 36.247108, 48.463623>,  <28.000486, 35.926281, 48.354023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212751, 36.247108, 48.463623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680646, -0.210620, -0.701684,
		-0.505092, 0.558854, -0.657696,
		0.530663, 0.802073, 0.274000,
		28.371950, 36.487732, 48.545822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199520, 36.324268, 47.774754>,  <28.000486, 35.926281, 48.354023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199520, 36.324268, 47.774754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.468939, 36.406044, 48.058876>,  <28.630590, 36.455109, 48.229351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.468939, 36.406044, 48.058876>,  <28.199520, 36.324268, 47.774754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468939, 36.406044, 48.058876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737836, -0.243125, -0.629673,
		0.043965, 0.948206, -0.314598,
		0.673546, 0.204439, 0.710310,
		28.671003, 36.467377, 48.271969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693066, 36.733673, 47.467163>,  <28.199520, 36.324268, 47.774754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693066, 36.733673, 47.467163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.878067, 36.586681, 47.789913>,  <28.989067, 36.498486, 47.983562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.878067, 36.586681, 47.789913>,  <28.693066, 36.733673, 47.467163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878067, 36.586681, 47.789913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761101, -0.302238, -0.573915,
		0.454772, 0.879550, 0.139906,
		0.462502, -0.367483, 0.806876,
		29.016817, 36.476437, 48.031975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425192, 36.745472, 47.385807>,  <28.693066, 36.733673, 47.467163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425192, 36.745472, 47.385807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.435127, 36.515636, 47.713032>,  <29.441088, 36.377735, 47.909367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.435127, 36.515636, 47.713032>,  <29.425192, 36.745472, 47.385807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435127, 36.515636, 47.713032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868578, -0.392730, -0.302219,
		0.494930, 0.718057, 0.489324,
		0.024838, -0.574593, 0.818062,
		29.442579, 36.343258, 47.958450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073446, 36.757252, 47.655876>,  <29.425192, 36.745472, 47.385807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073446, 36.757252, 47.655876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.901018, 36.424934, 47.796707>,  <29.797562, 36.225544, 47.881207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.901018, 36.424934, 47.796707>,  <30.073446, 36.757252, 47.655876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901018, 36.424934, 47.796707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798994, -0.532758, -0.278885,
		0.419268, 0.161089, 0.893456,
		-0.431071, -0.830794, 0.352078,
		29.771696, 36.175697, 47.902332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549767, 36.349087, 47.843811>,  <30.073446, 36.757252, 47.655876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549767, 36.349087, 47.843811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.266026, 36.068333, 47.817947>,  <30.095781, 35.899879, 47.802429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.266026, 36.068333, 47.817947>,  <30.549767, 36.349087, 47.843811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266026, 36.068333, 47.817947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652673, -0.619436, -0.436254,
		0.266149, -0.351657, 0.897498,
		-0.709354, -0.701881, -0.064655,
		30.053219, 35.857769, 47.798550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893881, 35.796246, 48.117195>,  <30.549767, 36.349087, 47.843811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893881, 35.796246, 48.117195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.600954, 35.629917, 47.901489>,  <30.425198, 35.530121, 47.772064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.600954, 35.629917, 47.901489>,  <30.893881, 35.796246, 48.117195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600954, 35.629917, 47.901489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664025, -0.611577, -0.430167,
		-0.150930, -0.673104, 0.723983,
		-0.732319, -0.415818, -0.539263,
		30.381258, 35.505173, 47.739712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979156, 35.043858, 48.151035>,  <30.893881, 35.796246, 48.117195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979156, 35.043858, 48.151035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.757889, 35.107521, 47.823948>,  <30.625128, 35.145718, 47.627693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.757889, 35.107521, 47.823948>,  <30.979156, 35.043858, 48.151035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757889, 35.107521, 47.823948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651254, -0.529481, -0.543616,
		-0.519491, -0.833257, 0.189239,
		-0.553171, 0.159161, -0.817723,
		30.591938, 35.155270, 47.578632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899090, 34.317001, 47.753788>,  <30.979156, 35.043858, 48.151035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899090, 34.317001, 47.753788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.826839, 34.590111, 47.470608>,  <30.783489, 34.753979, 47.300701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.826839, 34.590111, 47.470608>,  <30.899090, 34.317001, 47.753788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826839, 34.590111, 47.470608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430168, -0.592453, -0.681143,
		-0.884494, -0.427568, -0.186697,
		-0.180625, 0.682778, -0.707947,
		30.772652, 34.794945, 47.258224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764557, 33.916962, 47.095844>,  <30.899090, 34.317001, 47.753788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764557, 33.916962, 47.095844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.866976, 34.287983, 46.986973>,  <30.928427, 34.510597, 46.921650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.866976, 34.287983, 46.986973>,  <30.764557, 33.916962, 47.095844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866976, 34.287983, 46.986973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657739, -0.373511, -0.654117,
		-0.708391, -0.011537, -0.705726,
		0.256050, 0.927554, -0.272180,
		30.943790, 34.566250, 46.905319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976564, 33.834793, 46.463486>,  <30.764557, 33.916962, 47.095844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976564, 33.834793, 46.463486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.088778, 34.218472, 46.477577>,  <31.156105, 34.448677, 46.486034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.088778, 34.218472, 46.477577>,  <30.976564, 33.834793, 46.463486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088778, 34.218472, 46.477577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706173, -0.181394, -0.684409,
		-0.650093, 0.216880, -0.728246,
		0.280534, 0.959197, 0.035232,
		31.172937, 34.506229, 46.488148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188351, 34.090649, 45.770378>,  <30.976564, 33.834793, 46.463486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188351, 34.090649, 45.770378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.394808, 34.324734, 46.020535>,  <31.518682, 34.465187, 46.170628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.394808, 34.324734, 46.020535>,  <31.188351, 34.090649, 45.770378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394808, 34.324734, 46.020535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811056, -0.099263, -0.576485,
		-0.275289, 0.804779, -0.525876,
		0.516144, 0.585215, 0.625395,
		31.549650, 34.500298, 46.208153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548288, 34.617958, 45.372410>,  <31.188351, 34.090649, 45.770378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548288, 34.617958, 45.372410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.750271, 34.605659, 45.717449>,  <31.871460, 34.598282, 45.924473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.750271, 34.605659, 45.717449>,  <31.548288, 34.617958, 45.372410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750271, 34.605659, 45.717449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851437, -0.146300, -0.503639,
		0.141681, 0.988762, -0.047701,
		0.504958, -0.030742, 0.862596,
		31.901758, 34.596436, 45.976227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165817, 34.908928, 45.210674>,  <31.548288, 34.617958, 45.372410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165817, 34.908928, 45.210674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.264439, 34.718632, 45.548405>,  <32.323612, 34.604454, 45.751041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.264439, 34.718632, 45.548405>,  <32.165817, 34.908928, 45.210674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264439, 34.718632, 45.548405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913345, -0.177259, -0.366580,
		0.324060, 0.861541, 0.390810,
		0.246549, -0.475738, 0.844326,
		32.338402, 34.575909, 45.801704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779911, 35.171036, 45.412521>,  <32.165817, 34.908928, 45.210674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779911, 35.171036, 45.412521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.746780, 34.811626, 45.584942>,  <32.726902, 34.595982, 45.688393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.746780, 34.811626, 45.584942>,  <32.779911, 35.171036, 45.412521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746780, 34.811626, 45.584942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919236, -0.235940, -0.315178,
		0.384894, 0.370128, 0.845495,
		-0.082829, -0.898520, 0.431047,
		32.721931, 34.542072, 45.714256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507832, 35.056702, 45.604012>,  <32.779911, 35.171036, 45.412521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507832, 35.056702, 45.604012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.336864, 34.695679, 45.624805>,  <33.234283, 34.479065, 45.637283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.336864, 34.695679, 45.624805>,  <33.507832, 35.056702, 45.604012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336864, 34.695679, 45.624805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891041, -0.410844, 0.193012,
		-0.152845, 0.128820, 0.979818,
		-0.427416, -0.902559, 0.051988,
		33.208641, 34.424911, 45.640404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837341, 34.679005, 46.092205>,  <33.507832, 35.056702, 45.604012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837341, 34.679005, 46.092205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.635838, 34.376713, 45.924828>,  <33.514935, 34.195335, 45.824402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.635838, 34.376713, 45.924828>,  <33.837341, 34.679005, 46.092205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635838, 34.376713, 45.924828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847257, -0.526720, -0.068718,
		-0.168471, -0.389147, 0.905639,
		-0.503760, -0.755731, -0.418445,
		33.484711, 34.149994, 45.799294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046173, 34.041618, 46.444111>,  <33.837341, 34.679005, 46.092205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046173, 34.041618, 46.444111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.903217, 33.910229, 46.094398>,  <33.817444, 33.831394, 45.884571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.903217, 33.910229, 46.094398>,  <34.046173, 34.041618, 46.444111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903217, 33.910229, 46.094398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844770, -0.512902, -0.152627,
		-0.398287, -0.793117, 0.460796,
		-0.357394, -0.328477, -0.874284,
		33.795998, 33.811687, 45.832115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202465, 33.341305, 46.406277>,  <34.046173, 34.041618, 46.444111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202465, 33.341305, 46.406277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156872, 33.487045, 46.036572>,  <34.129517, 33.574490, 45.814751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156872, 33.487045, 46.036572>,  <34.202465, 33.341305, 46.406277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156872, 33.487045, 46.036572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921952, -0.307828, -0.235046,
		-0.370153, -0.878913, -0.300830,
		-0.113981, 0.364354, -0.924259,
		34.122677, 33.596352, 45.759293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511578, 32.910103, 45.852127>,  <34.202465, 33.341305, 46.406277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511578, 32.910103, 45.852127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502380, 33.289761, 45.726528>,  <34.496861, 33.517555, 45.651169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502380, 33.289761, 45.726528>,  <34.511578, 32.910103, 45.852127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502380, 33.289761, 45.726528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999711, 0.019647, -0.013826,
		-0.006953, -0.314224, -0.949323,
		-0.022996, 0.949146, -0.313996,
		34.495483, 33.574505, 45.632328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014862, 32.808414, 45.315971>,  <34.511578, 32.910103, 45.852127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014862, 32.808414, 45.315971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.961655, 33.133705, 45.542583>,  <34.929729, 33.328880, 45.678551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.961655, 33.133705, 45.542583>,  <35.014862, 32.808414, 45.315971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961655, 33.133705, 45.542583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991066, 0.114737, 0.068002,
		-0.009701, 0.570518, -0.821228,
		-0.133021, 0.813231, 0.566534,
		34.921749, 33.377674, 45.712543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621941, 33.223236, 45.244427>,  <35.014862, 32.808414, 45.315971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621941, 33.223236, 45.244427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.463131, 33.337429, 45.593338>,  <35.367844, 33.405945, 45.802685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.463131, 33.337429, 45.593338>,  <35.621941, 33.223236, 45.244427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463131, 33.337429, 45.593338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911663, 0.012876, 0.410737,
		0.106028, 0.958297, -0.265377,
		-0.397025, 0.285484, 0.872279,
		35.344025, 33.423073, 45.855022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095234, 33.814556, 45.469170>,  <35.621941, 33.223236, 45.244427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095234, 33.814556, 45.469170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.910637, 33.652321, 45.784771>,  <35.799877, 33.554981, 45.974133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.910637, 33.652321, 45.784771>,  <36.095234, 33.814556, 45.469170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910637, 33.652321, 45.784771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871220, -0.039441, 0.489306,
		-0.167336, 0.913206, 0.371556,
		-0.461491, -0.405585, 0.789003,
		35.772190, 33.530643, 46.021473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234085, 34.255657, 46.111061>,  <36.095234, 33.814556, 45.469170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234085, 34.255657, 46.111061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118736, 33.911308, 46.278748>,  <36.049526, 33.704700, 46.379360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118736, 33.911308, 46.278748>,  <36.234085, 34.255657, 46.111061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118736, 33.911308, 46.278748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887683, -0.076224, 0.454102,
		-0.358970, 0.503078, 0.786163,
		-0.288374, -0.860873, 0.419212,
		36.032223, 33.653046, 46.404510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325611, 34.284081, 46.875660>,  <36.234085, 34.255657, 46.111061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325611, 34.284081, 46.875660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.318787, 33.894768, 46.784073>,  <36.314690, 33.661179, 46.729122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.318787, 33.894768, 46.784073>,  <36.325611, 34.284081, 46.875660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318787, 33.894768, 46.784073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874890, -0.125391, 0.467808,
		-0.484021, -0.192338, 0.853657,
		-0.017063, -0.973285, -0.228966,
		36.313667, 33.602783, 46.715382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492531, 33.863098, 47.500679>,  <36.325611, 34.284081, 46.875660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492531, 33.863098, 47.500679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.587696, 33.642445, 47.180904>,  <36.644794, 33.510052, 46.989040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.587696, 33.642445, 47.180904>,  <36.492531, 33.863098, 47.500679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587696, 33.642445, 47.180904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866976, -0.250464, 0.430836,
		-0.437894, -0.795593, 0.418665,
		0.237910, -0.551633, -0.799437,
		36.659069, 33.476955, 46.941074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595749, 33.217049, 47.880024>,  <36.492531, 33.863098, 47.500679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595749, 33.217049, 47.880024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753071, 33.211769, 47.512299>,  <36.847466, 33.208603, 47.291664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753071, 33.211769, 47.512299>,  <36.595749, 33.217049, 47.880024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753071, 33.211769, 47.512299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912598, -0.115872, 0.392096,
		-0.111696, -0.993177, -0.033534,
		0.393306, -0.013192, -0.919313,
		36.871063, 33.207809, 47.236504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123821, 32.823330, 47.979122>,  <36.595749, 33.217049, 47.880024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123821, 32.823330, 47.979122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209084, 33.020077, 47.641453>,  <37.260242, 33.138123, 47.438850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209084, 33.020077, 47.641453>,  <37.123821, 32.823330, 47.979122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209084, 33.020077, 47.641453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977008, -0.103337, 0.186485,
		0.004491, -0.864518, -0.502581,
		0.213155, 0.491863, -0.844177,
		37.273029, 33.167637, 47.388199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739521, 32.544472, 47.753086>,  <37.123821, 32.823330, 47.979122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739521, 32.544472, 47.753086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735004, 32.904919, 47.579716>,  <37.732296, 33.121185, 47.475693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735004, 32.904919, 47.579716>,  <37.739521, 32.544472, 47.753086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735004, 32.904919, 47.579716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925709, 0.173307, 0.336197,
		0.378069, -0.397428, -0.836131,
		-0.011293, 0.901119, -0.433425,
		37.731617, 33.175255, 47.449688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347076, 32.582161, 47.437069>,  <37.739521, 32.544472, 47.753086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347076, 32.582161, 47.437069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.238209, 32.966976, 47.429077>,  <38.172890, 33.197865, 47.424282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.238209, 32.966976, 47.429077>,  <38.347076, 32.582161, 47.437069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238209, 32.966976, 47.429077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915897, 0.265370, 0.301183,
		0.295053, 0.063674, -0.953357,
		-0.272170, 0.962042, -0.019980,
		38.156559, 33.255589, 47.423084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879086, 32.957668, 47.067005>,  <38.347076, 32.582161, 47.437069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879086, 32.957668, 47.067005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.678871, 33.231724, 47.278687>,  <38.558743, 33.396156, 47.405693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.678871, 33.231724, 47.278687>,  <38.879086, 32.957668, 47.067005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678871, 33.231724, 47.278687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813684, 0.163591, 0.557814,
		0.295607, 0.709806, -0.639368,
		-0.500534, 0.685138, 0.529199,
		38.528709, 33.437263, 47.437447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973530, 33.191364, 46.364689>,  <38.879086, 32.957668, 47.067005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973530, 33.191364, 46.364689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.797295, 33.539169, 46.453979>,  <38.691555, 33.747852, 46.507553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.797295, 33.539169, 46.453979>,  <38.973530, 33.191364, 46.364689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797295, 33.539169, 46.453979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887160, -0.459744, 0.039787,
		0.137223, -0.180511, 0.973954,
		-0.440588, 0.869512, 0.223230,
		38.665119, 33.800022, 46.520947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111866, 32.554153, 45.936550>,  <38.973530, 33.191364, 46.364689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111866, 32.554153, 45.936550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.486748, 32.517891, 45.801834>,  <39.711678, 32.496136, 45.721004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.486748, 32.517891, 45.801834>,  <39.111866, 32.554153, 45.936550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486748, 32.517891, 45.801834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024207, -0.946395, 0.322104,
		-0.347932, -0.310030, -0.884774,
		0.937207, -0.090652, -0.336786,
		39.767910, 32.490696, 45.700798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388279, 31.888268, 45.517441>,  <39.111866, 32.554153, 45.936550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388279, 31.888268, 45.517441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.407162, 32.223774, 45.300461>,  <39.418491, 32.425076, 45.170273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.407162, 32.223774, 45.300461>,  <39.388279, 31.888268, 45.517441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407162, 32.223774, 45.300461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921636, -0.245973, -0.300139,
		-0.385173, -0.485770, -0.784646,
		0.047204, 0.838764, -0.542445,
		39.421322, 32.475403, 45.137726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536118, 31.797136, 44.730980>,  <39.388279, 31.888268, 45.517441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536118, 31.797136, 44.730980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.669106, 32.116055, 44.932487>,  <39.748898, 32.307407, 45.053391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.669106, 32.116055, 44.932487>,  <39.536118, 31.797136, 44.730980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669106, 32.116055, 44.932487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940706, -0.318493, -0.116764,
		0.067352, 0.512719, -0.855911,
		0.332469, 0.797297, 0.503769,
		39.768845, 32.355244, 45.083618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878513, 32.343822, 44.257107>,  <39.536118, 31.797136, 44.730980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878513, 32.343822, 44.257107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.016174, 32.375977, 44.631294>,  <40.098770, 32.395271, 44.855804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.016174, 32.375977, 44.631294>,  <39.878513, 32.343822, 44.257107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016174, 32.375977, 44.631294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931661, -0.152837, -0.329619,
		0.116476, 0.984976, -0.127495,
		0.344153, 0.080389, 0.935466,
		40.119419, 32.400093, 44.911934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583790, 32.852367, 44.249172>,  <39.878513, 32.343822, 44.257107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583790, 32.852367, 44.249172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.527966, 32.577221, 44.534092>,  <40.494473, 32.412132, 44.705044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.527966, 32.577221, 44.534092>,  <40.583790, 32.852367, 44.249172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527966, 32.577221, 44.534092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948452, -0.299559, -0.103456,
		0.284538, 0.661140, 0.694213,
		-0.139559, -0.687865, 0.712295,
		40.486099, 32.370861, 44.747780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117668, 32.822357, 44.855053>,  <40.583790, 32.852367, 44.249172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117668, 32.822357, 44.855053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.984985, 32.449913, 44.794373>,  <40.905376, 32.226448, 44.757965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.984985, 32.449913, 44.794373>,  <41.117668, 32.822357, 44.855053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984985, 32.449913, 44.794373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936370, -0.305381, -0.173073,
		0.114822, -0.199458, 0.973156,
		-0.331704, -0.931106, -0.151702,
		40.885475, 32.170582, 44.748863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661686, 32.331669, 45.096737>,  <41.117668, 32.822357, 44.855053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661686, 32.331669, 45.096737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.434811, 32.103069, 44.859524>,  <41.298687, 31.965910, 44.717197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.434811, 32.103069, 44.859524>,  <41.661686, 32.331669, 45.096737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434811, 32.103069, 44.859524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822139, -0.350195, -0.448832,
		0.048830, -0.742128, 0.668477,
		-0.567188, -0.571498, -0.593032,
		41.264656, 31.931620, 44.681614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963032, 31.602730, 45.175407>,  <41.661686, 32.331669, 45.096737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963032, 31.602730, 45.175407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.776505, 31.676907, 44.829422>,  <41.664589, 31.721413, 44.621830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.776505, 31.676907, 44.829422>,  <41.963032, 31.602730, 45.175407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776505, 31.676907, 44.829422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672469, -0.560965, -0.482808,
		-0.574748, -0.806801, 0.136880,
		-0.466315, 0.185445, -0.864963,
		41.636608, 31.732538, 44.569935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536221, 31.507421, 44.882824>,  <41.963032, 31.602730, 45.175407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536221, 31.507421, 44.882824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.550056, 31.183849, 44.648071>,  <42.558357, 30.989706, 44.507217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.550056, 31.183849, 44.648071>,  <42.536221, 31.507421, 44.882824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550056, 31.183849, 44.648071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567216, 0.467602, -0.677949,
		0.822842, 0.356340, -0.442665,
		0.034590, -0.808932, -0.586884,
		42.560432, 30.941170, 44.472008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306442, 31.733175, 44.973141>,  <42.536221, 31.507421, 44.882824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306442, 31.733175, 44.973141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.105881, 31.559383, 44.673859>,  <42.985542, 31.455109, 44.494289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.105881, 31.559383, 44.673859>,  <43.306442, 31.733175, 44.973141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105881, 31.559383, 44.673859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386796, 0.886107, -0.255350,
		0.773937, 0.161369, -0.612357,
		-0.501408, -0.434482, -0.748208,
		42.955460, 31.429039, 44.449394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367542, 32.125698, 44.406635>,  <43.306442, 31.733175, 44.973141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367542, 32.125698, 44.406635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.027676, 31.919256, 44.363369>,  <42.823753, 31.795391, 44.337410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.027676, 31.919256, 44.363369>,  <43.367542, 32.125698, 44.406635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027676, 31.919256, 44.363369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494039, 0.850839, -0.178879,
		0.184353, -0.098549, -0.977907,
		-0.849670, -0.516101, -0.108168,
		42.772774, 31.764425, 44.330917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072014, 32.378834, 43.808308>,  <43.367542, 32.125698, 44.406635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072014, 32.378834, 43.808308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.800068, 32.199856, 44.040714>,  <42.636902, 32.092468, 44.180157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.800068, 32.199856, 44.040714>,  <43.072014, 32.378834, 43.808308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800068, 32.199856, 44.040714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642654, 0.745162, -0.178127,
		-0.353250, -0.494494, -0.794160,
		-0.679861, -0.447446, 0.581017,
		42.596111, 32.065620, 44.215019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646305, 32.563850, 43.404816>,  <43.072014, 32.378834, 43.808308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646305, 32.563850, 43.404816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.483006, 32.463203, 43.755821>,  <42.385025, 32.402817, 43.966423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.483006, 32.463203, 43.755821>,  <42.646305, 32.563850, 43.404816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483006, 32.463203, 43.755821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725804, 0.672479, -0.144846,
		-0.553662, -0.696033, -0.457161,
		-0.408249, -0.251613, 0.877510,
		42.360531, 32.387718, 44.019073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673050, 33.036388, 42.863575>,  <42.646305, 32.563850, 43.404816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673050, 33.036388, 42.863575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.560879, 32.725613, 42.638103>,  <42.493576, 32.539146, 42.502823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.560879, 32.725613, 42.638103>,  <42.673050, 33.036388, 42.863575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560879, 32.725613, 42.638103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244964, 0.625721, -0.740585,
		0.928090, -0.069603, -0.365793,
		-0.280431, -0.776936, -0.563675,
		42.476749, 32.492531, 42.469002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107517, 32.887272, 42.257584>,  <42.673050, 33.036388, 42.863575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107517, 32.887272, 42.257584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.716564, 32.808334, 42.227150>,  <42.481995, 32.760971, 42.208889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.716564, 32.808334, 42.227150>,  <43.107517, 32.887272, 42.257584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716564, 32.808334, 42.227150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098545, 0.743204, -0.661768,
		0.187139, -0.639300, -0.745839,
		-0.977378, -0.197341, -0.076083,
		42.423351, 32.749130, 42.204327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898006, 32.909000, 41.581505>,  <43.107517, 32.887272, 42.257584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898006, 32.909000, 41.581505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.583828, 33.001358, 41.811207>,  <42.395321, 33.056770, 41.949028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.583828, 33.001358, 41.811207>,  <42.898006, 32.909000, 41.581505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583828, 33.001358, 41.811207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203596, 0.779798, -0.592000,
		-0.584491, -0.581898, -0.565477,
		-0.785442, 0.230889, 0.574257,
		42.348194, 33.070625, 41.983482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326008, 32.964664, 41.045521>,  <42.898006, 32.909000, 41.581505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326008, 32.964664, 41.045521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.231846, 33.156788, 41.383488>,  <42.175346, 33.272060, 41.586269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.231846, 33.156788, 41.383488>,  <42.326008, 32.964664, 41.045521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231846, 33.156788, 41.383488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254190, 0.808663, -0.530520,
		-0.938067, -0.339659, -0.068278,
		-0.235409, 0.480307, 0.844918,
		42.161224, 33.300880, 41.636963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557312, 33.131493, 40.999031>,  <42.326008, 32.964664, 41.045521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557312, 33.131493, 40.999031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.780746, 33.379948, 41.218910>,  <41.914806, 33.529022, 41.350838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.780746, 33.379948, 41.218910>,  <41.557312, 33.131493, 40.999031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780746, 33.379948, 41.218910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166114, 0.733074, -0.659552,
		-0.812644, 0.277103, 0.512663,
		0.558584, 0.621142, 0.549697,
		41.948322, 33.566292, 41.383820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141994, 33.655663, 40.663349>,  <41.557312, 33.131493, 40.999031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141994, 33.655663, 40.663349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.520950, 33.648319, 40.791168>,  <41.748325, 33.643913, 40.867859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.520950, 33.648319, 40.791168>,  <41.141994, 33.655663, 40.663349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520950, 33.648319, 40.791168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236570, 0.712626, -0.660454,
		-0.215592, 0.701304, 0.679479,
		0.947394, -0.018356, 0.319544,
		41.805168, 33.642811, 40.887032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480915, 34.310688, 41.108822>,  <41.141994, 33.655663, 40.663349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480915, 34.310688, 41.108822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.717304, 34.089657, 40.873734>,  <41.859138, 33.957039, 40.732681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.717304, 34.089657, 40.873734>,  <41.480915, 34.310688, 41.108822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717304, 34.089657, 40.873734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227586, 0.813164, -0.535695,
		0.773921, 0.182826, 0.606317,
		0.590974, -0.552575, -0.587716,
		41.894596, 33.923885, 40.697418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248867, 34.612011, 41.179543>,  <41.480915, 34.310688, 41.108822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248867, 34.612011, 41.179543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.172512, 34.429367, 40.831963>,  <42.126698, 34.319782, 40.623417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.172512, 34.429367, 40.831963>,  <42.248867, 34.612011, 41.179543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172512, 34.429367, 40.831963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565584, 0.672354, -0.477551,
		0.802294, -0.582623, 0.129904,
		-0.190890, -0.456607, -0.868948,
		42.115246, 34.292385, 40.571278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899124, 34.481731, 40.824390>,  <42.248867, 34.612011, 41.179543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899124, 34.481731, 40.824390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.623226, 34.515415, 40.536736>,  <42.457687, 34.535625, 40.364143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.623226, 34.515415, 40.536736>,  <42.899124, 34.481731, 40.824390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623226, 34.515415, 40.536736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682743, 0.406323, -0.607260,
		0.241064, -0.909841, -0.337754,
		-0.689746, 0.084210, -0.719137,
		42.416302, 34.540680, 40.320995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153481, 34.111477, 40.237186>,  <42.899124, 34.481731, 40.824390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153481, 34.111477, 40.237186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.928387, 34.427135, 40.138733>,  <42.793331, 34.616531, 40.079662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.928387, 34.427135, 40.138733>,  <43.153481, 34.111477, 40.237186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928387, 34.427135, 40.138733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609215, 0.194660, -0.768742,
		-0.558738, -0.582543, -0.590301,
		-0.562733, 0.789146, -0.246130,
		42.759567, 34.663879, 40.064896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873383, 34.061356, 39.587288>,  <43.153481, 34.111477, 40.237186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873383, 34.061356, 39.587288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.883884, 34.453842, 39.663734>,  <42.890186, 34.689335, 39.709602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.883884, 34.453842, 39.663734>,  <42.873383, 34.061356, 39.587288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883884, 34.453842, 39.663734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599489, 0.137530, -0.788479,
		-0.799953, 0.135273, -0.584617,
		0.026258, 0.981217, 0.191112,
		42.891762, 34.748207, 39.721069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715694, 34.420601, 39.006561>,  <42.873383, 34.061356, 39.587288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715694, 34.420601, 39.006561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.976509, 34.612282, 39.241581>,  <43.132999, 34.727291, 39.382591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.976509, 34.612282, 39.241581>,  <42.715694, 34.420601, 39.006561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976509, 34.612282, 39.241581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614803, 0.119321, -0.779602,
		-0.443694, 0.869556, -0.216813,
		0.652038, 0.479202, 0.587547,
		43.172119, 34.756042, 39.417847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996410, 34.980049, 38.641903>,  <42.715694, 34.420601, 39.006561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996410, 34.980049, 38.641903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.079124, 34.624199, 38.479027>,  <43.128754, 34.410690, 38.381302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.079124, 34.624199, 38.479027>,  <42.996410, 34.980049, 38.641903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079124, 34.624199, 38.479027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388200, 0.456627, -0.800495,
		0.898077, 0.007458, 0.439776,
		0.206784, -0.889627, -0.407191,
		43.141159, 34.357311, 38.356869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489372, 35.248161, 38.276375>,  <42.996410, 34.980049, 38.641903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489372, 35.248161, 38.276375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.503605, 34.874142, 38.135288>,  <43.512142, 34.649731, 38.050636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.503605, 34.874142, 38.135288>,  <43.489372, 35.248161, 38.276375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503605, 34.874142, 38.135288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638979, 0.292655, -0.711379,
		0.768401, -0.200069, 0.607891,
		0.035578, -0.935054, -0.352717,
		43.514278, 34.593624, 38.029472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178669, 34.952904, 38.288128>,  <43.489372, 35.248161, 38.276375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178669, 34.952904, 38.288128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.989117, 34.773724, 37.984871>,  <43.875385, 34.666214, 37.802917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.989117, 34.773724, 37.984871>,  <44.178669, 34.952904, 38.288128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989117, 34.773724, 37.984871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658581, 0.391236, -0.642810,
		0.584559, -0.803913, 0.109612,
		-0.473879, -0.447949, -0.758143,
		43.846954, 34.639339, 37.757427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643024, 34.834278, 37.928627>,  <44.178669, 34.952904, 38.288128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643024, 34.834278, 37.928627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.360790, 34.703892, 37.676949>,  <44.191448, 34.625660, 37.525940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.360790, 34.703892, 37.676949>,  <44.643024, 34.834278, 37.928627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360790, 34.703892, 37.676949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605185, 0.184723, -0.774357,
		0.368643, -0.927158, 0.066932,
		-0.705587, -0.325967, -0.629200,
		44.149113, 34.606102, 37.488190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774517, 34.182922, 37.437881>,  <44.643024, 34.834278, 37.928627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774517, 34.182922, 37.437881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.555214, 34.470192, 37.266468>,  <44.423634, 34.642555, 37.163620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.555214, 34.470192, 37.266468>,  <44.774517, 34.182922, 37.437881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555214, 34.470192, 37.266468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596552, -0.023289, -0.802236,
		-0.586125, -0.695475, -0.415659,
		-0.548255, 0.718173, -0.428538,
		44.390736, 34.685642, 37.137905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529419, 34.031387, 36.761997>,  <44.774517, 34.182922, 37.437881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529419, 34.031387, 36.761997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.597672, 34.425518, 36.763130>,  <44.638622, 34.661999, 36.763809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.597672, 34.425518, 36.763130>,  <44.529419, 34.031387, 36.761997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597672, 34.425518, 36.763130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630985, -0.107062, -0.768372,
		-0.756797, 0.132899, -0.639997,
		0.170635, 0.985330, 0.002833,
		44.648861, 34.721119, 36.763981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.862267, 33.377453, 36.632317>,  <44.529419, 34.031387, 36.761997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.862267, 33.377453, 36.632317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.173306, 33.141956, 36.544014>,  <45.359928, 33.000660, 36.491032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.173306, 33.141956, 36.544014>,  <44.862267, 33.377453, 36.632317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173306, 33.141956, 36.544014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388056, 0.725607, -0.568249,
		0.494733, 0.356201, 0.792692,
		0.777593, -0.588740, -0.220756,
		45.406582, 32.965336, 36.477787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488422, 33.589550, 36.962566>,  <44.862267, 33.377453, 36.632317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488422, 33.589550, 36.962566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.533539, 33.428894, 36.599037>,  <45.560608, 33.332500, 36.380920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.533539, 33.428894, 36.599037>,  <45.488422, 33.589550, 36.962566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533539, 33.428894, 36.599037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457983, 0.832723, -0.311164,
		0.881776, -0.381130, 0.277869,
		0.112794, -0.401636, -0.908827,
		45.567375, 33.308403, 36.326389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.139271, 33.533470, 36.756992>,  <45.488422, 33.589550, 36.962566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.139271, 33.533470, 36.756992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.902851, 33.577156, 36.437309>,  <45.760998, 33.603367, 36.245499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.902851, 33.577156, 36.437309>,  <46.139271, 33.533470, 36.756992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.902851, 33.577156, 36.437309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446211, 0.869661, -0.211151,
		0.671978, -0.481416, -0.562748,
		-0.591052, 0.109215, -0.799206,
		45.725536, 33.609921, 36.197548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.449726, 33.287491, 36.154572>,  <46.139271, 33.533470, 36.756992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.449726, 33.287491, 36.154572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.182213, 33.579567, 36.098648>,  <46.021706, 33.754814, 36.065094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.182213, 33.579567, 36.098648>,  <46.449726, 33.287491, 36.154572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.182213, 33.579567, 36.098648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713002, 0.576678, -0.398837,
		-0.210599, -0.366424, -0.906301,
		-0.668787, 0.730189, -0.139813,
		45.981575, 33.798622, 36.056705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.476273, 33.486858, 35.530968>,  <46.449726, 33.287491, 36.154572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.476273, 33.486858, 35.530968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.340134, 33.805622, 35.730610>,  <46.258450, 33.996880, 35.850395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.340134, 33.805622, 35.730610>,  <46.476273, 33.486858, 35.530968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.340134, 33.805622, 35.730610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663768, 0.579576, -0.472762,
		-0.666017, 0.170389, -0.726215,
		-0.340343, 0.796906, 0.499106,
		46.238029, 34.044693, 35.880341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.087612, 34.029896, 35.128452>,  <46.476273, 33.486858, 35.530968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.087612, 34.029896, 35.128452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.331814, 34.108913, 35.435246>,  <46.478336, 34.156322, 35.619320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.331814, 34.108913, 35.435246>,  <46.087612, 34.029896, 35.128452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331814, 34.108913, 35.435246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646173, 0.435738, -0.626572,
		-0.457976, 0.878129, 0.138375,
		0.610506, 0.197541, 0.766981,
		46.514965, 34.168175, 35.665340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.204136, 34.711384, 35.087559>,  <46.087612, 34.029896, 35.128452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.204136, 34.711384, 35.087559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.512726, 34.518269, 35.253330>,  <46.697880, 34.402401, 35.352795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.512726, 34.518269, 35.253330>,  <46.204136, 34.711384, 35.087559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.512726, 34.518269, 35.253330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630801, 0.495168, -0.597410,
		0.083207, 0.722308, 0.686548,
		0.771471, -0.482784, 0.414431,
		46.744167, 34.373432, 35.377659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550175, 35.219868, 35.406342>,  <46.204136, 34.711384, 35.087559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.550175, 35.219868, 35.406342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.742214, 34.903061, 35.255493>,  <46.857437, 34.712978, 35.164986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.742214, 34.903061, 35.255493>,  <46.550175, 35.219868, 35.406342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.742214, 34.903061, 35.255493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635463, 0.610372, -0.472898,
		0.604723, -0.012605, 0.796336,
		0.480101, -0.792014, -0.377116,
		46.886246, 34.665455, 35.142357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.223625, 35.046177, 35.657585>,  <46.550175, 35.219868, 35.406342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.223625, 35.046177, 35.657585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.132725, 34.980797, 35.273575>,  <47.078186, 34.941570, 35.043171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.132725, 34.980797, 35.273575>,  <47.223625, 35.046177, 35.657585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.132725, 34.980797, 35.273575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707311, 0.649909, -0.278082,
		0.669379, -0.742228, -0.032080,
		-0.227249, -0.163452, -0.960022,
		47.064548, 34.931763, 34.985569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.848621, 34.860146, 35.305153>,  <47.223625, 35.046177, 35.657585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.848621, 34.860146, 35.305153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.600323, 34.965179, 35.009663>,  <47.451344, 35.028198, 34.832367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.600323, 34.965179, 35.009663>,  <47.848621, 34.860146, 35.305153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.600323, 34.965179, 35.009663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708131, 0.592178, -0.384545,
		0.336484, -0.761823, -0.553538,
		-0.620749, 0.262584, -0.738729,
		47.414097, 35.043953, 34.788044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.122505, 34.743961, 34.644806>,  <47.848621, 34.860146, 35.305153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.122505, 34.743961, 34.644806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.862236, 35.043468, 34.594269>,  <47.706074, 35.223175, 34.563946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.862236, 35.043468, 34.594269>,  <48.122505, 34.743961, 34.644806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.862236, 35.043468, 34.594269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667734, 0.484958, -0.564754,
		-0.361598, -0.451837, -0.815530,
		-0.650675, 0.748771, -0.126347,
		47.667034, 35.268101, 34.556366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.204491, 32.556858, 55.431984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.554075, 32.711746, 55.549458>,  <31.763826, 32.804680, 55.619942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.554075, 32.711746, 55.549458>,  <31.204491, 32.556858, 55.431984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554075, 32.711746, 55.549458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430794, -0.337537, -0.836950,
		-0.224958, 0.857979, -0.461808,
		0.873963, 0.387222, 0.293681,
		31.816263, 32.827911, 55.637562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484758, 32.896103, 54.792305>,  <31.204491, 32.556858, 55.431984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484758, 32.896103, 54.792305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.812897, 32.842686, 55.014729>,  <32.009781, 32.810635, 55.148182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.812897, 32.842686, 55.014729>,  <31.484758, 32.896103, 54.792305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812897, 32.842686, 55.014729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536778, -0.155568, -0.829258,
		0.197246, 0.978757, -0.055937,
		0.820344, -0.133542, 0.556060,
		32.058998, 32.802624, 55.181545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068546, 33.328129, 54.437508>,  <31.484758, 32.896103, 54.792305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068546, 33.328129, 54.437508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.241417, 33.066048, 54.685360>,  <32.345139, 32.908798, 54.834072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.241417, 33.066048, 54.685360>,  <32.068546, 33.328129, 54.437508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241417, 33.066048, 54.685360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730922, -0.147938, -0.666234,
		0.528183, 0.740829, 0.414964,
		0.432177, -0.655199, 0.619627,
		32.371071, 32.869488, 54.871246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795662, 33.539585, 54.520416>,  <32.068546, 33.328129, 54.437508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795662, 33.539585, 54.520416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.746342, 33.151432, 54.603516>,  <32.716747, 32.918541, 54.653374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.746342, 33.151432, 54.603516>,  <32.795662, 33.539585, 54.520416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746342, 33.151432, 54.603516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708571, -0.232659, -0.666180,
		0.694782, 0.065060, 0.716271,
		-0.123305, -0.970380, 0.207747,
		32.709351, 32.860317, 54.665840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527416, 33.285172, 54.710121>,  <32.795662, 33.539585, 54.520416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527416, 33.285172, 54.710121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.264606, 32.994537, 54.629738>,  <33.106918, 32.820156, 54.581509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.264606, 32.994537, 54.629738>,  <33.527416, 33.285172, 54.710121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264606, 32.994537, 54.629738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561575, -0.293879, -0.773479,
		0.502942, -0.621051, 0.601120,
		-0.657026, -0.726588, -0.200962,
		33.067497, 32.776562, 54.569450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935207, 32.732849, 54.562378>,  <33.527416, 33.285172, 54.710121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935207, 32.732849, 54.562378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.570332, 32.625874, 54.438194>,  <33.351406, 32.561687, 54.363686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.570332, 32.625874, 54.438194>,  <33.935207, 32.732849, 54.562378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570332, 32.625874, 54.438194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390940, -0.340988, -0.854923,
		0.122774, -0.901224, 0.415597,
		-0.912191, -0.267436, -0.310460,
		33.296673, 32.545643, 54.345055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978973, 32.056950, 54.194450>,  <33.935207, 32.732849, 54.562378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978973, 32.056950, 54.194450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.629398, 32.156166, 54.027256>,  <33.419655, 32.215698, 53.926941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.629398, 32.156166, 54.027256>,  <33.978973, 32.056950, 54.194450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629398, 32.156166, 54.027256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320122, -0.353359, -0.879011,
		-0.365728, -0.902006, 0.229410,
		-0.873936, 0.248040, -0.417985,
		33.367218, 32.230579, 53.901859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824375, 31.520475, 53.760326>,  <33.978973, 32.056950, 54.194450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824375, 31.520475, 53.760326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.629017, 31.843491, 53.628056>,  <33.511803, 32.037300, 53.548695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.629017, 31.843491, 53.628056>,  <33.824375, 31.520475, 53.760326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629017, 31.843491, 53.628056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398352, -0.130833, -0.907854,
		-0.776391, -0.575119, -0.257787,
		-0.488397, 0.807540, -0.330677,
		33.482498, 32.085754, 53.528851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462517, 31.317274, 53.240597>,  <33.824375, 31.520475, 53.760326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462517, 31.317274, 53.240597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.508026, 31.702812, 53.144215>,  <33.535332, 31.934135, 53.086384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.508026, 31.702812, 53.144215>,  <33.462517, 31.317274, 53.240597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508026, 31.702812, 53.144215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260536, -0.262988, -0.928956,
		-0.958737, 0.042915, -0.281038,
		0.113775, 0.963844, -0.240955,
		33.542160, 31.991966, 53.071930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143951, 31.391289, 52.558144>,  <33.462517, 31.317274, 53.240597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143951, 31.391289, 52.558144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.374287, 31.715393, 52.601757>,  <33.512489, 31.909855, 52.627926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.374287, 31.715393, 52.601757>,  <33.143951, 31.391289, 52.558144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374287, 31.715393, 52.601757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190510, -0.003294, -0.981680,
		-0.795056, 0.586063, -0.156259,
		0.575841, 0.810259, 0.109032,
		33.547039, 31.958471, 52.634468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966106, 31.857056, 51.949341>,  <33.143951, 31.391289, 52.558144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966106, 31.857056, 51.949341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.319344, 31.990368, 52.081444>,  <33.531288, 32.070354, 52.160706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.319344, 31.990368, 52.081444>,  <32.966106, 31.857056, 51.949341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319344, 31.990368, 52.081444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316518, 0.096428, -0.943673,
		-0.346352, 0.937884, -0.020333,
		0.883095, 0.333279, 0.330255,
		33.584270, 32.090351, 52.180519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141132, 32.603512, 51.611717>,  <32.966106, 31.857056, 51.949341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141132, 32.603512, 51.611717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.480118, 32.409229, 51.697414>,  <33.683510, 32.292660, 51.748833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.480118, 32.409229, 51.697414>,  <33.141132, 32.603512, 51.611717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480118, 32.409229, 51.697414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295261, 0.095867, -0.950595,
		0.441173, 0.868848, 0.224654,
		0.847459, -0.485708, 0.214243,
		33.734356, 32.263515, 51.761688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632519, 32.913349, 51.179161>,  <33.141132, 32.603512, 51.611717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632519, 32.913349, 51.179161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.848324, 32.601273, 51.305794>,  <33.977806, 32.414028, 51.381771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.848324, 32.601273, 51.305794>,  <33.632519, 32.913349, 51.179161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848324, 32.601273, 51.305794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454873, -0.046321, -0.889351,
		0.708529, 0.623823, 0.329897,
		0.539517, -0.780192, 0.316580,
		34.010178, 32.367214, 51.400768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277992, 33.039883, 50.936073>,  <33.632519, 32.913349, 51.179161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277992, 33.039883, 50.936073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.281208, 32.641430, 50.971088>,  <34.283138, 32.402359, 50.992100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.281208, 32.641430, 50.971088>,  <34.277992, 33.039883, 50.936073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281208, 32.641430, 50.971088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445664, -0.074802, -0.892070,
		0.895164, 0.046183, 0.443338,
		0.008036, -0.996128, 0.087542,
		34.283619, 32.342590, 50.997353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881535, 32.851643, 50.674320>,  <34.277992, 33.039883, 50.936073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881535, 32.851643, 50.674320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.687855, 32.502003, 50.658817>,  <34.571648, 32.292221, 50.649513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.687855, 32.502003, 50.658817>,  <34.881535, 32.851643, 50.674320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687855, 32.502003, 50.658817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265140, -0.104367, -0.958545,
		0.833816, -0.474407, 0.282292,
		-0.484202, -0.874097, -0.038762,
		34.542595, 32.239773, 50.647190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217384, 32.399578, 50.197262>,  <34.881535, 32.851643, 50.674320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217384, 32.399578, 50.197262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.840706, 32.265743, 50.183006>,  <34.614700, 32.185444, 50.174454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.840706, 32.265743, 50.183006>,  <35.217384, 32.399578, 50.197262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840706, 32.265743, 50.183006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094557, -0.161505, -0.982331,
		0.322917, -0.928423, 0.183725,
		-0.941692, -0.334583, -0.035636,
		34.558197, 32.165367, 50.172314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235561, 31.760056, 49.897446>,  <35.217384, 32.399578, 50.197262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235561, 31.760056, 49.897446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.845898, 31.844658, 49.865749>,  <34.612099, 31.895420, 49.846733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.845898, 31.844658, 49.865749>,  <35.235561, 31.760056, 49.897446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845898, 31.844658, 49.865749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042053, -0.174849, -0.983697,
		-0.221918, -0.961608, 0.161436,
		-0.974158, 0.211512, -0.079241,
		34.553650, 31.908110, 49.841976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019070, 31.307245, 49.443752>,  <35.235561, 31.760056, 49.897446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019070, 31.307245, 49.443752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.721996, 31.570400, 49.393791>,  <34.543751, 31.728292, 49.363815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.721996, 31.570400, 49.393791>,  <35.019070, 31.307245, 49.443752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721996, 31.570400, 49.393791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072312, -0.264227, -0.961746,
		-0.665722, -0.705245, 0.243811,
		-0.742688, 0.657886, -0.124904,
		34.499191, 31.767765, 49.356319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552296, 30.968851, 49.087223>,  <35.019070, 31.307245, 49.443752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552296, 30.968851, 49.087223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.504597, 31.363935, 49.046822>,  <34.475975, 31.600986, 49.022579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.504597, 31.363935, 49.046822>,  <34.552296, 30.968851, 49.087223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504597, 31.363935, 49.046822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089441, -0.090633, -0.991860,
		-0.988828, -0.127314, -0.077534,
		-0.119250, 0.987713, -0.101007,
		34.468822, 31.660250, 49.016518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044754, 31.084574, 48.509068>,  <34.552296, 30.968851, 49.087223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044754, 31.084574, 48.509068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.185349, 31.458632, 48.526798>,  <34.269707, 31.683065, 48.537437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.185349, 31.458632, 48.526798>,  <34.044754, 31.084574, 48.509068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185349, 31.458632, 48.526798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185575, 0.116000, -0.975759,
		-0.917615, 0.334743, 0.214312,
		0.351489, 0.935142, 0.044323,
		34.290794, 31.739174, 48.540096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511719, 31.421829, 48.171410>,  <34.044754, 31.084574, 48.509068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511719, 31.421829, 48.171410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.837875, 31.653234, 48.162853>,  <34.033569, 31.792078, 48.157719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.837875, 31.653234, 48.162853>,  <33.511719, 31.421829, 48.171410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837875, 31.653234, 48.162853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047130, 0.029516, -0.998452,
		-0.576987, 0.815139, 0.051333,
		0.815393, 0.578513, -0.021387,
		34.082493, 31.826788, 48.156437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551422, 31.557808, 47.392704>,  <33.511719, 31.421829, 48.171410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551422, 31.557808, 47.392704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.311333, 31.846308, 47.254410>,  <33.167278, 32.019409, 47.171432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.311333, 31.846308, 47.254410>,  <33.551422, 31.557808, 47.392704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311333, 31.846308, 47.254410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682517, -0.236486, 0.691552,
		0.417021, 0.651054, 0.634210,
		-0.600220, 0.721251, -0.345736,
		33.131268, 32.062683, 47.150688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395000, 32.097176, 47.928715>,  <33.551422, 31.557808, 47.392704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395000, 32.097176, 47.928715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.099564, 32.110172, 47.659367>,  <32.922302, 32.117970, 47.497757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.099564, 32.110172, 47.659367>,  <33.395000, 32.097176, 47.928715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099564, 32.110172, 47.659367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668483, -0.164531, 0.725300,
		-0.087224, 0.985836, 0.143241,
		-0.738595, 0.032491, -0.673366,
		32.877987, 32.119919, 47.457355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945038, 32.634247, 48.112309>,  <33.395000, 32.097176, 47.928715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945038, 32.634247, 48.112309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.716881, 32.377041, 47.907883>,  <32.579987, 32.222717, 47.785229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.716881, 32.377041, 47.907883>,  <32.945038, 32.634247, 48.112309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716881, 32.377041, 47.907883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746167, 0.145561, 0.649652,
		-0.343344, 0.751895, -0.562822,
		-0.570395, -0.643013, -0.511062,
		32.545761, 32.184135, 47.754562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189423, 32.844872, 48.248745>,  <32.945038, 32.634247, 48.112309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189423, 32.844872, 48.248745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.188911, 32.474171, 48.098480>,  <32.188606, 32.251751, 48.008320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.188911, 32.474171, 48.098480>,  <32.189423, 32.844872, 48.248745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188911, 32.474171, 48.098480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842414, -0.201422, 0.499767,
		-0.538829, 0.317105, -0.780454,
		-0.001278, -0.926755, -0.375666,
		32.188530, 32.196144, 47.985779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470005, 32.722286, 48.141037>,  <32.189423, 32.844872, 48.248745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470005, 32.722286, 48.141037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.664263, 32.372829, 48.153011>,  <31.780817, 32.163155, 48.160194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.664263, 32.372829, 48.153011>,  <31.470005, 32.722286, 48.141037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664263, 32.372829, 48.153011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641652, -0.333008, 0.690934,
		-0.593662, -0.354754, -0.722298,
		0.485642, -0.873645, 0.029935,
		31.809956, 32.110737, 48.161991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904442, 32.166382, 48.069641>,  <31.470005, 32.722286, 48.141037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904442, 32.166382, 48.069641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.225674, 31.999014, 48.239342>,  <31.418413, 31.898594, 48.341160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.225674, 31.999014, 48.239342>,  <30.904442, 32.166382, 48.069641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225674, 31.999014, 48.239342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567990, -0.322304, 0.757303,
		-0.180131, -0.849145, -0.496493,
		0.803082, -0.418417, 0.424249,
		31.466599, 31.873489, 48.366615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638618, 31.425611, 48.190125>,  <30.904442, 32.166382, 48.069641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638618, 31.425611, 48.190125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.963037, 31.526772, 48.401119>,  <31.157688, 31.587467, 48.527718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.963037, 31.526772, 48.401119>,  <30.638618, 31.425611, 48.190125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963037, 31.526772, 48.401119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429527, -0.354687, 0.830484,
		0.397123, -0.900132, -0.179040,
		0.811048, 0.252902, 0.527486,
		31.206352, 31.602642, 48.559364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662773, 30.909319, 48.747097>,  <30.638618, 31.425611, 48.190125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662773, 30.909319, 48.747097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.891293, 31.212072, 48.874058>,  <31.028404, 31.393724, 48.950233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.891293, 31.212072, 48.874058>,  <30.662773, 30.909319, 48.747097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891293, 31.212072, 48.874058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368017, -0.109427, 0.923358,
		0.733608, -0.644321, 0.216031,
		0.571299, 0.756885, 0.317398,
		31.062683, 31.439138, 48.969276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001146, 30.671022, 49.350388>,  <30.662773, 30.909319, 48.747097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001146, 30.671022, 49.350388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.009562, 31.070671, 49.364895>,  <31.014610, 31.310459, 49.373600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.009562, 31.070671, 49.364895>,  <31.001146, 30.671022, 49.350388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009562, 31.070671, 49.364895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410494, -0.024444, 0.911535,
		0.911620, -0.034065, 0.409619,
		0.021039, 0.999120, 0.036267,
		31.015873, 31.370407, 49.375774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121569, 30.820543, 50.080273>,  <31.001146, 30.671022, 49.350388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121569, 30.820543, 50.080273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.015881, 31.183550, 49.949673>,  <30.952469, 31.401354, 49.871315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.015881, 31.183550, 49.949673>,  <31.121569, 30.820543, 50.080273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015881, 31.183550, 49.949673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254312, 0.260989, 0.931241,
		0.930330, 0.329082, 0.161835,
		-0.264218, 0.907518, -0.326495,
		30.936615, 31.455805, 49.851723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393251, 31.301731, 50.638222>,  <31.121569, 30.820543, 50.080273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393251, 31.301731, 50.638222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.104439, 31.479076, 50.425770>,  <30.931150, 31.585484, 50.298298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.104439, 31.479076, 50.425770>,  <31.393251, 31.301731, 50.638222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104439, 31.479076, 50.425770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331453, 0.452186, 0.828050,
		0.607297, 0.773923, -0.179538,
		-0.722032, 0.443364, -0.531130,
		30.887829, 31.612085, 50.266430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344994, 32.021740, 50.808819>,  <31.393251, 31.301731, 50.638222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344994, 32.021740, 50.808819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.983217, 31.955488, 50.651569>,  <30.766151, 31.915737, 50.557220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.983217, 31.955488, 50.651569>,  <31.344994, 32.021740, 50.808819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983217, 31.955488, 50.651569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422924, 0.468767, 0.775495,
		0.055839, 0.867654, -0.494023,
		-0.904443, -0.165631, -0.393127,
		30.711884, 31.905800, 50.533630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016048, 32.619492, 50.890831>,  <31.344994, 32.021740, 50.808819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016048, 32.619492, 50.890831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.686138, 32.401859, 50.829220>,  <30.488192, 32.271282, 50.792255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.686138, 32.401859, 50.829220>,  <31.016048, 32.619492, 50.890831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686138, 32.401859, 50.829220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348401, 0.274419, 0.896276,
		-0.445377, 0.792889, -0.415892,
		-0.824776, -0.544078, -0.154024,
		30.438705, 32.238636, 50.783012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428148, 33.050392, 51.112717>,  <31.016048, 32.619492, 50.890831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428148, 33.050392, 51.112717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.361073, 32.657715, 51.148849>,  <30.320827, 32.422108, 51.170528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.361073, 32.657715, 51.148849>,  <30.428148, 33.050392, 51.112717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361073, 32.657715, 51.148849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254648, 0.131649, 0.958031,
		-0.952384, 0.137651, -0.272062,
		-0.167690, -0.981693, 0.090328,
		30.310766, 32.363209, 51.175949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694490, 32.907734, 51.328758>,  <30.428148, 33.050392, 51.112717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694490, 32.907734, 51.328758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.898607, 32.588318, 51.456467>,  <30.021076, 32.396667, 51.533092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.898607, 32.588318, 51.456467>,  <29.694490, 32.907734, 51.328758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898607, 32.588318, 51.456467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382047, 0.122113, 0.916040,
		-0.770483, -0.589423, -0.242767,
		0.510290, -0.798542, 0.319274,
		30.051695, 32.348755, 51.552250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241598, 32.534325, 51.684776>,  <29.694490, 32.907734, 51.328758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241598, 32.534325, 51.684776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.592264, 32.387169, 51.808788>,  <29.802664, 32.298874, 51.883194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.592264, 32.387169, 51.808788>,  <29.241598, 32.534325, 51.684776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592264, 32.387169, 51.808788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285953, 0.119790, 0.950727,
		-0.386901, -0.922121, -0.000183,
		0.876663, -0.367889, 0.310031,
		29.855263, 32.276802, 51.901798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076044, 32.097099, 52.181625>,  <29.241598, 32.534325, 51.684776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076044, 32.097099, 52.181625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.460335, 32.178509, 52.257080>,  <29.690908, 32.227352, 52.302353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.460335, 32.178509, 52.257080>,  <29.076044, 32.097099, 52.181625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460335, 32.178509, 52.257080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250579, 0.344216, 0.904835,
		0.119221, -0.916567, 0.381696,
		0.960727, 0.203520, 0.188634,
		29.748552, 32.239567, 52.313671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289503, 31.741024, 52.773628>,  <29.076044, 32.097099, 52.181625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289503, 31.741024, 52.773628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.530666, 32.059673, 52.756233>,  <29.675364, 32.250862, 52.745796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.530666, 32.059673, 52.756233>,  <29.289503, 31.741024, 52.773628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530666, 32.059673, 52.756233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154175, 0.169821, 0.973340,
		0.782773, -0.580128, 0.225206,
		0.602907, 0.796625, -0.043490,
		29.711538, 32.298660, 52.743187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731371, 31.650335, 53.360794>,  <29.289503, 31.741024, 52.773628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731371, 31.650335, 53.360794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.771168, 32.034817, 53.257889>,  <29.795046, 32.265507, 53.196144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.771168, 32.034817, 53.257889>,  <29.731371, 31.650335, 53.360794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771168, 32.034817, 53.257889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262907, 0.223967, 0.938466,
		0.959677, -0.161009, -0.230424,
		0.099494, 0.961205, -0.257266,
		29.801016, 32.323177, 53.180710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.369587, 32.026901, 53.830608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159813, 32.344070, 53.706516>,  <30.033949, 32.534370, 53.632061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159813, 32.344070, 53.706516>,  <30.369587, 32.026901, 53.830608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159813, 32.344070, 53.706516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048017, 0.336234, 0.940554,
		0.850097, 0.508154, -0.138259,
		-0.524433, 0.792923, -0.310232,
		30.002483, 32.581947, 53.613445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689157, 32.569027, 54.172546>,  <30.369587, 32.026901, 53.830608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689157, 32.569027, 54.172546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326193, 32.687401, 54.053196>,  <30.108414, 32.758427, 53.981586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326193, 32.687401, 54.053196>,  <30.689157, 32.569027, 54.172546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326193, 32.687401, 54.053196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196077, 0.329838, 0.923450,
		0.371700, 0.896453, -0.241271,
		-0.907410, 0.295939, -0.298375,
		30.053970, 32.776184, 53.963684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527445, 33.195042, 54.531513>,  <30.689157, 32.569027, 54.172546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527445, 33.195042, 54.531513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168056, 33.096970, 54.385838>,  <29.952423, 33.038128, 54.298431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168056, 33.096970, 54.385838>,  <30.527445, 33.195042, 54.531513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168056, 33.096970, 54.385838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418387, 0.226788, 0.879499,
		-0.133043, 0.942578, -0.306344,
		-0.898472, -0.245181, -0.364190,
		29.898516, 33.023415, 54.276581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090223, 33.831200, 54.731079>,  <30.527445, 33.195042, 54.531513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090223, 33.831200, 54.731079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859148, 33.510834, 54.668076>,  <29.720503, 33.318615, 54.630272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859148, 33.510834, 54.668076>,  <30.090223, 33.831200, 54.731079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859148, 33.510834, 54.668076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465827, 0.165024, 0.869352,
		-0.670285, 0.575586, -0.468421,
		-0.577688, -0.800917, -0.157511,
		29.685843, 33.270557, 54.620823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348879, 34.064518, 54.894585>,  <30.090223, 33.831200, 54.731079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348879, 34.064518, 54.894585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346861, 33.666157, 54.930695>,  <29.345650, 33.427139, 54.952358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346861, 33.666157, 54.930695>,  <29.348879, 34.064518, 54.894585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346861, 33.666157, 54.930695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541941, 0.078588, 0.836734,
		-0.840401, -0.044701, -0.540118,
		-0.005044, -0.995905, 0.090270,
		29.345348, 33.367386, 54.957775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682840, 33.868649, 55.110622>,  <29.348879, 34.064518, 54.894585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682840, 33.868649, 55.110622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905296, 33.548058, 55.198570>,  <29.038769, 33.355701, 55.251339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905296, 33.548058, 55.198570>,  <28.682840, 33.868649, 55.110622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905296, 33.548058, 55.198570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398801, -0.025253, 0.916690,
		-0.729155, -0.597489, -0.333675,
		0.556139, -0.801479, 0.219865,
		29.072138, 33.307613, 55.264530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243311, 33.336876, 55.361374>,  <28.682840, 33.868649, 55.110622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243311, 33.336876, 55.361374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603992, 33.242176, 55.506081>,  <28.820402, 33.185356, 55.592903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603992, 33.242176, 55.506081>,  <28.243311, 33.336876, 55.361374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603992, 33.242176, 55.506081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382775, -0.048104, 0.922588,
		-0.201025, -0.970378, -0.134000,
		0.901705, -0.236755, 0.361766,
		28.874504, 33.171150, 55.614609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041798, 32.839996, 55.939072>,  <28.243311, 33.336876, 55.361374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041798, 32.839996, 55.939072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428349, 32.905647, 56.018242>,  <28.660280, 32.945038, 56.065742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428349, 32.905647, 56.018242>,  <28.041798, 32.839996, 55.939072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428349, 32.905647, 56.018242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235129, 0.252573, 0.938574,
		0.104055, -0.953556, 0.282672,
		0.966379, 0.164127, 0.197928,
		28.718262, 32.954887, 56.077621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202822, 32.364052, 56.474865>,  <28.041798, 32.839996, 55.939072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202822, 32.364052, 56.474865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481426, 32.649143, 56.508087>,  <28.648588, 32.820198, 56.528019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481426, 32.649143, 56.508087>,  <28.202822, 32.364052, 56.474865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481426, 32.649143, 56.508087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262915, 0.145792, 0.953740,
		0.667645, -0.686125, 0.288932,
		0.696509, 0.712725, 0.083055,
		28.690380, 32.862961, 56.533005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541691, 32.268101, 57.082520>,  <28.202822, 32.364052, 56.474865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541691, 32.268101, 57.082520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577978, 32.659760, 57.009815>,  <28.599751, 32.894756, 56.966194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577978, 32.659760, 57.009815>,  <28.541691, 32.268101, 57.082520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577978, 32.659760, 57.009815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322910, 0.201575, 0.924714,
		0.942072, -0.025196, 0.334464,
		0.090718, 0.979149, -0.181762,
		28.605194, 32.953503, 56.955288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666872, 32.546459, 57.679672>,  <28.541691, 32.268101, 57.082520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666872, 32.546459, 57.679672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539915, 32.866676, 57.476341>,  <28.463741, 33.058807, 57.354343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539915, 32.866676, 57.476341>,  <28.666872, 32.546459, 57.679672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539915, 32.866676, 57.476341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470104, 0.332716, 0.817497,
		0.823569, 0.498434, 0.270736,
		-0.317391, 0.800539, -0.508331,
		28.444698, 33.106838, 57.323841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918421, 33.130390, 58.077976>,  <28.666872, 32.546459, 57.679672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918421, 33.130390, 58.077976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612108, 33.252758, 57.851707>,  <28.428320, 33.326180, 57.715946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612108, 33.252758, 57.851707>,  <28.918421, 33.130390, 58.077976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612108, 33.252758, 57.851707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453060, 0.367631, 0.812148,
		0.456412, 0.878214, -0.142925,
		-0.765783, 0.305920, -0.565675,
		28.382374, 33.344536, 57.682003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806919, 33.836308, 58.308235>,  <28.918421, 33.130390, 58.077976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806919, 33.836308, 58.308235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467096, 33.731945, 58.124855>,  <28.263203, 33.669327, 58.014824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467096, 33.731945, 58.124855>,  <28.806919, 33.836308, 58.308235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467096, 33.731945, 58.124855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527426, 0.434589, 0.730037,
		0.008766, 0.862009, -0.506818,
		-0.849556, -0.260910, -0.458455,
		28.212229, 33.653671, 57.987320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463301, 34.482445, 58.380779>,  <28.806919, 33.836308, 58.308235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463301, 34.482445, 58.380779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187267, 34.208790, 58.286339>,  <28.021646, 34.044598, 58.229675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187267, 34.208790, 58.286339>,  <28.463301, 34.482445, 58.380779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187267, 34.208790, 58.286339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596168, 0.352401, 0.721385,
		-0.410324, 0.638571, -0.651046,
		-0.690086, -0.684134, -0.236097,
		27.980242, 34.003548, 58.215511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853289, 34.796051, 58.246262>,  <28.463301, 34.482445, 58.380779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853289, 34.796051, 58.246262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742962, 34.424503, 58.345161>,  <27.676765, 34.201576, 58.404499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742962, 34.424503, 58.345161>,  <27.853289, 34.796051, 58.246262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742962, 34.424503, 58.345161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701700, 0.370372, 0.608640,
		-0.656918, -0.005619, -0.753941,
		-0.275818, -0.928867, 0.247247,
		27.660217, 34.145844, 58.419334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162901, 34.775715, 58.239365>,  <27.853289, 34.796051, 58.246262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162901, 34.775715, 58.239365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253105, 34.455555, 58.461540>,  <27.307228, 34.263458, 58.594845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253105, 34.455555, 58.461540>,  <27.162901, 34.775715, 58.239365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253105, 34.455555, 58.461540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681682, 0.277680, 0.676907,
		-0.696028, -0.531282, -0.482996,
		0.225510, -0.800396, 0.555438,
		27.320759, 34.215435, 58.628170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.632942, 34.352249, 58.129242>,  <27.162901, 34.775715, 58.239365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.632942, 34.352249, 58.129242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799368, 34.275108, 58.484703>,  <26.899223, 34.228825, 58.697979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799368, 34.275108, 58.484703>,  <26.632942, 34.352249, 58.129242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799368, 34.275108, 58.484703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840043, 0.292650, 0.456819,
		-0.348163, -0.936570, -0.040245,
		0.416065, -0.192855, 0.888649,
		26.924187, 34.217251, 58.751297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.121990, 34.070667, 58.555183>,  <26.632942, 34.352249, 58.129242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.121990, 34.070667, 58.555183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387714, 34.186726, 58.830723>,  <26.547148, 34.256363, 58.996044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387714, 34.186726, 58.830723>,  <26.121990, 34.070667, 58.555183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387714, 34.186726, 58.830723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735971, 0.414860, 0.535011,
		-0.130541, -0.862383, 0.489137,
		0.664308, 0.290150, 0.688845,
		26.587008, 34.273769, 59.037376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925938, 33.784157, 59.207233>,  <26.121990, 34.070667, 58.555183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.925938, 33.784157, 59.207233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163660, 34.080788, 59.331722>,  <26.306293, 34.258766, 59.406414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163660, 34.080788, 59.331722>,  <25.925938, 33.784157, 59.207233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163660, 34.080788, 59.331722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781416, 0.440910, 0.441574,
		0.190241, -0.505625, 0.841517,
		0.594304, 0.741580, 0.311224,
		26.341951, 34.303261, 59.425091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.920547, 33.844856, 59.859825>,  <25.925938, 33.784157, 59.207233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.920547, 33.844856, 59.859825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050306, 34.214611, 59.779549>,  <26.128160, 34.436462, 59.731380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050306, 34.214611, 59.779549>,  <25.920547, 33.844856, 59.859825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050306, 34.214611, 59.779549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703442, 0.377593, 0.602157,
		0.632406, -0.054161, 0.772741,
		0.324395, 0.924387, -0.200693,
		26.147625, 34.491928, 59.719341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827578, 34.085506, 60.454876>,  <25.920547, 33.844856, 59.859825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827578, 34.085506, 60.454876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831484, 34.390659, 60.196289>,  <25.833828, 34.573750, 60.041138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831484, 34.390659, 60.196289>,  <25.827578, 34.085506, 60.454876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831484, 34.390659, 60.196289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585286, 0.528544, 0.614882,
		0.810768, 0.372364, 0.451664,
		0.009764, 0.762880, -0.646466,
		25.834414, 34.619522, 60.002350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076162, 34.737415, 60.747276>,  <25.827578, 34.085506, 60.454876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076162, 34.737415, 60.747276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840466, 34.877964, 60.456257>,  <25.699047, 34.962292, 60.281643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840466, 34.877964, 60.456257>,  <26.076162, 34.737415, 60.747276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840466, 34.877964, 60.456257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399919, 0.655596, 0.640514,
		0.702038, 0.668380, -0.245787,
		-0.589244, 0.351370, -0.727551,
		25.663692, 34.983376, 60.237991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045147, 35.503536, 60.657314>,  <26.076162, 34.737415, 60.747276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045147, 35.503536, 60.657314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.713072, 35.305882, 60.554077>,  <25.513826, 35.187286, 60.492134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.713072, 35.305882, 60.554077>,  <26.045147, 35.503536, 60.657314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713072, 35.305882, 60.554077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537505, 0.586663, 0.605735,
		-0.147901, 0.641602, -0.752643,
		-0.830189, -0.494138, -0.258096,
		25.464016, 35.157639, 60.476646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161016, 36.144375, 60.592934>,  <26.045147, 35.503536, 60.657314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161016, 36.144375, 60.592934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978552, 36.291138, 60.268639>,  <25.869072, 36.379196, 60.074062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978552, 36.291138, 60.268639>,  <26.161016, 36.144375, 60.592934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978552, 36.291138, 60.268639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507909, 0.640738, 0.575746,
		0.730714, 0.674416, -0.105927,
		-0.456163, 0.366904, -0.810738,
		25.841703, 36.401211, 60.025417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742279, 35.690109, 60.692696>,  <26.161016, 36.144375, 60.592934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742279, 35.690109, 60.692696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985373, 35.882431, 60.945515>,  <27.131227, 35.997826, 61.097206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985373, 35.882431, 60.945515>,  <26.742279, 35.690109, 60.692696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985373, 35.882431, 60.945515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793392, -0.333028, -0.509531,
		-0.034497, 0.811120, -0.583861,
		0.607732, 0.480809, 0.632048,
		27.167692, 36.026672, 61.135128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209257, 36.163357, 60.301785>,  <26.742279, 35.690109, 60.692696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209257, 36.163357, 60.301785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396982, 36.059490, 60.639381>,  <27.509617, 35.997169, 60.841938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396982, 36.059490, 60.639381>,  <27.209257, 36.163357, 60.301785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396982, 36.059490, 60.639381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815579, -0.238920, -0.527019,
		0.338493, 0.935678, 0.099647,
		0.469312, -0.259662, 0.843991,
		27.537775, 35.981590, 60.892578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861244, 36.408722, 60.083614>,  <27.209257, 36.163357, 60.301785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861244, 36.408722, 60.083614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902317, 36.188969, 60.415310>,  <27.926960, 36.057117, 60.614326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902317, 36.188969, 60.415310>,  <27.861244, 36.408722, 60.083614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902317, 36.188969, 60.415310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837137, -0.402544, -0.370351,
		0.537269, 0.732215, 0.418572,
		0.102682, -0.549380, 0.829239,
		27.933123, 36.024155, 60.664082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494110, 36.611206, 60.326298>,  <27.861244, 36.408722, 60.083614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494110, 36.611206, 60.326298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425152, 36.237633, 60.451546>,  <28.383778, 36.013489, 60.526695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425152, 36.237633, 60.451546>,  <28.494110, 36.611206, 60.326298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425152, 36.237633, 60.451546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818429, -0.312700, -0.482071,
		0.548136, 0.173164, 0.818267,
		-0.172395, -0.933934, 0.313124,
		28.373434, 35.957451, 60.545483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193460, 36.439240, 60.434479>,  <28.494110, 36.611206, 60.326298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193460, 36.439240, 60.434479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986420, 36.097019, 60.439011>,  <28.862196, 35.891689, 60.441730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986420, 36.097019, 60.439011>,  <29.193460, 36.439240, 60.434479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986420, 36.097019, 60.439011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763292, -0.467689, -0.445703,
		0.386618, -0.222051, 0.895109,
		-0.517602, -0.855547, 0.011327,
		28.831139, 35.840355, 60.442410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678894, 35.906239, 60.647514>,  <29.193460, 36.439240, 60.434479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678894, 35.906239, 60.647514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381563, 35.759838, 60.423546>,  <29.203165, 35.671997, 60.289165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381563, 35.759838, 60.423546>,  <29.678894, 35.906239, 60.647514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381563, 35.759838, 60.423546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668675, -0.429594, -0.606897,
		-0.018414, -0.825526, 0.564063,
		-0.743327, -0.365999, -0.559919,
		29.158566, 35.650040, 60.255569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910511, 35.259125, 60.337097>,  <29.678894, 35.906239, 60.647514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910511, 35.259125, 60.337097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582935, 35.306416, 60.112469>,  <29.386391, 35.334789, 59.977692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582935, 35.306416, 60.112469>,  <29.910511, 35.259125, 60.337097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582935, 35.306416, 60.112469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493685, -0.353789, -0.794423,
		-0.292600, -0.927823, 0.231365,
		-0.818938, 0.118227, -0.561571,
		29.337254, 35.341885, 59.943996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721184, 34.619858, 59.973976>,  <29.910511, 35.259125, 60.337097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721184, 34.619858, 59.973976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580252, 34.925606, 59.757973>,  <29.495693, 35.109055, 59.628372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580252, 34.925606, 59.757973>,  <29.721184, 34.619858, 59.973976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580252, 34.925606, 59.757973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518786, -0.320725, -0.792462,
		-0.778925, -0.559356, -0.283543,
		-0.352329, 0.764367, -0.540007,
		29.474552, 35.154915, 59.595970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614321, 34.285187, 59.403603>,  <29.721184, 34.619858, 59.973976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614321, 34.285187, 59.403603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628275, 34.672600, 59.305031>,  <29.636648, 34.905048, 59.245888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628275, 34.672600, 59.305031>,  <29.614321, 34.285187, 59.403603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628275, 34.672600, 59.305031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600191, -0.217461, -0.769728,
		-0.799096, -0.121050, -0.588891,
		0.034885, 0.968534, -0.246426,
		29.638741, 34.963161, 59.231102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408314, 34.247986, 58.764858>,  <29.614321, 34.285187, 59.403603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408314, 34.247986, 58.764858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583426, 34.606693, 58.790668>,  <29.688492, 34.821918, 58.806156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583426, 34.606693, 58.790668>,  <29.408314, 34.247986, 58.764858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583426, 34.606693, 58.790668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517725, -0.192760, -0.833549,
		-0.735058, 0.398319, -0.548664,
		0.437779, 0.896764, 0.064530,
		29.714760, 34.875721, 58.810028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296843, 34.578857, 58.112171>,  <29.408314, 34.247986, 58.764858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296843, 34.578857, 58.112171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615261, 34.751373, 58.282021>,  <29.806313, 34.854881, 58.383930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615261, 34.751373, 58.282021>,  <29.296843, 34.578857, 58.112171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615261, 34.751373, 58.282021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547466, -0.213974, -0.809009,
		-0.258057, 0.876474, -0.406448,
		0.796045, 0.431287, 0.424622,
		29.854074, 34.880760, 58.409409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661707, 34.932781, 57.543415>,  <29.296843, 34.578857, 58.112171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661707, 34.932781, 57.543415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933136, 34.887905, 57.833782>,  <30.095993, 34.860977, 58.008003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933136, 34.887905, 57.833782>,  <29.661707, 34.932781, 57.543415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933136, 34.887905, 57.833782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691896, -0.234176, -0.682965,
		0.246616, 0.965699, -0.081280,
		0.678572, -0.112192, 0.725915,
		30.136707, 34.854248, 58.051556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262274, 35.240582, 57.263985>,  <29.661707, 34.932781, 57.543415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262274, 35.240582, 57.263985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371256, 34.992466, 57.558201>,  <30.436646, 34.843597, 57.734730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371256, 34.992466, 57.558201>,  <30.262274, 35.240582, 57.263985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371256, 34.992466, 57.558201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685784, -0.411014, -0.600640,
		0.674884, 0.668067, 0.313398,
		0.272457, -0.620285, 0.735536,
		30.452993, 34.806381, 57.778862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974194, 35.035301, 57.151188>,  <30.262274, 35.240582, 57.263985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974194, 35.035301, 57.151188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822886, 34.749615, 57.386749>,  <30.732101, 34.578201, 57.528084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822886, 34.749615, 57.386749>,  <30.974194, 35.035301, 57.151188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822886, 34.749615, 57.386749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582326, -0.678124, -0.448380,
		0.719589, 0.173323, 0.672422,
		-0.378271, -0.714218, 0.588901,
		30.709404, 34.535351, 57.563419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519125, 34.783340, 57.540142>,  <30.974194, 35.035301, 57.151188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519125, 34.783340, 57.540142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242968, 34.494606, 57.559361>,  <31.077272, 34.321365, 57.570892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242968, 34.494606, 57.559361>,  <31.519125, 34.783340, 57.540142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242968, 34.494606, 57.559361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598837, -0.607488, -0.521874,
		0.405893, -0.331529, 0.851669,
		-0.690395, -0.721835, 0.048043,
		31.035849, 34.278057, 57.573772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885509, 34.203510, 57.781990>,  <31.519125, 34.783340, 57.540142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885509, 34.203510, 57.781990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550961, 34.087204, 57.596115>,  <31.350231, 34.017422, 57.484589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550961, 34.087204, 57.596115>,  <31.885509, 34.203510, 57.781990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550961, 34.087204, 57.596115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545565, -0.523940, -0.654100,
		-0.053281, -0.800589, 0.596840,
		-0.836373, -0.290764, -0.464689,
		31.300049, 33.999973, 57.456707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858528, 33.460346, 57.787907>,  <31.885509, 34.203510, 57.781990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858528, 33.460346, 57.787907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601809, 33.529018, 57.488945>,  <31.447777, 33.570221, 57.309566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601809, 33.529018, 57.488945>,  <31.858528, 33.460346, 57.787907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601809, 33.529018, 57.488945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455420, -0.698816, -0.551588,
		-0.616996, -0.694394, 0.370315,
		-0.641801, 0.171679, -0.747407,
		31.409267, 33.580521, 57.264725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833038, 32.803474, 57.411671>,  <31.858528, 33.460346, 57.787907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833038, 32.803474, 57.411671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692062, 33.083744, 57.163528>,  <31.607477, 33.251907, 57.014641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692062, 33.083744, 57.163528>,  <31.833038, 32.803474, 57.411671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692062, 33.083744, 57.163528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520268, -0.404310, -0.752233,
		-0.777886, -0.587869, -0.222042,
		-0.352441, 0.700673, -0.620357,
		31.586330, 33.293945, 56.977421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737808, 32.421177, 56.786915>,  <31.833038, 32.803474, 57.411671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737808, 32.421177, 56.786915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684072, 32.774685, 56.607628>,  <31.651831, 32.986790, 56.500053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684072, 32.774685, 56.607628>,  <31.737808, 32.421177, 56.786915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684072, 32.774685, 56.607628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446957, -0.349656, -0.823389,
		-0.884411, -0.310948, -0.348036,
		-0.134338, 0.883772, -0.448220,
		31.643770, 33.039818, 56.473164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348001, 32.300789, 56.093895>,  <31.737808, 32.421177, 56.786915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348001, 32.300789, 56.093895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538908, 32.652275, 56.090549>,  <31.653452, 32.863167, 56.088543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538908, 32.652275, 56.090549>,  <31.348001, 32.300789, 56.093895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538908, 32.652275, 56.090549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459655, -0.257745, -0.849874,
		-0.748957, 0.401770, -0.526920,
		0.477265, 0.878720, -0.008364,
		31.682087, 32.915890, 56.088039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.023109, 33.634815, 51.650787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.181973, 33.990456, 51.741791>,  <47.277290, 34.203838, 51.796394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.181973, 33.990456, 51.741791>,  <47.023109, 33.634815, 51.650787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.181973, 33.990456, 51.741791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848063, 0.450302, -0.279316,
		-0.350788, -0.082009, 0.932857,
		0.397161, 0.889102, 0.227510,
		47.301121, 34.257187, 51.810043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.530331, 33.862862, 52.146454>,  <47.023109, 33.634815, 51.650787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.530331, 33.862862, 52.146454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.726086, 34.181561, 52.004646>,  <46.843540, 34.372780, 51.919563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.726086, 34.181561, 52.004646>,  <46.530331, 33.862862, 52.146454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.726086, 34.181561, 52.004646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872046, 0.444487, -0.204859,
		-0.005642, 0.409413, 0.912331,
		0.489392, 0.796751, -0.354519,
		46.872902, 34.420586, 51.898289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.350002, 34.521500, 52.570312>,  <46.530331, 33.862862, 52.146454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.350002, 34.521500, 52.570312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.474739, 34.641331, 52.209644>,  <46.549583, 34.713230, 51.993244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.474739, 34.641331, 52.209644>,  <46.350002, 34.521500, 52.570312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.474739, 34.641331, 52.209644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845009, 0.521335, -0.119037,
		0.434411, 0.799039, 0.415721,
		0.311845, 0.299577, -0.901669,
		46.568295, 34.731205, 51.939144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.219025, 35.262463, 52.591118>,  <46.350002, 34.521500, 52.570312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.219025, 35.262463, 52.591118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.245686, 35.149120, 52.208439>,  <46.261681, 35.081116, 51.978832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.245686, 35.149120, 52.208439>,  <46.219025, 35.262463, 52.591118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.245686, 35.149120, 52.208439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753623, 0.614097, -0.234389,
		0.653919, 0.736609, -0.172615,
		0.066651, -0.283358, -0.956695,
		46.265682, 35.064114, 51.921429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.966888, 35.782291, 52.224262>,  <46.219025, 35.262463, 52.591118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.966888, 35.782291, 52.224262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.974720, 35.514923, 51.926853>,  <45.979420, 35.354500, 51.748409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.974720, 35.514923, 51.926853>,  <45.966888, 35.782291, 52.224262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.974720, 35.514923, 51.926853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762080, 0.471406, -0.443860,
		0.647187, 0.575313, -0.500163,
		0.019579, -0.668425, -0.743522,
		45.980595, 35.314396, 51.703796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.704231, 36.146824, 51.618889>,  <45.966888, 35.782291, 52.224262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.704231, 36.146824, 51.618889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.640984, 35.759052, 51.543831>,  <45.603035, 35.526390, 51.498795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.640984, 35.759052, 51.543831>,  <45.704231, 36.146824, 51.618889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.640984, 35.759052, 51.543831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793836, 0.237816, -0.559703,
		0.587216, 0.060460, -0.807169,
		-0.158118, -0.969427, -0.187645,
		45.593548, 35.468224, 51.487537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.618984, 36.084705, 50.983170>,  <45.704231, 36.146824, 51.618889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.618984, 36.084705, 50.983170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.466888, 35.729359, 51.086109>,  <45.375629, 35.516151, 51.147873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.466888, 35.729359, 51.086109>,  <45.618984, 36.084705, 50.983170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.466888, 35.729359, 51.086109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715384, 0.106138, -0.690624,
		0.586211, -0.446704, -0.675879,
		-0.380240, -0.888364, 0.257345,
		45.352818, 35.462849, 51.163311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.434155, 35.649311, 50.375977>,  <45.618984, 36.084705, 50.983170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.434155, 35.649311, 50.375977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.212639, 35.522350, 50.683891>,  <45.079731, 35.446175, 50.868641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.212639, 35.522350, 50.683891>,  <45.434155, 35.649311, 50.375977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212639, 35.522350, 50.683891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831982, 0.173753, -0.526892,
		0.033485, -0.932236, -0.360297,
		-0.553791, -0.317404, 0.769786,
		45.046501, 35.427128, 50.914825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904156, 35.189091, 50.085205>,  <45.434155, 35.649311, 50.375977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.904156, 35.189091, 50.085205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.756321, 35.325817, 50.430820>,  <44.667622, 35.407852, 50.638191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.756321, 35.325817, 50.430820>,  <44.904156, 35.189091, 50.085205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756321, 35.325817, 50.430820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833544, 0.288963, -0.470856,
		-0.410623, -0.894238, 0.178123,
		-0.369586, 0.341817, 0.864041,
		44.645447, 35.428364, 50.690033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227253, 35.249813, 49.883610>,  <44.904156, 35.189091, 50.085205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227253, 35.249813, 49.883610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.220528, 35.412746, 50.248859>,  <44.216492, 35.510506, 50.468010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.220528, 35.412746, 50.248859>,  <44.227253, 35.249813, 49.883610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220528, 35.412746, 50.248859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954605, 0.265102, -0.135832,
		-0.297400, -0.873958, 0.384384,
		-0.016810, 0.407331, 0.913126,
		44.215485, 35.534946, 50.522797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652321, 34.943008, 50.265854>,  <44.227253, 35.249813, 49.883610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652321, 34.943008, 50.265854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.751793, 35.283974, 50.449837>,  <43.811478, 35.488552, 50.560226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.751793, 35.283974, 50.449837>,  <43.652321, 34.943008, 50.265854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751793, 35.283974, 50.449837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934732, 0.335654, -0.116675,
		-0.253840, -0.400919, 0.880244,
		0.248680, 0.852409, 0.459953,
		43.826397, 35.539696, 50.587822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290619, 35.019012, 50.820892>,  <43.652321, 34.943008, 50.265854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290619, 35.019012, 50.820892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.394680, 35.387787, 50.706100>,  <43.457115, 35.609051, 50.637226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.394680, 35.387787, 50.706100>,  <43.290619, 35.019012, 50.820892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394680, 35.387787, 50.706100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965559, 0.249682, -0.073175,
		0.004192, 0.296136, 0.955137,
		0.260150, 0.921934, -0.286984,
		43.472725, 35.664368, 50.620007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841019, 35.470230, 51.251835>,  <43.290619, 35.019012, 50.820892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841019, 35.470230, 51.251835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.969730, 35.691086, 50.944172>,  <43.046955, 35.823597, 50.759575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.969730, 35.691086, 50.944172>,  <42.841019, 35.470230, 51.251835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969730, 35.691086, 50.944172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914761, 0.390883, -0.102093,
		0.244282, 0.736448, 0.630849,
		0.321774, 0.552137, -0.769159,
		43.066261, 35.856728, 50.713425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545845, 36.204849, 51.398323>,  <42.841019, 35.470230, 51.251835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545845, 36.204849, 51.398323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.652145, 36.182243, 51.013371>,  <42.715927, 36.168682, 50.782398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.652145, 36.182243, 51.013371>,  <42.545845, 36.204849, 51.398323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652145, 36.182243, 51.013371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886146, 0.378794, -0.266945,
		0.379630, 0.923754, 0.050590,
		0.265755, -0.056511, -0.962383,
		42.731873, 36.165291, 50.724655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327919, 36.845959, 51.149906>,  <42.545845, 36.204849, 51.398323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327919, 36.845959, 51.149906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.350395, 36.584625, 50.847916>,  <42.363880, 36.427826, 50.666721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.350395, 36.584625, 50.847916>,  <42.327919, 36.845959, 51.149906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350395, 36.584625, 50.847916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907882, 0.281212, -0.310918,
		0.415443, 0.702902, -0.577352,
		0.056187, -0.653336, -0.754980,
		42.367252, 36.388626, 50.621422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846767, 37.122169, 50.583931>,  <42.327919, 36.845959, 51.149906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846767, 37.122169, 50.583931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.910667, 36.742310, 50.476116>,  <41.949009, 36.514393, 50.411427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.910667, 36.742310, 50.476116>,  <41.846767, 37.122169, 50.583931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910667, 36.742310, 50.476116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941645, -0.064645, -0.330341,
		0.296283, 0.306578, -0.904558,
		0.159750, -0.949648, -0.269535,
		41.958591, 36.457417, 50.395256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348225, 37.084515, 50.029713>,  <41.846767, 37.122169, 50.583931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348225, 37.084515, 50.029713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.429462, 36.704205, 50.123325>,  <41.478207, 36.476017, 50.179493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.429462, 36.704205, 50.123325>,  <41.348225, 37.084515, 50.029713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429462, 36.704205, 50.123325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933553, -0.260121, -0.246608,
		0.295346, -0.168395, -0.940433,
		0.203098, -0.950779, 0.234032,
		41.490391, 36.418972, 50.193535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005692, 36.735954, 49.499947>,  <41.348225, 37.084515, 50.029713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005692, 36.735954, 49.499947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.066502, 36.471680, 49.793991>,  <41.102985, 36.313114, 49.970417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.066502, 36.471680, 49.793991>,  <41.005692, 36.735954, 49.499947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066502, 36.471680, 49.793991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988349, -0.107212, 0.108036,
		0.007436, -0.742970, -0.669283,
		0.152023, -0.660682, 0.735111,
		41.112110, 36.273476, 50.014523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587029, 36.155415, 49.230213>,  <41.005692, 36.735954, 49.499947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587029, 36.155415, 49.230213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.639397, 36.095249, 49.622181>,  <40.670818, 36.059151, 49.857361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.639397, 36.095249, 49.622181>,  <40.587029, 36.155415, 49.230213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639397, 36.095249, 49.622181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981375, -0.159827, 0.106579,
		0.140586, -0.975618, -0.168539,
		0.130918, -0.150417, 0.979916,
		40.678673, 36.050125, 49.916157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158527, 35.497417, 49.399052>,  <40.587029, 36.155415, 49.230213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158527, 35.497417, 49.399052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.226585, 35.698635, 49.737991>,  <40.267418, 35.819366, 49.941353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.226585, 35.698635, 49.737991>,  <40.158527, 35.497417, 49.399052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226585, 35.698635, 49.737991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973791, -0.045880, 0.222767,
		0.150939, -0.863040, 0.482057,
		0.170140, 0.503047, 0.847346,
		40.277626, 35.849548, 49.992195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831318, 35.043839, 49.876751>,  <40.158527, 35.497417, 49.399052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831318, 35.043839, 49.876751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.866028, 35.413700, 50.025063>,  <39.886852, 35.635616, 50.114052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.866028, 35.413700, 50.025063>,  <39.831318, 35.043839, 49.876751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866028, 35.413700, 50.025063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880104, -0.103234, 0.463421,
		0.466783, -0.366541, 0.804836,
		0.086776, 0.924657, 0.370782,
		39.892059, 35.691097, 50.136295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594509, 34.241676, 49.856743>,  <39.831318, 35.043839, 49.876751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594509, 34.241676, 49.856743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.237400, 34.326366, 50.015804>,  <39.023136, 34.377182, 50.111240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.237400, 34.326366, 50.015804>,  <39.594509, 34.241676, 49.856743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237400, 34.326366, 50.015804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280476, 0.429532, -0.858391,
		-0.352554, -0.877880, -0.324088,
		-0.892770, 0.211730, 0.397657,
		38.969570, 34.389885, 50.135101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075630, 33.953804, 49.467529>,  <39.594509, 34.241676, 49.856743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075630, 33.953804, 49.467529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.919769, 34.276905, 49.644485>,  <38.826252, 34.470764, 49.750660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.919769, 34.276905, 49.644485>,  <39.075630, 33.953804, 49.467529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919769, 34.276905, 49.644485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004011, 0.481840, -0.876250,
		-0.920954, -0.339657, -0.190989,
		-0.389650, 0.807752, 0.442391,
		38.802876, 34.519230, 49.777203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349426, 34.128647, 49.186714>,  <39.075630, 33.953804, 49.467529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349426, 34.128647, 49.186714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.578823, 34.421452, 49.333832>,  <38.716461, 34.597134, 49.422100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.578823, 34.421452, 49.333832>,  <38.349426, 34.128647, 49.186714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578823, 34.421452, 49.333832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013258, 0.440603, -0.897604,
		-0.819105, 0.519643, 0.242977,
		0.573490, 0.732011, 0.367790,
		38.750870, 34.641056, 49.444168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079842, 33.745708, 48.647827>,  <38.349426, 34.128647, 49.186714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079842, 33.745708, 48.647827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.314342, 33.845840, 48.339634>,  <38.455044, 33.905922, 48.154716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.314342, 33.845840, 48.339634>,  <38.079842, 33.745708, 48.647827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314342, 33.845840, 48.339634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768640, -0.128575, -0.626626,
		-0.255930, 0.959584, 0.117038,
		0.586252, 0.250333, -0.770481,
		38.490219, 33.920940, 48.108490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904667, 34.279915, 48.203037>,  <38.079842, 33.745708, 48.647827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904667, 34.279915, 48.203037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.096207, 34.022671, 47.964001>,  <38.211132, 33.868324, 47.820580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.096207, 34.022671, 47.964001>,  <37.904667, 34.279915, 48.203037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096207, 34.022671, 47.964001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802698, -0.045091, -0.594679,
		0.355499, 0.764445, -0.537815,
		0.478849, -0.643111, -0.597588,
		38.239861, 33.829739, 47.784725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701405, 34.519096, 47.540409>,  <37.904667, 34.279915, 48.203037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701405, 34.519096, 47.540409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.835495, 34.142494, 47.526569>,  <37.915951, 33.916534, 47.518265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.835495, 34.142494, 47.526569>,  <37.701405, 34.519096, 47.540409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835495, 34.142494, 47.526569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727308, -0.235272, -0.644724,
		0.598870, 0.241290, -0.763632,
		0.335227, -0.941502, -0.034595,
		37.936062, 33.860043, 47.516190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527866, 34.353394, 46.888039>,  <37.701405, 34.519096, 47.540409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527866, 34.353394, 46.888039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.611706, 33.990818, 47.034698>,  <37.662010, 33.773273, 47.122696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.611706, 33.990818, 47.034698>,  <37.527866, 34.353394, 46.888039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611706, 33.990818, 47.034698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777459, -0.381901, -0.499710,
		0.592982, -0.180317, -0.784766,
		0.209597, -0.906442, 0.366649,
		37.674583, 33.718884, 47.144691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604877, 33.856049, 46.302292>,  <37.527866, 34.353394, 46.888039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604877, 33.856049, 46.302292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.500637, 33.652760, 46.630630>,  <37.438091, 33.530785, 46.827633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.500637, 33.652760, 46.630630>,  <37.604877, 33.856049, 46.302292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500637, 33.652760, 46.630630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843999, -0.292905, -0.449302,
		0.468776, -0.809887, -0.352607,
		-0.260604, -0.508222, 0.820851,
		37.422455, 33.500294, 46.876884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503391, 33.114044, 46.096054>,  <37.604877, 33.856049, 46.302292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503391, 33.114044, 46.096054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293503, 33.154823, 46.434113>,  <37.167572, 33.179291, 46.636948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293503, 33.154823, 46.434113>,  <37.503391, 33.114044, 46.096054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293503, 33.154823, 46.434113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848902, -0.136771, -0.510548,
		0.063543, -0.985343, 0.158310,
		-0.524717, 0.101948, 0.845150,
		37.136089, 33.185410, 46.687656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929001, 32.661686, 46.009350>,  <37.503391, 33.114044, 46.096054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929001, 32.661686, 46.009350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.834091, 32.905640, 46.311802>,  <36.777145, 33.052013, 46.493275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.834091, 32.905640, 46.311802>,  <36.929001, 32.661686, 46.009350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834091, 32.905640, 46.311802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958878, -0.022245, -0.282947,
		-0.155745, -0.792175, 0.590086,
		-0.237270, 0.609888, 0.756134,
		36.762909, 33.088608, 46.538643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250893, 32.343613, 46.355675>,  <36.929001, 32.661686, 46.009350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250893, 32.343613, 46.355675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.292107, 32.726887, 46.462460>,  <36.316833, 32.956852, 46.526531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.292107, 32.726887, 46.462460>,  <36.250893, 32.343613, 46.355675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292107, 32.726887, 46.462460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984732, 0.136118, -0.108508,
		-0.140310, -0.251711, 0.957578,
		0.103030, 0.958182, 0.266967,
		36.323017, 33.014343, 46.542549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700546, 32.445385, 46.831005>,  <36.250893, 32.343613, 46.355675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700546, 32.445385, 46.831005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.812000, 32.805202, 46.696438>,  <35.878872, 33.021095, 46.615696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.812000, 32.805202, 46.696438>,  <35.700546, 32.445385, 46.831005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812000, 32.805202, 46.696438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954336, 0.220039, -0.202053,
		-0.107730, 0.377356, 0.919781,
		0.278633, 0.899547, -0.336420,
		35.895592, 33.075066, 46.595512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249287, 33.028316, 47.114510>,  <35.700546, 32.445385, 46.831005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249287, 33.028316, 47.114510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.395538, 33.174301, 46.772022>,  <35.483288, 33.261894, 46.566528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.395538, 33.174301, 46.772022>,  <35.249287, 33.028316, 47.114510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395538, 33.174301, 46.772022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908376, 0.340460, -0.242775,
		0.202905, 0.866537, 0.456007,
		0.365626, 0.364966, -0.856223,
		35.505226, 33.283791, 46.515156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878132, 33.647350, 47.064999>,  <35.249287, 33.028316, 47.114510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878132, 33.647350, 47.064999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.003899, 33.536354, 46.701870>,  <35.079357, 33.469757, 46.483994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.003899, 33.536354, 46.701870>,  <34.878132, 33.647350, 47.064999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003899, 33.536354, 46.701870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904463, 0.202824, -0.375247,
		0.288256, 0.939074, -0.187212,
		0.314413, -0.277493, -0.907823,
		35.098221, 33.453106, 46.429523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.399218, 31.510860, 50.517662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.718107, 31.741964, 50.587662>,  <29.909441, 31.880627, 50.629662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.718107, 31.741964, 50.587662>,  <29.399218, 31.510860, 50.517662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718107, 31.741964, 50.587662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364461, -0.229548, -0.902483,
		-0.481247, 0.783264, -0.393572,
		0.797226, 0.577759, 0.175000,
		29.957275, 31.915293, 50.640163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583427, 31.827581, 49.891533>,  <29.399218, 31.510860, 50.517662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583427, 31.827581, 49.891533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.922731, 31.850275, 50.102146>,  <30.126314, 31.863892, 50.228516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.922731, 31.850275, 50.102146>,  <29.583427, 31.827581, 49.891533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922731, 31.850275, 50.102146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527579, -0.176864, -0.830891,
		0.045985, 0.982599, -0.179959,
		0.848260, 0.056734, 0.526532,
		30.177210, 31.867296, 50.260105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914396, 32.175041, 49.412666>,  <29.583427, 31.827581, 49.891533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914396, 32.175041, 49.412666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.182573, 32.015121, 49.662682>,  <30.343479, 31.919170, 49.812691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.182573, 32.015121, 49.662682>,  <29.914396, 32.175041, 49.412666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182573, 32.015121, 49.662682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632962, -0.131346, -0.762960,
		0.387123, 0.907145, 0.164996,
		0.670443, -0.399796, 0.625035,
		30.383707, 31.895184, 49.850193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432236, 32.531769, 49.297733>,  <29.914396, 32.175041, 49.412666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432236, 32.531769, 49.297733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.602299, 32.215580, 49.474098>,  <30.704336, 32.025867, 49.579918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.602299, 32.215580, 49.474098>,  <30.432236, 32.531769, 49.297733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602299, 32.215580, 49.474098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698465, -0.023288, -0.715266,
		0.575663, 0.612059, 0.542214,
		0.425157, -0.790469, 0.440908,
		30.729845, 31.978439, 49.606369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200384, 32.700600, 49.409374>,  <30.432236, 32.531769, 49.297733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200384, 32.700600, 49.409374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.140484, 32.305115, 49.407654>,  <31.104544, 32.067822, 49.406620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.140484, 32.305115, 49.407654>,  <31.200384, 32.700600, 49.409374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140484, 32.305115, 49.407654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622996, -0.090979, -0.776916,
		0.767757, -0.119024, 0.629589,
		-0.149751, -0.988714, -0.004302,
		31.095558, 32.008499, 49.406364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865007, 32.262550, 49.498131>,  <31.200384, 32.700600, 49.409374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865007, 32.262550, 49.498131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.607395, 32.021076, 49.310177>,  <31.452827, 31.876192, 49.197407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.607395, 32.021076, 49.310177>,  <31.865007, 32.262550, 49.498131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607395, 32.021076, 49.310177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678855, -0.167830, -0.714835,
		0.352674, -0.779358, 0.517901,
		-0.644032, -0.603684, -0.469882,
		31.414185, 31.839972, 49.169212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309208, 31.753265, 49.319477>,  <31.865007, 32.262550, 49.498131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309208, 31.753265, 49.319477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.982841, 31.721373, 49.090416>,  <31.787022, 31.702236, 48.952980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.982841, 31.721373, 49.090416>,  <32.309208, 31.753265, 49.319477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982841, 31.721373, 49.090416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575156, -0.212971, -0.789835,
		-0.058981, -0.973800, 0.219625,
		-0.815915, -0.079733, -0.572648,
		31.738068, 31.697453, 48.918621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470482, 31.212887, 48.809994>,  <32.309208, 31.753265, 49.319477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470482, 31.212887, 48.809994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.167068, 31.431543, 48.668114>,  <31.985022, 31.562737, 48.582985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.167068, 31.431543, 48.668114>,  <32.470482, 31.212887, 48.809994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167068, 31.431543, 48.668114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468068, 0.078354, -0.880212,
		-0.453367, -0.833694, -0.315299,
		-0.758532, 0.546640, -0.354702,
		31.939508, 31.595535, 48.561703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194931, 30.897064, 48.206924>,  <32.470482, 31.212887, 48.809994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194931, 30.897064, 48.206924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.095398, 31.283278, 48.176392>,  <32.035679, 31.515005, 48.158073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.095398, 31.283278, 48.176392>,  <32.194931, 30.897064, 48.206924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095398, 31.283278, 48.176392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429871, 0.039474, -0.902027,
		-0.867926, -0.257261, -0.424878,
		-0.248828, 0.965535, -0.076329,
		32.020748, 31.572939, 48.153492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105469, 30.961103, 47.483250>,  <32.194931, 30.897064, 48.206924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105469, 30.961103, 47.483250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.092575, 31.336893, 47.619690>,  <32.084839, 31.562366, 47.701553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.092575, 31.336893, 47.619690>,  <32.105469, 30.961103, 47.483250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092575, 31.336893, 47.619690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274650, 0.336466, -0.900754,
		-0.961004, 0.064652, -0.268871,
		-0.032231, 0.939474, 0.341102,
		32.082905, 31.618734, 47.722019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786800, 31.451635, 46.991341>,  <32.105469, 30.961103, 47.483250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786800, 31.451635, 46.991341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.026016, 31.678043, 47.218311>,  <32.169544, 31.813889, 47.354492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.026016, 31.678043, 47.218311>,  <31.786800, 31.451635, 46.991341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026016, 31.678043, 47.218311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418894, 0.382837, -0.823386,
		-0.683285, 0.730106, -0.008152,
		0.598038, 0.566022, 0.567424,
		32.205429, 31.847851, 47.388538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941530, 32.085205, 46.580269>,  <31.786800, 31.451635, 46.991341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941530, 32.085205, 46.580269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.239582, 32.104805, 46.846313>,  <32.418415, 32.116566, 47.005939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.239582, 32.104805, 46.846313>,  <31.941530, 32.085205, 46.580269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239582, 32.104805, 46.846313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610410, 0.351645, -0.709750,
		-0.268663, 0.934850, 0.232111,
		0.745131, 0.049001, 0.665116,
		32.463120, 32.119507, 47.045849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264400, 32.822254, 46.578426>,  <31.941530, 32.085205, 46.580269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264400, 32.822254, 46.578426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.520626, 32.560589, 46.739300>,  <32.674362, 32.403591, 46.835823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.520626, 32.560589, 46.739300>,  <32.264400, 32.822254, 46.578426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520626, 32.560589, 46.739300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697719, 0.277058, -0.660626,
		0.320726, 0.703786, 0.633893,
		0.640564, -0.654159, 0.402185,
		32.712795, 32.364342, 46.859955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648838, 33.407436, 46.254105>,  <32.264400, 32.822254, 46.578426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648838, 33.407436, 46.254105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.700531, 33.796562, 46.177242>,  <32.731544, 34.030037, 46.131126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.700531, 33.796562, 46.177242>,  <32.648838, 33.407436, 46.254105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700531, 33.796562, 46.177242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893961, 0.198151, 0.401958,
		0.429108, 0.119835, 0.895269,
		0.129230, 0.972818, -0.192156,
		32.739300, 34.088409, 46.119595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613987, 33.879356, 46.860413>,  <32.648838, 33.407436, 46.254105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613987, 33.879356, 46.860413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.525162, 34.118206, 46.552090>,  <32.471867, 34.261517, 46.367096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.525162, 34.118206, 46.552090>,  <32.613987, 33.879356, 46.860413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525162, 34.118206, 46.552090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862256, 0.248804, 0.441147,
		0.455197, 0.762591, 0.459621,
		-0.222059, 0.597120, -0.770804,
		32.458546, 34.297340, 46.320850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534225, 34.593369, 47.120258>,  <32.613987, 33.879356, 46.860413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534225, 34.593369, 47.120258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.338806, 34.610847, 46.771683>,  <32.221554, 34.621334, 46.562538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.338806, 34.610847, 46.771683>,  <32.534225, 34.593369, 47.120258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338806, 34.610847, 46.771683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822472, 0.310378, 0.476660,
		0.291303, 0.949608, -0.115699,
		-0.488551, 0.043693, -0.871441,
		32.192242, 34.623955, 46.510250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254223, 35.218948, 47.010487>,  <32.534225, 34.593369, 47.120258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254223, 35.218948, 47.010487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.020885, 34.989277, 46.780693>,  <31.880882, 34.851475, 46.642818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.020885, 34.989277, 46.780693>,  <32.254223, 35.218948, 47.010487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020885, 34.989277, 46.780693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807794, 0.336333, 0.484096,
		-0.084738, 0.746459, -0.660014,
		-0.583343, -0.574177, -0.574484,
		31.845882, 34.817024, 46.608349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697815, 35.647972, 46.762833>,  <32.254223, 35.218948, 47.010487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697815, 35.647972, 46.762833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.545965, 35.289375, 46.671455>,  <31.454855, 35.074219, 46.616631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.545965, 35.289375, 46.671455>,  <31.697815, 35.647972, 46.762833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545965, 35.289375, 46.671455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878706, 0.272161, 0.392179,
		-0.289413, 0.349613, -0.891073,
		-0.379626, -0.896492, -0.228440,
		31.432077, 35.020428, 46.602924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049213, 35.831261, 46.605373>,  <31.697815, 35.647972, 46.762833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049213, 35.831261, 46.605373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.028685, 35.440384, 46.687794>,  <31.016367, 35.205856, 46.737247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.028685, 35.440384, 46.687794>,  <31.049213, 35.831261, 46.605373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028685, 35.440384, 46.687794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858696, 0.148523, 0.490493,
		-0.509910, -0.151762, -0.846735,
		-0.051322, -0.977194, 0.206051,
		31.013288, 35.147224, 46.749607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373371, 35.653137, 46.312386>,  <31.049213, 35.831261, 46.605373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373371, 35.653137, 46.312386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.499073, 35.406254, 46.600910>,  <30.574493, 35.258121, 46.774025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.499073, 35.406254, 46.600910>,  <30.373371, 35.653137, 46.312386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499073, 35.406254, 46.600910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791300, 0.249478, 0.558216,
		-0.524490, -0.746198, -0.410000,
		0.314254, -0.617211, 0.721315,
		30.593349, 35.221092, 46.817307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763639, 35.282093, 46.602959>,  <30.373371, 35.653137, 46.312386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763639, 35.282093, 46.602959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.039738, 35.255211, 46.891136>,  <30.205397, 35.239082, 47.064045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.039738, 35.255211, 46.891136>,  <29.763639, 35.282093, 46.602959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039738, 35.255211, 46.891136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694456, 0.218096, 0.685686,
		-0.203207, -0.973611, 0.103870,
		0.690245, -0.067203, 0.720448,
		30.246811, 35.235050, 47.107269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335106, 35.081581, 47.090931>,  <29.763639, 35.282093, 46.602959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335106, 35.081581, 47.090931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.659264, 35.213963, 47.284317>,  <29.853758, 35.293392, 47.400349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.659264, 35.213963, 47.284317>,  <29.335106, 35.081581, 47.090931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659264, 35.213963, 47.284317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552620, 0.157674, 0.818382,
		0.194609, -0.930384, 0.310664,
		0.810394, 0.330944, 0.483465,
		29.902382, 35.313248, 47.429356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344164, 34.760239, 47.695263>,  <29.335106, 35.081581, 47.090931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344164, 34.760239, 47.695263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.542339, 35.106823, 47.719849>,  <29.661245, 35.314774, 47.734600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.542339, 35.106823, 47.719849>,  <29.344164, 34.760239, 47.695263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542339, 35.106823, 47.719849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616419, 0.300846, 0.727681,
		0.612018, -0.398410, 0.683157,
		0.495440, 0.866465, 0.061465,
		29.690971, 35.366764, 47.738289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176407, 35.061787, 48.354980>,  <29.344164, 34.760239, 47.695263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176407, 35.061787, 48.354980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.360718, 35.396381, 48.236340>,  <29.471304, 35.597137, 48.165154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.360718, 35.396381, 48.236340>,  <29.176407, 35.061787, 48.354980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360718, 35.396381, 48.236340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524204, 0.526180, 0.669586,
		0.716168, -0.153047, 0.680941,
		0.460776, 0.836488, -0.296605,
		29.498951, 35.647327, 48.147358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267374, 35.502262, 48.921024>,  <29.176407, 35.061787, 48.354980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267374, 35.502262, 48.921024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.332281, 35.766190, 48.627548>,  <29.371225, 35.924545, 48.451462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.332281, 35.766190, 48.627548>,  <29.267374, 35.502262, 48.921024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332281, 35.766190, 48.627548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622560, 0.645336, 0.442674,
		0.765564, 0.384936, 0.515496,
		0.162267, 0.659822, -0.733692,
		29.380960, 35.964138, 48.407440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602585, 36.140778, 49.141106>,  <29.267374, 35.502262, 48.921024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602585, 36.140778, 49.141106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.438730, 36.243584, 48.790989>,  <29.340418, 36.305267, 48.580917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.438730, 36.243584, 48.790989>,  <29.602585, 36.140778, 49.141106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438730, 36.243584, 48.790989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696103, 0.532079, 0.482008,
		0.589610, 0.806744, -0.039049,
		-0.409634, 0.257015, -0.875296,
		29.315840, 36.320686, 48.528400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366276, 36.752663, 49.343834>,  <29.602585, 36.140778, 49.141106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366276, 36.752663, 49.343834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.158522, 36.683239, 49.009140>,  <29.033869, 36.641586, 48.808323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.158522, 36.683239, 49.009140>,  <29.366276, 36.752663, 49.343834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158522, 36.683239, 49.009140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813977, 0.398570, 0.422590,
		0.260153, 0.900567, -0.348281,
		-0.519385, -0.173555, -0.836730,
		29.002707, 36.631172, 48.758121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113216, 37.384869, 49.036129>,  <29.366276, 36.752663, 49.343834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113216, 37.384869, 49.036129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.879719, 37.092846, 48.893993>,  <28.739620, 36.917633, 48.808712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.879719, 37.092846, 48.893993>,  <29.113216, 37.384869, 49.036129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879719, 37.092846, 48.893993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796617, 0.430354, 0.424495,
		-0.156985, 0.530862, -0.832791,
		-0.583744, -0.730055, -0.355335,
		28.704596, 36.873829, 48.787392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691853, 37.783463, 48.892307>,  <29.113216, 37.384869, 49.036129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691853, 37.783463, 48.892307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.761179, 38.164677, 48.991650>,  <29.802774, 38.393406, 49.051254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.761179, 38.164677, 48.991650>,  <29.691853, 37.783463, 48.892307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761179, 38.164677, 48.991650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924799, -0.070765, -0.373817,
		-0.338687, 0.294469, -0.893633,
		0.173315, 0.953038, 0.248357,
		29.813173, 38.450588, 49.066158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027674, 38.083927, 48.343559>,  <29.691853, 37.783463, 48.892307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027674, 38.083927, 48.343559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.132126, 38.288395, 48.671101>,  <30.194798, 38.411076, 48.867626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.132126, 38.288395, 48.671101>,  <30.027674, 38.083927, 48.343559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132126, 38.288395, 48.671101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950316, 0.012772, -0.311026,
		-0.169444, 0.859387, -0.482434,
		0.261130, 0.511167, 0.818853,
		30.210464, 38.441746, 48.916756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416191, 38.765259, 48.166874>,  <30.027674, 38.083927, 48.343559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416191, 38.765259, 48.166874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.512878, 38.655128, 48.539062>,  <30.570890, 38.589050, 48.762375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.512878, 38.655128, 48.539062>,  <30.416191, 38.765259, 48.166874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512878, 38.655128, 48.539062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963050, -0.049308, -0.264771,
		0.118777, 0.960086, 0.253232,
		0.241717, -0.275323, 0.930468,
		30.585394, 38.572533, 48.818203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014849, 39.038258, 48.274750>,  <30.416191, 38.765259, 48.166874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014849, 39.038258, 48.274750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.052912, 38.797897, 48.592205>,  <31.075748, 38.653683, 48.782681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.052912, 38.797897, 48.592205>,  <31.014849, 39.038258, 48.274750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052912, 38.797897, 48.592205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994733, 0.087913, -0.052704,
		-0.038102, 0.794477, 0.606097,
		0.095156, -0.600897, 0.793642,
		31.081459, 38.617630, 48.830299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441854, 39.388477, 48.765270>,  <31.014849, 39.038258, 48.274750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441854, 39.388477, 48.765270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.457048, 39.007534, 48.886311>,  <31.466166, 38.778969, 48.958935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.457048, 39.007534, 48.886311>,  <31.441854, 39.388477, 48.765270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457048, 39.007534, 48.886311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995603, 0.062018, 0.070209,
		-0.085631, 0.298607, 0.950527,
		0.037985, -0.952359, 0.302605,
		31.468445, 38.721825, 48.977093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933376, 39.423386, 49.237751>,  <31.441854, 39.388477, 48.765270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933376, 39.423386, 49.237751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931278, 39.038300, 49.129566>,  <31.930019, 38.807247, 49.064655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931278, 39.038300, 49.129566>,  <31.933376, 39.423386, 49.237751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931278, 39.038300, 49.129566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999286, -0.015161, 0.034588,
		-0.037399, -0.270085, 0.962110,
		-0.005245, -0.962717, -0.270459,
		31.929705, 38.749485, 49.048428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495514, 39.086433, 49.573826>,  <31.933376, 39.423386, 49.237751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495514, 39.086433, 49.573826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.424335, 38.808876, 49.294727>,  <32.381630, 38.642342, 49.127270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.424335, 38.808876, 49.294727>,  <32.495514, 39.086433, 49.573826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424335, 38.808876, 49.294727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969128, -0.246548, -0.001969,
		-0.170661, -0.676553, 0.716345,
		-0.177946, -0.693895, -0.697743,
		32.370953, 38.600708, 49.085403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900799, 38.491051, 49.741680>,  <32.495514, 39.086433, 49.573826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900799, 38.491051, 49.741680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.812927, 38.419704, 49.358028>,  <32.760204, 38.376896, 49.127838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.812927, 38.419704, 49.358028>,  <32.900799, 38.491051, 49.741680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812927, 38.419704, 49.358028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897750, -0.421746, -0.127186,
		-0.381823, -0.888997, 0.252775,
		-0.219675, -0.178366, -0.959129,
		32.747025, 38.366196, 49.070290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055904, 37.730736, 49.602448>,  <32.900799, 38.491051, 49.741680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055904, 37.730736, 49.602448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.090805, 37.922260, 49.253021>,  <33.111748, 38.037174, 49.043365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.090805, 37.922260, 49.253021>,  <33.055904, 37.730736, 49.602448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090805, 37.922260, 49.253021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755635, -0.603245, -0.255168,
		-0.649155, -0.637835, -0.414444,
		0.087256, 0.478812, -0.873570,
		33.116982, 38.065903, 48.990952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115051, 37.190941, 49.184555>,  <33.055904, 37.730736, 49.602448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115051, 37.190941, 49.184555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.243801, 37.516800, 48.991581>,  <33.321053, 37.712315, 48.875797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.243801, 37.516800, 48.991581>,  <33.115051, 37.190941, 49.184555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243801, 37.516800, 48.991581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804601, -0.503933, -0.314116,
		-0.499010, -0.287064, -0.817669,
		0.321879, 0.814645, -0.482440,
		33.340366, 37.761192, 48.846848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221104, 37.008278, 48.502918>,  <33.115051, 37.190941, 49.184555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221104, 37.008278, 48.502918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.479046, 37.307411, 48.566051>,  <33.633812, 37.486893, 48.603931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.479046, 37.307411, 48.566051>,  <33.221104, 37.008278, 48.502918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479046, 37.307411, 48.566051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719649, -0.524531, -0.454942,
		-0.257433, 0.406954, -0.876423,
		0.644851, 0.747834, 0.157833,
		33.672501, 37.531761, 48.613400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740601, 36.922005, 47.973595>,  <33.221104, 37.008278, 48.502918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740601, 36.922005, 47.973595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.920040, 37.216095, 48.176846>,  <34.027706, 37.392551, 48.298798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.920040, 37.216095, 48.176846>,  <33.740601, 36.922005, 47.973595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920040, 37.216095, 48.176846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881934, -0.272091, -0.384916,
		-0.144743, 0.620812, -0.770482,
		0.448601, 0.735227, 0.508132,
		34.054619, 37.436665, 48.329285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.467037, 39.710896, 54.443058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.095806, 39.800140, 54.323803>,  <27.873068, 39.853687, 54.252251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.095806, 39.800140, 54.323803>,  <28.467037, 39.710896, 54.443058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095806, 39.800140, 54.323803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246827, -0.230908, -0.941147,
		-0.278832, -0.947047, 0.159229,
		-0.928079, 0.223120, -0.298142,
		27.817383, 39.867073, 54.234360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309946, 39.218071, 53.910751>,  <28.467037, 39.710896, 54.443058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309946, 39.218071, 53.910751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.019072, 39.484524, 53.844463>,  <27.844547, 39.644398, 53.804691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.019072, 39.484524, 53.844463>,  <28.309946, 39.218071, 53.910751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019072, 39.484524, 53.844463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075061, -0.162809, -0.983798,
		-0.682324, -0.727843, 0.068392,
		-0.727186, 0.666136, -0.165722,
		27.800917, 39.684364, 53.794746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746058, 38.911140, 53.439194>,  <28.309946, 39.218071, 53.910751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746058, 38.911140, 53.439194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.757542, 39.310658, 53.423237>,  <27.764433, 39.550369, 53.413662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.757542, 39.310658, 53.423237>,  <27.746058, 38.911140, 53.439194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757542, 39.310658, 53.423237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152017, -0.043805, -0.987407,
		-0.987961, 0.022287, -0.153091,
		0.028712, 0.998792, -0.039890,
		27.766155, 39.610294, 53.411270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170620, 39.198456, 52.979889>,  <27.746058, 38.911140, 53.439194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170620, 39.198456, 52.979889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449120, 39.485512, 52.973862>,  <27.616220, 39.657745, 52.970245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449120, 39.485512, 52.973862>,  <27.170620, 39.198456, 52.979889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449120, 39.485512, 52.973862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142656, -0.158920, -0.976931,
		-0.703480, 0.678039, -0.213023,
		0.696251, 0.717640, -0.015071,
		27.657995, 39.700806, 52.969341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157932, 39.405960, 52.301067>,  <27.170620, 39.198456, 52.979889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157932, 39.405960, 52.301067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.502457, 39.575855, 52.412594>,  <27.709171, 39.677792, 52.479511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.502457, 39.575855, 52.412594>,  <27.157932, 39.405960, 52.301067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502457, 39.575855, 52.412594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297056, 0.024229, -0.954553,
		-0.412192, 0.904991, -0.105304,
		0.861310, 0.424740, 0.278820,
		27.760849, 39.703278, 52.496239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323547, 39.936241, 51.812008>,  <27.157932, 39.405960, 52.301067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323547, 39.936241, 51.812008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.673342, 39.842194, 51.981712>,  <27.883219, 39.785767, 52.083534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.673342, 39.842194, 51.981712>,  <27.323547, 39.936241, 51.812008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.673342, 39.842194, 51.981712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421198, -0.065695, -0.904586,
		0.240557, 0.969744, 0.041583,
		0.874485, -0.235119, 0.424258,
		27.935688, 39.771656, 52.108990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849426, 40.396694, 51.580433>,  <27.323547, 39.936241, 51.812008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849426, 40.396694, 51.580433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.035379, 40.056999, 51.680576>,  <28.146952, 39.853184, 51.740662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.035379, 40.056999, 51.680576>,  <27.849426, 40.396694, 51.580433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035379, 40.056999, 51.680576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430936, -0.029981, -0.901884,
		0.773419, 0.527162, 0.352029,
		0.464884, -0.849236, 0.250361,
		28.174845, 39.802227, 51.755684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529078, 40.469677, 51.298649>,  <27.849426, 40.396694, 51.580433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529078, 40.469677, 51.298649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.491673, 40.076599, 51.362606>,  <28.469229, 39.840752, 51.400978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.491673, 40.076599, 51.362606>,  <28.529078, 40.469677, 51.298649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491673, 40.076599, 51.362606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559231, -0.184710, -0.808172,
		0.823721, 0.013842, 0.566827,
		-0.093512, -0.982695, 0.159891,
		28.463619, 39.781792, 51.410572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131121, 40.328342, 51.122608>,  <28.529078, 40.469677, 51.298649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131121, 40.328342, 51.122608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.902571, 40.000427, 51.107220>,  <28.765440, 39.803680, 51.097988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.902571, 40.000427, 51.107220>,  <29.131121, 40.328342, 51.122608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902571, 40.000427, 51.107220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314526, -0.175442, -0.932895,
		0.758025, -0.545134, 0.358088,
		-0.571377, -0.819786, -0.038469,
		28.731157, 39.754490, 51.095680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563128, 39.780235, 50.885853>,  <29.131121, 40.328342, 51.122608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563128, 39.780235, 50.885853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.205475, 39.616970, 50.812168>,  <28.990883, 39.519012, 50.767956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.205475, 39.616970, 50.812168>,  <29.563128, 39.780235, 50.885853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205475, 39.616970, 50.812168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376882, -0.463728, -0.801821,
		0.241847, -0.786360, 0.568462,
		-0.894131, -0.408161, -0.184214,
		28.937235, 39.494522, 50.756905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639240, 39.034233, 50.761757>,  <29.563128, 39.780235, 50.885853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639240, 39.034233, 50.761757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.310875, 39.167919, 50.576542>,  <29.113855, 39.248131, 50.465412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.310875, 39.167919, 50.576542>,  <29.639240, 39.034233, 50.761757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310875, 39.167919, 50.576542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301896, -0.434280, -0.848681,
		-0.484730, -0.836482, 0.255607,
		-0.820912, 0.334215, -0.463039,
		29.064600, 39.268181, 50.437630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395426, 38.492973, 50.395901>,  <29.639240, 39.034233, 50.761757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395426, 38.492973, 50.395901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.220556, 38.798889, 50.206593>,  <29.115635, 38.982437, 50.093010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.220556, 38.798889, 50.206593>,  <29.395426, 38.492973, 50.395901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220556, 38.798889, 50.206593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299340, -0.372484, -0.878437,
		-0.848100, -0.525698, -0.066091,
		-0.437175, 0.764786, -0.473267,
		29.089403, 39.028324, 50.064613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319622, 38.241112, 49.743263>,  <29.395426, 38.492973, 50.395901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319622, 38.241112, 49.743263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207180, 38.618427, 49.672626>,  <29.139715, 38.844818, 49.630245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207180, 38.618427, 49.672626>,  <29.319622, 38.241112, 49.743263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207180, 38.618427, 49.672626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058657, -0.166780, -0.984248,
		-0.957883, -0.287034, -0.008448,
		-0.281104, 0.943290, -0.176592,
		29.122849, 38.901413, 49.619648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789089, 38.242134, 49.227764>,  <29.319622, 38.241112, 49.743263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789089, 38.242134, 49.227764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982046, 38.591396, 49.199780>,  <29.097820, 38.800953, 49.182991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982046, 38.591396, 49.199780>,  <28.789089, 38.242134, 49.227764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982046, 38.591396, 49.199780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196359, -0.185624, -0.962801,
		-0.853662, 0.450712, -0.260996,
		0.482394, 0.873156, -0.069959,
		29.126764, 38.853344, 49.178791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379906, 37.691261, 49.002113>,  <28.789089, 38.242134, 49.227764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379906, 37.691261, 49.002113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.287373, 37.304165, 48.962204>,  <28.231853, 37.071907, 48.938259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.287373, 37.304165, 48.962204>,  <28.379906, 37.691261, 49.002113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287373, 37.304165, 48.962204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886516, 0.167445, 0.431336,
		-0.400717, 0.188230, -0.896658,
		-0.231331, -0.967746, -0.099771,
		28.217974, 37.013840, 48.932274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769175, 37.563564, 48.610428>,  <28.379906, 37.691261, 49.002113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769175, 37.563564, 48.610428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.806499, 37.255707, 48.863075>,  <27.828896, 37.070992, 49.014664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.806499, 37.255707, 48.863075>,  <27.769175, 37.563564, 48.610428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806499, 37.255707, 48.863075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777938, 0.339560, 0.528689,
		-0.621374, -0.540696, -0.567047,
		0.093313, -0.769641, 0.631621,
		27.834494, 37.024815, 49.052563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023432, 37.424629, 48.821472>,  <27.769175, 37.563564, 48.610428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023432, 37.424629, 48.821472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.270288, 37.229271, 49.068245>,  <27.418404, 37.112057, 49.216309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.270288, 37.229271, 49.068245>,  <27.023432, 37.424629, 48.821472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270288, 37.229271, 49.068245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596598, 0.220772, 0.771576,
		-0.513036, -0.844233, -0.155128,
		0.617142, -0.488395, 0.616932,
		27.455431, 37.082752, 49.253326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.603878, 37.007660, 49.212822>,  <27.023432, 37.424629, 48.821472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.603878, 37.007660, 49.212822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.935596, 37.045258, 49.433163>,  <27.134628, 37.067814, 49.565365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.935596, 37.045258, 49.433163>,  <26.603878, 37.007660, 49.212822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935596, 37.045258, 49.433163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558181, 0.186078, 0.808584,
		-0.026503, -0.978029, 0.206777,
		0.829296, 0.093989, 0.550849,
		27.184385, 37.073456, 49.598419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.488184, 36.564861, 49.715248>,  <26.603878, 37.007660, 49.212822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.488184, 36.564861, 49.715248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.761297, 36.829723, 49.838772>,  <26.925165, 36.988640, 49.912888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.761297, 36.829723, 49.838772>,  <26.488184, 36.564861, 49.715248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761297, 36.829723, 49.838772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466598, 0.069935, 0.881700,
		0.562223, -0.746099, 0.356710,
		0.682782, 0.662152, 0.308809,
		26.966131, 37.028370, 49.931416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867178, 36.289757, 50.273289>,  <26.488184, 36.564861, 49.715248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867178, 36.289757, 50.273289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.922184, 36.684986, 50.300983>,  <26.955187, 36.922123, 50.317600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.922184, 36.684986, 50.300983>,  <26.867178, 36.289757, 50.273289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922184, 36.684986, 50.300983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419151, -0.005287, 0.907901,
		0.897442, -0.153870, 0.413426,
		0.137513, 0.988077, 0.069240,
		26.963438, 36.981411, 50.321754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087164, 36.427670, 50.875439>,  <26.867178, 36.289757, 50.273289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087164, 36.427670, 50.875439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.983763, 36.806923, 50.801445>,  <26.921722, 37.034473, 50.757050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.983763, 36.806923, 50.801445>,  <27.087164, 36.427670, 50.875439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983763, 36.806923, 50.801445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252377, 0.118559, 0.960338,
		0.932460, 0.294939, 0.208639,
		-0.258505, 0.948132, -0.184987,
		26.906212, 37.091362, 50.745949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337189, 36.959084, 51.384819>,  <27.087164, 36.427670, 50.875439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337189, 36.959084, 51.384819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.067533, 37.186142, 51.195793>,  <26.905741, 37.322376, 51.082378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.067533, 37.186142, 51.195793>,  <27.337189, 36.959084, 51.384819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067533, 37.186142, 51.195793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394681, 0.263946, 0.880090,
		0.624311, 0.779815, 0.046103,
		-0.674139, 0.567646, -0.472562,
		26.865292, 37.356434, 51.054024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311506, 37.676487, 51.732861>,  <27.337189, 36.959084, 51.384819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311506, 37.676487, 51.732861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.959690, 37.597908, 51.559509>,  <26.748600, 37.550762, 51.455498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.959690, 37.597908, 51.559509>,  <27.311506, 37.676487, 51.732861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959690, 37.597908, 51.559509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469085, 0.205279, 0.858964,
		-0.079776, 0.958786, -0.272701,
		-0.879542, -0.196445, -0.433376,
		26.695827, 37.538975, 51.429497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.929296, 38.313229, 51.895054>,  <27.311506, 37.676487, 51.732861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.929296, 38.313229, 51.895054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.668480, 38.019253, 51.820541>,  <26.511990, 37.842865, 51.775833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.668480, 38.019253, 51.820541>,  <26.929296, 38.313229, 51.895054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.668480, 38.019253, 51.820541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510077, 0.243444, 0.824958,
		-0.560948, 0.632926, -0.533613,
		-0.652042, -0.734942, -0.186282,
		26.472868, 37.798771, 51.764656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275049, 38.565331, 52.243156>,  <26.929296, 38.313229, 51.895054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275049, 38.565331, 52.243156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.226849, 38.174606, 52.172375>,  <26.197927, 37.940170, 52.129906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.226849, 38.174606, 52.172375>,  <26.275049, 38.565331, 52.243156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226849, 38.174606, 52.172375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289550, -0.135917, 0.947464,
		-0.949547, 0.165408, -0.266458,
		-0.120502, -0.976815, -0.176953,
		26.190699, 37.881561, 52.119289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871443, 38.369698, 52.652271>,  <26.275049, 38.565331, 52.243156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871443, 38.369698, 52.652271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.954782, 37.990829, 52.554729>,  <26.004786, 37.763508, 52.496204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.954782, 37.990829, 52.554729>,  <25.871443, 38.369698, 52.652271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954782, 37.990829, 52.554729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292644, -0.298272, 0.908512,
		-0.933248, -0.117924, -0.339327,
		0.208347, -0.947168, -0.243852,
		26.017286, 37.706680, 52.481575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.334541, 37.923759, 52.709785>,  <25.871443, 38.369698, 52.652271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.334541, 37.923759, 52.709785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.635143, 37.661358, 52.737804>,  <25.815504, 37.503918, 52.754616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.635143, 37.661358, 52.737804>,  <25.334541, 37.923759, 52.709785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.635143, 37.661358, 52.737804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381370, -0.345326, 0.857501,
		-0.538331, -0.671129, -0.509692,
		0.751503, -0.656000, 0.070048,
		25.860594, 37.464558, 52.758820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.005333, 37.300167, 52.852966>,  <25.334541, 37.923759, 52.709785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.005333, 37.300167, 52.852966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.379906, 37.277813, 52.991516>,  <25.604649, 37.264400, 53.074646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.379906, 37.277813, 52.991516>,  <25.005333, 37.300167, 52.852966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379906, 37.277813, 52.991516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345789, -0.314183, 0.884149,
		0.059411, -0.947716, -0.313536,
		0.936430, -0.055889, 0.346376,
		25.660835, 37.261047, 53.095428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.176022, 35.073769, 58.250446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.006443, 35.283184, 57.954830>,  <32.904694, 35.408833, 57.777462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.006443, 35.283184, 57.954830>,  <33.176022, 35.073769, 58.250446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006443, 35.283184, 57.954830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426789, -0.604236, -0.672867,
		-0.798823, -0.600675, 0.032726,
		-0.423949, 0.523535, -0.739039,
		32.879257, 35.440243, 57.733120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853642, 34.619900, 57.724720>,  <33.176022, 35.073769, 58.250446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853642, 34.619900, 57.724720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.960808, 34.958832, 57.541306>,  <33.025108, 35.162189, 57.431259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.960808, 34.958832, 57.541306>,  <32.853642, 34.619900, 57.724720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960808, 34.958832, 57.541306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448447, -0.530910, -0.719048,
		-0.852710, -0.012981, -0.522223,
		0.267919, 0.847329, -0.458534,
		33.041183, 35.213032, 57.403744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945374, 34.383183, 56.992371>,  <32.853642, 34.619900, 57.724720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945374, 34.383183, 56.992371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.109138, 34.747734, 56.975544>,  <33.207397, 34.966465, 56.965450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.109138, 34.747734, 56.975544>,  <32.945374, 34.383183, 56.992371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109138, 34.747734, 56.975544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574085, -0.293174, -0.764510,
		-0.709091, 0.288850, -0.643238,
		0.409409, 0.911381, -0.042063,
		33.231960, 35.021149, 56.962925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938988, 34.556808, 56.266296>,  <32.945374, 34.383183, 56.992371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938988, 34.556808, 56.266296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223221, 34.784031, 56.432377>,  <33.393761, 34.920364, 56.532024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223221, 34.784031, 56.432377>,  <32.938988, 34.556808, 56.266296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223221, 34.784031, 56.432377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634439, -0.262114, -0.727175,
		-0.304244, 0.780136, -0.546648,
		0.710579, 0.568053, 0.415202,
		33.436394, 34.954449, 56.556938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225285, 34.952988, 55.696522>,  <32.938988, 34.556808, 56.266296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225285, 34.952988, 55.696522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501957, 34.959579, 55.985329>,  <33.667961, 34.963535, 56.158611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501957, 34.959579, 55.985329>,  <33.225285, 34.952988, 55.696522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501957, 34.959579, 55.985329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710284, -0.196417, -0.675956,
		0.130674, 0.980382, -0.147566,
		0.691680, 0.016483, 0.722016,
		33.709461, 34.964523, 56.201935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835114, 35.241879, 55.459599>,  <33.225285, 34.952988, 55.696522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835114, 35.241879, 55.459599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972076, 35.053196, 55.784622>,  <34.054253, 34.939987, 55.979637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972076, 35.053196, 55.784622>,  <33.835114, 35.241879, 55.459599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972076, 35.053196, 55.784622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773306, -0.349703, -0.528872,
		0.533627, 0.809444, 0.245035,
		0.342403, -0.471707, 0.812559,
		34.074799, 34.911682, 56.028389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531326, 35.399677, 55.508530>,  <33.835114, 35.241879, 55.459599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531326, 35.399677, 55.508530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.494949, 35.072269, 55.735424>,  <34.473122, 34.875824, 55.871563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.494949, 35.072269, 55.735424>,  <34.531326, 35.399677, 55.508530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494949, 35.072269, 55.735424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632700, -0.487358, -0.601807,
		0.769038, 0.304162, 0.562197,
		-0.090944, -0.818515, 0.567241,
		34.467667, 34.826714, 55.905598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205311, 35.293953, 55.588814>,  <34.531326, 35.399677, 55.508530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205311, 35.293953, 55.588814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004833, 34.952393, 55.644901>,  <34.884544, 34.747456, 55.678555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004833, 34.952393, 55.644901>,  <35.205311, 35.293953, 55.588814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004833, 34.952393, 55.644901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568589, -0.447124, -0.690497,
		0.652311, -0.266345, 0.709613,
		-0.501196, -0.853897, 0.140223,
		34.854473, 34.696224, 55.686970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680370, 34.748837, 55.546803>,  <35.205311, 35.293953, 55.588814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680370, 34.748837, 55.546803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.343185, 34.536125, 55.514236>,  <35.140873, 34.408497, 55.494698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.343185, 34.536125, 55.514236>,  <35.680370, 34.748837, 55.546803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343185, 34.536125, 55.514236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469271, -0.652833, -0.594638,
		0.263063, -0.539464, 0.799860,
		-0.842961, -0.531778, -0.081419,
		35.090298, 34.376591, 55.489811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880898, 34.065388, 55.490498>,  <35.680370, 34.748837, 55.546803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880898, 34.065388, 55.490498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.512009, 34.080643, 55.336594>,  <35.290676, 34.089798, 55.244251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.512009, 34.080643, 55.336594>,  <35.880898, 34.065388, 55.490498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512009, 34.080643, 55.336594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286062, -0.602185, -0.745346,
		-0.260128, -0.797445, 0.544440,
		-0.922227, 0.038142, -0.384764,
		35.235340, 34.092087, 55.221165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695202, 33.338356, 55.272640>,  <35.880898, 34.065388, 55.490498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695202, 33.338356, 55.272640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494610, 33.596497, 55.042149>,  <35.374256, 33.751381, 54.903854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494610, 33.596497, 55.042149>,  <35.695202, 33.338356, 55.272640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494610, 33.596497, 55.042149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292907, -0.500058, -0.814952,
		-0.814080, -0.577462, 0.061740,
		-0.501477, 0.645352, -0.576230,
		35.344166, 33.790104, 54.869278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381550, 32.932575, 54.792648>,  <35.695202, 33.338356, 55.272640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381550, 32.932575, 54.792648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385281, 33.288403, 54.609966>,  <35.387520, 33.501900, 54.500359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385281, 33.288403, 54.609966>,  <35.381550, 32.932575, 54.792648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385281, 33.288403, 54.609966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121135, -0.454366, -0.882540,
		-0.992592, -0.047091, -0.111997,
		0.009328, 0.889569, -0.456705,
		35.388081, 33.555275, 54.472954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991230, 32.842518, 54.180489>,  <35.381550, 32.932575, 54.792648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991230, 32.842518, 54.180489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.196053, 33.178684, 54.109489>,  <35.318947, 33.380383, 54.066891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.196053, 33.178684, 54.109489>,  <34.991230, 32.842518, 54.180489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196053, 33.178684, 54.109489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290284, -0.363801, -0.885090,
		-0.808413, 0.401693, -0.430246,
		0.512058, 0.840411, -0.177497,
		35.349670, 33.430809, 54.056240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799580, 32.969296, 53.520191>,  <34.991230, 32.842518, 54.180489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799580, 32.969296, 53.520191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127850, 33.189590, 53.581085>,  <35.324814, 33.321766, 53.617622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127850, 33.189590, 53.581085>,  <34.799580, 32.969296, 53.520191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127850, 33.189590, 53.581085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362037, -0.295067, -0.884231,
		-0.442061, 0.780783, -0.441543,
		0.820677, 0.550739, 0.152235,
		35.374054, 33.354813, 53.626755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339592, 32.942619, 52.958160>,  <34.799580, 32.969296, 53.520191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339592, 32.942619, 52.958160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083687, 32.674461, 52.807816>,  <33.930145, 32.513565, 52.717609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083687, 32.674461, 52.807816>,  <34.339592, 32.942619, 52.958160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083687, 32.674461, 52.807816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632447, 0.181327, 0.753081,
		-0.436711, 0.719504, -0.539998,
		-0.639761, -0.670399, -0.375861,
		33.891758, 32.473343, 52.695057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657146, 33.234329, 52.889782>,  <34.339592, 32.942619, 52.958160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657146, 33.234329, 52.889782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.646046, 32.839069, 52.950172>,  <33.639385, 32.601913, 52.986408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.646046, 32.839069, 52.950172>,  <33.657146, 33.234329, 52.889782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646046, 32.839069, 52.950172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556022, 0.140777, 0.819159,
		-0.830704, -0.061214, -0.553339,
		-0.027753, -0.988147, 0.150980,
		33.637718, 32.542625, 52.995468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948669, 33.155136, 53.001743>,  <33.657146, 33.234329, 52.889782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948669, 33.155136, 53.001743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.128441, 32.830978, 53.152092>,  <33.236301, 32.636482, 53.242302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.128441, 32.830978, 53.152092>,  <32.948669, 33.155136, 53.001743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128441, 32.830978, 53.152092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617507, 0.022223, 0.786252,
		-0.645526, -0.585465, -0.490436,
		0.449424, -0.810393, 0.375874,
		33.263268, 32.587860, 53.264854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379704, 32.780926, 53.290894>,  <32.948669, 33.155136, 53.001743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379704, 32.780926, 53.290894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.699505, 32.628178, 53.476353>,  <32.891388, 32.536530, 53.587627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.699505, 32.628178, 53.476353>,  <32.379704, 32.780926, 53.290894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699505, 32.628178, 53.476353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535707, -0.104199, 0.837950,
		-0.271677, -0.918323, -0.287879,
		0.799506, -0.381870, 0.463644,
		32.939358, 32.513618, 53.615444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139507, 32.197636, 53.736290>,  <32.379704, 32.780926, 53.290894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139507, 32.197636, 53.736290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482162, 32.330528, 53.894169>,  <32.687756, 32.410263, 53.988895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482162, 32.330528, 53.894169>,  <32.139507, 32.197636, 53.736290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482162, 32.330528, 53.894169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420308, 0.005766, 0.907363,
		0.299181, -0.943179, 0.144580,
		0.856640, 0.332234, 0.394701,
		32.739155, 32.430199, 54.012581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297123, 31.752869, 54.348476>,  <32.139507, 32.197636, 53.736290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297123, 31.752869, 54.348476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.519592, 32.079964, 54.407776>,  <32.653072, 32.276222, 54.443356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.519592, 32.079964, 54.407776>,  <32.297123, 31.752869, 54.348476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519592, 32.079964, 54.407776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275215, 0.012908, 0.961296,
		0.784175, -0.575446, 0.232233,
		0.556172, 0.817738, 0.148250,
		32.686443, 32.325287, 54.452251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567822, 31.633083, 54.968349>,  <32.297123, 31.752869, 54.348476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567822, 31.633083, 54.968349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627853, 32.022636, 54.900196>,  <32.663872, 32.256367, 54.859303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627853, 32.022636, 54.900196>,  <32.567822, 31.633083, 54.968349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627853, 32.022636, 54.900196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353163, 0.213777, 0.910810,
		0.923446, -0.076518, 0.376022,
		0.150078, 0.973881, -0.170388,
		32.672878, 32.314800, 54.849079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943501, 31.960680, 55.586178>,  <32.567822, 31.633083, 54.968349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943501, 31.960680, 55.586178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758587, 32.250416, 55.381584>,  <32.647636, 32.424259, 55.258827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758587, 32.250416, 55.381584>,  <32.943501, 31.960680, 55.586178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758587, 32.250416, 55.381584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408841, 0.337743, 0.847808,
		0.786853, 0.601050, 0.140005,
		-0.462289, 0.724341, -0.511488,
		32.619900, 32.467716, 55.228138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094860, 32.643616, 55.955093>,  <32.943501, 31.960680, 55.586178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094860, 32.643616, 55.955093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.766804, 32.691078, 55.731205>,  <32.569969, 32.719555, 55.596870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.766804, 32.691078, 55.731205>,  <33.094860, 32.643616, 55.955093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766804, 32.691078, 55.731205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431653, 0.513803, 0.741406,
		0.375563, 0.849662, -0.370170,
		-0.820139, 0.118660, -0.559725,
		32.520763, 32.726677, 55.563286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936092, 33.340515, 55.948082>,  <33.094860, 32.643616, 55.955093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936092, 33.340515, 55.948082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583084, 33.182125, 55.846600>,  <32.371281, 33.087090, 55.785709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583084, 33.182125, 55.846600>,  <32.936092, 33.340515, 55.948082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583084, 33.182125, 55.846600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468608, 0.694986, 0.545345,
		-0.039621, 0.600165, -0.798894,
		-0.882517, -0.395975, -0.253707,
		32.318329, 33.063332, 55.770489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414806, 33.922966, 56.195770>,  <32.936092, 33.340515, 55.948082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414806, 33.922966, 56.195770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.159046, 33.624241, 56.122620>,  <32.005592, 33.445007, 56.078728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.159046, 33.624241, 56.122620>,  <32.414806, 33.922966, 56.195770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159046, 33.624241, 56.122620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620473, 0.360710, 0.696349,
		-0.454076, 0.558713, -0.694013,
		-0.639397, -0.746812, -0.182876,
		31.967228, 33.400196, 56.067757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758873, 34.187607, 56.065174>,  <32.414806, 33.922966, 56.195770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758873, 34.187607, 56.065174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.725595, 33.824272, 56.229130>,  <31.705629, 33.606274, 56.327503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.725595, 33.824272, 56.229130>,  <31.758873, 34.187607, 56.065174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725595, 33.824272, 56.229130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795776, 0.308138, 0.521336,
		-0.599850, -0.282808, -0.748465,
		-0.083193, -0.908334, 0.409888,
		31.700638, 33.551773, 56.352097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033218, 34.195656, 56.184921>,  <31.758873, 34.187607, 56.065174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033218, 34.195656, 56.184921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.193718, 33.907822, 56.411617>,  <31.290018, 33.735119, 56.547634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.193718, 33.907822, 56.411617>,  <31.033218, 34.195656, 56.184921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193718, 33.907822, 56.411617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801085, 0.024332, 0.598056,
		-0.444144, -0.693975, -0.566688,
		0.401247, -0.719588, 0.566740,
		31.314093, 33.691944, 56.581638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528301, 33.732082, 56.321098>,  <31.033218, 34.195656, 56.184921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528301, 33.732082, 56.321098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.804045, 33.713516, 56.610271>,  <30.969492, 33.702377, 56.783775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.804045, 33.713516, 56.610271>,  <30.528301, 33.732082, 56.321098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804045, 33.713516, 56.610271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711878, 0.141477, 0.687906,
		-0.134210, -0.988853, 0.064483,
		0.689360, -0.046419, 0.722930,
		31.010853, 33.699589, 56.827152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925611, 33.337574, 56.266804>,  <30.528301, 33.732082, 56.321098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925611, 33.337574, 56.266804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.551174, 33.202229, 56.228352>,  <29.326511, 33.121021, 56.205280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.551174, 33.202229, 56.228352>,  <29.925611, 33.337574, 56.266804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551174, 33.202229, 56.228352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143773, -0.118641, -0.982473,
		0.321025, -0.933508, 0.159706,
		-0.936094, -0.338360, -0.096127,
		29.270346, 33.100719, 56.199512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979588, 32.658669, 56.121689>,  <29.925611, 33.337574, 56.266804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979588, 32.658669, 56.121689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.643707, 32.814041, 55.969891>,  <29.442179, 32.907265, 55.878811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.643707, 32.814041, 55.969891>,  <29.979588, 32.658669, 56.121689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643707, 32.814041, 55.969891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308504, -0.233898, -0.922018,
		-0.446909, -0.891296, 0.076571,
		-0.839701, 0.388436, -0.379499,
		29.391796, 32.930573, 55.856041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837225, 32.262459, 55.561317>,  <29.979588, 32.658669, 56.121689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837225, 32.262459, 55.561317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.614767, 32.586456, 55.486893>,  <29.481293, 32.780853, 55.442238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.614767, 32.586456, 55.486893>,  <29.837225, 32.262459, 55.561317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614767, 32.586456, 55.486893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303304, -0.010630, -0.952835,
		-0.773764, -0.586348, -0.239762,
		-0.556144, 0.809990, -0.186066,
		29.447924, 32.829453, 55.431072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391022, 32.049809, 54.863487>,  <29.837225, 32.262459, 55.561317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391022, 32.049809, 54.863487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.376894, 32.447323, 54.905693>,  <29.368418, 32.685833, 54.931015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.376894, 32.447323, 54.905693>,  <29.391022, 32.049809, 54.863487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376894, 32.447323, 54.905693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269834, 0.111143, -0.956471,
		-0.962259, -0.005312, -0.272084,
		-0.035321, 0.993790, 0.105515,
		29.366297, 32.745461, 54.937347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926533, 32.253242, 54.362984>,  <29.391022, 32.049809, 54.863487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926533, 32.253242, 54.362984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.161203, 32.569542, 54.432873>,  <29.302006, 32.759323, 54.474804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.161203, 32.569542, 54.432873>,  <28.926533, 32.253242, 54.362984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161203, 32.569542, 54.432873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191997, 0.073782, -0.978618,
		-0.786732, 0.607678, -0.108535,
		0.586677, 0.790749, 0.174719,
		29.337206, 32.806767, 54.485287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717922, 32.637745, 53.880608>,  <28.926533, 32.253242, 54.362984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717922, 32.637745, 53.880608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.082346, 32.752583, 53.998962>,  <29.301001, 32.821484, 54.069977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.082346, 32.752583, 53.998962>,  <28.717922, 32.637745, 53.880608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082346, 32.752583, 53.998962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236315, 0.224445, -0.945399,
		-0.337827, 0.931237, 0.136638,
		0.911059, 0.287092, 0.295889,
		29.355663, 32.838711, 54.087730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933893, 33.299191, 53.637344>,  <28.717922, 32.637745, 53.880608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933893, 33.299191, 53.637344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.276348, 33.105858, 53.710468>,  <29.481821, 32.989857, 53.754341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.276348, 33.105858, 53.710468>,  <28.933893, 33.299191, 53.637344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276348, 33.105858, 53.710468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321280, 0.220781, -0.920888,
		0.404734, 0.847139, 0.344304,
		0.856136, -0.483333, 0.182811,
		29.533190, 32.960857, 53.765312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384573, 33.578438, 53.122807>,  <28.933893, 33.299191, 53.637344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384573, 33.578438, 53.122807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.569231, 33.259178, 53.277641>,  <29.680025, 33.067623, 53.370541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.569231, 33.259178, 53.277641>,  <29.384573, 33.578438, 53.122807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569231, 33.259178, 53.277641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374292, -0.220357, -0.900749,
		0.804231, 0.560711, 0.197015,
		0.461646, -0.798152, 0.387087,
		29.707726, 33.019733, 53.393768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953852, 33.585835, 52.835316>,  <29.384573, 33.578438, 53.122807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953852, 33.585835, 52.835316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.924250, 33.207497, 52.961739>,  <29.906488, 32.980492, 53.037594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.924250, 33.207497, 52.961739>,  <29.953852, 33.585835, 52.835316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924250, 33.207497, 52.961739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466594, -0.312941, -0.827259,
		0.881370, 0.086252, 0.464486,
		-0.074004, -0.945848, 0.316062,
		29.902048, 32.923740, 53.056557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594379, 33.205570, 52.558079>,  <29.953852, 33.585835, 52.835316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594379, 33.205570, 52.558079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.324644, 32.920422, 52.635105>,  <30.162802, 32.749332, 52.681320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.324644, 32.920422, 52.635105>,  <30.594379, 33.205570, 52.558079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324644, 32.920422, 52.635105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446704, -0.601471, -0.662336,
		0.587981, -0.360621, 0.724038,
		-0.674340, -0.712872, 0.192562,
		30.122341, 32.706562, 52.692875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997847, 32.536510, 52.523071>,  <30.594379, 33.205570, 52.558079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997847, 32.536510, 52.523071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.617275, 32.425587, 52.469574>,  <30.388933, 32.359032, 52.437477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.617275, 32.425587, 52.469574>,  <30.997847, 32.536510, 52.523071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617275, 32.425587, 52.469574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249996, -0.442334, -0.861303,
		0.179687, -0.852902, 0.490174,
		-0.951428, -0.277306, -0.133741,
		30.331846, 32.342396, 52.429451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905493, 31.760300, 52.395992>,  <30.997847, 32.536510, 52.523071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905493, 31.760300, 52.395992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.582022, 31.937096, 52.240719>,  <30.387939, 32.043175, 52.147556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.582022, 31.937096, 52.240719>,  <30.905493, 31.760300, 52.395992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582022, 31.937096, 52.240719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210422, -0.398885, -0.892532,
		-0.549332, -0.803452, 0.229563,
		-0.808676, 0.441991, -0.388184,
		30.339418, 32.069695, 52.124264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760063, 31.374641, 51.895023>,  <30.905493, 31.760300, 52.395992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760063, 31.374641, 51.895023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.532507, 31.681160, 51.775585>,  <30.395973, 31.865070, 51.703922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.532507, 31.681160, 51.775585>,  <30.760063, 31.374641, 51.895023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532507, 31.681160, 51.775585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134215, -0.271695, -0.952978,
		-0.811388, -0.582216, 0.051716,
		-0.568890, 0.766294, -0.298592,
		30.361839, 31.911049, 51.686008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351248, 31.079405, 51.304077>,  <30.760063, 31.374641, 51.895023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351248, 31.079405, 51.304077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.334171, 31.476543, 51.259476>,  <30.323925, 31.714827, 51.232716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.334171, 31.476543, 51.259476>,  <30.351248, 31.079405, 51.304077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334171, 31.476543, 51.259476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001464, -0.111543, -0.993759,
		-0.999087, -0.042586, 0.003309,
		-0.042690, 0.992847, -0.111503,
		30.321365, 31.774397, 51.226025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<24.990961, 36.674614, 53.243771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.329014, 36.855778, 53.357349>,  <25.531845, 36.964478, 53.425499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.329014, 36.855778, 53.357349>,  <24.990961, 36.674614, 53.243771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.329014, 36.855778, 53.357349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182343, -0.255081, 0.949571,
		0.502499, -0.854288, -0.132992,
		0.845131, 0.452909, 0.283951,
		25.582554, 36.991650, 53.442535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482784, 36.274384, 53.641796>,  <24.990961, 36.674614, 53.243771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.482784, 36.274384, 53.641796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.579470, 36.642735, 53.764141>,  <25.637482, 36.863747, 53.837547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.579470, 36.642735, 53.764141>,  <25.482784, 36.274384, 53.641796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579470, 36.642735, 53.764141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143244, -0.277894, 0.949872,
		0.959716, -0.273411, 0.064739,
		0.241714, 0.920881, 0.305864,
		25.651983, 36.918999, 53.855900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886042, 36.113651, 54.232571>,  <25.482784, 36.274384, 53.641796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886042, 36.113651, 54.232571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.805016, 36.503532, 54.270370>,  <25.756399, 36.737461, 54.293049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.805016, 36.503532, 54.270370>,  <25.886042, 36.113651, 54.232571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805016, 36.503532, 54.270370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292375, -0.152292, 0.944100,
		0.934604, 0.163615, 0.315826,
		-0.202567, 0.974699, 0.094495,
		25.744246, 36.795940, 54.298717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314720, 36.399712, 54.816643>,  <25.886042, 36.113651, 54.232571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314720, 36.399712, 54.816643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.987667, 36.625984, 54.773773>,  <25.791435, 36.761745, 54.748051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.987667, 36.625984, 54.773773>,  <26.314720, 36.399712, 54.816643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987667, 36.625984, 54.773773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159504, -0.043697, 0.986230,
		0.553205, 0.823468, 0.125956,
		-0.817632, 0.565678, -0.107173,
		25.742378, 36.795689, 54.741623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308702, 36.769825, 55.410912>,  <26.314720, 36.399712, 54.816643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308702, 36.769825, 55.410912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.933798, 36.845032, 55.293480>,  <25.708855, 36.890156, 55.223019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.933798, 36.845032, 55.293480>,  <26.308702, 36.769825, 55.410912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933798, 36.845032, 55.293480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274772, 0.119907, 0.954004,
		0.214568, 0.974820, -0.060723,
		-0.937263, 0.188014, -0.293581,
		25.652618, 36.901436, 55.205406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007277, 37.370232, 55.812420>,  <26.308702, 36.769825, 55.410912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007277, 37.370232, 55.812420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.695154, 37.158787, 55.678738>,  <25.507881, 37.031921, 55.598530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.695154, 37.158787, 55.678738>,  <26.007277, 37.370232, 55.812420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.695154, 37.158787, 55.678738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457474, 0.118086, 0.881347,
		-0.426427, 0.840609, -0.333970,
		-0.780305, -0.528613, -0.334202,
		25.461063, 37.000202, 55.578476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.331505, 37.690464, 56.084831>,  <26.007277, 37.370232, 55.812420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.331505, 37.690464, 56.084831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.244505, 37.307049, 56.011192>,  <25.192305, 37.077000, 55.967007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.244505, 37.307049, 56.011192>,  <25.331505, 37.690464, 56.084831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.244505, 37.307049, 56.011192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541871, -0.038298, 0.839589,
		-0.811831, 0.282370, -0.511076,
		-0.217501, -0.958541, -0.184099,
		25.179255, 37.019485, 55.955963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.694918, 37.612499, 56.437881>,  <25.331505, 37.690464, 56.084831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.694918, 37.612499, 56.437881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.835457, 37.247028, 56.356148>,  <24.919781, 37.027748, 56.307106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.835457, 37.247028, 56.356148>,  <24.694918, 37.612499, 56.437881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.835457, 37.247028, 56.356148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536034, -0.375250, 0.756210,
		-0.767607, -0.156163, -0.621605,
		0.351349, -0.913674, -0.204336,
		24.940861, 36.972927, 56.294846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.146139, 37.156773, 56.698689>,  <24.694918, 37.612499, 56.437881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.146139, 37.156773, 56.698689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.464664, 36.917336, 56.663887>,  <24.655779, 36.773674, 56.643005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.464664, 36.917336, 56.663887>,  <24.146139, 37.156773, 56.698689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.464664, 36.917336, 56.663887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291612, -0.505918, 0.811794,
		-0.529953, -0.621070, -0.577427,
		0.796312, -0.598598, -0.087001,
		24.703558, 36.737759, 56.637787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.898743, 36.486561, 56.798336>,  <24.146139, 37.156773, 56.698689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.898743, 36.486561, 56.798336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.294622, 36.468220, 56.852592>,  <24.532150, 36.457214, 56.885147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.294622, 36.468220, 56.852592>,  <23.898743, 36.486561, 56.798336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.294622, 36.468220, 56.852592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142648, -0.397116, 0.906615,
		0.012298, -0.916623, -0.399564,
		0.989697, -0.045848, 0.135638,
		24.591532, 36.454464, 56.893284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.029528, 35.874088, 57.008862>,  <23.898743, 36.486561, 56.798336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.029528, 35.874088, 57.008862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.344486, 36.068359, 57.160717>,  <24.533463, 36.184921, 57.251831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.344486, 36.068359, 57.160717>,  <24.029528, 35.874088, 57.008862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.344486, 36.068359, 57.160717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208813, -0.369301, 0.905546,
		0.580002, -0.792298, -0.189372,
		0.787397, 0.485676, 0.379638,
		24.580706, 36.214062, 57.274609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.370628, 35.414631, 57.477901>,  <24.029528, 35.874088, 57.008862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.370628, 35.414631, 57.477901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.501295, 35.776783, 57.586399>,  <24.579695, 35.994076, 57.651497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.501295, 35.776783, 57.586399>,  <24.370628, 35.414631, 57.477901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.501295, 35.776783, 57.586399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129729, -0.241317, 0.961736,
		0.936195, -0.349353, 0.038624,
		0.326665, 0.905383, 0.271241,
		24.599295, 36.048397, 57.667770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.776522, 35.172863, 57.979031>,  <24.370628, 35.414631, 57.477901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.776522, 35.172863, 57.979031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.644262, 35.542095, 58.057606>,  <24.564907, 35.763634, 58.104752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.644262, 35.542095, 58.057606>,  <24.776522, 35.172863, 57.979031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.644262, 35.542095, 58.057606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054345, -0.226421, 0.972512,
		0.942187, 0.310887, 0.125031,
		-0.330651, 0.923084, 0.196436,
		24.545067, 35.819019, 58.116535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169239, 35.566700, 58.545971>,  <24.776522, 35.172863, 57.979031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.169239, 35.566700, 58.545971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.774733, 35.627647, 58.520462>,  <24.538029, 35.664215, 58.505157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.774733, 35.627647, 58.520462>,  <25.169239, 35.566700, 58.545971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.774733, 35.627647, 58.520462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083927, -0.129751, 0.987988,
		0.142260, 0.979770, 0.140756,
		-0.986265, 0.152365, -0.063771,
		24.478853, 35.673355, 58.501331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286942, 35.138588, 59.065765>,  <25.169239, 35.566700, 58.545971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286942, 35.138588, 59.065765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.390818, 35.157787, 59.451565>,  <25.453144, 35.169308, 59.683044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.390818, 35.157787, 59.451565>,  <25.286942, 35.138588, 59.065765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.390818, 35.157787, 59.451565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958735, -0.132481, -0.251547,
		0.115704, 0.990023, -0.080421,
		0.259691, 0.047998, 0.964498,
		25.468725, 35.172188, 59.740913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767860, 35.625313, 59.182056>,  <25.286942, 35.138588, 59.065765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767860, 35.625313, 59.182056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.804548, 35.320370, 59.438305>,  <25.826561, 35.137405, 59.592056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.804548, 35.320370, 59.438305>,  <25.767860, 35.625313, 59.182056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804548, 35.320370, 59.438305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834706, -0.291954, -0.466935,
		0.543004, 0.577560, 0.609566,
		0.091718, -0.762356, 0.640625,
		25.832064, 35.091663, 59.630493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539244, 35.617294, 59.302895>,  <25.767860, 35.625313, 59.182056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539244, 35.617294, 59.302895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.412235, 35.265804, 59.445454>,  <26.336031, 35.054909, 59.530991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.412235, 35.265804, 59.445454>,  <26.539244, 35.617294, 59.302895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412235, 35.265804, 59.445454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862885, -0.423603, -0.275664,
		0.393205, 0.220004, 0.892742,
		-0.317521, -0.878726, 0.356401,
		26.316978, 35.002186, 59.552376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135254, 35.286564, 59.612839>,  <26.539244, 35.617294, 59.302895>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135254, 35.286564, 59.612839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.892443, 34.973812, 59.556011>,  <26.746756, 34.786160, 59.521915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.892443, 34.973812, 59.556011>,  <27.135254, 35.286564, 59.612839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892443, 34.973812, 59.556011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794467, -0.592936, -0.131333,
		0.018447, -0.192594, 0.981105,
		-0.607027, -0.781878, -0.142072,
		26.710335, 34.739250, 59.513390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535818, 34.644104, 59.853790>,  <27.135254, 35.286564, 59.612839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535818, 34.644104, 59.853790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.238892, 34.514812, 59.619019>,  <27.060736, 34.437237, 59.478153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.238892, 34.514812, 59.619019>,  <27.535818, 34.644104, 59.853790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238892, 34.514812, 59.619019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599348, -0.711951, -0.365934,
		-0.299585, -0.623415, 0.722221,
		-0.742314, -0.323233, -0.586932,
		27.016197, 34.417843, 59.442940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724323, 33.946232, 59.782681>,  <27.535818, 34.644104, 59.853790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724323, 33.946232, 59.782681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.442554, 33.975597, 59.500290>,  <27.273493, 33.993217, 59.330856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.442554, 33.975597, 59.500290>,  <27.724323, 33.946232, 59.782681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442554, 33.975597, 59.500290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590695, -0.490831, -0.640440,
		-0.393530, -0.868156, 0.302389,
		-0.704424, 0.073412, -0.705972,
		27.231228, 33.997623, 59.288498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695820, 33.231464, 59.335983>,  <27.724323, 33.946232, 59.782681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695820, 33.231464, 59.335983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.553093, 33.518192, 59.096367>,  <27.467457, 33.690231, 58.952599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.553093, 33.518192, 59.096367>,  <27.695820, 33.231464, 59.335983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553093, 33.518192, 59.096367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635018, -0.284193, -0.718322,
		-0.685152, -0.636709, -0.353791,
		-0.356817, 0.716824, -0.599037,
		27.446049, 33.733238, 58.916656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351782, 32.920033, 58.763725>,  <27.695820, 33.231464, 59.335983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351782, 32.920033, 58.763725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.474335, 33.285023, 58.655266>,  <27.547867, 33.504017, 58.590191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.474335, 33.285023, 58.655266>,  <27.351782, 32.920033, 58.763725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474335, 33.285023, 58.655266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470837, -0.392833, -0.789934,
		-0.827310, 0.114354, -0.549983,
		0.306384, 0.912472, -0.271152,
		27.566250, 33.558765, 58.573921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160666, 32.971870, 58.101067>,  <27.351782, 32.920033, 58.763725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160666, 32.971870, 58.101067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.425959, 33.266075, 58.156425>,  <27.585135, 33.442596, 58.189640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.425959, 33.266075, 58.156425>,  <27.160666, 32.971870, 58.101067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425959, 33.266075, 58.156425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411966, -0.204397, -0.887978,
		-0.624827, 0.645949, -0.438567,
		0.663230, 0.735508, 0.138397,
		27.624928, 33.486729, 58.197945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095734, 33.290188, 57.504147>,  <27.160666, 32.971870, 58.101067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095734, 33.290188, 57.504147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.449688, 33.411892, 57.645229>,  <27.662062, 33.484917, 57.729877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.449688, 33.411892, 57.645229>,  <27.095734, 33.290188, 57.504147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449688, 33.411892, 57.645229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395038, -0.088975, -0.914346,
		-0.246820, 0.948424, -0.198928,
		0.884887, 0.304263, 0.352703,
		27.715155, 33.503170, 57.751041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423128, 33.750816, 56.892895>,  <27.095734, 33.290188, 57.504147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423128, 33.750816, 56.892895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.714190, 33.640263, 57.144016>,  <27.888826, 33.573929, 57.294689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.714190, 33.640263, 57.144016>,  <27.423128, 33.750816, 56.892895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714190, 33.640263, 57.144016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620641, -0.124468, -0.774153,
		0.292104, 0.952953, 0.080965,
		0.727654, -0.276383, 0.627800,
		27.932486, 33.557346, 57.332355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998018, 34.134075, 56.700111>,  <27.423128, 33.750816, 56.892895>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998018, 34.134075, 56.700111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.158028, 33.824883, 56.897079>,  <28.254034, 33.639366, 57.015259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.158028, 33.824883, 56.897079>,  <27.998018, 34.134075, 56.700111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158028, 33.824883, 56.897079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719808, -0.067604, -0.690874,
		0.567324, 0.630812, 0.529357,
		0.400025, -0.772985, 0.492417,
		28.278034, 33.592987, 57.044804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781185, 34.193893, 56.637482>,  <27.998018, 34.134075, 56.700111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781185, 34.193893, 56.637482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.728600, 33.810696, 56.739437>,  <28.697048, 33.580776, 56.800610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.728600, 33.810696, 56.739437>,  <28.781185, 34.193893, 56.637482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728600, 33.810696, 56.739437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500794, -0.286080, -0.816923,
		0.855525, 0.020254, 0.517365,
		-0.131462, -0.957992, 0.254892,
		28.689161, 33.523296, 56.815907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476696, 33.835281, 56.495228>,  <28.781185, 34.193893, 56.637482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476696, 33.835281, 56.495228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.216137, 33.531815, 56.499413>,  <29.059801, 33.349735, 56.501923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.216137, 33.531815, 56.499413>,  <29.476696, 33.835281, 56.495228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216137, 33.531815, 56.499413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494114, -0.434636, -0.752956,
		0.575790, -0.485303, 0.657987,
		-0.651397, -0.758665, 0.010464,
		29.020718, 33.304214, 56.502552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158962, 33.529362, 56.949688>,  <29.476696, 33.835281, 56.495228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158962, 33.529362, 56.949688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.513206, 33.670692, 57.070259>,  <30.725754, 33.755489, 57.142601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.513206, 33.670692, 57.070259>,  <30.158962, 33.529362, 56.949688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513206, 33.670692, 57.070259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409204, 0.286684, 0.866236,
		0.219648, -0.890492, 0.398471,
		0.885611, 0.353323, 0.301423,
		30.778891, 33.776688, 57.160686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236975, 33.248146, 57.643478>,  <30.158962, 33.529362, 56.949688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236975, 33.248146, 57.643478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.462912, 33.576141, 57.606461>,  <30.598475, 33.772938, 57.584248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.462912, 33.576141, 57.606461>,  <30.236975, 33.248146, 57.643478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462912, 33.576141, 57.606461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410720, 0.376636, 0.830334,
		0.715724, -0.430998, 0.549528,
		0.564844, 0.819992, -0.092548,
		30.632364, 33.822140, 57.578697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578815, 33.535530, 58.361557>,  <30.236975, 33.248146, 57.643478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578815, 33.535530, 58.361557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.591946, 33.847805, 58.111931>,  <30.599823, 34.035168, 57.962154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.591946, 33.847805, 58.111931>,  <30.578815, 33.535530, 58.361557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591946, 33.847805, 58.111931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200550, 0.616846, 0.761105,
		0.979133, 0.100172, 0.176815,
		0.032826, 0.780684, -0.624064,
		30.601793, 34.082008, 57.924713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696861, 34.060383, 58.854347>,  <30.578815, 33.535530, 58.361557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696861, 34.060383, 58.854347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.628410, 34.274048, 58.523193>,  <30.587339, 34.402248, 58.324501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.628410, 34.274048, 58.523193>,  <30.696861, 34.060383, 58.854347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628410, 34.274048, 58.523193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199919, 0.803969, 0.560059,
		0.964752, 0.261351, -0.030792,
		-0.171128, 0.534162, -0.827880,
		30.577072, 34.434296, 58.274830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050165, 34.671619, 58.982338>,  <30.696861, 34.060383, 58.854347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050165, 34.671619, 58.982338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.782888, 34.751736, 58.695728>,  <30.622522, 34.799805, 58.523762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.782888, 34.751736, 58.695728>,  <31.050165, 34.671619, 58.982338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782888, 34.751736, 58.695728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361556, 0.754290, 0.548019,
		0.650230, 0.625243, -0.431592,
		-0.668191, 0.200293, -0.716522,
		30.582432, 34.811825, 58.480770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965176, 35.392887, 58.865612>,  <31.050165, 34.671619, 58.982338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965176, 35.392887, 58.865612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.623020, 35.238705, 58.727203>,  <30.417727, 35.146194, 58.644157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.623020, 35.238705, 58.727203>,  <30.965176, 35.392887, 58.865612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623020, 35.238705, 58.727203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515598, 0.569515, 0.640165,
		-0.049692, 0.725998, -0.685899,
		-0.855388, -0.385459, -0.346023,
		30.366404, 35.123066, 58.623398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495930, 35.954166, 58.881001>,  <30.965176, 35.392887, 58.865612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495930, 35.954166, 58.881001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.265366, 35.627346, 58.875690>,  <30.127028, 35.431252, 58.872505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.265366, 35.627346, 58.875690>,  <30.495930, 35.954166, 58.881001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265366, 35.627346, 58.875690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659014, 0.455190, 0.598752,
		-0.483172, 0.353871, -0.800825,
		-0.576408, -0.817054, -0.013271,
		30.092443, 35.382229, 58.871708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509102, 36.747845, 58.712589>,  <30.495930, 35.954166, 58.881001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509102, 36.747845, 58.712589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.818638, 36.800907, 58.960323>,  <31.004358, 36.832745, 59.108963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.818638, 36.800907, 58.960323>,  <30.509102, 36.747845, 58.712589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818638, 36.800907, 58.960323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601168, -0.461703, -0.652248,
		0.199425, 0.877059, -0.437032,
		0.773839, 0.132655, 0.619335,
		31.050789, 36.840702, 59.146126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029736, 37.227394, 58.491783>,  <30.509102, 36.747845, 58.712589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029736, 37.227394, 58.491783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.229555, 37.014126, 58.764893>,  <31.349447, 36.886166, 58.928757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.229555, 37.014126, 58.764893>,  <31.029736, 37.227394, 58.491783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229555, 37.014126, 58.764893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666933, -0.266294, -0.695908,
		0.552857, 0.803003, 0.222564,
		0.499549, -0.533173, 0.682772,
		31.379419, 36.854176, 58.969723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551517, 37.310490, 58.146297>,  <31.029736, 37.227394, 58.491783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551517, 37.310490, 58.146297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.615959, 37.030746, 58.424847>,  <31.654623, 36.862900, 58.591976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.615959, 37.030746, 58.424847>,  <31.551517, 37.310490, 58.146297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615959, 37.030746, 58.424847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692809, -0.422384, -0.584473,
		0.702896, 0.576614, 0.416477,
		0.161102, -0.699363, 0.696375,
		31.664289, 36.820938, 58.633759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119022, 37.087086, 57.889095>,  <31.551517, 37.310490, 58.146297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119022, 37.087086, 57.889095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.068119, 36.834377, 58.194950>,  <32.037575, 36.682755, 58.378464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.068119, 36.834377, 58.194950>,  <32.119022, 37.087086, 57.889095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068119, 36.834377, 58.194950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757861, -0.559269, -0.335954,
		0.639884, 0.536736, 0.549966,
		-0.127260, -0.631769, 0.764639,
		32.029942, 36.644848, 58.424343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792637, 37.008038, 58.166149>,  <32.119022, 37.087086, 57.889095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792637, 37.008038, 58.166149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.557621, 36.691437, 58.233463>,  <32.416611, 36.501476, 58.273853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.557621, 36.691437, 58.233463>,  <32.792637, 37.008038, 58.166149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557621, 36.691437, 58.233463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640182, -0.581864, -0.501599,
		0.494937, -0.186974, 0.848574,
		-0.587541, -0.791502, 0.168288,
		32.381359, 36.453987, 58.283951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194328, 36.440380, 58.317753>,  <32.792637, 37.008038, 58.166149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194328, 36.440380, 58.317753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.846062, 36.257420, 58.245396>,  <32.637100, 36.147644, 58.201981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.846062, 36.257420, 58.245396>,  <33.194328, 36.440380, 58.317753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846062, 36.257420, 58.245396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457609, -0.618393, -0.638893,
		0.180368, -0.639041, 0.747726,
		-0.870667, -0.457402, -0.180893,
		32.584862, 36.120197, 58.191128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342606, 35.812229, 58.506001>,  <33.194328, 36.440380, 58.317753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342606, 35.812229, 58.506001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.041035, 35.810455, 58.243225>,  <32.860092, 35.809391, 58.085560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.041035, 35.810455, 58.243225>,  <33.342606, 35.812229, 58.506001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041035, 35.810455, 58.243225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433090, -0.755271, -0.491933,
		-0.493990, -0.655397, 0.571339,
		-0.753928, -0.004431, -0.656942,
		32.814857, 35.809128, 58.046143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<26.684708, 39.166920, 58.687359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494278, 38.824898, 58.605152>,  <26.380020, 38.619686, 58.555828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494278, 38.824898, 58.605152>,  <26.684708, 39.166920, 58.687359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494278, 38.824898, 58.605152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243957, 0.096117, -0.965011,
		0.844890, -0.509554, 0.162837,
		-0.476073, -0.855053, -0.205518,
		26.351456, 38.568382, 58.543495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230202, 38.590340, 58.482319>,  <26.684708, 39.166920, 58.687359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230202, 38.590340, 58.482319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865353, 38.526203, 58.331417>,  <26.646442, 38.487720, 58.240875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865353, 38.526203, 58.331417>,  <27.230202, 38.590340, 58.482319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865353, 38.526203, 58.331417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368760, 0.080929, -0.925995,
		0.179011, -0.983737, -0.014687,
		-0.912124, -0.160347, -0.377250,
		26.591715, 38.478100, 58.218243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375742, 38.181850, 57.917587>,  <27.230202, 38.590340, 58.482319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375742, 38.181850, 57.917587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010269, 38.329990, 57.850628>,  <26.790985, 38.418877, 57.810452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010269, 38.329990, 57.850628>,  <27.375742, 38.181850, 57.917587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010269, 38.329990, 57.850628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230898, 0.134039, -0.963701,
		-0.334472, -0.919169, -0.207983,
		-0.913682, 0.370354, -0.167402,
		26.736164, 38.441097, 57.800407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203594, 38.034687, 57.234791>,  <27.375742, 38.181850, 57.917587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203594, 38.034687, 57.234791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921545, 38.314152, 57.283237>,  <26.752316, 38.481831, 57.312305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921545, 38.314152, 57.283237>,  <27.203594, 38.034687, 57.234791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921545, 38.314152, 57.283237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154475, 0.318062, -0.935401,
		-0.692055, -0.640861, -0.332199,
		-0.705122, 0.698665, 0.121119,
		26.710009, 38.523750, 57.319572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795736, 37.989674, 56.595352>,  <27.203594, 38.034687, 57.234791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795736, 37.989674, 56.595352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700575, 38.345978, 56.750248>,  <26.643478, 38.559761, 56.843185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700575, 38.345978, 56.750248>,  <26.795736, 37.989674, 56.595352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700575, 38.345978, 56.750248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062141, 0.383914, -0.921276,
		-0.969300, -0.243236, -0.035981,
		-0.237901, 0.890756, 0.387242,
		26.629204, 38.613205, 56.866421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274258, 38.220737, 56.227406>,  <26.795736, 37.989674, 56.595352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274258, 38.220737, 56.227406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469364, 38.534492, 56.380672>,  <26.586428, 38.722748, 56.472633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469364, 38.534492, 56.380672>,  <26.274258, 38.220737, 56.227406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469364, 38.534492, 56.380672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029284, 0.453373, -0.890840,
		-0.872482, 0.423302, 0.244110,
		0.487767, 0.784391, 0.383164,
		26.615694, 38.769810, 56.495621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984884, 38.820770, 55.856026>,  <26.274258, 38.220737, 56.227406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.984884, 38.820770, 55.856026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322973, 38.969780, 56.009296>,  <26.525827, 39.059185, 56.101257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322973, 38.969780, 56.009296>,  <25.984884, 38.820770, 55.856026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322973, 38.969780, 56.009296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222285, 0.406973, -0.885981,
		-0.485989, 0.834027, 0.261178,
		0.845224, 0.372521, 0.383176,
		26.576540, 39.081535, 56.124249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016888, 39.551929, 55.692993>,  <25.984884, 38.820770, 55.856026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016888, 39.551929, 55.692993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397284, 39.480015, 55.793629>,  <26.625521, 39.436867, 55.854012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397284, 39.480015, 55.793629>,  <26.016888, 39.551929, 55.692993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397284, 39.480015, 55.793629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305610, 0.422337, -0.853366,
		0.047166, 0.888430, 0.456582,
		0.950988, -0.179786, 0.251593,
		26.682579, 39.426079, 55.869106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359440, 40.208328, 55.634071>,  <26.016888, 39.551929, 55.692993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359440, 40.208328, 55.634071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657755, 39.943981, 55.600460>,  <26.836744, 39.785374, 55.580292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657755, 39.943981, 55.600460>,  <26.359440, 40.208328, 55.634071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657755, 39.943981, 55.600460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300696, 0.446490, -0.842750,
		0.594463, 0.603244, 0.531706,
		0.745785, -0.660866, -0.084029,
		26.881491, 39.745720, 55.575253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970900, 40.589260, 55.468338>,  <26.359440, 40.208328, 55.634071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970900, 40.589260, 55.468338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034010, 40.213673, 55.346062>,  <27.071877, 39.988319, 55.272697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034010, 40.213673, 55.346062>,  <26.970900, 40.589260, 55.468338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034010, 40.213673, 55.346062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369211, 0.343210, -0.863649,
		0.915854, 0.023400, 0.400828,
		0.157778, -0.938967, -0.305691,
		27.081343, 39.931984, 55.254353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591627, 40.717575, 55.026325>,  <26.970900, 40.589260, 55.468338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591627, 40.717575, 55.026325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497547, 40.339611, 54.935257>,  <27.441099, 40.112835, 54.880615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497547, 40.339611, 54.935257>,  <27.591627, 40.717575, 55.026325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497547, 40.339611, 54.935257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398438, 0.119921, -0.909322,
		0.886526, -0.304586, 0.348281,
		-0.235201, -0.944905, -0.227672,
		27.426987, 40.056141, 54.866955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232189, 40.330231, 54.713673>,  <27.591627, 40.717575, 55.026325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232189, 40.330231, 54.713673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894928, 40.145988, 54.602722>,  <27.692572, 40.035442, 54.536152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894928, 40.145988, 54.602722>,  <28.232189, 40.330231, 54.713673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894928, 40.145988, 54.602722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233679, 0.150685, -0.960566,
		0.484235, -0.874722, -0.019418,
		-0.843155, -0.460602, -0.277372,
		27.641981, 40.007809, 54.519512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567204, 40.411598, 55.397545>,  <28.232189, 40.330231, 54.713673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567204, 40.411598, 55.397545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943096, 40.435291, 55.532242>,  <29.168633, 40.449509, 55.613060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943096, 40.435291, 55.532242>,  <28.567204, 40.411598, 55.397545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943096, 40.435291, 55.532242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320597, -0.189665, 0.928033,
		0.118840, -0.980060, -0.159244,
		0.939731, 0.059235, 0.336744,
		29.225016, 40.453060, 55.633266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526495, 40.045013, 55.950378>,  <28.567204, 40.411598, 55.397545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526495, 40.045013, 55.950378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896019, 40.186699, 56.008488>,  <29.117733, 40.271709, 56.043354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896019, 40.186699, 56.008488>,  <28.526495, 40.045013, 55.950378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896019, 40.186699, 56.008488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108393, -0.121938, 0.986601,
		0.367182, -0.927181, -0.074253,
		0.923812, 0.354214, 0.145274,
		29.173162, 40.292961, 56.052071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825104, 39.611866, 56.457066>,  <28.526495, 40.045013, 55.950378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825104, 39.611866, 56.457066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058672, 39.936478, 56.465618>,  <29.198812, 40.131245, 56.470749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058672, 39.936478, 56.465618>,  <28.825104, 39.611866, 56.457066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058672, 39.936478, 56.465618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177562, -0.153370, 0.972085,
		0.792154, -0.563825, -0.233653,
		0.583921, 0.811529, 0.021378,
		29.233849, 40.179935, 56.472031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551159, 39.436314, 56.758274>,  <28.825104, 39.611866, 56.457066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551159, 39.436314, 56.758274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476070, 39.826035, 56.808056>,  <29.431017, 40.059868, 56.837925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476070, 39.826035, 56.808056>,  <29.551159, 39.436314, 56.758274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476070, 39.826035, 56.808056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346567, -0.052853, 0.936535,
		0.919049, 0.218939, -0.327741,
		-0.187722, 0.974306, 0.124451,
		29.419754, 40.118328, 56.845390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152170, 39.717270, 57.120544>,  <29.551159, 39.436314, 56.758274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152170, 39.717270, 57.120544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870028, 39.997669, 57.162640>,  <29.700743, 40.165909, 57.187897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870028, 39.997669, 57.162640>,  <30.152170, 39.717270, 57.120544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870028, 39.997669, 57.162640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309291, 0.170773, 0.935508,
		0.637820, 0.692413, -0.337268,
		-0.705355, 0.700999, 0.105234,
		29.658421, 40.207970, 57.194210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506277, 40.239391, 57.521366>,  <30.152170, 39.717270, 57.120544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506277, 40.239391, 57.521366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109516, 40.275314, 57.557285>,  <29.871460, 40.296867, 57.578838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109516, 40.275314, 57.557285>,  <30.506277, 40.239391, 57.521366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109516, 40.275314, 57.557285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112096, 0.286710, 0.951437,
		0.059698, 0.953799, -0.294455,
		-0.991902, 0.089806, 0.089801,
		29.811945, 40.302258, 57.584225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446133, 40.828167, 57.876362>,  <30.506277, 40.239391, 57.521366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446133, 40.828167, 57.876362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098227, 40.635384, 57.918732>,  <29.889482, 40.519714, 57.944153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098227, 40.635384, 57.918732>,  <30.446133, 40.828167, 57.876362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098227, 40.635384, 57.918732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027008, 0.260836, 0.965005,
		-0.492725, 0.836468, -0.239883,
		-0.869766, -0.481961, 0.105929,
		29.837297, 40.490795, 57.950512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982353, 41.257896, 58.297821>,  <30.446133, 40.828167, 57.876362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982353, 41.257896, 58.297821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857046, 40.878883, 58.323242>,  <29.781862, 40.651474, 58.338497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857046, 40.878883, 58.323242>,  <29.982353, 41.257896, 58.297821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857046, 40.878883, 58.323242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176352, 0.123803, 0.976511,
		-0.933147, 0.294703, -0.205883,
		-0.313269, -0.947535, 0.063555,
		29.763065, 40.594624, 58.342308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347458, 41.326939, 58.686855>,  <29.982353, 41.257896, 58.297821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347458, 41.326939, 58.686855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470713, 40.947220, 58.711769>,  <29.544666, 40.719387, 58.726719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470713, 40.947220, 58.711769>,  <29.347458, 41.326939, 58.686855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470713, 40.947220, 58.711769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284393, -0.029439, 0.958256,
		-0.907839, -0.312988, -0.279046,
		0.308137, -0.949300, 0.062286,
		29.563154, 40.662430, 58.730453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993752, 41.113571, 59.236015>,  <29.347458, 41.326939, 58.686855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993752, 41.113571, 59.236015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279408, 40.835178, 59.206028>,  <29.450800, 40.668144, 59.188034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279408, 40.835178, 59.206028>,  <28.993752, 41.113571, 59.236015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279408, 40.835178, 59.206028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018725, -0.088070, 0.995938,
		-0.699754, -0.712642, -0.049862,
		0.714139, -0.695978, -0.074971,
		29.493649, 40.626385, 59.183537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699554, 40.590702, 59.553944>,  <28.993752, 41.113571, 59.236015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699554, 40.590702, 59.553944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090801, 40.508095, 59.564072>,  <29.325548, 40.458530, 59.570148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090801, 40.508095, 59.564072>,  <28.699554, 40.590702, 59.553944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090801, 40.508095, 59.564072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086262, -0.291750, 0.952597,
		-0.189339, -0.933934, -0.303180,
		0.978115, -0.206516, 0.025324,
		29.384235, 40.446140, 59.571667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732960, 39.871704, 59.925621>,  <28.699554, 40.590702, 59.553944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732960, 39.871704, 59.925621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082676, 40.064476, 59.948811>,  <29.292505, 40.180138, 59.962727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082676, 40.064476, 59.948811>,  <28.732960, 39.871704, 59.925621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082676, 40.064476, 59.948811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011743, -0.140408, 0.990024,
		0.485264, -0.864886, -0.128417,
		0.874289, 0.481931, 0.057979,
		29.344963, 40.209057, 59.966206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203140, 39.460567, 60.243195>,  <28.732960, 39.871704, 59.925621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203140, 39.460567, 60.243195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371330, 39.820583, 60.289024>,  <29.472244, 40.036594, 60.316521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371330, 39.820583, 60.289024>,  <29.203140, 39.460567, 60.243195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371330, 39.820583, 60.289024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156745, -0.196437, 0.967907,
		0.893663, -0.389020, -0.223673,
		0.420473, 0.900042, 0.114572,
		29.497473, 40.090595, 60.323395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823217, 39.348019, 60.577789>,  <29.203140, 39.460567, 60.243195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823217, 39.348019, 60.577789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697042, 39.722912, 60.637253>,  <29.621338, 39.947845, 60.672932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697042, 39.722912, 60.637253>,  <29.823217, 39.348019, 60.577789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697042, 39.722912, 60.637253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316912, -0.043624, 0.947451,
		0.894465, 0.345973, -0.283258,
		-0.315436, 0.937230, 0.148663,
		29.602411, 40.004082, 60.681850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910892, 38.634468, 60.760406>,  <29.823217, 39.348019, 60.577789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910892, 38.634468, 60.760406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786329, 38.372299, 61.035637>,  <29.711592, 38.214996, 61.200775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786329, 38.372299, 61.035637>,  <29.910892, 38.634468, 60.760406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786329, 38.372299, 61.035637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659639, -0.670304, -0.339954,
		0.684033, 0.348017, 0.641080,
		-0.311409, -0.655421, 0.688076,
		29.692907, 38.175674, 61.242058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543749, 38.359810, 61.206646>,  <29.910892, 38.634468, 60.760406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543749, 38.359810, 61.206646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248795, 38.095627, 61.149998>,  <30.071823, 37.937115, 61.116009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248795, 38.095627, 61.149998>,  <30.543749, 38.359810, 61.206646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248795, 38.095627, 61.149998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652675, -0.642650, -0.401267,
		0.174009, -0.388320, 0.904947,
		-0.737384, -0.660460, -0.141620,
		30.027578, 37.897488, 61.107513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859196, 37.703854, 61.355999>,  <30.543749, 38.359810, 61.206646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859196, 37.703854, 61.355999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540564, 37.620529, 61.128994>,  <30.349384, 37.570534, 60.992790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540564, 37.620529, 61.128994>,  <30.859196, 37.703854, 61.355999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540564, 37.620529, 61.128994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589581, -0.475208, -0.653125,
		-0.133634, -0.854859, 0.501356,
		-0.796578, -0.208311, -0.567512,
		30.301590, 37.558037, 60.958740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809914, 36.915272, 61.271137>,  <30.859196, 37.703854, 61.355999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809914, 36.915272, 61.271137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616438, 37.086708, 60.965889>,  <30.500353, 37.189568, 60.782738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616438, 37.086708, 60.965889>,  <30.809914, 36.915272, 61.271137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616438, 37.086708, 60.965889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603178, -0.468560, -0.645467,
		-0.634209, -0.772504, -0.031878,
		-0.483689, 0.428589, -0.763123,
		30.471331, 37.215286, 60.736954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997149, 36.443848, 60.628216>,  <30.809914, 36.915272, 61.271137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997149, 36.443848, 60.628216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837259, 36.780525, 60.483013>,  <30.741325, 36.982533, 60.395889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837259, 36.780525, 60.483013>,  <30.997149, 36.443848, 60.628216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837259, 36.780525, 60.483013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329346, -0.237702, -0.913799,
		-0.855426, -0.484822, -0.182193,
		-0.399723, 0.841692, -0.363010,
		30.717342, 37.033031, 60.374111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606598, 36.228920, 59.990429>,  <30.997149, 36.443848, 60.628216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606598, 36.228920, 59.990429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702202, 36.615097, 59.948875>,  <30.759565, 36.846802, 59.923943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702202, 36.615097, 59.948875>,  <30.606598, 36.228920, 59.990429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702202, 36.615097, 59.948875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291803, -0.173450, -0.940620,
		-0.926134, 0.194506, -0.323176,
		0.239011, 0.965444, -0.103880,
		30.773905, 36.904732, 59.917713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301922, 36.485199, 59.373577>,  <30.606598, 36.228920, 59.990429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301922, 36.485199, 59.373577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590935, 36.751724, 59.447304>,  <30.764341, 36.911640, 59.491539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590935, 36.751724, 59.447304>,  <30.301922, 36.485199, 59.373577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590935, 36.751724, 59.447304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461639, -0.266545, -0.846075,
		-0.514625, 0.696403, -0.500184,
		0.722531, 0.666316, 0.184316,
		30.807693, 36.951618, 59.502598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660786, 36.226337, 58.897137>,  <30.301922, 36.485199, 59.373577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660786, 36.226337, 58.897137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646725, 35.843948, 59.013676>,  <29.638288, 35.614517, 59.083599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646725, 35.843948, 59.013676>,  <29.660786, 36.226337, 58.897137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646725, 35.843948, 59.013676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805203, 0.199773, 0.558336,
		-0.591956, -0.214968, -0.776773,
		-0.035154, -0.955970, 0.291350,
		29.636179, 35.557156, 59.101082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907997, 36.107082, 58.920525>,  <29.660786, 36.226337, 58.897137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907997, 36.107082, 58.920525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083052, 35.804070, 59.114273>,  <29.188086, 35.622261, 59.230522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083052, 35.804070, 59.114273>,  <28.907997, 36.107082, 58.920525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083052, 35.804070, 59.114273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651405, 0.104210, 0.751540,
		-0.619794, -0.644422, -0.447856,
		0.437638, -0.757536, 0.484369,
		29.214344, 35.576809, 59.259583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417637, 35.743828, 59.180840>,  <28.907997, 36.107082, 58.920525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417637, 35.743828, 59.180840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711712, 35.600098, 59.410759>,  <28.888157, 35.513859, 59.548710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711712, 35.600098, 59.410759>,  <28.417637, 35.743828, 59.180840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711712, 35.600098, 59.410759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622378, -0.021806, 0.782413,
		-0.268605, -0.932959, -0.239665,
		0.735185, -0.359322, 0.574796,
		28.932268, 35.492302, 59.583199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071705, 35.225033, 59.673523>,  <28.417637, 35.743828, 59.180840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071705, 35.225033, 59.673523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407980, 35.351295, 59.849525>,  <28.609745, 35.427052, 59.955128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407980, 35.351295, 59.849525>,  <28.071705, 35.225033, 59.673523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407980, 35.351295, 59.849525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482445, 0.067530, 0.873319,
		0.245954, -0.946468, 0.209057,
		0.840687, 0.315655, 0.440009,
		28.660187, 35.445992, 59.981529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208775, 34.732559, 60.213020>,  <28.071705, 35.225033, 59.673523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208775, 34.732559, 60.213020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390324, 35.080185, 60.291744>,  <28.499252, 35.288761, 60.338978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390324, 35.080185, 60.291744>,  <28.208775, 34.732559, 60.213020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390324, 35.080185, 60.291744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538471, 0.091523, 0.837659,
		0.709965, -0.486165, 0.509504,
		0.453871, 0.869061, 0.196807,
		28.526485, 35.340904, 60.350788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249376, 34.721001, 60.988846>,  <28.208775, 34.732559, 60.213020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249376, 34.721001, 60.988846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286005, 35.096115, 60.854877>,  <28.307981, 35.321182, 60.774498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286005, 35.096115, 60.854877>,  <28.249376, 34.721001, 60.988846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286005, 35.096115, 60.854877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677090, 0.305258, 0.669601,
		0.730180, 0.165456, 0.662919,
		0.091572, 0.937785, -0.334922,
		28.313477, 35.377449, 60.754402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139120, 35.133778, 61.596775>,  <28.249376, 34.721001, 60.988846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139120, 35.133778, 61.596775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079571, 35.401554, 61.305656>,  <28.043842, 35.562222, 61.130985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079571, 35.401554, 61.305656>,  <28.139120, 35.133778, 61.596775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079571, 35.401554, 61.305656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593932, 0.527920, 0.607079,
		0.790621, 0.522638, 0.319009,
		-0.148871, 0.669440, -0.727797,
		28.034910, 35.602386, 61.087318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166239, 35.762703, 61.991234>,  <28.139120, 35.133778, 61.596775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166239, 35.762703, 61.991234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988771, 35.854141, 61.644615>,  <27.882292, 35.909004, 61.436646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988771, 35.854141, 61.644615>,  <28.166239, 35.762703, 61.991234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988771, 35.854141, 61.644615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694772, 0.523029, 0.493693,
		0.566084, 0.821088, -0.073231,
		-0.443667, 0.228593, -0.866548,
		27.855671, 35.922718, 61.384651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107832, 36.508533, 61.938583>,  <28.166239, 35.762703, 61.991234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107832, 36.508533, 61.938583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823641, 36.388981, 61.683743>,  <27.653126, 36.317249, 61.530838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823641, 36.388981, 61.683743>,  <28.107832, 36.508533, 61.938583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823641, 36.388981, 61.683743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647655, 0.631824, 0.425843,
		0.275259, 0.715171, -0.642466,
		-0.710476, -0.298879, -0.637099,
		27.610498, 36.299316, 61.492615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.730072, 35.434120, 47.083847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741467, 35.569359, 47.460117>,  <36.748302, 35.650501, 47.685879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741467, 35.569359, 47.460117>,  <36.730072, 35.434120, 47.083847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741467, 35.569359, 47.460117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958968, -0.256317, 0.121170,
		0.282079, -0.905533, 0.316926,
		0.028490, 0.338101, 0.940678,
		36.750015, 35.670788, 47.742321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514267, 34.894806, 47.523121>,  <36.730072, 35.434120, 47.083847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514267, 34.894806, 47.523121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.464985, 35.222713, 47.746834>,  <36.435417, 35.419460, 47.881062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.464985, 35.222713, 47.746834>,  <36.514267, 34.894806, 47.523121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464985, 35.222713, 47.746834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925888, -0.297777, 0.232510,
		0.357146, -0.489187, 0.795703,
		-0.123201, 0.819771, 0.559282,
		36.428024, 35.468643, 47.914619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235500, 34.687851, 48.160751>,  <36.514267, 34.894806, 47.523121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235500, 34.687851, 48.160751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.148140, 35.077713, 48.180180>,  <36.095726, 35.311630, 48.191837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.148140, 35.077713, 48.180180>,  <36.235500, 34.687851, 48.160751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148140, 35.077713, 48.180180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913337, -0.221680, 0.341574,
		0.343683, 0.030237, 0.938599,
		-0.218397, 0.974651, 0.048572,
		36.082623, 35.370110, 48.194752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862965, 34.774300, 48.782757>,  <36.235500, 34.687851, 48.160751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862965, 34.774300, 48.782757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754803, 35.081238, 48.550182>,  <35.689907, 35.265400, 48.410637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754803, 35.081238, 48.550182>,  <35.862965, 34.774300, 48.782757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754803, 35.081238, 48.550182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932403, -0.058300, 0.356687,
		0.239804, 0.638581, 0.731238,
		-0.270405, 0.767343, -0.581434,
		35.673683, 35.311440, 48.375751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506233, 35.287338, 49.285736>,  <35.862965, 34.774300, 48.782757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506233, 35.287338, 49.285736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382278, 35.343376, 48.909576>,  <35.307907, 35.376999, 48.683880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382278, 35.343376, 48.909576>,  <35.506233, 35.287338, 49.285736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382278, 35.343376, 48.909576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949118, 0.012758, 0.314663,
		0.056081, 0.990055, 0.129016,
		-0.309888, 0.140098, -0.940394,
		35.289310, 35.385406, 48.627457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016281, 35.929352, 49.283268>,  <35.506233, 35.287338, 49.285736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016281, 35.929352, 49.283268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.947159, 35.735767, 48.940125>,  <34.905685, 35.619617, 48.734238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.947159, 35.735767, 48.940125>,  <35.016281, 35.929352, 49.283268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947159, 35.735767, 48.940125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984940, 0.079929, 0.153312,
		-0.005630, 0.871431, -0.490486,
		-0.172805, -0.483963, -0.857857,
		34.895317, 35.590580, 48.682766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412830, 36.281853, 48.879776>,  <35.016281, 35.929352, 49.283268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412830, 36.281853, 48.879776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.430893, 35.902302, 48.754814>,  <34.441730, 35.674572, 48.679836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.430893, 35.902302, 48.754814>,  <34.412830, 36.281853, 48.879776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430893, 35.902302, 48.754814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987520, -0.089633, 0.129501,
		-0.150882, 0.302659, -0.941080,
		0.045157, -0.948875, -0.312406,
		34.444439, 35.617638, 48.661091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765984, 36.198017, 48.689186>,  <34.412830, 36.281853, 48.879776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765984, 36.198017, 48.689186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.874012, 35.812931, 48.683044>,  <33.938828, 35.581879, 48.679359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.874012, 35.812931, 48.683044>,  <33.765984, 36.198017, 48.689186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874012, 35.812931, 48.683044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939772, -0.267036, 0.213355,
		-0.209501, -0.043192, -0.976854,
		0.270071, -0.962718, -0.015353,
		33.955032, 35.524117, 48.678436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437447, 35.830029, 48.074593>,  <33.765984, 36.198017, 48.689186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437447, 35.830029, 48.074593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.539257, 35.557384, 48.348999>,  <33.600346, 35.393799, 48.513641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.539257, 35.557384, 48.348999>,  <33.437447, 35.830029, 48.074593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539257, 35.557384, 48.348999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964774, -0.227772, 0.131644,
		0.066525, -0.695358, -0.715578,
		0.254528, -0.681614, 0.686016,
		33.615616, 35.352901, 48.554802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966881, 35.330452, 47.918648>,  <33.437447, 35.830029, 48.074593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966881, 35.330452, 47.918648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.092274, 35.241108, 48.287830>,  <33.167507, 35.187500, 48.509338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.092274, 35.241108, 48.287830>,  <32.966881, 35.330452, 47.918648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092274, 35.241108, 48.287830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948472, -0.120901, 0.292889,
		0.046166, -0.967209, -0.249752,
		0.313480, -0.223361, 0.922952,
		33.186317, 35.174099, 48.564716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569088, 34.658764, 48.103970>,  <32.966881, 35.330452, 47.918648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569088, 34.658764, 48.103970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.700363, 34.853100, 48.428005>,  <32.779129, 34.969700, 48.622429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.700363, 34.853100, 48.428005>,  <32.569088, 34.658764, 48.103970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700363, 34.853100, 48.428005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881198, -0.151453, 0.447830,
		0.340265, -0.860826, 0.378416,
		0.328192, 0.485840, 0.810092,
		32.798820, 34.998852, 48.671032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378868, 34.212467, 48.692043>,  <32.569088, 34.658764, 48.103970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378868, 34.212467, 48.692043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.437656, 34.570534, 48.860363>,  <32.472927, 34.785374, 48.961357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.437656, 34.570534, 48.860363>,  <32.378868, 34.212467, 48.692043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437656, 34.570534, 48.860363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707509, -0.202169, 0.677170,
		0.691254, -0.397243, 0.603627,
		0.146966, 0.895168, 0.420803,
		32.481747, 34.839085, 48.986603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370716, 34.040688, 49.292236>,  <32.378868, 34.212467, 48.692043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370716, 34.040688, 49.292236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.297325, 34.433762, 49.302578>,  <32.253288, 34.669605, 49.308784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.297325, 34.433762, 49.302578>,  <32.370716, 34.040688, 49.292236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297325, 34.433762, 49.302578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676071, -0.145239, 0.722381,
		0.713627, 0.115064, 0.691012,
		-0.183482, 0.982683, 0.025856,
		32.242279, 34.728565, 49.310333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506325, 34.261116, 50.062061>,  <32.370716, 34.040688, 49.292236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506325, 34.261116, 50.062061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.250683, 34.498520, 49.866394>,  <32.097298, 34.640965, 49.748993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.250683, 34.498520, 49.866394>,  <32.506325, 34.261116, 50.062061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250683, 34.498520, 49.866394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668388, -0.113912, 0.735038,
		0.380533, 0.796721, 0.469500,
		-0.639102, 0.593514, -0.489172,
		32.058952, 34.676575, 49.719643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234657, 34.648804, 50.612442>,  <32.506325, 34.261116, 50.062061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234657, 34.648804, 50.612442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.981174, 34.694344, 50.306381>,  <31.829084, 34.721668, 50.122746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.981174, 34.694344, 50.306381>,  <32.234657, 34.648804, 50.612442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981174, 34.694344, 50.306381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736097, 0.215384, 0.641694,
		0.237858, 0.969870, -0.052686,
		-0.633708, 0.113850, -0.765149,
		31.791061, 34.728500, 50.076836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886066, 35.175304, 50.893978>,  <32.234657, 34.648804, 50.612442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886066, 35.175304, 50.893978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.653566, 35.020977, 50.607399>,  <31.514067, 34.928379, 50.435452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.653566, 35.020977, 50.607399>,  <31.886066, 35.175304, 50.893978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653566, 35.020977, 50.607399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768567, -0.028926, 0.639115,
		-0.267307, 0.922120, -0.279716,
		-0.581250, -0.385820, -0.716443,
		31.479191, 34.905231, 50.392467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272541, 35.449730, 50.984756>,  <31.886066, 35.175304, 50.893978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272541, 35.449730, 50.984756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.185163, 35.132946, 50.756691>,  <31.132736, 34.942875, 50.619854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.185163, 35.132946, 50.756691>,  <31.272541, 35.449730, 50.984756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185163, 35.132946, 50.756691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881160, -0.090987, 0.463982,
		-0.419332, 0.603757, -0.677966,
		-0.218446, -0.791959, -0.570160,
		31.119629, 34.895359, 50.585644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614796, 35.563412, 50.871746>,  <31.272541, 35.449730, 50.984756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614796, 35.563412, 50.871746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.665207, 35.175152, 50.789818>,  <30.695454, 34.942196, 50.740662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.665207, 35.175152, 50.789818>,  <30.614796, 35.563412, 50.871746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665207, 35.175152, 50.789818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886606, -0.202833, 0.415678,
		-0.445024, 0.129212, -0.886148,
		0.126030, -0.970651, -0.204825,
		30.703016, 34.883957, 50.728371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088867, 35.429565, 50.487396>,  <30.614796, 35.563412, 50.871746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088867, 35.429565, 50.487396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.212984, 35.081303, 50.640064>,  <30.287455, 34.872345, 50.731663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.212984, 35.081303, 50.640064>,  <30.088867, 35.429565, 50.487396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212984, 35.081303, 50.640064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935678, -0.208757, 0.284478,
		-0.168009, -0.445385, -0.879435,
		0.310290, -0.870662, 0.381664,
		30.306072, 34.820103, 50.754562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728081, 34.818798, 50.218941>,  <30.088867, 35.429565, 50.487396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728081, 34.818798, 50.218941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.847609, 34.675373, 50.572697>,  <29.919325, 34.589317, 50.784950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.847609, 34.675373, 50.572697>,  <29.728081, 34.818798, 50.218941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847609, 34.675373, 50.572697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921394, -0.349699, 0.169543,
		0.248476, -0.865530, -0.434876,
		0.298820, -0.358564, 0.884386,
		29.937254, 34.567802, 50.838013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210625, 34.375042, 50.379105>,  <29.728081, 34.818798, 50.218941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210625, 34.375042, 50.379105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.413618, 34.381187, 50.723713>,  <29.535414, 34.384872, 50.930477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.413618, 34.381187, 50.723713>,  <29.210625, 34.375042, 50.379105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413618, 34.381187, 50.723713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800394, -0.361877, 0.477927,
		0.319107, -0.932099, -0.171351,
		0.507484, 0.015362, 0.861524,
		29.565863, 34.385796, 50.982170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086670, 33.753185, 50.709915>,  <29.210625, 34.375042, 50.379105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086670, 33.753185, 50.709915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.166855, 34.047989, 50.968105>,  <29.214966, 34.224873, 51.123020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.166855, 34.047989, 50.968105>,  <29.086670, 33.753185, 50.709915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166855, 34.047989, 50.968105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841151, -0.208303, 0.499074,
		0.502275, -0.642985, 0.578178,
		0.200461, 0.737008, 0.645473,
		29.226994, 34.269093, 51.161747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204895, 33.496864, 51.394310>,  <29.086670, 33.753185, 50.709915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204895, 33.496864, 51.394310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.086266, 33.874516, 51.451820>,  <29.015087, 34.101105, 51.486328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.086266, 33.874516, 51.451820>,  <29.204895, 33.496864, 51.394310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086266, 33.874516, 51.451820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781582, -0.326464, 0.531555,
		0.548793, 0.045270, 0.834731,
		-0.296573, 0.944125, 0.143779,
		28.997293, 34.157753, 51.494953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768568, 33.473042, 51.923122>,  <29.204895, 33.496864, 51.394310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768568, 33.473042, 51.923122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.728580, 33.858456, 51.823841>,  <28.704588, 34.089703, 51.764271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.728580, 33.858456, 51.823841>,  <28.768568, 33.473042, 51.923122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728580, 33.858456, 51.823841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830007, 0.056811, 0.554852,
		0.548720, 0.261478, 0.794062,
		-0.099970, 0.963536, -0.248202,
		28.698589, 34.147518, 51.749382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607328, 33.908325, 52.612297>,  <28.768568, 33.473042, 51.923122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607328, 33.908325, 52.612297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.460129, 34.089985, 52.287750>,  <28.371809, 34.198982, 52.093021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.460129, 34.089985, 52.287750>,  <28.607328, 33.908325, 52.612297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460129, 34.089985, 52.287750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885958, 0.093603, 0.454222,
		0.282232, 0.885995, 0.367911,
		-0.368001, 0.454150, -0.811371,
		28.349728, 34.226231, 52.044338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242456, 34.370422, 52.951706>,  <28.607328, 33.908325, 52.612297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242456, 34.370422, 52.951706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.113979, 34.361401, 52.573009>,  <28.036894, 34.355988, 52.345791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.113979, 34.361401, 52.573009>,  <28.242456, 34.370422, 52.951706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113979, 34.361401, 52.573009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913494, 0.271005, 0.303456,
		0.249729, 0.962314, -0.107648,
		-0.321193, -0.022554, -0.946745,
		28.017622, 34.354633, 52.288986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776600, 34.943371, 52.869732>,  <28.242456, 34.370422, 52.951706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776600, 34.943371, 52.869732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.701809, 34.693539, 52.566433>,  <27.656935, 34.543640, 52.384453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.701809, 34.693539, 52.566433>,  <27.776600, 34.943371, 52.869732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701809, 34.693539, 52.566433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981079, 0.079253, 0.176641,
		-0.050234, 0.776928, -0.627582,
		-0.186976, -0.624581, -0.758247,
		27.645716, 34.506165, 52.338959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191713, 35.283268, 52.467701>,  <27.776600, 34.943371, 52.869732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191713, 35.283268, 52.467701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.178274, 34.909386, 52.326172>,  <27.170212, 34.685055, 52.241253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.178274, 34.909386, 52.326172>,  <27.191713, 35.283268, 52.467701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178274, 34.909386, 52.326172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997902, 0.050976, -0.039912,
		0.055343, 0.351741, -0.934460,
		-0.033597, -0.934708, -0.353824,
		27.168196, 34.628971, 52.220024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760262, 35.287663, 51.851387>,  <27.191713, 35.283268, 52.467701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760262, 35.287663, 51.851387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.768299, 34.904072, 51.964493>,  <26.773121, 34.673916, 52.032356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.768299, 34.904072, 51.964493>,  <26.760262, 35.287663, 51.851387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768299, 34.904072, 51.964493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996904, 0.002284, 0.078590,
		-0.076012, -0.283464, -0.955966,
		0.020094, -0.958980, 0.282760,
		26.774328, 34.616379, 52.049320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239874, 35.014057, 51.424877>,  <26.760262, 35.287663, 51.851387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239874, 35.014057, 51.424877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.261057, 34.754955, 51.728882>,  <26.273766, 34.599495, 51.911285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.261057, 34.754955, 51.728882>,  <26.239874, 35.014057, 51.424877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261057, 34.754955, 51.728882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987238, -0.148423, -0.057712,
		0.150186, -0.747253, -0.647346,
		0.052955, -0.647752, 0.760008,
		26.276943, 34.560631, 51.956886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764685, 34.574852, 51.220219>,  <26.239874, 35.014057, 51.424877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.764685, 34.574852, 51.220219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.833851, 34.480354, 51.602692>,  <25.875351, 34.423656, 51.832176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.833851, 34.480354, 51.602692>,  <25.764685, 34.574852, 51.220219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.833851, 34.480354, 51.602692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971059, -0.203282, 0.125382,
		0.164754, -0.950192, -0.264560,
		0.172917, -0.236247, 0.956184,
		25.885725, 34.409481, 51.889545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413397, 33.989464, 51.262344>,  <25.764685, 34.574852, 51.220219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413397, 33.989464, 51.262344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.450266, 34.144066, 51.629414>,  <25.472387, 34.236828, 51.849655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.450266, 34.144066, 51.629414>,  <25.413397, 33.989464, 51.262344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.450266, 34.144066, 51.629414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989393, -0.068365, 0.128169,
		0.112275, -0.919749, 0.376106,
		0.092171, 0.386507, 0.917670,
		25.477917, 34.260017, 51.904713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.021711, 33.604595, 51.667686>,  <25.413397, 33.989464, 51.262344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.021711, 33.604595, 51.667686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.077110, 33.944714, 51.870789>,  <25.110350, 34.148785, 51.992649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.077110, 33.944714, 51.870789>,  <25.021711, 33.604595, 51.667686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.077110, 33.944714, 51.870789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976738, 0.032520, 0.211957,
		0.163713, -0.525302, 0.835019,
		0.138497, 0.850294, 0.507758,
		25.118660, 34.199802, 52.023117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.571489, 33.473431, 52.213108>,  <25.021711, 33.604595, 51.667686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.571489, 33.473431, 52.213108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.643656, 33.866753, 52.203648>,  <24.686956, 34.102745, 52.197971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.643656, 33.866753, 52.203648>,  <24.571489, 33.473431, 52.213108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.643656, 33.866753, 52.203648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951873, 0.180606, 0.247629,
		0.247767, -0.022166, 0.968566,
		0.180418, 0.983306, -0.023649,
		24.697781, 34.161743, 52.196552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.333363, 33.712589, 52.919594>,  <24.571489, 33.473431, 52.213108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.333363, 33.712589, 52.919594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.337883, 34.015205, 52.658054>,  <24.340595, 34.196774, 52.501129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.337883, 34.015205, 52.658054>,  <24.333363, 33.712589, 52.919594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.337883, 34.015205, 52.658054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920205, 0.263734, 0.289253,
		0.391274, 0.598406, 0.699153,
		0.011300, 0.756541, -0.653849,
		24.341272, 34.242168, 52.461899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.360638, 31.983051, 47.914005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.973824, 32.042549, 47.831333>,  <34.741734, 32.078247, 47.781731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.973824, 32.042549, 47.831333>,  <35.360638, 31.983051, 47.914005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973824, 32.042549, 47.831333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155347, 0.298492, 0.941684,
		0.201764, 0.942750, -0.265546,
		-0.967036, 0.148746, -0.206678,
		34.683712, 32.087173, 47.769329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104797, 32.617958, 48.101650>,  <35.360638, 31.983051, 47.914005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104797, 32.617958, 48.101650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.795261, 32.365692, 48.125111>,  <34.609539, 32.214333, 48.139187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.795261, 32.365692, 48.125111>,  <35.104797, 32.617958, 48.101650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795261, 32.365692, 48.125111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113750, 0.229471, 0.966646,
		-0.623088, 0.741354, -0.249311,
		-0.773836, -0.630664, 0.058651,
		34.563110, 32.176495, 48.142708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684280, 32.959564, 48.633934>,  <35.104797, 32.617958, 48.101650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684280, 32.959564, 48.633934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.542446, 32.587811, 48.592907>,  <34.457344, 32.364758, 48.568291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.542446, 32.587811, 48.592907>,  <34.684280, 32.959564, 48.633934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542446, 32.587811, 48.592907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191931, -0.035011, 0.980784,
		-0.915112, 0.367460, -0.165962,
		-0.354588, -0.929380, -0.102566,
		34.436069, 32.308998, 48.562138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060463, 32.929955, 48.948521>,  <34.684280, 32.959564, 48.633934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060463, 32.929955, 48.948521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.172935, 32.546139, 48.954533>,  <34.240421, 32.315849, 48.958141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.172935, 32.546139, 48.954533>,  <34.060463, 32.929955, 48.948521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172935, 32.546139, 48.954533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291791, -0.070566, 0.953875,
		-0.914217, -0.272601, -0.299826,
		0.281184, -0.959536, 0.015030,
		34.257290, 32.258278, 48.959042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655869, 32.738213, 49.346264>,  <34.060463, 32.929955, 48.948521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655869, 32.738213, 49.346264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.915653, 32.434082, 49.350124>,  <34.071526, 32.251602, 49.352440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.915653, 32.434082, 49.350124>,  <33.655869, 32.738213, 49.346264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915653, 32.434082, 49.350124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242933, -0.195446, 0.950150,
		-0.720540, -0.619435, -0.311645,
		0.649465, -0.760330, 0.009654,
		34.110493, 32.205982, 49.353020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340076, 32.144718, 49.626171>,  <33.655869, 32.738213, 49.346264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340076, 32.144718, 49.626171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726871, 32.085228, 49.708942>,  <33.958950, 32.049534, 49.758606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726871, 32.085228, 49.708942>,  <33.340076, 32.144718, 49.626171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726871, 32.085228, 49.708942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198373, 0.070362, 0.977598,
		-0.159957, -0.986371, 0.038535,
		0.966986, -0.148729, 0.206925,
		34.016968, 32.040607, 49.771019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313221, 31.766800, 50.309174>,  <33.340076, 32.144718, 49.626171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313221, 31.766800, 50.309174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.696381, 31.879198, 50.285622>,  <33.926277, 31.946636, 50.271488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.696381, 31.879198, 50.285622>,  <33.313221, 31.766800, 50.309174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696381, 31.879198, 50.285622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092715, -0.108663, 0.989745,
		0.271715, -0.953538, -0.130140,
		0.957901, 0.280994, -0.058882,
		33.983749, 31.963497, 50.267956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662926, 31.263481, 50.675900>,  <33.313221, 31.766800, 50.309174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662926, 31.263481, 50.675900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.928761, 31.562346, 50.672424>,  <34.088261, 31.741663, 50.670341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.928761, 31.562346, 50.672424>,  <33.662926, 31.263481, 50.675900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928761, 31.562346, 50.672424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059225, -0.041088, 0.997399,
		0.744859, -0.663374, -0.071557,
		0.664589, 0.747159, -0.008684,
		34.128136, 31.786493, 50.669819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249241, 31.060892, 51.126789>,  <33.662926, 31.263481, 50.675900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249241, 31.060892, 51.126789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.221565, 31.458971, 51.099091>,  <34.204960, 31.697819, 51.082470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.221565, 31.458971, 51.099091>,  <34.249241, 31.060892, 51.126789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221565, 31.458971, 51.099091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101684, 0.062020, 0.992882,
		0.992407, 0.075742, 0.096904,
		-0.069193, 0.995197, -0.069250,
		34.200806, 31.757530, 51.078316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517761, 31.220936, 51.703541>,  <34.249241, 31.060892, 51.126789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517761, 31.220936, 51.703541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355659, 31.576262, 51.617130>,  <34.258396, 31.789457, 51.565285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355659, 31.576262, 51.617130>,  <34.517761, 31.220936, 51.703541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355659, 31.576262, 51.617130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126789, 0.179399, 0.975572,
		0.905367, 0.422749, 0.039925,
		-0.405259, 0.888313, -0.216022,
		34.234081, 31.842756, 51.552322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935940, 31.761843, 52.040920>,  <34.517761, 31.220936, 51.703541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935940, 31.761843, 52.040920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.568985, 31.908876, 51.979897>,  <34.348812, 31.997097, 51.943283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.568985, 31.908876, 51.979897>,  <34.935940, 31.761843, 52.040920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568985, 31.908876, 51.979897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022583, 0.334626, 0.942080,
		0.397344, 0.867702, -0.298681,
		-0.917391, 0.367585, -0.152557,
		34.293766, 32.019154, 51.934128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796631, 32.449097, 52.435703>,  <34.935940, 31.761843, 52.040920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796631, 32.449097, 52.435703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419209, 32.347214, 52.351009>,  <34.192757, 32.286083, 52.300194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419209, 32.347214, 52.351009>,  <34.796631, 32.449097, 52.435703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419209, 32.347214, 52.351009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286445, 0.306543, 0.907734,
		-0.166296, 0.917146, -0.362199,
		-0.943554, -0.254703, -0.211735,
		34.136143, 32.270802, 52.287487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089401, 32.956909, 52.845863>,  <34.796631, 32.449097, 52.435703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089401, 32.956909, 52.845863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369907, 33.192200, 53.006969>,  <35.538212, 33.333374, 53.103634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369907, 33.192200, 53.006969>,  <35.089401, 32.956909, 52.845863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369907, 33.192200, 53.006969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611347, -0.205577, -0.764195,
		-0.366721, 0.782130, -0.503774,
		0.701264, 0.588227, 0.402763,
		35.580288, 33.368668, 53.127800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326096, 33.627502, 52.430416>,  <35.089401, 32.956909, 52.845863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326096, 33.627502, 52.430416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631744, 33.539871, 52.673107>,  <35.815132, 33.487293, 52.818722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631744, 33.539871, 52.673107>,  <35.326096, 33.627502, 52.430416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631744, 33.539871, 52.673107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627323, 0.033255, -0.778049,
		0.150276, 0.975141, 0.162843,
		0.764123, -0.219077, 0.606730,
		35.860981, 33.474148, 52.855125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921097, 33.987629, 52.344898>,  <35.326096, 33.627502, 52.430416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921097, 33.987629, 52.344898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.089546, 33.661224, 52.503277>,  <36.190617, 33.465382, 52.598305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.089546, 33.661224, 52.503277>,  <35.921097, 33.987629, 52.344898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089546, 33.661224, 52.503277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651089, -0.031953, -0.758328,
		0.631460, 0.577146, 0.517843,
		0.421119, -0.816015, 0.395951,
		36.215881, 33.416420, 52.622063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595242, 34.132210, 52.213688>,  <35.921097, 33.987629, 52.344898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595242, 34.132210, 52.213688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621563, 33.742783, 52.301178>,  <36.637356, 33.509129, 52.353672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621563, 33.742783, 52.301178>,  <36.595242, 34.132210, 52.213688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621563, 33.742783, 52.301178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636318, -0.127900, -0.760750,
		0.768615, 0.189239, 0.611081,
		0.065806, -0.973566, 0.218723,
		36.641304, 33.450714, 52.366795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274315, 33.959850, 52.265778>,  <36.595242, 34.132210, 52.213688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274315, 33.959850, 52.265778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090427, 33.618088, 52.168903>,  <36.980095, 33.413033, 52.110779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090427, 33.618088, 52.168903>,  <37.274315, 33.959850, 52.265778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090427, 33.618088, 52.168903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601145, -0.098667, -0.793026,
		0.653667, -0.510159, 0.558979,
		-0.459722, -0.854402, -0.242184,
		36.952511, 33.361767, 52.096249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774704, 33.536949, 51.970760>,  <37.274315, 33.959850, 52.265778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774704, 33.536949, 51.970760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.437870, 33.363892, 51.841942>,  <37.235771, 33.260056, 51.764652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.437870, 33.363892, 51.841942>,  <37.774704, 33.536949, 51.970760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437870, 33.363892, 51.841942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443824, -0.216584, -0.869547,
		0.306453, -0.875164, 0.374400,
		-0.842085, -0.432643, -0.322046,
		37.185246, 33.234100, 51.745327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946175, 32.891205, 51.600990>,  <37.774704, 33.536949, 51.970760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946175, 32.891205, 51.600990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.578712, 32.984665, 51.473568>,  <37.358234, 33.040741, 51.397114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.578712, 32.984665, 51.473568>,  <37.946175, 32.891205, 51.600990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578712, 32.984665, 51.473568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244561, -0.296916, -0.923055,
		-0.310262, -0.925875, 0.215620,
		-0.918655, 0.233657, -0.318555,
		37.303116, 33.054760, 51.378002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662960, 32.263096, 51.160328>,  <37.946175, 32.891205, 51.600990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662960, 32.263096, 51.160328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.447723, 32.587566, 51.068726>,  <37.318581, 32.782249, 51.013763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.447723, 32.587566, 51.068726>,  <37.662960, 32.263096, 51.160328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447723, 32.587566, 51.068726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087444, -0.216508, -0.972357,
		-0.838340, -0.543240, 0.045568,
		-0.538089, 0.811181, -0.229010,
		37.286297, 32.830921, 51.000023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112267, 31.990494, 50.611187>,  <37.662960, 32.263096, 51.160328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112267, 31.990494, 50.611187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.124100, 32.388672, 50.574932>,  <37.131199, 32.627579, 50.553181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.124100, 32.388672, 50.574932>,  <37.112267, 31.990494, 50.611187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124100, 32.388672, 50.574932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127978, -0.093702, -0.987340,
		-0.991336, 0.017608, -0.130167,
		0.029582, 0.995444, -0.090637,
		37.132973, 32.687305, 50.547741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894192, 32.098679, 49.891724>,  <37.112267, 31.990494, 50.611187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894192, 32.098679, 49.891724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.059578, 32.445320, 50.003464>,  <37.158810, 32.653305, 50.070507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.059578, 32.445320, 50.003464>,  <36.894192, 32.098679, 49.891724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059578, 32.445320, 50.003464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420083, 0.090641, -0.902948,
		-0.807823, 0.490688, -0.326570,
		0.413465, 0.866608, 0.279352,
		37.183617, 32.705303, 50.087269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634743, 32.687786, 49.429939>,  <36.894192, 32.098679, 49.891724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634743, 32.687786, 49.429939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988880, 32.814819, 49.565765>,  <37.201363, 32.891037, 49.647263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988880, 32.814819, 49.565765>,  <36.634743, 32.687786, 49.429939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988880, 32.814819, 49.565765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335157, 0.070251, -0.939540,
		-0.322234, 0.945626, -0.044242,
		0.885345, 0.317580, 0.339570,
		37.254482, 32.910091, 49.667637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691902, 33.397469, 49.155346>,  <36.634743, 32.687786, 49.429939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691902, 33.397469, 49.155346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.057980, 33.251209, 49.223125>,  <37.277626, 33.163452, 49.263794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.057980, 33.251209, 49.223125>,  <36.691902, 33.397469, 49.155346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057980, 33.251209, 49.223125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190532, 0.022071, -0.981433,
		0.355122, 0.930490, 0.089867,
		0.915197, -0.365651, 0.169450,
		37.332539, 33.141514, 49.273960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480366, 33.992645, 49.495743>,  <36.691902, 33.397469, 49.155346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480366, 33.992645, 49.495743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598850, 34.090557, 49.126453>,  <36.669941, 34.149303, 48.904881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598850, 34.090557, 49.126453>,  <36.480366, 33.992645, 49.495743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598850, 34.090557, 49.126453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778786, -0.497696, -0.381826,
		-0.552946, 0.832096, 0.043204,
		0.296214, 0.244776, -0.923224,
		36.687714, 34.163990, 48.849487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442375, 34.388988, 50.011311>,  <36.480366, 33.992645, 49.495743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442375, 34.388988, 50.011311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.751251, 34.631649, 50.086880>,  <36.936577, 34.777245, 50.132221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.751251, 34.631649, 50.086880>,  <36.442375, 34.388988, 50.011311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751251, 34.631649, 50.086880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241320, 0.555072, -0.796027,
		-0.587775, 0.569097, 0.575020,
		0.772195, 0.606649, 0.188923,
		36.982910, 34.813644, 50.143559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264202, 35.113785, 50.108582>,  <36.442375, 34.388988, 50.011311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264202, 35.113785, 50.108582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618332, 35.119686, 49.922684>,  <36.830811, 35.123226, 49.811146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618332, 35.119686, 49.922684>,  <36.264202, 35.113785, 50.108582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618332, 35.119686, 49.922684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355617, 0.665423, -0.656315,
		0.299572, 0.746321, 0.594359,
		0.885321, 0.014750, -0.464746,
		36.883926, 35.124111, 49.783260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744480, 35.777225, 50.156734>,  <36.264202, 35.113785, 50.108582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744480, 35.777225, 50.156734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798595, 35.599388, 49.802551>,  <36.831066, 35.492687, 49.590042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798595, 35.599388, 49.802551>,  <36.744480, 35.777225, 50.156734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798595, 35.599388, 49.802551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548759, 0.710463, -0.440574,
		0.824961, 0.545507, -0.147857,
		0.135289, -0.444594, -0.885456,
		36.839184, 35.466011, 49.536915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209480, 36.253254, 50.475239>,  <36.744480, 35.777225, 50.156734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209480, 36.253254, 50.475239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.172100, 36.527878, 50.186825>,  <36.149673, 36.692654, 50.013775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.172100, 36.527878, 50.186825>,  <36.209480, 36.253254, 50.475239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172100, 36.527878, 50.186825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639196, 0.513880, 0.572151,
		0.763345, 0.514352, 0.390827,
		-0.093448, 0.686564, -0.721040,
		36.144066, 36.733849, 49.970512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263779, 36.945080, 50.768448>,  <36.209480, 36.253254, 50.475239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263779, 36.945080, 50.768448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.052254, 37.003708, 50.434052>,  <35.925339, 37.038883, 50.233414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.052254, 37.003708, 50.434052>,  <36.263779, 36.945080, 50.768448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052254, 37.003708, 50.434052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551495, 0.689363, 0.469714,
		0.645145, 0.709434, -0.283710,
		-0.528810, 0.146569, -0.835989,
		35.893612, 37.047680, 50.183254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263550, 37.700718, 50.634224>,  <36.263779, 36.945080, 50.768448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263550, 37.700718, 50.634224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.948208, 37.559326, 50.432808>,  <35.759003, 37.474491, 50.311958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.948208, 37.559326, 50.432808>,  <36.263550, 37.700718, 50.634224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948208, 37.559326, 50.432808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580021, 0.699913, 0.416769,
		0.205118, 0.620626, -0.756802,
		-0.788354, -0.353475, -0.503541,
		35.711700, 37.453285, 50.281746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917469, 38.334011, 50.393970>,  <36.263550, 37.700718, 50.634224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917469, 38.334011, 50.393970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.647991, 38.039463, 50.369015>,  <35.486305, 37.862736, 50.354042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.647991, 38.039463, 50.369015>,  <35.917469, 38.334011, 50.393970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647991, 38.039463, 50.369015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713472, 0.626095, 0.314584,
		-0.192586, 0.256449, -0.947177,
		-0.673697, -0.736369, -0.062392,
		35.445881, 37.818554, 50.350296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398720, 38.536114, 49.942986>,  <35.917469, 38.334011, 50.393970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398720, 38.536114, 49.942986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231865, 38.246445, 50.162651>,  <35.131752, 38.072643, 50.294449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231865, 38.246445, 50.162651>,  <35.398720, 38.536114, 49.942986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231865, 38.246445, 50.162651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763623, 0.606917, 0.220297,
		-0.492828, -0.327460, -0.806158,
		-0.417132, -0.724169, 0.549162,
		35.106724, 38.029194, 50.327400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743465, 38.407967, 49.706493>,  <35.398720, 38.536114, 49.942986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743465, 38.407967, 49.706493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.740726, 38.298595, 50.091240>,  <34.739082, 38.232971, 50.322086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.740726, 38.298595, 50.091240>,  <34.743465, 38.407967, 49.706493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740726, 38.298595, 50.091240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791627, 0.589178, 0.161851,
		-0.610966, -0.760332, -0.220491,
		-0.006847, -0.273432, 0.961867,
		34.738674, 38.216564, 50.379799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049160, 38.073940, 49.786613>,  <34.743465, 38.407967, 49.706493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049160, 38.073940, 49.786613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.142662, 38.148350, 50.168346>,  <34.198761, 38.192993, 50.397388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.142662, 38.148350, 50.168346>,  <34.049160, 38.073940, 49.786613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142662, 38.148350, 50.168346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850006, 0.515649, 0.107686,
		-0.472071, -0.836363, 0.278651,
		0.233751, 0.186019, 0.954336,
		34.212788, 38.204155, 50.454647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437244, 37.964069, 50.299332>,  <34.049160, 38.073940, 49.786613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437244, 37.964069, 50.299332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.674942, 38.221306, 50.492538>,  <33.817562, 38.375648, 50.608463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.674942, 38.221306, 50.492538>,  <33.437244, 37.964069, 50.299332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674942, 38.221306, 50.492538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800992, 0.527480, 0.283155,
		-0.072688, -0.555157, 0.828563,
		0.594245, 0.643091, 0.483018,
		33.853214, 38.414234, 50.637444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153946, 38.105389, 50.929447>,  <33.437244, 37.964069, 50.299332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153946, 38.105389, 50.929447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.421345, 38.402039, 50.907154>,  <33.581783, 38.580029, 50.893776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.421345, 38.402039, 50.907154>,  <33.153946, 38.105389, 50.929447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421345, 38.402039, 50.907154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647849, 0.617489, 0.446092,
		0.365250, -0.262102, 0.893250,
		0.668493, 0.741626, -0.055736,
		33.621891, 38.624527, 50.890434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096722, 38.429329, 51.593445>,  <33.153946, 38.105389, 50.929447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096722, 38.429329, 51.593445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257130, 38.684700, 51.330662>,  <33.353374, 38.837925, 51.172993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.257130, 38.684700, 51.330662>,  <33.096722, 38.429329, 51.593445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257130, 38.684700, 51.330662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618361, 0.717765, 0.320068,
		0.675881, 0.277883, 0.682616,
		0.401017, 0.638431, -0.656956,
		33.377434, 38.876228, 51.133575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321503, 39.062344, 52.013550>,  <33.096722, 38.429329, 51.593445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321503, 39.062344, 52.013550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.273979, 39.164352, 51.629707>,  <33.245464, 39.225559, 51.399403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.273979, 39.164352, 51.629707>,  <33.321503, 39.062344, 52.013550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273979, 39.164352, 51.629707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686321, 0.677312, 0.264975,
		0.717529, 0.690081, 0.094553,
		-0.118812, 0.255021, -0.959608,
		33.238335, 39.240860, 51.341824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471714, 39.804348, 51.980167>,  <33.321503, 39.062344, 52.013550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471714, 39.804348, 51.980167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.242493, 39.719177, 51.663616>,  <33.104961, 39.668076, 51.473686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.242493, 39.719177, 51.663616>,  <33.471714, 39.804348, 51.980167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242493, 39.719177, 51.663616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676316, 0.668228, 0.309948,
		0.462824, 0.712836, -0.526934,
		-0.573054, -0.212923, -0.791374,
		33.070576, 39.655300, 51.426205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372532, 40.437370, 51.731174>,  <33.471714, 39.804348, 51.980167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372532, 40.437370, 51.731174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.078022, 40.219421, 51.570671>,  <32.901318, 40.088650, 51.474369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.078022, 40.219421, 51.570671>,  <33.372532, 40.437370, 51.731174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078022, 40.219421, 51.570671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670877, 0.665296, 0.327577,
		0.088470, 0.510384, -0.855384,
		-0.736273, -0.544877, -0.401263,
		32.857140, 40.055958, 51.450291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888191, 40.911819, 51.382694>,  <33.372532, 40.437370, 51.731174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888191, 40.911819, 51.382694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.693817, 40.572399, 51.466438>,  <32.577194, 40.368748, 51.516685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.693817, 40.572399, 51.466438>,  <32.888191, 40.911819, 51.382694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693817, 40.572399, 51.466438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718344, 0.524218, 0.457359,
		-0.497844, 0.071851, -0.864285,
		-0.485936, -0.848548, 0.209365,
		32.548035, 40.317833, 51.529247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114834, 41.053848, 51.393135>,  <32.888191, 40.911819, 51.382694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114834, 41.053848, 51.393135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.138462, 40.706074, 51.589336>,  <32.152637, 40.497410, 51.707058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.138462, 40.706074, 51.589336>,  <32.114834, 41.053848, 51.393135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138462, 40.706074, 51.589336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832411, 0.228318, 0.504939,
		-0.551002, -0.438127, -0.710240,
		0.059066, -0.869435, 0.490505,
		32.156181, 40.445244, 51.736488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493696, 41.046047, 51.700928>,  <32.114834, 41.053848, 51.393135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493696, 41.046047, 51.700928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.675261, 40.731510, 51.868561>,  <31.784199, 40.542789, 51.969143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.675261, 40.731510, 51.868561>,  <31.493696, 41.046047, 51.700928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675261, 40.731510, 51.868561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733974, -0.063289, 0.676222,
		-0.505218, -0.614543, -0.605881,
		0.453913, -0.786341, 0.419084,
		31.811434, 40.495609, 51.994286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961004, 40.464149, 51.747608>,  <31.493696, 41.046047, 51.700928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961004, 40.464149, 51.747608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.243076, 40.410023, 52.026009>,  <31.412319, 40.377548, 52.193047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.243076, 40.410023, 52.026009>,  <30.961004, 40.464149, 51.747608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243076, 40.410023, 52.026009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702509, -0.266163, 0.660029,
		0.095936, -0.954383, -0.282754,
		0.705179, -0.135317, 0.695997,
		31.454630, 40.369427, 52.234806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875893, 39.813007, 52.175499>,  <30.961004, 40.464149, 51.747608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875893, 39.813007, 52.175499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.081366, 40.056087, 52.417767>,  <31.204649, 40.201935, 52.563126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.081366, 40.056087, 52.417767>,  <30.875893, 39.813007, 52.175499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081366, 40.056087, 52.417767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621618, -0.222960, 0.750919,
		0.591374, -0.762226, 0.263227,
		0.513681, 0.607701, 0.605666,
		31.235470, 40.238400, 52.599468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798088, 39.440506, 52.807446>,  <30.875893, 39.813007, 52.175499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798088, 39.440506, 52.807446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.921640, 39.808811, 52.902771>,  <30.995771, 40.029793, 52.959965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.921640, 39.808811, 52.902771>,  <30.798088, 39.440506, 52.807446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921640, 39.808811, 52.902771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522713, -0.044990, 0.851321,
		0.794584, -0.387525, 0.467397,
		0.308880, 0.920760, 0.238313,
		31.014305, 40.085041, 52.974266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936993, 39.395000, 53.535378>,  <30.798088, 39.440506, 52.807446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936993, 39.395000, 53.535378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.884304, 39.782551, 53.451530>,  <30.852692, 40.015079, 53.401222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.884304, 39.782551, 53.451530>,  <30.936993, 39.395000, 53.535378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884304, 39.782551, 53.451530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462579, 0.126944, 0.877443,
		0.876739, 0.212540, 0.431458,
		-0.131720, 0.968872, -0.209613,
		30.844788, 40.073212, 53.388645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103102, 39.617863, 54.172558>,  <30.936993, 39.395000, 53.535378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103102, 39.617863, 54.172558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.918840, 39.913456, 53.975906>,  <30.808283, 40.090813, 53.857914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.918840, 39.913456, 53.975906>,  <31.103102, 39.617863, 54.172558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918840, 39.913456, 53.975906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420677, 0.305959, 0.854061,
		0.781556, 0.600245, 0.169932,
		-0.460653, 0.738983, -0.491633,
		30.780645, 40.135151, 53.828415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053679, 40.185909, 54.605377>,  <31.103102, 39.617863, 54.172558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053679, 40.185909, 54.605377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.770475, 40.268776, 54.335323>,  <30.600554, 40.318497, 54.173290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.770475, 40.268776, 54.335323>,  <31.053679, 40.185909, 54.605377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770475, 40.268776, 54.335323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655659, 0.162325, 0.737402,
		0.262359, 0.964744, 0.020906,
		-0.708010, 0.207171, -0.675131,
		30.558073, 40.330929, 54.132786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825520, 40.923542, 54.706139>,  <31.053679, 40.185909, 54.605377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825520, 40.923542, 54.706139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.550179, 40.692104, 54.531143>,  <30.384974, 40.553242, 54.426144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.550179, 40.692104, 54.531143>,  <30.825520, 40.923542, 54.706139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550179, 40.692104, 54.531143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649281, 0.222547, 0.727260,
		-0.323425, 0.784668, -0.528860,
		-0.688354, -0.578592, -0.437493,
		30.343672, 40.518528, 54.399895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256609, 41.280994, 54.753071>,  <30.825520, 40.923542, 54.706139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256609, 41.280994, 54.753071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.130215, 40.902691, 54.722874>,  <30.054379, 40.675709, 54.704754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.130215, 40.902691, 54.722874>,  <30.256609, 41.280994, 54.753071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130215, 40.902691, 54.722874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579844, 0.129520, 0.804367,
		-0.750956, 0.297944, -0.589317,
		-0.315984, -0.945756, -0.075497,
		30.035419, 40.618965, 54.700226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558540, 41.330181, 54.942318>,  <30.256609, 41.280994, 54.753071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558540, 41.330181, 54.942318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.630552, 40.937519, 54.967442>,  <29.673759, 40.701923, 54.982517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.630552, 40.937519, 54.967442>,  <29.558540, 41.330181, 54.942318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630552, 40.937519, 54.967442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481472, -0.032255, 0.875868,
		-0.857773, -0.187926, -0.478445,
		0.180030, -0.981653, 0.062813,
		29.684561, 40.643024, 54.986286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917639, 40.990768, 55.122784>,  <29.558540, 41.330181, 54.942318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917639, 40.990768, 55.122784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.217169, 40.745251, 55.222801>,  <29.396887, 40.597942, 55.282810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.217169, 40.745251, 55.222801>,  <28.917639, 40.990768, 55.122784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217169, 40.745251, 55.222801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380374, -0.089060, 0.920535,
		-0.542748, -0.784429, -0.300161,
		0.748826, -0.613791, 0.250039,
		29.441816, 40.561111, 55.297813>
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
