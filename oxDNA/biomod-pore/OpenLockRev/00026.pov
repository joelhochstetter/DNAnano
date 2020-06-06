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
	<39.525761, 35.432648, 50.790199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734478, 35.573170, 50.479248>,  <39.859707, 35.657482, 50.292675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734478, 35.573170, 50.479248>,  <39.525761, 35.432648, 50.790199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734478, 35.573170, 50.479248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721949, -0.667301, 0.183027,
		-0.454449, -0.656731, -0.601814,
		0.521791, 0.351302, -0.777381,
		39.891014, 35.678562, 50.246033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970676, 34.893356, 50.636261>,  <39.525761, 35.432648, 50.790199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970676, 34.893356, 50.636261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130489, 35.200058, 50.435276>,  <40.226376, 35.384079, 50.314686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130489, 35.200058, 50.435276>,  <39.970676, 34.893356, 50.636261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130489, 35.200058, 50.435276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914523, -0.371292, 0.160593,
		-0.063426, -0.523675, -0.849554,
		0.399531, 0.766751, -0.502462,
		40.250347, 35.430084, 50.284538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442623, 34.580116, 50.265217>,  <39.970676, 34.893356, 50.636261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442623, 34.580116, 50.265217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551750, 34.964870, 50.257713>,  <40.617226, 35.195721, 50.253212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551750, 34.964870, 50.257713>,  <40.442623, 34.580116, 50.265217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551750, 34.964870, 50.257713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958004, -0.269826, 0.097072,
		0.088312, -0.044450, -0.995101,
		0.272819, 0.961883, -0.018754,
		40.633595, 35.253437, 50.252087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980412, 34.681011, 49.823917>,  <40.442623, 34.580116, 50.265217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980412, 34.681011, 49.823917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024036, 34.987740, 50.076931>,  <41.050209, 35.171776, 50.228737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024036, 34.987740, 50.076931>,  <40.980412, 34.681011, 49.823917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024036, 34.987740, 50.076931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987337, -0.157312, 0.020475,
		0.115205, 0.622287, -0.774265,
		0.109061, 0.766819, 0.632530,
		41.056755, 35.217785, 50.266689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565861, 35.014282, 49.641567>,  <40.980412, 34.681011, 49.823917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565861, 35.014282, 49.641567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547070, 35.151196, 50.016937>,  <41.535793, 35.233341, 50.242157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547070, 35.151196, 50.016937>,  <41.565861, 35.014282, 49.641567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547070, 35.151196, 50.016937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988120, -0.121699, 0.093857,
		0.146330, 0.931683, -0.332497,
		-0.046980, 0.342280, 0.938423,
		41.532974, 35.253880, 50.298466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044312, 35.510555, 49.691086>,  <41.565861, 35.014282, 49.641567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044312, 35.510555, 49.691086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976315, 35.404373, 50.070694>,  <41.935516, 35.340664, 50.298458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976315, 35.404373, 50.070694>,  <42.044312, 35.510555, 49.691086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976315, 35.404373, 50.070694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980022, 0.055349, 0.191031,
		-0.103237, 0.962534, 0.250740,
		-0.169995, -0.265452, 0.949019,
		41.925316, 35.324738, 50.355400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479031, 35.924835, 50.126690>,  <42.044312, 35.510555, 49.691086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479031, 35.924835, 50.126690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395588, 35.594585, 50.336384>,  <42.345524, 35.396435, 50.462200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395588, 35.594585, 50.336384>,  <42.479031, 35.924835, 50.126690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395588, 35.594585, 50.336384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977999, -0.175144, 0.113327,
		-0.001749, 0.536343, 0.843998,
		-0.208604, -0.825627, 0.524237,
		42.333008, 35.346897, 50.493656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866886, 36.176617, 50.624866>,  <42.479031, 35.924835, 50.126690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866886, 36.176617, 50.624866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768009, 35.792091, 50.673496>,  <42.708683, 35.561378, 50.702675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768009, 35.792091, 50.673496>,  <42.866886, 36.176617, 50.624866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768009, 35.792091, 50.673496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962246, -0.228786, 0.147443,
		-0.113923, 0.153434, 0.981570,
		-0.247192, -0.961309, 0.121577,
		42.693851, 35.503700, 50.709969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084362, 36.012573, 51.224709>,  <42.866886, 36.176617, 50.624866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084362, 36.012573, 51.224709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063770, 35.645969, 51.066036>,  <43.051414, 35.426006, 50.970833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063770, 35.645969, 51.066036>,  <43.084362, 36.012573, 51.224709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063770, 35.645969, 51.066036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922356, -0.195924, 0.332975,
		-0.382895, -0.348736, 0.855438,
		-0.051481, -0.916513, -0.396677,
		43.048325, 35.371014, 50.947033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273197, 35.571636, 51.797619>,  <43.084362, 36.012573, 51.224709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273197, 35.571636, 51.797619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351757, 35.363110, 51.465439>,  <43.398895, 35.237991, 51.266129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351757, 35.363110, 51.465439>,  <43.273197, 35.571636, 51.797619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351757, 35.363110, 51.465439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980164, 0.127334, 0.151873,
		0.026571, -0.843808, 0.535988,
		0.196401, -0.521320, -0.830453,
		43.410679, 35.206715, 51.216305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835011, 35.081608, 51.967644>,  <43.273197, 35.571636, 51.797619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835011, 35.081608, 51.967644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.868641, 35.119587, 51.570873>,  <43.888817, 35.142376, 51.332809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.868641, 35.119587, 51.570873>,  <43.835011, 35.081608, 51.967644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868641, 35.119587, 51.570873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996321, -0.024630, 0.082087,
		-0.016638, -0.995178, -0.096669,
		0.084072, 0.094947, -0.991926,
		43.893864, 35.148071, 51.273296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297356, 34.483589, 51.681862>,  <43.835011, 35.081608, 51.967644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297356, 34.483589, 51.681862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286858, 34.764698, 51.397491>,  <44.280560, 34.933365, 51.226868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286858, 34.764698, 51.397491>,  <44.297356, 34.483589, 51.681862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286858, 34.764698, 51.397491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987700, -0.091431, -0.126845,
		-0.154144, -0.705511, -0.691732,
		-0.026245, 0.702776, -0.710927,
		44.278984, 34.975533, 51.184212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831303, 34.210934, 51.311962>,  <44.297356, 34.483589, 51.681862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.831303, 34.210934, 51.311962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764652, 34.598545, 51.239067>,  <44.724663, 34.831112, 51.195332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764652, 34.598545, 51.239067>,  <44.831303, 34.210934, 51.311962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764652, 34.598545, 51.239067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985745, 0.159343, -0.054013,
		-0.023302, -0.188640, -0.981770,
		-0.166628, 0.969033, -0.182238,
		44.714664, 34.889256, 51.184395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.300121, 34.382500, 50.799072>,  <44.831303, 34.210934, 51.311962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.300121, 34.382500, 50.799072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.166954, 34.721626, 50.964180>,  <45.087055, 34.925102, 51.063244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.166954, 34.721626, 50.964180>,  <45.300121, 34.382500, 50.799072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.166954, 34.721626, 50.964180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938545, 0.340216, 0.058186,
		-0.091098, 0.406770, -0.908977,
		-0.332917, 0.847815, 0.412766,
		45.067078, 34.975971, 51.088009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627323, 34.918140, 50.416981>,  <45.300121, 34.382500, 50.799072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627323, 34.918140, 50.416981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525314, 35.041145, 50.783672>,  <45.464108, 35.114948, 51.003689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525314, 35.041145, 50.783672>,  <45.627323, 34.918140, 50.416981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525314, 35.041145, 50.783672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955516, 0.225423, 0.190193,
		-0.148165, 0.924457, -0.351322,
		-0.255021, 0.307514, 0.916733,
		45.448807, 35.133400, 51.058693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.026031, 35.547482, 50.497112>,  <45.627323, 34.918140, 50.416981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.026031, 35.547482, 50.497112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907005, 35.425297, 50.858917>,  <45.835590, 35.351986, 51.076000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.907005, 35.425297, 50.858917>,  <46.026031, 35.547482, 50.497112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.907005, 35.425297, 50.858917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931089, 0.116559, 0.345670,
		-0.211018, 0.945044, 0.249727,
		-0.297566, -0.305460, 0.904516,
		45.817734, 35.333660, 51.130272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.426765, 35.891315, 50.869312>,  <46.026031, 35.547482, 50.497112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.426765, 35.891315, 50.869312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.287979, 35.597687, 51.102810>,  <46.204708, 35.421509, 51.242908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.287979, 35.597687, 51.102810>,  <46.426765, 35.891315, 50.869312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.287979, 35.597687, 51.102810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903593, -0.094885, 0.417751,
		-0.251270, 0.672412, 0.696222,
		-0.346962, -0.734070, 0.583745,
		46.183891, 35.377464, 51.277935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.713772, 36.176231, 51.488251>,  <46.426765, 35.891315, 50.869312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.713772, 36.176231, 51.488251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.635265, 35.785973, 51.527443>,  <46.588161, 35.551819, 51.550957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.635265, 35.785973, 51.527443>,  <46.713772, 36.176231, 51.488251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.635265, 35.785973, 51.527443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929018, -0.153055, 0.336899,
		-0.313698, 0.157143, 0.936429,
		-0.196266, -0.975644, 0.097976,
		46.576385, 35.493279, 51.556835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936298, 36.081085, 52.116936>,  <46.713772, 36.176231, 51.488251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936298, 36.081085, 52.116936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.937054, 35.733524, 51.918941>,  <46.937508, 35.524990, 51.800144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.937054, 35.733524, 51.918941>,  <46.936298, 36.081085, 52.116936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.937054, 35.733524, 51.918941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943780, -0.162078, 0.288114,
		-0.330568, -0.467702, 0.819744,
		0.001889, -0.868899, -0.494985,
		46.937622, 35.472855, 51.770447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.315281, 35.666710, 52.525822>,  <46.936298, 36.081085, 52.116936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.315281, 35.666710, 52.525822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.313782, 35.483372, 52.170315>,  <47.312881, 35.373367, 51.957012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.313782, 35.483372, 52.170315>,  <47.315281, 35.666710, 52.525822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.313782, 35.483372, 52.170315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963501, -0.239563, 0.119479,
		-0.267679, -0.855877, 0.442518,
		-0.003752, -0.458348, -0.888765,
		47.312656, 35.345867, 51.903687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.678379, 34.945408, 52.613796>,  <47.315281, 35.666710, 52.525822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.678379, 34.945408, 52.613796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707706, 35.028343, 52.223591>,  <47.725304, 35.078106, 51.989468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707706, 35.028343, 52.223591>,  <47.678379, 34.945408, 52.613796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.707706, 35.028343, 52.223591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971672, -0.235206, 0.023037,
		-0.224671, -0.949573, -0.218711,
		0.073318, 0.207340, -0.975518,
		47.729702, 35.090546, 51.930935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.447622, 34.626339, 52.139748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.488255, 34.994583, 51.988934>,  <24.512634, 35.215530, 51.898445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.488255, 34.994583, 51.988934>,  <24.447622, 34.626339, 52.139748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.488255, 34.994583, 51.988934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994816, -0.095805, 0.034092,
		-0.004736, -0.378542, -0.925572,
		0.101580, 0.920613, -0.377033,
		24.518728, 35.270767, 51.875824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.823172, 34.592625, 51.464729>,  <24.447622, 34.626339, 52.139748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.823172, 34.592625, 51.464729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.861351, 34.963787, 51.608887>,  <24.884258, 35.186485, 51.695381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.861351, 34.963787, 51.608887>,  <24.823172, 34.592625, 51.464729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.861351, 34.963787, 51.608887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974002, -0.012333, -0.226202,
		-0.205449, 0.372618, -0.904957,
		0.095448, 0.927903, 0.360397,
		24.889986, 35.242157, 51.717007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267607, 34.925400, 50.870399>,  <24.823172, 34.592625, 51.464729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267607, 34.925400, 50.870399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.273893, 35.146320, 51.203800>,  <25.277664, 35.278870, 51.403839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.273893, 35.146320, 51.203800>,  <25.267607, 34.925400, 50.870399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.273893, 35.146320, 51.203800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971464, 0.188875, -0.143469,
		-0.236665, 0.811970, -0.533568,
		0.015715, 0.552297, 0.833500,
		25.278608, 35.312008, 51.453850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.502274, 35.665062, 50.594257>,  <25.267607, 34.925400, 50.870399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.502274, 35.665062, 50.594257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.575949, 35.587482, 50.979683>,  <25.620153, 35.540936, 51.210938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.575949, 35.587482, 50.979683>,  <25.502274, 35.665062, 50.594257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.575949, 35.587482, 50.979683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940421, 0.319834, -0.115387,
		-0.285801, 0.927410, 0.241307,
		0.184189, -0.193952, 0.963565,
		25.631205, 35.529297, 51.268753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883698, 36.228184, 50.699749>,  <25.502274, 35.665062, 50.594257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883698, 36.228184, 50.699749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.985271, 35.993179, 51.007084>,  <26.046217, 35.852177, 51.191486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.985271, 35.993179, 51.007084>,  <25.883698, 36.228184, 50.699749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985271, 35.993179, 51.007084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965232, 0.103008, -0.240243,
		0.062000, 0.802634, 0.593241,
		0.253936, -0.587510, 0.768341,
		26.061453, 35.816925, 51.237587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446148, 36.604595, 51.010197>,  <25.883698, 36.228184, 50.699749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446148, 36.604595, 51.010197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.465347, 36.224094, 51.132057>,  <26.476866, 35.995792, 51.205173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.465347, 36.224094, 51.132057>,  <26.446148, 36.604595, 51.010197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465347, 36.224094, 51.132057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946776, -0.053865, -0.317353,
		0.318294, 0.303667, 0.898040,
		0.047996, -0.951254, 0.304650,
		26.479746, 35.938717, 51.223454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032166, 36.547970, 51.523098>,  <26.446148, 36.604595, 51.010197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032166, 36.547970, 51.523098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.961576, 36.195961, 51.346725>,  <26.919224, 35.984756, 51.240902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.961576, 36.195961, 51.346725>,  <27.032166, 36.547970, 51.523098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961576, 36.195961, 51.346725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966379, -0.069796, -0.247469,
		0.187003, -0.469775, 0.862752,
		-0.176471, -0.880023, -0.440929,
		26.908634, 35.931953, 51.214447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686392, 36.176289, 51.709320>,  <27.032166, 36.547970, 51.523098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686392, 36.176289, 51.709320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.487177, 35.940842, 51.454609>,  <27.367649, 35.799572, 51.301781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.487177, 35.940842, 51.454609>,  <27.686392, 36.176289, 51.709320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.487177, 35.940842, 51.454609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864041, -0.274654, -0.421899,
		0.073442, -0.760327, 0.645376,
		-0.498036, -0.588616, -0.636782,
		27.337767, 35.764256, 51.263573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807789, 35.519199, 51.884949>,  <27.686392, 36.176289, 51.709320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807789, 35.519199, 51.884949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.731838, 35.511402, 51.492302>,  <27.686268, 35.506725, 51.256714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.731838, 35.511402, 51.492302>,  <27.807789, 35.519199, 51.884949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731838, 35.511402, 51.492302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918297, -0.357280, -0.170534,
		-0.347387, -0.933794, 0.085741,
		-0.189877, -0.019494, -0.981614,
		27.674875, 35.505554, 51.197819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128923, 34.962929, 51.717659>,  <27.807789, 35.519199, 51.884949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128923, 34.962929, 51.717659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.090759, 35.175129, 51.380737>,  <28.067862, 35.302448, 51.178585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.090759, 35.175129, 51.380737>,  <28.128923, 34.962929, 51.717659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090759, 35.175129, 51.380737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987617, -0.055412, -0.146771,
		-0.124535, -0.845874, -0.518640,
		-0.095411, 0.530496, -0.842301,
		28.062136, 35.334278, 51.128048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551510, 34.626991, 51.355080>,  <28.128923, 34.962929, 51.717659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551510, 34.626991, 51.355080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.538618, 34.976986, 51.161846>,  <28.530884, 35.186981, 51.045906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.538618, 34.976986, 51.161846>,  <28.551510, 34.626991, 51.355080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538618, 34.976986, 51.161846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975870, -0.076887, -0.204367,
		-0.215960, -0.478010, -0.851392,
		-0.032229, 0.874983, -0.483080,
		28.528950, 35.239479, 51.016922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039703, 34.513412, 50.868664>,  <28.551510, 34.626991, 51.355080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039703, 34.513412, 50.868664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.988075, 34.909981, 50.876858>,  <28.957098, 35.147923, 50.881775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.988075, 34.909981, 50.876858>,  <29.039703, 34.513412, 50.868664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988075, 34.909981, 50.876858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934569, 0.128523, -0.331758,
		-0.331546, -0.023671, -0.943142,
		-0.129068, 0.991424, 0.020489,
		28.949354, 35.207409, 50.883003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441343, 34.690628, 50.367809>,  <29.039703, 34.513412, 50.868664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441343, 34.690628, 50.367809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.408895, 35.026371, 50.582806>,  <29.389427, 35.227818, 50.711803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.408895, 35.026371, 50.582806>,  <29.441343, 34.690628, 50.367809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408895, 35.026371, 50.582806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938973, 0.245223, -0.241236,
		-0.334289, 0.485121, -0.808027,
		-0.081118, 0.839359, 0.537491,
		29.384560, 35.278179, 50.744053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627508, 35.280457, 50.015850>,  <29.441343, 34.690628, 50.367809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627508, 35.280457, 50.015850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.676357, 35.394459, 50.396137>,  <29.705667, 35.462860, 50.624310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.676357, 35.394459, 50.396137>,  <29.627508, 35.280457, 50.015850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676357, 35.394459, 50.396137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940645, 0.272373, -0.202482,
		-0.316657, 0.919013, -0.234825,
		0.122124, 0.285004, 0.950715,
		29.712994, 35.479961, 50.681351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929237, 35.957302, 50.047630>,  <29.627508, 35.280457, 50.015850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929237, 35.957302, 50.047630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.026554, 35.786949, 50.396210>,  <30.084944, 35.684738, 50.605358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.026554, 35.786949, 50.396210>,  <29.929237, 35.957302, 50.047630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026554, 35.786949, 50.396210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960884, 0.228400, -0.156641,
		-0.132328, 0.875474, 0.464795,
		0.243294, -0.425886, 0.871452,
		30.099543, 35.659184, 50.657646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496365, 36.374184, 50.310966>,  <29.929237, 35.957302, 50.047630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496365, 36.374184, 50.310966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.518940, 36.033550, 50.519440>,  <30.532484, 35.829170, 50.644524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.518940, 36.033550, 50.519440>,  <30.496365, 36.374184, 50.310966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518940, 36.033550, 50.519440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997586, 0.026941, -0.064005,
		0.040464, 0.523534, 0.851044,
		0.056437, -0.851579, 0.521179,
		30.535872, 35.778076, 50.675793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110699, 36.512489, 50.760792>,  <30.496365, 36.374184, 50.310966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110699, 36.512489, 50.760792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.045614, 36.117851, 50.765781>,  <31.006563, 35.881069, 50.768776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.045614, 36.117851, 50.765781>,  <31.110699, 36.512489, 50.760792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045614, 36.117851, 50.765781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912519, -0.155276, -0.378417,
		0.375280, -0.050192, 0.925551,
		-0.162709, -0.986595, 0.012471,
		30.996801, 35.821873, 50.769524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630880, 36.137039, 51.222122>,  <31.110699, 36.512489, 50.760792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630880, 36.137039, 51.222122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.485518, 35.863091, 50.969494>,  <31.398300, 35.698723, 50.817917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.485518, 35.863091, 50.969494>,  <31.630880, 36.137039, 51.222122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485518, 35.863091, 50.969494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931260, -0.247942, -0.266984,
		0.026256, -0.685182, 0.727899,
		-0.363409, -0.684872, -0.631572,
		31.376495, 35.657627, 50.780022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869160, 35.532970, 51.490479>,  <31.630880, 36.137039, 51.222122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869160, 35.532970, 51.490479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.791220, 35.488255, 51.100700>,  <31.744455, 35.461426, 50.866833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.791220, 35.488255, 51.100700>,  <31.869160, 35.532970, 51.490479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791220, 35.488255, 51.100700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980276, 0.011283, -0.197311,
		0.033052, -0.993668, 0.107386,
		-0.194850, -0.111790, -0.974442,
		31.732765, 35.454720, 50.808369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349976, 34.997795, 51.231522>,  <31.869160, 35.532970, 51.490479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349976, 34.997795, 51.231522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.222107, 35.181477, 50.899994>,  <32.145386, 35.291687, 50.701077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.222107, 35.181477, 50.899994>,  <32.349976, 34.997795, 51.231522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222107, 35.181477, 50.899994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914901, -0.077970, -0.396076,
		-0.246502, -0.884903, -0.395200,
		-0.319675, 0.459202, -0.828819,
		32.126205, 35.319237, 50.651348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419102, 34.499508, 50.661560>,  <32.349976, 34.997795, 51.231522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419102, 34.499508, 50.661560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.441978, 34.881184, 50.544083>,  <32.455704, 35.110188, 50.473595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.441978, 34.881184, 50.544083>,  <32.419102, 34.499508, 50.661560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441978, 34.881184, 50.544083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766136, -0.230564, -0.599897,
		-0.640129, -0.190703, -0.744223,
		0.057189, 0.954187, -0.293695,
		32.459137, 35.167439, 50.455975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.206070, 35.407379, 34.977051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.303059, 35.186813, 35.296337>,  <24.361252, 35.054474, 35.487907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.303059, 35.186813, 35.296337>,  <24.206070, 35.407379, 34.977051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.303059, 35.186813, 35.296337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969614, 0.165305, -0.180342,
		-0.032505, 0.817687, 0.574745,
		0.242471, -0.551418, 0.798214,
		24.375799, 35.021389, 35.535801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.784595, 35.730534, 35.389023>,  <24.206070, 35.407379, 34.977051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.784595, 35.730534, 35.389023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.810225, 35.353931, 35.521366>,  <24.825602, 35.127972, 35.600773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.810225, 35.353931, 35.521366>,  <24.784595, 35.730534, 35.389023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810225, 35.353931, 35.521366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997292, 0.048416, -0.055351,
		0.036095, 0.333512, 0.942055,
		0.064070, -0.941502, 0.330861,
		24.829445, 35.071480, 35.620625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.226362, 35.664196, 36.140942>,  <24.784595, 35.730534, 35.389023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.226362, 35.664196, 36.140942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.268269, 35.315075, 35.950264>,  <25.293411, 35.105602, 35.835857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.268269, 35.315075, 35.950264>,  <25.226362, 35.664196, 36.140942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.268269, 35.315075, 35.950264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955567, -0.044454, 0.291403,
		-0.275529, -0.486039, 0.829367,
		0.104765, -0.872806, -0.476691,
		25.299698, 35.053234, 35.807255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.580015, 35.076267, 36.545910>,  <25.226362, 35.664196, 36.140942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.580015, 35.076267, 36.545910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.666012, 35.087685, 36.155430>,  <25.717609, 35.094536, 35.921143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.666012, 35.087685, 36.155430>,  <25.580015, 35.076267, 36.545910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666012, 35.087685, 36.155430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975525, 0.040967, 0.216039,
		0.046159, -0.998753, -0.019037,
		0.214990, 0.028543, -0.976199,
		25.730509, 35.096249, 35.862572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037445, 34.485798, 36.348011>,  <25.580015, 35.076267, 36.545910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037445, 34.485798, 36.348011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.084206, 34.806286, 36.113274>,  <26.112263, 34.998577, 35.972431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.084206, 34.806286, 36.113274>,  <26.037445, 34.485798, 36.348011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084206, 34.806286, 36.113274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983681, -0.012042, 0.179516,
		0.136764, -0.598254, -0.789549,
		0.116904, 0.801216, -0.586845,
		26.119276, 35.046650, 35.937222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.800341, 33.847973, 36.611355>,  <26.037445, 34.485798, 36.348011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.800341, 33.847973, 36.611355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.876940, 33.464478, 36.695396>,  <25.922899, 33.234379, 36.745819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.876940, 33.464478, 36.695396>,  <25.800341, 33.847973, 36.611355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.876940, 33.464478, 36.695396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850623, 0.268912, 0.451804,
		-0.489662, 0.092196, 0.867025,
		0.191499, -0.958742, 0.210099,
		25.934389, 33.176853, 36.758427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863649, 33.741127, 37.421707>,  <25.800341, 33.847973, 36.611355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863649, 33.741127, 37.421707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.078800, 33.497669, 37.188389>,  <26.207891, 33.351593, 37.048397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.078800, 33.497669, 37.188389>,  <25.863649, 33.741127, 37.421707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078800, 33.497669, 37.188389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790584, 0.123958, 0.599677,
		-0.292688, -0.783697, 0.547862,
		0.537876, -0.608649, -0.583297,
		26.240164, 33.315075, 37.013401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248335, 33.078182, 37.741772>,  <25.863649, 33.741127, 37.421707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248335, 33.078182, 37.741772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.439711, 33.161175, 37.400471>,  <26.554535, 33.210972, 37.195690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.439711, 33.161175, 37.400471>,  <26.248335, 33.078182, 37.741772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439711, 33.161175, 37.400471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877826, -0.087821, 0.470860,
		0.022763, -0.974288, -0.224153,
		0.478438, 0.207485, -0.853256,
		26.583242, 33.223419, 37.144493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818739, 32.587914, 37.631546>,  <26.248335, 33.078182, 37.741772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818739, 32.587914, 37.631546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.939804, 32.906635, 37.422356>,  <27.012444, 33.097866, 37.296841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.939804, 32.906635, 37.422356>,  <26.818739, 32.587914, 37.631546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939804, 32.906635, 37.422356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942515, -0.168682, 0.288464,
		0.141632, -0.580218, -0.802052,
		0.302664, 0.796802, -0.522974,
		27.030603, 33.145676, 37.265465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492155, 32.501060, 37.129967>,  <26.818739, 32.587914, 37.631546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492155, 32.501060, 37.129967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.472948, 32.887310, 37.232155>,  <27.461424, 33.119061, 37.293468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.472948, 32.887310, 37.232155>,  <27.492155, 32.501060, 37.129967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472948, 32.887310, 37.232155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966380, -0.019767, 0.256355,
		0.252593, 0.259190, -0.932211,
		-0.048017, 0.965624, 0.255469,
		27.458544, 33.176998, 37.308796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822950, 33.037952, 36.712250>,  <27.492155, 32.501060, 37.129967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822950, 33.037952, 36.712250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.854702, 33.087624, 37.107883>,  <27.873753, 33.117428, 37.345264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.854702, 33.087624, 37.107883>,  <27.822950, 33.037952, 36.712250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854702, 33.087624, 37.107883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956808, -0.287864, -0.040648,
		0.279673, 0.949586, -0.141664,
		0.079378, 0.124177, 0.989080,
		27.878515, 33.124878, 37.404606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219852, 33.577847, 36.831245>,  <27.822950, 33.037952, 36.712250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219852, 33.577847, 36.831245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.290672, 33.304790, 37.114838>,  <28.333164, 33.140957, 37.284992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.290672, 33.304790, 37.114838>,  <28.219852, 33.577847, 36.831245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290672, 33.304790, 37.114838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980013, 0.055885, -0.190925,
		0.090711, 0.728615, 0.678890,
		0.177050, -0.682640, 0.708982,
		28.343788, 33.099998, 37.327534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724556, 33.821392, 37.475048>,  <28.219852, 33.577847, 36.831245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724556, 33.821392, 37.475048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.737379, 33.438435, 37.360249>,  <28.745073, 33.208660, 37.291370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.737379, 33.438435, 37.360249>,  <28.724556, 33.821392, 37.475048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737379, 33.438435, 37.360249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961447, 0.108001, -0.252893,
		0.273114, -0.267826, 0.923947,
		0.032056, -0.957395, -0.286997,
		28.746996, 33.151215, 37.274151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269073, 33.556221, 37.874752>,  <28.724556, 33.821392, 37.475048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269073, 33.556221, 37.874752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.200682, 33.424782, 37.503208>,  <29.159647, 33.345917, 37.280281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.200682, 33.424782, 37.503208>,  <29.269073, 33.556221, 37.874752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200682, 33.424782, 37.503208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958901, 0.161167, -0.233525,
		0.226438, -0.930616, 0.287539,
		-0.170981, -0.328601, -0.928863,
		29.149387, 33.326202, 37.224548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695963, 33.531406, 38.549553>,  <29.269073, 33.556221, 37.874752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695963, 33.531406, 38.549553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.002302, 33.341846, 38.723400>,  <30.186106, 33.228111, 38.827709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.002302, 33.341846, 38.723400>,  <29.695963, 33.531406, 38.549553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002302, 33.341846, 38.723400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235794, 0.421840, 0.875473,
		-0.598228, -0.772959, 0.211322,
		0.765849, -0.473904, 0.434615,
		30.232058, 33.199677, 38.853786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515732, 33.380413, 39.275543>,  <29.695963, 33.531406, 38.549553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515732, 33.380413, 39.275543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.915051, 33.401421, 39.265408>,  <30.154642, 33.414024, 39.259327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.915051, 33.401421, 39.265408>,  <29.515732, 33.380413, 39.275543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915051, 33.401421, 39.265408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011720, 0.244988, 0.969455,
		0.057122, -0.968103, 0.243955,
		0.998298, 0.052518, -0.025341,
		30.214540, 33.417175, 39.257805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868128, 33.017498, 39.871380>,  <29.515732, 33.380413, 39.275543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868128, 33.017498, 39.871380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.121191, 33.299782, 39.743809>,  <30.273029, 33.469151, 39.667267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.121191, 33.299782, 39.743809>,  <29.868128, 33.017498, 39.871380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121191, 33.299782, 39.743809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060845, 0.365259, 0.928915,
		0.772036, -0.607092, 0.188146,
		0.632660, 0.705709, -0.318932,
		30.310989, 33.511494, 39.648129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585953, 32.887287, 40.200958>,  <29.868128, 33.017498, 39.871380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585953, 32.887287, 40.200958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.501986, 33.261745, 40.088131>,  <30.451605, 33.486420, 40.020435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.501986, 33.261745, 40.088131>,  <30.585953, 32.887287, 40.200958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501986, 33.261745, 40.088131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291688, 0.335319, 0.895812,
		0.933195, 0.105771, -0.343453,
		-0.209917, 0.936148, -0.282065,
		30.439011, 33.542591, 40.003510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105286, 33.390446, 40.288937>,  <30.585953, 32.887287, 40.200958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105286, 33.390446, 40.288937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.771244, 33.606197, 40.332161>,  <30.570820, 33.735649, 40.358097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.771244, 33.606197, 40.332161>,  <31.105286, 33.390446, 40.288937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771244, 33.606197, 40.332161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332882, 0.339113, 0.879882,
		0.437944, 0.770762, -0.462743,
		-0.835102, 0.539378, 0.108060,
		30.520714, 33.768009, 40.364578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224161, 34.095520, 40.389114>,  <31.105286, 33.390446, 40.288937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224161, 34.095520, 40.389114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.874277, 34.002369, 40.559124>,  <30.664347, 33.946476, 40.661129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.874277, 34.002369, 40.559124>,  <31.224161, 34.095520, 40.389114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874277, 34.002369, 40.559124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281634, 0.469457, 0.836835,
		-0.394414, 0.851691, -0.345052,
		-0.874711, -0.232882, 0.425025,
		30.611864, 33.932503, 40.686630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050667, 34.621975, 40.776718>,  <31.224161, 34.095520, 40.389114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050667, 34.621975, 40.776718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.869242, 34.305542, 40.940899>,  <30.760386, 34.115685, 41.039410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.869242, 34.305542, 40.940899>,  <31.050667, 34.621975, 40.776718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869242, 34.305542, 40.940899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306000, 0.294323, 0.905394,
		-0.837044, 0.536254, 0.108576,
		-0.453565, -0.791079, 0.410455,
		30.733171, 34.068218, 41.064034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623846, 34.834957, 41.281158>,  <31.050667, 34.621975, 40.776718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623846, 34.834957, 41.281158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.714266, 34.464569, 41.402145>,  <30.768518, 34.242336, 41.474735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.714266, 34.464569, 41.402145>,  <30.623846, 34.834957, 41.281158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714266, 34.464569, 41.402145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083610, 0.327798, 0.941041,
		-0.970521, -0.187434, 0.151519,
		0.226051, -0.925968, 0.302463,
		30.782082, 34.186779, 41.492886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321642, 34.741028, 42.015167>,  <30.623846, 34.834957, 41.281158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321642, 34.741028, 42.015167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.647259, 34.515530, 41.959270>,  <30.842628, 34.380230, 41.925732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.647259, 34.515530, 41.959270>,  <30.321642, 34.741028, 42.015167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647259, 34.515530, 41.959270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442675, 0.446451, 0.777638,
		-0.376000, -0.694891, 0.612985,
		0.814041, -0.563744, -0.139745,
		30.891472, 34.346405, 41.917347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517368, 34.207973, 42.651608>,  <30.321642, 34.741028, 42.015167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517368, 34.207973, 42.651608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.803001, 34.384613, 42.434322>,  <30.974382, 34.490597, 42.303951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.803001, 34.384613, 42.434322>,  <30.517368, 34.207973, 42.651608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803001, 34.384613, 42.434322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370235, 0.420330, 0.828401,
		0.594146, -0.792663, 0.136657,
		0.714084, 0.441596, -0.543209,
		31.017227, 34.517090, 42.271358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104008, 34.026001, 42.916492>,  <30.517368, 34.207973, 42.651608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104008, 34.026001, 42.916492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.167450, 34.384983, 42.751854>,  <31.205515, 34.600372, 42.653069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.167450, 34.384983, 42.751854>,  <31.104008, 34.026001, 42.916492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167450, 34.384983, 42.751854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490223, 0.290282, 0.821838,
		0.857044, -0.332125, -0.393914,
		0.158607, 0.897457, -0.411600,
		31.215033, 34.654221, 42.628372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774776, 34.252953, 43.115372>,  <31.104008, 34.026001, 42.916492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774776, 34.252953, 43.115372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.571032, 34.587383, 43.033867>,  <31.448784, 34.788044, 42.984962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.571032, 34.587383, 43.033867>,  <31.774776, 34.252953, 43.115372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571032, 34.587383, 43.033867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471174, 0.469097, 0.746955,
		0.720100, 0.284461, -0.632880,
		-0.509362, 0.836080, -0.203766,
		31.418222, 34.838207, 42.972736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201630, 34.887630, 42.913319>,  <31.774776, 34.252953, 43.115372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201630, 34.887630, 42.913319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.862030, 35.038967, 43.060867>,  <31.658272, 35.129768, 43.149395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.862030, 35.038967, 43.060867>,  <32.201630, 34.887630, 42.913319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862030, 35.038967, 43.060867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519786, 0.472439, 0.711775,
		0.095024, 0.796028, -0.597754,
		-0.848995, 0.378340, 0.368871,
		31.607332, 35.152470, 43.171528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116238, 35.729713, 42.880589>,  <32.201630, 34.887630, 42.913319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116238, 35.729713, 42.880589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.965113, 35.523121, 43.187965>,  <31.874437, 35.399166, 43.372391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.965113, 35.523121, 43.187965>,  <32.116238, 35.729713, 42.880589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965113, 35.523121, 43.187965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664204, 0.427029, 0.613579,
		-0.645051, 0.742219, 0.181714,
		-0.377813, -0.516485, 0.768440,
		31.851768, 35.368176, 43.418499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325508, 36.129539, 43.447727>,  <32.116238, 35.729713, 42.880589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325508, 36.129539, 43.447727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.197552, 35.793015, 43.622021>,  <32.120777, 35.591099, 43.726597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.197552, 35.793015, 43.622021>,  <32.325508, 36.129539, 43.447727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197552, 35.793015, 43.622021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580435, 0.189473, 0.791957,
		-0.748843, 0.506253, 0.427717,
		-0.319889, -0.841313, 0.435733,
		32.101585, 35.540619, 43.752739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852371, 36.066448, 43.981918>,  <32.325508, 36.129539, 43.447727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852371, 36.066448, 43.981918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.502430, 36.234467, 44.078411>,  <32.292465, 36.335278, 44.136307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.502430, 36.234467, 44.078411>,  <32.852371, 36.066448, 43.981918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502430, 36.234467, 44.078411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314769, 0.114462, 0.942241,
		0.368174, 0.900255, -0.232356,
		-0.874853, 0.420047, 0.241230,
		32.239975, 36.360481, 44.150780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026146, 36.661945, 44.311256>,  <32.852371, 36.066448, 43.981918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026146, 36.661945, 44.311256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.648712, 36.570980, 44.407536>,  <32.422253, 36.516403, 44.465305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.648712, 36.570980, 44.407536>,  <33.026146, 36.661945, 44.311256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648712, 36.570980, 44.407536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196510, 0.200507, 0.959782,
		-0.266527, 0.952933, -0.144506,
		-0.943582, -0.227411, 0.240701,
		32.365639, 36.502758, 44.479748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771832, 37.262230, 44.572998>,  <33.026146, 36.661945, 44.311256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771832, 37.262230, 44.572998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599964, 36.928314, 44.710701>,  <32.496841, 36.727966, 44.793324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599964, 36.928314, 44.710701>,  <32.771832, 37.262230, 44.572998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599964, 36.928314, 44.710701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498296, 0.098740, 0.861366,
		-0.753050, 0.541645, 0.373546,
		-0.429670, -0.834788, 0.344256,
		32.471062, 36.677879, 44.813976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533123, 37.371712, 45.303474>,  <32.771832, 37.262230, 44.572998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533123, 37.371712, 45.303474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.633698, 36.992142, 45.227245>,  <32.694042, 36.764400, 45.181507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.633698, 36.992142, 45.227245>,  <32.533123, 37.371712, 45.303474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633698, 36.992142, 45.227245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615815, 0.004940, 0.787876,
		-0.746696, -0.315454, 0.585606,
		0.251432, -0.948928, -0.190572,
		32.709126, 36.707462, 45.170074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309288, 36.778244, 45.787525>,  <32.533123, 37.371712, 45.303474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309288, 36.778244, 45.787525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661346, 36.729675, 45.603962>,  <32.872581, 36.700535, 45.493824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661346, 36.729675, 45.603962>,  <32.309288, 36.778244, 45.787525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661346, 36.729675, 45.603962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470742, 0.098736, 0.876729,
		-0.061142, -0.987678, 0.144060,
		0.880150, -0.121420, -0.458905,
		32.925392, 36.693249, 45.466290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733425, 36.029202, 45.989857>,  <32.309288, 36.778244, 45.787525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733425, 36.029202, 45.989857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.922523, 36.373398, 45.913887>,  <33.035984, 36.579914, 45.868305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.922523, 36.373398, 45.913887>,  <32.733425, 36.029202, 45.989857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922523, 36.373398, 45.913887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307438, 0.040928, 0.950688,
		0.825827, -0.507827, -0.245197,
		0.472750, 0.860486, -0.189924,
		33.064350, 36.631542, 45.856911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417477, 35.918518, 45.924976>,  <32.733425, 36.029202, 45.989857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417477, 35.918518, 45.924976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312447, 36.268524, 46.087654>,  <33.249428, 36.478527, 46.185261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312447, 36.268524, 46.087654>,  <33.417477, 35.918518, 45.924976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312447, 36.268524, 46.087654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501302, -0.236433, 0.832343,
		0.824471, 0.422429, -0.376567,
		-0.262573, 0.875016, 0.406697,
		33.233673, 36.531029, 46.209663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930878, 36.163643, 46.333679>,  <33.417477, 35.918518, 45.924976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930878, 36.163643, 46.333679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.572170, 36.265526, 46.478420>,  <33.356945, 36.326656, 46.565266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.572170, 36.265526, 46.478420>,  <33.930878, 36.163643, 46.333679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572170, 36.265526, 46.478420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266572, -0.341749, 0.901192,
		0.353203, 0.904617, 0.238570,
		-0.896764, 0.254708, 0.361853,
		33.303143, 36.341938, 46.586975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105618, 36.311726, 47.025116>,  <33.930878, 36.163643, 46.333679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105618, 36.311726, 47.025116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.706100, 36.313663, 47.005569>,  <33.466389, 36.314827, 46.993839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.706100, 36.313663, 47.005569>,  <34.105618, 36.311726, 47.025116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706100, 36.313663, 47.005569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047619, -0.338794, 0.939655,
		-0.012008, 0.940848, 0.338616,
		-0.998793, 0.004841, -0.048871,
		33.406464, 36.315117, 46.990910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800903, 36.691124, 47.604939>,  <34.105618, 36.311726, 47.025116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800903, 36.691124, 47.604939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.600124, 36.380131, 47.453373>,  <33.479656, 36.193535, 47.362434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.600124, 36.380131, 47.453373>,  <33.800903, 36.691124, 47.604939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600124, 36.380131, 47.453373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041753, -0.415803, 0.908496,
		-0.863892, 0.471834, 0.176247,
		-0.501943, -0.777483, -0.378909,
		33.449543, 36.146885, 47.339699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202682, 36.509392, 48.191902>,  <33.800903, 36.691124, 47.604939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202682, 36.509392, 48.191902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.376343, 36.239204, 47.953491>,  <33.480541, 36.077091, 47.810444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.376343, 36.239204, 47.953491>,  <33.202682, 36.509392, 48.191902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376343, 36.239204, 47.953491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210809, -0.567087, 0.796223,
		-0.875825, -0.471333, -0.103808,
		0.434154, -0.675468, -0.596030,
		33.506588, 36.036564, 47.774681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825249, 35.793785, 48.386135>,  <33.202682, 36.509392, 48.191902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825249, 35.793785, 48.386135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.203457, 35.826714, 48.260143>,  <33.430382, 35.846470, 48.184547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.203457, 35.826714, 48.260143>,  <32.825249, 35.793785, 48.386135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203457, 35.826714, 48.260143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324865, -0.301772, 0.896324,
		-0.021270, -0.949820, -0.312074,
		0.945521, 0.082317, -0.314982,
		33.487114, 35.851410, 48.165649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021320, 36.235718, 48.841156>,  <32.825249, 35.793785, 48.386135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021320, 36.235718, 48.841156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.187008, 36.072498, 49.166588>,  <33.286419, 35.974567, 49.361847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.187008, 36.072498, 49.166588>,  <33.021320, 36.235718, 48.841156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187008, 36.072498, 49.166588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903967, 0.288674, -0.315454,
		-0.106141, 0.866120, 0.488436,
		0.414220, -0.408048, 0.813584,
		33.311275, 35.950085, 49.410664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490059, 36.725708, 49.100677>,  <33.021320, 36.235718, 48.841156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490059, 36.725708, 49.100677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.606339, 36.370739, 49.243774>,  <33.676105, 36.157757, 49.329632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.606339, 36.370739, 49.243774>,  <33.490059, 36.725708, 49.100677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606339, 36.370739, 49.243774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956278, 0.256942, -0.139692,
		0.032046, 0.382708, 0.923313,
		0.290699, -0.887420, 0.357741,
		33.693550, 36.104511, 49.351097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037193, 36.895359, 49.467430>,  <33.490059, 36.725708, 49.100677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037193, 36.895359, 49.467430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092930, 36.508362, 49.383015>,  <34.126373, 36.276165, 49.332363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092930, 36.508362, 49.383015>,  <34.037193, 36.895359, 49.467430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092930, 36.508362, 49.383015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985425, 0.156480, -0.066727,
		0.097582, -0.198668, 0.975197,
		0.139342, -0.967494, -0.211042,
		34.134731, 36.218113, 49.319702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727142, 36.784389, 49.670609>,  <34.037193, 36.895359, 49.467430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727142, 36.784389, 49.670609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.666012, 36.440845, 49.475052>,  <34.629333, 36.234718, 49.357719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.666012, 36.440845, 49.475052>,  <34.727142, 36.784389, 49.670609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666012, 36.440845, 49.475052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958780, -0.008938, -0.284010,
		0.239554, -0.512139, 0.824819,
		-0.152825, -0.858856, -0.488888,
		34.620163, 36.183189, 49.328384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265789, 36.406605, 49.847359>,  <34.727142, 36.784389, 49.670609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265789, 36.406605, 49.847359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124935, 36.265263, 49.500683>,  <35.040424, 36.180458, 49.292679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.124935, 36.265263, 49.500683>,  <35.265789, 36.406605, 49.847359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124935, 36.265263, 49.500683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932064, -0.216695, -0.290345,
		-0.085212, -0.910047, 0.405653,
		-0.352130, -0.353353, -0.866687,
		35.019295, 36.159256, 49.240677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621429, 35.807049, 49.779575>,  <35.265789, 36.406605, 49.847359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621429, 35.807049, 49.779575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.459328, 35.893803, 49.424332>,  <35.362068, 35.945854, 49.211185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.459328, 35.893803, 49.424332>,  <35.621429, 35.807049, 49.779575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459328, 35.893803, 49.424332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864463, -0.225163, -0.449450,
		-0.297447, -0.949876, -0.096238,
		-0.405253, 0.216882, -0.888106,
		35.337753, 35.958866, 49.157898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682487, 35.230728, 49.374489>,  <35.621429, 35.807049, 49.779575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682487, 35.230728, 49.374489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.662724, 35.539665, 49.121174>,  <35.650867, 35.725025, 48.969185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.662724, 35.539665, 49.121174>,  <35.682487, 35.230728, 49.374489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662724, 35.539665, 49.121174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888537, -0.255582, -0.381024,
		-0.456137, -0.581521, -0.673626,
		-0.049407, 0.772341, -0.633284,
		35.647900, 35.771366, 48.931190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846252, 34.936974, 48.782776>,  <35.682487, 35.230728, 49.374489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846252, 34.936974, 48.782776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907902, 35.327705, 48.723385>,  <35.944889, 35.562145, 48.687752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907902, 35.327705, 48.723385>,  <35.846252, 34.936974, 48.782776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907902, 35.327705, 48.723385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905911, -0.199691, -0.373428,
		-0.394426, -0.076953, -0.915700,
		0.154121, 0.976832, -0.148476,
		35.954140, 35.620754, 48.678841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278122, 35.049255, 48.167969>,  <35.846252, 34.936974, 48.782776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278122, 35.049255, 48.167969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.343563, 35.410927, 48.325806>,  <36.382828, 35.627930, 48.420509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.343563, 35.410927, 48.325806>,  <36.278122, 35.049255, 48.167969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343563, 35.410927, 48.325806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932068, -0.010609, -0.362128,
		-0.323241, 0.427030, -0.844488,
		0.163599, 0.904175, 0.394592,
		36.392643, 35.682178, 48.444183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683308, 35.268909, 47.707539>,  <36.278122, 35.049255, 48.167969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683308, 35.268909, 47.707539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.752563, 35.469940, 48.046349>,  <36.794117, 35.590557, 48.249634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.752563, 35.469940, 48.046349>,  <36.683308, 35.268909, 47.707539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752563, 35.469940, 48.046349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966314, 0.079597, -0.244749,
		-0.190425, 0.860863, -0.471862,
		0.173137, 0.502573, 0.847021,
		36.804504, 35.620712, 48.300453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115246, 35.926666, 47.498314>,  <36.683308, 35.268909, 47.707539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115246, 35.926666, 47.498314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.164036, 35.869469, 47.891186>,  <37.193310, 35.835152, 48.126907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.164036, 35.869469, 47.891186>,  <37.115246, 35.926666, 47.498314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164036, 35.869469, 47.891186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991464, 0.063463, -0.113889,
		-0.046047, 0.987687, 0.149512,
		0.121975, -0.142991, 0.982179,
		37.200626, 35.826572, 48.185841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625916, 36.391296, 47.772255>,  <37.115246, 35.926666, 47.498314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625916, 36.391296, 47.772255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.625477, 36.115089, 48.061581>,  <37.625214, 35.949364, 48.235176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.625477, 36.115089, 48.061581>,  <37.625916, 36.391296, 47.772255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625477, 36.115089, 48.061581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999982, -0.004991, -0.003246,
		0.005851, 0.723295, 0.690514,
		-0.001099, -0.690521, 0.723312,
		37.625149, 35.907932, 48.278576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231205, 36.564503, 48.242531>,  <37.625916, 36.391296, 47.772255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231205, 36.564503, 48.242531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118042, 36.181267, 48.260551>,  <38.050144, 35.951324, 48.271366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118042, 36.181267, 48.260551>,  <38.231205, 36.564503, 48.242531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118042, 36.181267, 48.260551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959093, -0.283077, 0.002788,
		0.010083, 0.044001, 0.998981,
		-0.282911, -0.958087, 0.045055,
		38.033169, 35.893841, 48.274067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837383, 36.311172, 48.054062>,  <38.231205, 36.564503, 48.242531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837383, 36.311172, 48.054062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.666271, 35.989864, 48.219837>,  <38.563606, 35.797077, 48.319302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.666271, 35.989864, 48.219837>,  <38.837383, 36.311172, 48.054062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666271, 35.989864, 48.219837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881341, -0.472443, -0.005996,
		0.200614, 0.362695, 0.910059,
		-0.427776, -0.803275, 0.414436,
		38.537937, 35.748882, 48.344170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329227, 35.980095, 48.446926>,  <38.837383, 36.311172, 48.054062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329227, 35.980095, 48.446926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.065170, 35.755409, 48.247456>,  <38.906734, 35.620598, 48.127773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.065170, 35.755409, 48.247456>,  <39.329227, 35.980095, 48.446926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065170, 35.755409, 48.247456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751014, -0.481617, -0.451689,
		0.013552, -0.672694, 0.739797,
		-0.660147, -0.561719, -0.498676,
		38.867126, 35.586895, 48.097855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504547, 35.279621, 48.642513>,  <39.329227, 35.980095, 48.446926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504547, 35.279621, 48.642513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.349651, 35.314682, 48.275394>,  <39.256714, 35.335720, 48.055122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.349651, 35.314682, 48.275394>,  <39.504547, 35.279621, 48.642513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349651, 35.314682, 48.275394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697604, -0.623015, -0.353837,
		-0.602820, -0.777283, 0.180110,
		-0.387243, 0.087654, -0.917802,
		39.233479, 35.340977, 48.000053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950562, 34.859631, 48.963840>,  <39.504547, 35.279621, 48.642513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950562, 34.859631, 48.963840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.185333, 34.602974, 49.161350>,  <40.326195, 34.448978, 49.279854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.185333, 34.602974, 49.161350>,  <39.950562, 34.859631, 48.963840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185333, 34.602974, 49.161350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530831, 0.155530, 0.833084,
		-0.611340, -0.751067, -0.249321,
		0.586925, -0.641645, 0.493772,
		40.361412, 34.410480, 49.309483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603733, 34.327362, 49.262177>,  <39.950562, 34.859631, 48.963840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603733, 34.327362, 49.262177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.926220, 34.396248, 49.488579>,  <40.119713, 34.437580, 49.624420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.926220, 34.396248, 49.488579>,  <39.603733, 34.327362, 49.262177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926220, 34.396248, 49.488579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582757, 0.066181, 0.809947,
		0.102029, -0.982833, 0.153718,
		0.806216, 0.172219, 0.566001,
		40.168083, 34.447910, 49.658379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838085, 33.825050, 49.902699>,  <39.603733, 34.327362, 49.262177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838085, 33.825050, 49.902699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.866611, 34.219643, 49.961704>,  <39.883728, 34.456398, 49.997108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.866611, 34.219643, 49.961704>,  <39.838085, 33.825050, 49.902699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866611, 34.219643, 49.961704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782879, -0.036283, 0.621116,
		0.618073, -0.159786, 0.769710,
		0.071318, 0.986485, 0.147518,
		39.888008, 34.515587, 50.005959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580372, 33.915817, 50.534023>,  <39.838085, 33.825050, 49.902699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580372, 33.915817, 50.534023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.543056, 34.303135, 50.441334>,  <39.520668, 34.535526, 50.385719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.543056, 34.303135, 50.441334>,  <39.580372, 33.915817, 50.534023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543056, 34.303135, 50.441334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680017, 0.108030, 0.725194,
		0.727237, 0.225231, 0.648380,
		-0.093292, 0.968298, -0.231724,
		39.515068, 34.593624, 50.371815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432247, 34.240505, 51.168812>,  <39.580372, 33.915817, 50.534023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432247, 34.240505, 51.168812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.298500, 34.518509, 50.914204>,  <39.218250, 34.685310, 50.761436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.298500, 34.518509, 50.914204>,  <39.432247, 34.240505, 51.168812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298500, 34.518509, 50.914204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877415, 0.016960, 0.479432,
		0.344003, 0.718804, 0.604138,
		-0.334371, 0.695006, -0.636524,
		39.198189, 34.727009, 50.723248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134731, 34.849228, 51.572540>,  <39.432247, 34.240505, 51.168812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134731, 34.849228, 51.572540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.964321, 34.845524, 51.210674>,  <38.862076, 34.843304, 50.993557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.964321, 34.845524, 51.210674>,  <39.134731, 34.849228, 51.572540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964321, 34.845524, 51.210674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881153, 0.230948, 0.412592,
		0.205111, 0.972922, -0.106546,
		-0.426027, -0.009256, -0.904663,
		38.836514, 34.842747, 50.939274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738701, 35.405182, 51.636711>,  <39.134731, 34.849228, 51.572540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738701, 35.405182, 51.636711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.591995, 35.208759, 51.320648>,  <38.503971, 35.090904, 51.131012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.591995, 35.208759, 51.320648>,  <38.738701, 35.405182, 51.636711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591995, 35.208759, 51.320648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882043, -0.086481, 0.463163,
		-0.295773, 0.866823, -0.401416,
		-0.366766, -0.491058, -0.790155,
		38.481964, 35.061443, 51.083603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023842, 35.637268, 51.533672>,  <38.738701, 35.405182, 51.636711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023842, 35.637268, 51.533672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.022614, 35.290451, 51.334385>,  <38.021877, 35.082359, 51.214813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.022614, 35.290451, 51.334385>,  <38.023842, 35.637268, 51.533672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022614, 35.290451, 51.334385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919390, -0.193521, 0.342448,
		-0.393334, 0.459107, -0.796561,
		-0.003069, -0.867047, -0.498217,
		38.021694, 35.030338, 51.184921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390156, 35.596802, 51.273212>,  <38.023842, 35.637268, 51.533672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390156, 35.596802, 51.273212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.524746, 35.220318, 51.285271>,  <37.605499, 34.994427, 51.292507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.524746, 35.220318, 51.285271>,  <37.390156, 35.596802, 51.273212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524746, 35.220318, 51.285271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857849, -0.293157, 0.422083,
		-0.388429, -0.167885, -0.906056,
		0.336478, -0.941208, 0.030149,
		37.625690, 34.937954, 51.294315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881439, 35.133083, 50.901157>,  <37.390156, 35.596802, 51.273212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881439, 35.133083, 50.901157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.069965, 34.924866, 51.185944>,  <37.183079, 34.799934, 51.356815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.069965, 34.924866, 51.185944>,  <36.881439, 35.133083, 50.901157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069965, 34.924866, 51.185944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881151, -0.312634, 0.354730,
		0.037931, -0.794539, -0.606028,
		0.471312, -0.520546, 0.711967,
		37.211357, 34.768703, 51.399532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475403, 34.520077, 50.944084>,  <36.881439, 35.133083, 50.901157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475403, 34.520077, 50.944084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.695187, 34.459007, 51.272663>,  <36.827057, 34.422363, 51.469810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.695187, 34.459007, 51.272663>,  <36.475403, 34.520077, 50.944084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695187, 34.459007, 51.272663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814448, -0.317284, 0.485804,
		0.186463, -0.935960, -0.298682,
		0.549460, -0.152677, 0.821452,
		36.860023, 34.413204, 51.519100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301922, 33.807468, 51.266151>,  <36.475403, 34.520077, 50.944084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301922, 33.807468, 51.266151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.460247, 34.031422, 51.557316>,  <36.555244, 34.165794, 51.732014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.460247, 34.031422, 51.557316>,  <36.301922, 33.807468, 51.266151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460247, 34.031422, 51.557316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668991, -0.367213, 0.646224,
		0.629111, -0.742753, 0.229210,
		0.395816, 0.559886, 0.727913,
		36.578991, 34.199387, 51.775688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297359, 33.343517, 51.895630>,  <36.301922, 33.807468, 51.266151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297359, 33.343517, 51.895630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.325653, 33.717133, 52.035671>,  <36.342628, 33.941299, 52.119698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.325653, 33.717133, 52.035671>,  <36.297359, 33.343517, 51.895630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325653, 33.717133, 52.035671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787347, -0.163213, 0.594513,
		0.612438, -0.317708, 0.723865,
		0.070738, 0.934036, 0.350104,
		36.346874, 33.997345, 52.140701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228554, 33.244194, 52.592236>,  <36.297359, 33.343517, 51.895630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228554, 33.244194, 52.592236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.158749, 33.635208, 52.544968>,  <36.116863, 33.869816, 52.516605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.158749, 33.635208, 52.544968>,  <36.228554, 33.244194, 52.592236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158749, 33.635208, 52.544968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644833, -0.022761, 0.763984,
		0.744134, 0.209529, 0.634320,
		-0.174515, 0.977537, -0.118174,
		36.106396, 33.928471, 52.509514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248814, 33.548126, 53.302250>,  <36.228554, 33.244194, 52.592236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248814, 33.548126, 53.302250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.054348, 33.800175, 53.060062>,  <35.937668, 33.951405, 52.914749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.054348, 33.800175, 53.060062>,  <36.248814, 33.548126, 53.302250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054348, 33.800175, 53.060062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631956, 0.225025, 0.741617,
		0.603553, 0.743178, 0.288808,
		-0.486164, 0.630119, -0.605470,
		35.908497, 33.989212, 52.878422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076363, 33.951653, 53.788307>,  <36.248814, 33.548126, 53.302250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076363, 33.951653, 53.788307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848137, 34.062569, 53.479099>,  <35.711201, 34.129120, 53.293575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848137, 34.062569, 53.479099>,  <36.076363, 33.951653, 53.788307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848137, 34.062569, 53.479099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661393, 0.402839, 0.632676,
		0.486841, 0.872255, -0.046446,
		-0.570565, 0.277294, -0.773022,
		35.676968, 34.145756, 53.247192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090504, 34.686974, 53.734924>,  <36.076363, 33.951653, 53.788307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090504, 34.686974, 53.734924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.771954, 34.560574, 53.528652>,  <35.580822, 34.484734, 53.404888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.771954, 34.560574, 53.528652>,  <36.090504, 34.686974, 53.734924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771954, 34.560574, 53.528652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582229, 0.631330, 0.512281,
		0.163684, 0.708213, -0.686762,
		-0.796378, -0.316000, -0.515681,
		35.533039, 34.465775, 53.373947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770905, 35.284172, 53.465019>,  <36.090504, 34.686974, 53.734924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770905, 35.284172, 53.465019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.498005, 34.994278, 53.503597>,  <35.334267, 34.820343, 53.526745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.498005, 34.994278, 53.503597>,  <35.770905, 35.284172, 53.465019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498005, 34.994278, 53.503597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551842, 0.596980, 0.582311,
		-0.479595, 0.344058, -0.807225,
		-0.682246, -0.724734, 0.096443,
		35.293331, 34.776859, 53.532532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151119, 35.563042, 53.379791>,  <35.770905, 35.284172, 53.465019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151119, 35.563042, 53.379791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.018127, 35.228352, 53.553848>,  <34.938332, 35.027538, 53.658283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.018127, 35.228352, 53.553848>,  <35.151119, 35.563042, 53.379791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018127, 35.228352, 53.553848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617922, 0.541832, 0.569729,
		-0.712481, -0.079463, -0.697177,
		-0.332480, -0.836722, 0.435147,
		34.918385, 34.977333, 53.684391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370663, 35.462330, 53.293644>,  <35.151119, 35.563042, 53.379791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370663, 35.462330, 53.293644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480499, 35.272087, 53.627926>,  <34.546402, 35.157940, 53.828495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480499, 35.272087, 53.627926>,  <34.370663, 35.462330, 53.293644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480499, 35.272087, 53.627926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532525, 0.648438, 0.544009,
		-0.800635, -0.594412, -0.075216,
		0.274592, -0.475607, 0.835701,
		34.562878, 35.129406, 53.878635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759335, 35.334728, 53.655827>,  <34.370663, 35.462330, 53.293644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759335, 35.334728, 53.655827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.053093, 35.314377, 53.926552>,  <34.229347, 35.302166, 54.088985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.053093, 35.314377, 53.926552>,  <33.759335, 35.334728, 53.655827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053093, 35.314377, 53.926552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556046, 0.526706, 0.642957,
		-0.389193, -0.848524, 0.358520,
		0.734398, -0.050880, 0.676809,
		34.273411, 35.299114, 54.129593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388695, 35.280678, 54.190155>,  <33.759335, 35.334728, 53.655827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388695, 35.280678, 54.190155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.750778, 35.359909, 54.340546>,  <33.968029, 35.407448, 54.430782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.750778, 35.359909, 54.340546>,  <33.388695, 35.280678, 54.190155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750778, 35.359909, 54.340546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418168, 0.572802, 0.705006,
		-0.075714, -0.795400, 0.601337,
		0.905209, 0.198081, 0.375980,
		34.022339, 35.419334, 54.453339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422447, 34.976574, 54.919243>,  <33.388695, 35.280678, 54.190155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422447, 34.976574, 54.919243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.648228, 35.301136, 54.858555>,  <33.783695, 35.495872, 54.822140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.648228, 35.301136, 54.858555>,  <33.422447, 34.976574, 54.919243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648228, 35.301136, 54.858555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531255, 0.497757, 0.685570,
		0.631797, -0.306364, 0.712021,
		0.564448, 0.811406, -0.151724,
		33.817562, 35.544559, 54.813038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464127, 35.301384, 55.545761>,  <33.422447, 34.976574, 54.919243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464127, 35.301384, 55.545761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.618347, 35.604820, 55.335663>,  <33.710880, 35.786880, 55.209602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.618347, 35.604820, 55.335663>,  <33.464127, 35.301384, 55.545761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618347, 35.604820, 55.335663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296009, 0.640866, 0.708287,
		0.873914, -0.117605, 0.471638,
		0.385555, 0.758591, -0.525250,
		33.734013, 35.832397, 55.178089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795753, 35.603294, 56.114319>,  <33.464127, 35.301384, 55.545761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795753, 35.603294, 56.114319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.766354, 35.855148, 55.804955>,  <33.748714, 36.006260, 55.619335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.766354, 35.855148, 55.804955>,  <33.795753, 35.603294, 56.114319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766354, 35.855148, 55.804955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482448, 0.656277, 0.580125,
		0.872836, 0.415770, 0.255526,
		-0.073502, 0.629632, -0.773409,
		33.744305, 36.044037, 55.572933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129208, 36.217449, 56.308952>,  <33.795753, 35.603294, 56.114319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129208, 36.217449, 56.308952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.885929, 36.306290, 56.004120>,  <33.739964, 36.359596, 55.821220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.885929, 36.306290, 56.004120>,  <34.129208, 36.217449, 56.308952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885929, 36.306290, 56.004120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560634, 0.559469, 0.610478,
		0.561952, 0.798539, -0.215745,
		-0.608193, 0.222106, -0.762083,
		33.703472, 36.372921, 55.775494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035870, 36.883072, 56.254852>,  <34.129208, 36.217449, 56.308952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035870, 36.883072, 56.254852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.715862, 36.733643, 56.067059>,  <33.523857, 36.643986, 55.954384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.715862, 36.733643, 56.067059>,  <34.035870, 36.883072, 56.254852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715862, 36.733643, 56.067059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599701, 0.521479, 0.606974,
		0.018077, 0.767140, -0.641225,
		-0.800020, -0.373571, -0.469482,
		33.475857, 36.621571, 55.926212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524639, 37.459038, 56.187809>,  <34.035870, 36.883072, 56.254852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524639, 37.459038, 56.187809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.332771, 37.110321, 56.148010>,  <33.217651, 36.901093, 56.124130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.332771, 37.110321, 56.148010>,  <33.524639, 37.459038, 56.187809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332771, 37.110321, 56.148010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744269, 0.344181, 0.572366,
		-0.464739, 0.348598, -0.813939,
		-0.479668, -0.871791, -0.099497,
		33.188869, 36.848785, 56.118160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906685, 37.696331, 56.120552>,  <33.524639, 37.459038, 56.187809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906685, 37.696331, 56.120552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.855316, 37.312828, 56.221973>,  <32.824497, 37.082726, 56.282825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.855316, 37.312828, 56.221973>,  <32.906685, 37.696331, 56.120552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855316, 37.312828, 56.221973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748814, 0.261373, 0.609066,
		-0.650219, -0.111648, -0.751498,
		-0.128420, -0.958759, 0.253554,
		32.816792, 37.025200, 56.298038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113464, 37.582687, 56.127064>,  <32.906685, 37.696331, 56.120552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113464, 37.582687, 56.127064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.305527, 37.305439, 56.342113>,  <32.420765, 37.139091, 56.471142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.305527, 37.305439, 56.342113>,  <32.113464, 37.582687, 56.127064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305527, 37.305439, 56.342113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493483, 0.293268, 0.818821,
		-0.725210, -0.658466, -0.201230,
		0.480152, -0.693121, 0.537623,
		32.449574, 37.097504, 56.503399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626442, 37.498268, 56.654800>,  <32.113464, 37.582687, 56.127064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626442, 37.498268, 56.654800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.953310, 37.340385, 56.822819>,  <32.149429, 37.245655, 56.923630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.953310, 37.340385, 56.822819>,  <31.626442, 37.498268, 56.654800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953310, 37.340385, 56.822819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467956, -0.028832, 0.883281,
		-0.336527, -0.918355, -0.208266,
		0.817171, -0.394707, 0.420046,
		32.198460, 37.221973, 56.948833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356758, 37.022743, 57.227158>,  <31.626442, 37.498268, 56.654800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356758, 37.022743, 57.227158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.744965, 37.085632, 57.300232>,  <31.977888, 37.123367, 57.344078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.744965, 37.085632, 57.300232>,  <31.356758, 37.022743, 57.227158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744965, 37.085632, 57.300232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163788, -0.125863, 0.978433,
		0.176830, -0.979509, -0.096400,
		0.970518, 0.157227, 0.182689,
		32.036121, 37.132801, 57.355038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569626, 36.450825, 57.642506>,  <31.356758, 37.022743, 57.227158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569626, 36.450825, 57.642506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.819056, 36.755642, 57.712303>,  <31.968714, 36.938534, 57.754181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.819056, 36.755642, 57.712303>,  <31.569626, 36.450825, 57.642506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819056, 36.755642, 57.712303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151518, -0.101164, 0.983264,
		0.766941, -0.639577, 0.052380,
		0.623574, 0.762042, 0.174494,
		32.006126, 36.984253, 57.764652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021599, 36.229160, 58.229431>,  <31.569626, 36.450825, 57.642506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021599, 36.229160, 58.229431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.067162, 36.626091, 58.248653>,  <32.094501, 36.864250, 58.260185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.067162, 36.626091, 58.248653>,  <32.021599, 36.229160, 58.229431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067162, 36.626091, 58.248653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112512, -0.035170, 0.993028,
		0.987100, -0.118521, 0.107643,
		0.113909, 0.992328, 0.048051,
		32.101334, 36.923790, 58.263069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963737, 36.220169, 58.931164>,  <32.021599, 36.229160, 58.229431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963737, 36.220169, 58.931164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.002850, 36.605358, 58.830662>,  <32.026318, 36.836472, 58.770363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.002850, 36.605358, 58.830662>,  <31.963737, 36.220169, 58.931164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002850, 36.605358, 58.830662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182748, 0.265544, 0.946620,
		0.978285, -0.046647, 0.201946,
		0.097782, 0.962970, -0.251253,
		32.032185, 36.894249, 58.755287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515198, 36.540031, 59.346935>,  <31.963737, 36.220169, 58.931164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515198, 36.540031, 59.346935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.233673, 36.798328, 59.228497>,  <32.064758, 36.953304, 59.157433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.233673, 36.798328, 59.228497>,  <32.515198, 36.540031, 59.346935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233673, 36.798328, 59.228497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125759, 0.296971, 0.946569,
		0.699170, 0.703439, -0.127803,
		-0.703808, 0.645741, -0.296098,
		32.022530, 36.992050, 59.139668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580906, 37.213367, 59.780235>,  <32.515198, 36.540031, 59.346935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580906, 37.213367, 59.780235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.207130, 37.202560, 59.638199>,  <31.982864, 37.196075, 59.552979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.207130, 37.202560, 59.638199>,  <32.580906, 37.213367, 59.780235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207130, 37.202560, 59.638199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338569, 0.376556, 0.862309,
		0.110416, 0.926000, -0.361015,
		-0.934441, -0.027016, -0.355092,
		31.926798, 37.194454, 59.531670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382484, 37.920731, 59.731728>,  <32.580906, 37.213367, 59.780235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382484, 37.920731, 59.731728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.076527, 37.665207, 59.764847>,  <31.892952, 37.511890, 59.784718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.076527, 37.665207, 59.764847>,  <32.382484, 37.920731, 59.731728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076527, 37.665207, 59.764847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337605, 0.507026, 0.793062,
		-0.548597, 0.578656, -0.603488,
		-0.764895, -0.638812, 0.082796,
		31.847057, 37.473564, 59.789684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954403, 38.360905, 60.087589>,  <32.382484, 37.920731, 59.731728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954403, 38.360905, 60.087589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.761267, 38.011410, 60.111084>,  <31.645386, 37.801712, 60.125183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.761267, 38.011410, 60.111084>,  <31.954403, 38.360905, 60.087589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761267, 38.011410, 60.111084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520402, 0.340236, 0.783213,
		-0.704306, 0.347598, -0.618973,
		-0.482840, -0.873736, 0.058740,
		31.616415, 37.749290, 60.128704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241657, 38.566753, 59.979759>,  <31.954403, 38.360905, 60.087589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241657, 38.566753, 59.979759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.218636, 38.218269, 60.174767>,  <31.204823, 38.009178, 60.291771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.218636, 38.218269, 60.174767>,  <31.241657, 38.566753, 59.979759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218636, 38.218269, 60.174767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422320, 0.463731, 0.778845,
		-0.904618, -0.161062, -0.394622,
		-0.057556, -0.871214, 0.487519,
		31.201368, 37.956905, 60.321022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597157, 38.489342, 60.105053>,  <31.241657, 38.566753, 59.979759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597157, 38.489342, 60.105053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.775248, 38.253620, 60.374718>,  <30.882101, 38.112186, 60.536518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.775248, 38.253620, 60.374718>,  <30.597157, 38.489342, 60.105053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775248, 38.253620, 60.374718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639121, 0.318176, 0.700206,
		-0.627135, -0.742623, -0.234974,
		0.445226, -0.589301, 0.674165,
		30.908815, 38.076832, 60.576969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005062, 38.241890, 60.447495>,  <30.597157, 38.489342, 60.105053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005062, 38.241890, 60.447495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.331575, 38.178185, 60.669598>,  <30.527485, 38.139961, 60.802860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.331575, 38.178185, 60.669598>,  <30.005062, 38.241890, 60.447495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331575, 38.178185, 60.669598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441388, 0.448113, 0.777413,
		-0.372632, -0.879676, 0.295492,
		0.816285, -0.159262, 0.555260,
		30.576462, 38.130405, 60.836174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691225, 38.026878, 61.000153>,  <30.005062, 38.241890, 60.447495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691225, 38.026878, 61.000153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.054649, 38.153141, 61.109612>,  <30.272703, 38.228897, 61.175289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.054649, 38.153141, 61.109612>,  <29.691225, 38.026878, 61.000153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054649, 38.153141, 61.109612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392476, 0.420538, 0.817991,
		0.143123, -0.850594, 0.505970,
		0.908558, 0.315654, 0.273649,
		30.327217, 38.247837, 61.191708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787556, 37.829960, 61.758427>,  <29.691225, 38.026878, 61.000153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787556, 37.829960, 61.758427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.061392, 38.114048, 61.692799>,  <30.225693, 38.284500, 61.653419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.061392, 38.114048, 61.692799>,  <29.787556, 37.829960, 61.758427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061392, 38.114048, 61.692799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236021, 0.428936, 0.871957,
		0.689662, -0.558207, 0.461272,
		0.684588, 0.710225, -0.164073,
		30.266769, 38.327114, 61.643578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210821, 37.939167, 62.320606>,  <29.787556, 37.829960, 61.758427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210821, 37.939167, 62.320606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.201651, 38.301716, 62.151863>,  <30.196148, 38.519245, 62.050617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.201651, 38.301716, 62.151863>,  <30.210821, 37.939167, 62.320606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201651, 38.301716, 62.151863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414958, 0.375280, 0.828839,
		0.909552, 0.194056, 0.367502,
		-0.022925, 0.906370, -0.421861,
		30.194773, 38.573627, 62.025303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719587, 38.474491, 62.647430>,  <30.210821, 37.939167, 62.320606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719587, 38.474491, 62.647430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.368979, 38.602222, 62.503353>,  <30.158613, 38.678860, 62.416908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.368979, 38.602222, 62.503353>,  <30.719587, 38.474491, 62.647430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368979, 38.602222, 62.503353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269754, 0.293886, 0.916986,
		0.398674, 0.900922, -0.171458,
		-0.876523, 0.319327, -0.360192,
		30.106022, 38.698021, 62.395294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598297, 39.105320, 62.867050>,  <30.719587, 38.474491, 62.647430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598297, 39.105320, 62.867050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.256247, 38.908825, 62.800781>,  <30.051016, 38.790928, 62.761021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.256247, 38.908825, 62.800781>,  <30.598297, 39.105320, 62.867050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256247, 38.908825, 62.800781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346998, 0.304929, 0.886910,
		-0.385163, 0.815908, -0.431211,
		-0.855126, -0.491235, -0.165671,
		29.999708, 38.761456, 62.751080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936272, 39.545052, 63.040421>,  <30.598297, 39.105320, 62.867050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936272, 39.545052, 63.040421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.846771, 39.155197, 63.042267>,  <29.793070, 38.921284, 63.043373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.846771, 39.155197, 63.042267>,  <29.936272, 39.545052, 63.040421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846771, 39.155197, 63.042267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452065, 0.107973, 0.885426,
		-0.863465, 0.196032, -0.464758,
		-0.223753, -0.974635, 0.004611,
		29.779646, 38.862808, 63.043652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133724, 39.384571, 63.159588>,  <29.936272, 39.545052, 63.040421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133724, 39.384571, 63.159588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.340273, 39.055298, 63.254017>,  <29.464201, 38.857735, 63.310673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.340273, 39.055298, 63.254017>,  <29.133724, 39.384571, 63.159588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340273, 39.055298, 63.254017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601008, -0.151979, 0.784660,
		-0.610042, -0.547055, -0.573218,
		0.516370, -0.823185, 0.236071,
		29.495184, 38.808342, 63.324837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668745, 39.150955, 62.751842>,  <29.133724, 39.384571, 63.159588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668745, 39.150955, 62.751842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.447195, 39.237057, 62.430126>,  <28.314264, 39.288719, 62.237095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.447195, 39.237057, 62.430126>,  <28.668745, 39.150955, 62.751842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447195, 39.237057, 62.430126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742195, 0.565420, -0.359787,
		0.377318, -0.796220, -0.472933,
		-0.553875, 0.215255, -0.804294,
		28.281033, 39.301632, 62.188839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101316, 39.033215, 62.271900>,  <28.668745, 39.150955, 62.751842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101316, 39.033215, 62.271900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.830317, 39.282974, 62.116405>,  <28.667717, 39.432831, 62.023109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.830317, 39.282974, 62.116405>,  <29.101316, 39.033215, 62.271900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830317, 39.282974, 62.116405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734321, 0.543996, -0.406007,
		-0.042039, -0.560528, -0.827068,
		-0.677500, 0.624401, -0.388738,
		28.627066, 39.470295, 61.999783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134340, 39.120022, 61.512592>,  <29.101316, 39.033215, 62.271900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134340, 39.120022, 61.512592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.072830, 39.466099, 61.703503>,  <29.035925, 39.673744, 61.818050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.072830, 39.466099, 61.703503>,  <29.134340, 39.120022, 61.512592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072830, 39.466099, 61.703503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569419, 0.472346, -0.672793,
		-0.807537, 0.168313, -0.565292,
		-0.153774, 0.865193, 0.477277,
		29.026697, 39.725658, 61.846687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961885, 39.745205, 61.036327>,  <29.134340, 39.120022, 61.512592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961885, 39.745205, 61.036327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.149927, 39.930660, 61.336739>,  <29.262753, 40.041935, 61.516983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.149927, 39.930660, 61.336739>,  <28.961885, 39.745205, 61.036327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149927, 39.930660, 61.336739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543565, 0.518311, -0.660220,
		-0.695369, 0.718604, -0.008358,
		0.470105, 0.463640, 0.751025,
		29.290958, 40.069752, 61.562046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955383, 40.454723, 60.971333>,  <28.961885, 39.745205, 61.036327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955383, 40.454723, 60.971333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.277725, 40.380356, 61.196198>,  <29.471130, 40.335735, 61.331116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.277725, 40.380356, 61.196198>,  <28.955383, 40.454723, 60.971333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277725, 40.380356, 61.196198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569182, 0.504893, -0.648934,
		-0.163181, 0.842921, 0.512695,
		0.805856, -0.185923, 0.562164,
		29.519482, 40.324577, 61.364845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362068, 41.150780, 61.132874>,  <28.955383, 40.454723, 60.971333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362068, 41.150780, 61.132874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.599237, 40.828911, 61.145103>,  <29.741539, 40.635788, 61.152443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.599237, 40.828911, 61.145103>,  <29.362068, 41.150780, 61.132874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599237, 40.828911, 61.145103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662345, 0.465751, -0.586834,
		0.457972, 0.368200, 0.809130,
		0.592925, -0.804677, 0.030574,
		29.777115, 40.587509, 61.154274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043058, 41.436600, 61.147209>,  <29.362068, 41.150780, 61.132874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043058, 41.436600, 61.147209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.102552, 41.069717, 60.999363>,  <30.138248, 40.849590, 60.910656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.102552, 41.069717, 60.999363>,  <30.043058, 41.436600, 61.147209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102552, 41.069717, 60.999363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564471, 0.385644, -0.729830,
		0.811942, -0.100087, 0.575093,
		0.148735, -0.917203, -0.369617,
		30.147173, 40.794556, 60.888477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708992, 41.281792, 61.113834>,  <30.043058, 41.436600, 61.147209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708992, 41.281792, 61.113834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.553047, 41.039101, 60.836739>,  <30.459480, 40.893486, 60.670479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.553047, 41.039101, 60.836739>,  <30.708992, 41.281792, 61.113834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553047, 41.039101, 60.836739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545044, 0.454318, -0.704643,
		0.742251, -0.652288, 0.153572,
		-0.389860, -0.606725, -0.692743,
		30.436089, 40.857082, 60.628914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233624, 41.119797, 60.720131>,  <30.708992, 41.281792, 61.113834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233624, 41.119797, 60.720131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.926577, 41.035110, 60.478157>,  <30.742350, 40.984299, 60.332973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.926577, 41.035110, 60.478157>,  <31.233624, 41.119797, 60.720131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926577, 41.035110, 60.478157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547683, 0.273552, -0.790704,
		0.332882, -0.938268, -0.094031,
		-0.767615, -0.211712, -0.604934,
		30.696293, 40.971596, 60.296677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480114, 40.787132, 60.181896>,  <31.233624, 41.119797, 60.720131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480114, 40.787132, 60.181896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132246, 40.925140, 60.040684>,  <30.923525, 41.007946, 59.955956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132246, 40.925140, 60.040684>,  <31.480114, 40.787132, 60.181896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132246, 40.925140, 60.040684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444305, 0.235487, -0.864372,
		-0.215091, -0.908574, -0.358090,
		-0.869672, 0.345020, -0.353033,
		30.871344, 41.028645, 59.934772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424000, 40.379280, 59.569675>,  <31.480114, 40.787132, 60.181896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424000, 40.379280, 59.569675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.183630, 40.693996, 59.513317>,  <31.039408, 40.882828, 59.479500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.183630, 40.693996, 59.513317>,  <31.424000, 40.379280, 59.569675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183630, 40.693996, 59.513317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422166, 0.162733, -0.891793,
		-0.678726, -0.595380, -0.429946,
		-0.600922, 0.786791, -0.140898,
		31.003353, 40.930035, 59.471046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178650, 40.303753, 58.944801>,  <31.424000, 40.379280, 59.569675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178650, 40.303753, 58.944801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.098547, 40.691536, 59.001438>,  <31.050486, 40.924206, 59.035419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.098547, 40.691536, 59.001438>,  <31.178650, 40.303753, 58.944801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098547, 40.691536, 59.001438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346508, 0.205263, -0.915314,
		-0.916422, -0.134233, -0.377030,
		-0.200255, 0.969458, 0.141595,
		31.038471, 40.982372, 59.043919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971233, 40.446999, 58.249882>,  <31.178650, 40.303753, 58.944801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971233, 40.446999, 58.249882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.032570, 40.797054, 58.433456>,  <31.069372, 41.007088, 58.543602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.032570, 40.797054, 58.433456>,  <30.971233, 40.446999, 58.249882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032570, 40.797054, 58.433456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315451, 0.396779, -0.862007,
		-0.936470, 0.276955, -0.215219,
		0.153343, 0.875135, 0.458938,
		31.078573, 41.059593, 58.571136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630589, 40.963802, 57.911415>,  <30.971233, 40.446999, 58.249882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630589, 40.963802, 57.911415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.920443, 41.157650, 58.107391>,  <31.094355, 41.273960, 58.224979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.920443, 41.157650, 58.107391>,  <30.630589, 40.963802, 57.911415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920443, 41.157650, 58.107391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293233, 0.426547, -0.855612,
		-0.623632, 0.763675, 0.166984,
		0.724636, 0.484622, 0.489943,
		31.137833, 41.303036, 58.254375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514675, 41.615913, 57.711918>,  <30.630589, 40.963802, 57.911415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514675, 41.615913, 57.711918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880623, 41.629387, 57.872856>,  <31.100191, 41.637470, 57.969421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880623, 41.629387, 57.872856>,  <30.514675, 41.615913, 57.711918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880623, 41.629387, 57.872856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330644, 0.509403, -0.794470,
		-0.231717, 0.859869, 0.454899,
		0.914867, 0.033683, 0.402348,
		31.155083, 41.639492, 57.993561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772705, 42.293343, 57.593822>,  <30.514675, 41.615913, 57.711918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772705, 42.293343, 57.593822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107149, 42.086296, 57.666481>,  <31.307816, 41.962067, 57.710075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107149, 42.086296, 57.666481>,  <30.772705, 42.293343, 57.593822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107149, 42.086296, 57.666481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408385, 0.366257, -0.836109,
		0.366257, 0.773258, 0.517618,
		0.836109, -0.517618, 0.181643,
		31.357983, 41.931011, 57.720974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317186, 42.742130, 57.592216>,  <30.772705, 42.293343, 57.593822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317186, 42.742130, 57.592216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.508915, 42.400791, 57.510189>,  <31.623953, 42.195988, 57.460972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.508915, 42.400791, 57.510189>,  <31.317186, 42.742130, 57.592216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508915, 42.400791, 57.510189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483809, 0.451867, -0.749497,
		0.732242, 0.260038, 0.629446,
		0.479324, -0.853344, -0.205067,
		31.652712, 42.144787, 57.448669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912392, 42.992268, 57.308674>,  <31.317186, 42.742130, 57.592216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912392, 42.992268, 57.308674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.884291, 42.603485, 57.218910>,  <31.867430, 42.370216, 57.165051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.884291, 42.603485, 57.218910>,  <31.912392, 42.992268, 57.308674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884291, 42.603485, 57.218910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530288, 0.154155, -0.833685,
		0.844902, -0.177567, 0.504589,
		-0.070250, -0.971960, -0.224408,
		31.863216, 42.311897, 57.151588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566036, 42.811295, 57.077232>,  <31.912392, 42.992268, 57.308674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566036, 42.811295, 57.077232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335957, 42.524063, 56.920513>,  <32.197910, 42.351723, 56.826481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335957, 42.524063, 56.920513>,  <32.566036, 42.811295, 57.077232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335957, 42.524063, 56.920513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409741, 0.161625, -0.897769,
		0.707995, -0.676932, 0.201260,
		-0.575200, -0.718080, -0.391797,
		32.163395, 42.308640, 56.802975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003796, 42.436523, 56.659496>,  <32.566036, 42.811295, 57.077232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003796, 42.436523, 56.659496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.638908, 42.379852, 56.505726>,  <32.419975, 42.345848, 56.413464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.638908, 42.379852, 56.505726>,  <33.003796, 42.436523, 56.659496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638908, 42.379852, 56.505726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354990, 0.195118, -0.914282,
		0.204551, -0.970491, -0.127692,
		-0.912218, -0.141688, -0.384426,
		32.365242, 42.337349, 56.390400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109203, 41.991005, 56.099503>,  <33.003796, 42.436523, 56.659496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109203, 41.991005, 56.099503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760109, 42.169270, 56.019783>,  <32.550652, 42.276226, 55.971951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.760109, 42.169270, 56.019783>,  <33.109203, 41.991005, 56.099503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760109, 42.169270, 56.019783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218315, -0.008876, -0.975838,
		-0.436661, -0.895158, -0.089548,
		-0.872735, 0.445660, -0.199302,
		32.498287, 42.302967, 55.959991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784485, 41.606674, 55.478207>,  <33.109203, 41.991005, 56.099503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784485, 41.606674, 55.478207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.713940, 41.999771, 55.500500>,  <32.671612, 42.235630, 55.513874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.713940, 41.999771, 55.500500>,  <32.784485, 41.606674, 55.478207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713940, 41.999771, 55.500500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321404, 0.111009, -0.940413,
		-0.930375, -0.147937, -0.335437,
		-0.176359, 0.982747, 0.055733,
		32.661034, 42.294594, 55.517220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415298, 41.740314, 54.900509>,  <32.784485, 41.606674, 55.478207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415298, 41.740314, 54.900509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.615181, 42.069374, 55.008980>,  <32.735111, 42.266811, 55.074062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.615181, 42.069374, 55.008980>,  <32.415298, 41.740314, 54.900509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615181, 42.069374, 55.008980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368450, 0.081458, -0.926072,
		-0.783923, 0.562683, -0.262400,
		0.499710, 0.822650, 0.271178,
		32.765095, 42.316170, 55.090332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473465, 42.131134, 54.273621>,  <32.415298, 41.740314, 54.900509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473465, 42.131134, 54.273621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.768887, 42.225971, 54.526070>,  <32.946140, 42.282871, 54.677540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.768887, 42.225971, 54.526070>,  <32.473465, 42.131134, 54.273621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768887, 42.225971, 54.526070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610761, 0.161116, -0.775250,
		-0.285489, 0.958034, -0.025813,
		0.738557, 0.237091, 0.631127,
		32.990452, 42.297100, 54.715408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716240, 42.769260, 54.148792>,  <32.473465, 42.131134, 54.273621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716240, 42.769260, 54.148792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006065, 42.559471, 54.327648>,  <33.179962, 42.433598, 54.434959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006065, 42.559471, 54.327648>,  <32.716240, 42.769260, 54.148792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006065, 42.559471, 54.327648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611023, 0.188707, -0.768791,
		0.318832, 0.830252, 0.457196,
		0.724567, -0.524472, 0.447138,
		33.223434, 42.402130, 54.461788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304913, 42.924030, 53.724766>,  <32.716240, 42.769260, 54.148792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304913, 42.924030, 53.724766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.474686, 42.631702, 53.938591>,  <33.576550, 42.456306, 54.066887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.474686, 42.631702, 53.938591>,  <33.304913, 42.924030, 53.724766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474686, 42.631702, 53.938591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774706, -0.012507, -0.632198,
		0.468707, 0.682458, 0.560861,
		0.424433, -0.730818, 0.534566,
		33.602016, 42.412457, 54.098961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070442, 43.074051, 53.655220>,  <33.304913, 42.924030, 53.724766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070442, 43.074051, 53.655220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.053654, 42.691967, 53.772396>,  <34.043579, 42.462715, 53.842701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.053654, 42.691967, 53.772396>,  <34.070442, 43.074051, 53.655220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053654, 42.691967, 53.772396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801765, -0.207154, -0.560589,
		0.596164, 0.211340, 0.774548,
		-0.041975, -0.955208, 0.292943,
		34.041061, 42.405403, 53.860279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734703, 42.913784, 53.712132>,  <34.070442, 43.074051, 53.655220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734703, 42.913784, 53.712132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.571873, 42.550339, 53.674774>,  <34.474174, 42.332272, 53.652359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.571873, 42.550339, 53.674774>,  <34.734703, 42.913784, 53.712132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571873, 42.550339, 53.674774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834054, -0.328082, -0.443526,
		0.372351, -0.258442, 0.891382,
		-0.407073, -0.908609, -0.093393,
		34.449749, 42.277756, 53.646755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310760, 42.443069, 53.772545>,  <34.734703, 42.913784, 53.712132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310760, 42.443069, 53.772545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020363, 42.225548, 53.604160>,  <34.846123, 42.095036, 53.503132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020363, 42.225548, 53.604160>,  <35.310760, 42.443069, 53.772545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020363, 42.225548, 53.604160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687700, -0.573538, -0.445110,
		0.000619, -0.612640, 0.790362,
		-0.725995, -0.543807, -0.420958,
		34.802563, 42.062405, 53.477875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425835, 41.795109, 53.809414>,  <35.310760, 42.443069, 53.772545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425835, 41.795109, 53.809414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.169632, 41.787895, 53.502316>,  <35.015911, 41.783566, 53.318058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.169632, 41.787895, 53.502316>,  <35.425835, 41.795109, 53.809414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169632, 41.787895, 53.502316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678837, -0.480745, -0.555036,
		-0.359077, -0.876675, 0.320164,
		-0.640503, -0.018038, -0.767744,
		34.977482, 41.782482, 53.271992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633617, 41.164246, 53.464920>,  <35.425835, 41.795109, 53.809414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633617, 41.164246, 53.464920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.406261, 41.367500, 53.206081>,  <35.269848, 41.489452, 53.050777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.406261, 41.367500, 53.206081>,  <35.633617, 41.164246, 53.464920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406261, 41.367500, 53.206081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504414, -0.406136, -0.761985,
		-0.650001, -0.759506, -0.025469,
		-0.568388, 0.508138, -0.647094,
		35.235744, 41.519943, 53.011951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430923, 40.637394, 53.072224>,  <35.633617, 41.164246, 53.464920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430923, 40.637394, 53.072224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.402489, 40.991352, 52.888088>,  <35.385429, 41.203728, 52.777607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.402489, 40.991352, 52.888088>,  <35.430923, 40.637394, 53.072224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402489, 40.991352, 52.888088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363458, -0.406802, -0.838100,
		-0.928895, -0.226889, -0.292704,
		-0.071083, 0.884892, -0.460340,
		35.381165, 41.256821, 52.749985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040745, 40.613747, 52.460838>,  <35.430923, 40.637394, 53.072224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040745, 40.613747, 52.460838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261230, 40.933685, 52.365837>,  <35.393520, 41.125648, 52.308834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261230, 40.933685, 52.365837>,  <35.040745, 40.613747, 52.460838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261230, 40.933685, 52.365837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423345, -0.513398, -0.746459,
		-0.718990, 0.310908, -0.621602,
		0.551210, 0.799849, -0.237507,
		35.426594, 41.173641, 52.294586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904274, 40.652145, 51.736324>,  <35.040745, 40.613747, 52.460838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904274, 40.652145, 51.736324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.230160, 40.878086, 51.788761>,  <35.425690, 41.013649, 51.820225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.230160, 40.878086, 51.788761>,  <34.904274, 40.652145, 51.736324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230160, 40.878086, 51.788761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488422, -0.546615, -0.680188,
		-0.312548, 0.618187, -0.721220,
		0.814714, 0.564851, 0.131093,
		35.474575, 41.047543, 51.828091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106678, 40.703049, 51.090931>,  <34.904274, 40.652145, 51.736324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106678, 40.703049, 51.090931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.419102, 40.809101, 51.317085>,  <35.606556, 40.872730, 51.452778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.419102, 40.809101, 51.317085>,  <35.106678, 40.703049, 51.090931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419102, 40.809101, 51.317085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580992, -0.640422, -0.502302,
		0.228911, 0.720810, -0.654242,
		0.781056, 0.265127, 0.565385,
		35.653419, 40.888638, 51.486702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519619, 41.189487, 50.709549>,  <35.106678, 40.703049, 51.090931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519619, 41.189487, 50.709549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.705826, 40.954353, 50.974197>,  <35.817551, 40.813274, 51.132988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.705826, 40.954353, 50.974197>,  <35.519619, 41.189487, 50.709549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705826, 40.954353, 50.974197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474582, -0.465203, -0.747234,
		0.747041, 0.661842, 0.062418,
		0.465514, -0.587837, 0.661623,
		35.845478, 40.778004, 51.172684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259045, 40.928196, 50.356216>,  <35.519619, 41.189487, 50.709549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259045, 40.928196, 50.356216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.227886, 40.738522, 50.707005>,  <36.209190, 40.624718, 50.917477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.227886, 40.738522, 50.707005>,  <36.259045, 40.928196, 50.356216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227886, 40.738522, 50.707005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554117, -0.751851, -0.357316,
		0.828787, 0.458111, 0.321320,
		-0.077894, -0.474188, 0.876971,
		36.204517, 40.596264, 50.970097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964203, 40.885094, 50.687954>,  <36.259045, 40.928196, 50.356216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964203, 40.885094, 50.687954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726753, 40.572887, 50.766338>,  <36.584282, 40.385563, 50.813370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726753, 40.572887, 50.766338>,  <36.964203, 40.885094, 50.687954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726753, 40.572887, 50.766338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699548, -0.620862, -0.353784,
		0.397798, -0.072933, 0.914570,
		-0.593624, -0.780520, 0.195957,
		36.548668, 40.338730, 50.825127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375591, 40.457649, 50.923347>,  <36.964203, 40.885094, 50.687954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375591, 40.457649, 50.923347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.064423, 40.222950, 50.833408>,  <36.877720, 40.082130, 50.779446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.064423, 40.222950, 50.833408>,  <37.375591, 40.457649, 50.923347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064423, 40.222950, 50.833408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628165, -0.735036, -0.255206,
		-0.015527, -0.339771, 0.940380,
		-0.777925, -0.586751, -0.224846,
		36.831043, 40.046925, 50.765953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590191, 39.688671, 51.066875>,  <37.375591, 40.457649, 50.923347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590191, 39.688671, 51.066875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.271191, 39.691364, 50.825565>,  <37.079788, 39.692982, 50.680779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.271191, 39.691364, 50.825565>,  <37.590191, 39.688671, 51.066875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271191, 39.691364, 50.825565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327794, -0.834634, -0.442648,
		-0.506496, -0.550764, 0.663417,
		-0.797504, 0.006735, -0.603276,
		37.031940, 39.693386, 50.644581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513634, 39.036495, 50.947762>,  <37.590191, 39.688671, 51.066875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513634, 39.036495, 50.947762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.292980, 39.211685, 50.663822>,  <37.160587, 39.316799, 50.493458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.292980, 39.211685, 50.663822>,  <37.513634, 39.036495, 50.947762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292980, 39.211685, 50.663822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175614, -0.770982, -0.612166,
		-0.815389, -0.462350, 0.348386,
		-0.551634, 0.437972, -0.709845,
		37.127491, 39.343079, 50.450867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195606, 38.540108, 50.782940>,  <37.513634, 39.036495, 50.947762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195606, 38.540108, 50.782940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.179340, 38.794540, 50.474720>,  <37.169579, 38.947201, 50.289787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.179340, 38.794540, 50.474720>,  <37.195606, 38.540108, 50.782940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179340, 38.794540, 50.474720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295641, -0.728996, -0.617383,
		-0.954433, -0.252914, -0.158405,
		-0.040669, 0.636081, -0.770549,
		37.167141, 38.985363, 50.243557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858284, 38.081062, 50.204212>,  <37.195606, 38.540108, 50.782940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858284, 38.081062, 50.204212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.018669, 38.402599, 50.028450>,  <37.114899, 38.595520, 49.922993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.018669, 38.402599, 50.028450>,  <36.858284, 38.081062, 50.204212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018669, 38.402599, 50.028450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287729, -0.565877, -0.772655,
		-0.869738, 0.183375, -0.458181,
		0.400960, 0.803839, -0.439402,
		37.138958, 38.643749, 49.896629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799961, 37.960743, 49.482937>,  <36.858284, 38.081062, 50.204212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799961, 37.960743, 49.482937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.111778, 38.210121, 49.507019>,  <37.298870, 38.359749, 49.521469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.111778, 38.210121, 49.507019>,  <36.799961, 37.960743, 49.482937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111778, 38.210121, 49.507019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460807, -0.505753, -0.729294,
		-0.424224, 0.596262, -0.681546,
		0.779545, 0.623446, 0.060209,
		37.345642, 38.397156, 49.525082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971340, 38.246452, 48.853565>,  <36.799961, 37.960743, 49.482937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971340, 38.246452, 48.853565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.305134, 38.242184, 49.073936>,  <37.505409, 38.239624, 49.206158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.305134, 38.242184, 49.073936>,  <36.971340, 38.246452, 48.853565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305134, 38.242184, 49.073936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433130, -0.605354, -0.667791,
		0.340631, 0.795885, -0.500538,
		0.834487, -0.010672, 0.550924,
		37.555481, 38.238983, 49.239212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272671, 38.034267, 48.654030>,  <36.971340, 38.246452, 48.853565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272671, 38.034267, 48.654030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122849, 38.317562, 48.414661>,  <36.032955, 38.487537, 48.271042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122849, 38.317562, 48.414661>,  <36.272671, 38.034267, 48.654030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122849, 38.317562, 48.414661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789361, 0.095027, 0.606531,
		0.486434, 0.699550, 0.523462,
		-0.374556, 0.708237, -0.598422,
		36.010483, 38.530033, 48.235134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063385, 38.667583, 49.011574>,  <36.272671, 38.034267, 48.654030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063385, 38.667583, 49.011574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839756, 38.628391, 48.682251>,  <35.705578, 38.604874, 48.484657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839756, 38.628391, 48.682251>,  <36.063385, 38.667583, 49.011574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839756, 38.628391, 48.682251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799619, 0.326239, 0.504160,
		0.219196, 0.940195, -0.260740,
		-0.559072, -0.097983, -0.823309,
		35.672035, 38.598995, 48.435257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607265, 39.284775, 48.860714>,  <36.063385, 38.667583, 49.011574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607265, 39.284775, 48.860714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418449, 38.978264, 48.686359>,  <35.305161, 38.794357, 48.581749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418449, 38.978264, 48.686359>,  <35.607265, 39.284775, 48.860714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418449, 38.978264, 48.686359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871970, 0.333031, 0.358830,
		-0.129802, 0.549458, -0.825377,
		-0.472038, -0.766280, -0.435883,
		35.276836, 38.748379, 48.555595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034836, 39.628746, 48.636173>,  <35.607265, 39.284775, 48.860714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034836, 39.628746, 48.636173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.922646, 39.245564, 48.611988>,  <34.855331, 39.015656, 48.597477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.922646, 39.245564, 48.611988>,  <35.034836, 39.628746, 48.636173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922646, 39.245564, 48.611988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926686, 0.253823, 0.277176,
		-0.250176, 0.133768, -0.958915,
		-0.280472, -0.957956, -0.060461,
		34.838505, 38.958176, 48.593849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515121, 39.469978, 48.073833>,  <35.034836, 39.628746, 48.636173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515121, 39.469978, 48.073833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.479370, 39.211540, 48.377037>,  <34.457920, 39.056477, 48.558960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.479370, 39.211540, 48.377037>,  <34.515121, 39.469978, 48.073833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479370, 39.211540, 48.377037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848381, 0.448088, 0.281898,
		-0.521787, -0.617887, -0.588179,
		-0.089375, -0.646091, 0.758010,
		34.452557, 39.017712, 48.604439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846199, 39.288239, 47.971191>,  <34.515121, 39.469978, 48.073833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846199, 39.288239, 47.971191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.927166, 39.162708, 48.342251>,  <33.975746, 39.087391, 48.564888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.927166, 39.162708, 48.342251>,  <33.846199, 39.288239, 47.971191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927166, 39.162708, 48.342251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962155, 0.112739, 0.248088,
		-0.182440, -0.942762, -0.279132,
		0.202419, -0.313829, 0.927652,
		33.987892, 39.068562, 48.620548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329456, 38.877438, 48.131470>,  <33.846199, 39.288239, 47.971191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329456, 38.877438, 48.131470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.491180, 38.990376, 48.479450>,  <33.588215, 39.058136, 48.688240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.491180, 38.990376, 48.479450>,  <33.329456, 38.877438, 48.131470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491180, 38.990376, 48.479450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908367, 0.234995, 0.345901,
		-0.106772, -0.930086, 0.351481,
		0.404314, 0.282341, 0.869951,
		33.612476, 39.075077, 48.740437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777008, 38.798195, 48.640682>,  <33.329456, 38.877438, 48.131470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777008, 38.798195, 48.640682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.046032, 39.026695, 48.828869>,  <33.207447, 39.163795, 48.941780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.046032, 39.026695, 48.828869>,  <32.777008, 38.798195, 48.640682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046032, 39.026695, 48.828869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740043, 0.518833, 0.427959,
		0.000377, -0.635993, 0.771694,
		0.672559, 0.571248, 0.470467,
		33.247799, 39.198071, 48.970009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634079, 38.608402, 49.270397>,  <32.777008, 38.798195, 48.640682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634079, 38.608402, 49.270397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.811291, 38.966625, 49.253937>,  <32.917618, 39.181561, 49.244061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.811291, 38.966625, 49.253937>,  <32.634079, 38.608402, 49.270397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811291, 38.966625, 49.253937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735377, 0.389279, 0.554691,
		0.512779, -0.215484, 0.831038,
		0.443033, 0.895560, -0.041152,
		32.944202, 39.235294, 49.241592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618198, 38.844418, 49.931305>,  <32.634079, 38.608402, 49.270397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618198, 38.844418, 49.931305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.718884, 39.189190, 49.755253>,  <32.779293, 39.396053, 49.649620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.718884, 39.189190, 49.755253>,  <32.618198, 38.844418, 49.931305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718884, 39.189190, 49.755253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686378, 0.479600, 0.546689,
		0.682296, 0.164489, 0.712331,
		0.251709, 0.861932, -0.440131,
		32.794395, 39.447769, 49.623215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730961, 39.401535, 50.486755>,  <32.618198, 38.844418, 49.931305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730961, 39.401535, 50.486755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.646900, 39.586342, 50.142109>,  <32.596462, 39.697227, 49.935322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.646900, 39.586342, 50.142109>,  <32.730961, 39.401535, 50.486755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646900, 39.586342, 50.142109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671025, 0.572773, 0.470804,
		0.711028, 0.677105, 0.189652,
		-0.210156, 0.462016, -0.861612,
		32.583855, 39.724945, 49.883625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733978, 40.123127, 50.595207>,  <32.730961, 39.401535, 50.486755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733978, 40.123127, 50.595207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514091, 40.123913, 50.261066>,  <32.382160, 40.124386, 50.060581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514091, 40.123913, 50.261066>,  <32.733978, 40.123127, 50.595207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514091, 40.123913, 50.261066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618848, 0.670739, 0.408824,
		0.561106, 0.741691, -0.367498,
		-0.549716, 0.001969, -0.835349,
		32.349178, 40.124504, 50.010460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608063, 40.848206, 50.484180>,  <32.733978, 40.123127, 50.595207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608063, 40.848206, 50.484180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.329987, 40.629856, 50.297108>,  <32.163139, 40.498844, 50.184864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.329987, 40.629856, 50.297108>,  <32.608063, 40.848206, 50.484180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329987, 40.629856, 50.297108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716996, 0.572968, 0.397019,
		0.051244, 0.611331, -0.789714,
		-0.695191, -0.545877, -0.467684,
		32.121429, 40.466095, 50.156803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138416, 41.349297, 50.148262>,  <32.608063, 40.848206, 50.484180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138416, 41.349297, 50.148262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.946800, 41.004551, 50.214851>,  <31.831831, 40.797703, 50.254807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.946800, 41.004551, 50.214851>,  <32.138416, 41.349297, 50.148262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946800, 41.004551, 50.214851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708970, 0.491708, 0.505553,
		-0.517575, 0.124152, -0.846583,
		-0.479037, -0.861863, 0.166476,
		31.803089, 40.745991, 50.264793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521147, 41.543610, 50.071419>,  <32.138416, 41.349297, 50.148262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521147, 41.543610, 50.071419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.495365, 41.203972, 50.281132>,  <31.479897, 41.000187, 50.406960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.495365, 41.203972, 50.281132>,  <31.521147, 41.543610, 50.071419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495365, 41.203972, 50.281132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732140, 0.397236, 0.553330,
		-0.678098, -0.348187, -0.647263,
		-0.064454, -0.849099, 0.524287,
		31.476028, 40.949242, 50.438419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902189, 41.660828, 50.397980>,  <31.521147, 41.543610, 50.071419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902189, 41.660828, 50.397980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.060129, 41.340214, 50.577595>,  <31.154894, 41.147846, 50.685364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.060129, 41.340214, 50.577595>,  <30.902189, 41.660828, 50.397980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060129, 41.340214, 50.577595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487996, 0.231136, 0.841687,
		-0.778431, -0.551467, -0.299883,
		0.394849, -0.801536, 0.449037,
		31.178583, 41.099754, 50.712307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328732, 41.224167, 50.676838>,  <30.902189, 41.660828, 50.397980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328732, 41.224167, 50.676838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664494, 41.150330, 50.881317>,  <30.865952, 41.106026, 51.004005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664494, 41.150330, 50.881317>,  <30.328732, 41.224167, 50.676838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664494, 41.150330, 50.881317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460032, 0.259561, 0.849117,
		-0.289430, -0.947920, 0.132958,
		0.839405, -0.184595, 0.511198,
		30.916315, 41.094952, 51.034676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054440, 40.964680, 51.254803>,  <30.328732, 41.224167, 50.676838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054440, 40.964680, 51.254803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.435293, 41.030270, 51.357994>,  <30.663805, 41.069622, 51.419907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.435293, 41.030270, 51.357994>,  <30.054440, 40.964680, 51.254803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435293, 41.030270, 51.357994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289673, 0.214502, 0.932780,
		0.097612, -0.962862, 0.251733,
		0.952135, 0.163971, 0.257976,
		30.720934, 41.079460, 51.435387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147362, 40.599548, 51.892300>,  <30.054440, 40.964680, 51.254803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147362, 40.599548, 51.892300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.420986, 40.890594, 51.871727>,  <30.585159, 41.065220, 51.859383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.420986, 40.890594, 51.871727>,  <30.147362, 40.599548, 51.892300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420986, 40.890594, 51.871727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146111, 0.205760, 0.967633,
		0.714644, -0.654404, 0.247064,
		0.684058, 0.727612, -0.051430,
		30.626204, 41.108879, 51.856297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519255, 40.556660, 52.521656>,  <30.147362, 40.599548, 51.892300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519255, 40.556660, 52.521656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.586329, 40.932117, 52.401108>,  <30.626574, 41.157394, 52.328781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.586329, 40.932117, 52.401108>,  <30.519255, 40.556660, 52.521656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586329, 40.932117, 52.401108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192936, 0.331029, 0.923686,
		0.966777, -0.096743, 0.236607,
		0.167684, 0.938648, -0.301366,
		30.636633, 41.213711, 52.310699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940491, 40.883595, 53.089321>,  <30.519255, 40.556660, 52.521656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940491, 40.883595, 53.089321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.775713, 41.184624, 52.883820>,  <30.676847, 41.365242, 52.760521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.775713, 41.184624, 52.883820>,  <30.940491, 40.883595, 53.089321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775713, 41.184624, 52.883820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162366, 0.494166, 0.854071,
		0.896627, 0.435245, -0.081376,
		-0.411943, 0.752570, -0.513751,
		30.652130, 41.410397, 52.729694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331579, 41.426640, 53.325611>,  <30.940491, 40.883595, 53.089321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331579, 41.426640, 53.325611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.997404, 41.585213, 53.173359>,  <30.796898, 41.680355, 53.082008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.997404, 41.585213, 53.173359>,  <31.331579, 41.426640, 53.325611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997404, 41.585213, 53.173359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165928, 0.478318, 0.862369,
		0.523935, 0.783615, -0.333826,
		-0.835440, 0.396434, -0.380631,
		30.746773, 41.704144, 53.059170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270514, 42.117386, 53.569801>,  <31.331579, 41.426640, 53.325611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270514, 42.117386, 53.569801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.893757, 42.026180, 53.471134>,  <30.667702, 41.971455, 53.411934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.893757, 42.026180, 53.471134>,  <31.270514, 42.117386, 53.569801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893757, 42.026180, 53.471134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327761, 0.463041, 0.823508,
		-0.073556, 0.856505, -0.510870,
		-0.941893, -0.228018, -0.246670,
		30.611189, 41.957775, 53.397133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983028, 42.881908, 53.399155>,  <31.270514, 42.117386, 53.569801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983028, 42.881908, 53.399155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.701859, 42.612892, 53.491745>,  <30.533155, 42.451481, 53.547298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.701859, 42.612892, 53.491745>,  <30.983028, 42.881908, 53.399155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701859, 42.612892, 53.491745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244352, 0.533982, 0.809417,
		-0.667972, 0.512398, -0.539687,
		-0.702926, -0.672542, 0.231479,
		30.490980, 42.411129, 53.561188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390459, 43.280445, 53.846844>,  <30.983028, 42.881908, 53.399155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390459, 43.280445, 53.846844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.275324, 42.902290, 53.908016>,  <30.206244, 42.675396, 53.944721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.275324, 42.902290, 53.908016>,  <30.390459, 43.280445, 53.846844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275324, 42.902290, 53.908016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426277, 0.269474, 0.863523,
		-0.857577, 0.183362, -0.480563,
		-0.287837, -0.945390, 0.152932,
		30.188972, 42.618675, 53.953896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652075, 43.287937, 54.120640>,  <30.390459, 43.280445, 53.846844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652075, 43.287937, 54.120640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.774780, 42.917458, 54.208324>,  <29.848404, 42.695171, 54.260937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.774780, 42.917458, 54.208324>,  <29.652075, 43.287937, 54.120640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774780, 42.917458, 54.208324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478900, 0.048838, 0.876510,
		-0.822528, -0.373861, -0.428575,
		0.306762, -0.926198, 0.219212,
		29.866810, 42.639599, 54.274090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156788, 43.031746, 54.502026>,  <29.652075, 43.287937, 54.120640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156788, 43.031746, 54.502026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.445185, 42.772663, 54.600533>,  <29.618223, 42.617214, 54.659637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.445185, 42.772663, 54.600533>,  <29.156788, 43.031746, 54.502026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445185, 42.772663, 54.600533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490437, -0.225900, 0.841690,
		-0.489534, -0.727631, -0.480530,
		0.720991, -0.647705, 0.246271,
		29.661482, 42.578350, 54.674416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842934, 42.327702, 54.675114>,  <29.156788, 43.031746, 54.502026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842934, 42.327702, 54.675114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.194862, 42.396816, 54.852226>,  <29.406019, 42.438286, 54.958496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.194862, 42.396816, 54.852226>,  <28.842934, 42.327702, 54.675114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194862, 42.396816, 54.852226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418499, -0.160015, 0.894010,
		0.225328, -0.971874, -0.068473,
		0.879822, 0.172790, 0.442784,
		29.458809, 42.448654, 54.985062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894793, 41.739498, 55.124733>,  <28.842934, 42.327702, 54.675114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894793, 41.739498, 55.124733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.183077, 41.975697, 55.270000>,  <29.356049, 42.117416, 55.357162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.183077, 41.975697, 55.270000>,  <28.894793, 41.739498, 55.124733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183077, 41.975697, 55.270000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173871, -0.353159, 0.919264,
		0.671076, -0.725670, -0.151856,
		0.720712, 0.590493, 0.363170,
		29.399290, 42.152843, 55.378952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309267, 41.363224, 55.616562>,  <28.894793, 41.739498, 55.124733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309267, 41.363224, 55.616562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.356943, 41.745392, 55.724613>,  <29.385550, 41.974693, 55.789444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.356943, 41.745392, 55.724613>,  <29.309267, 41.363224, 55.616562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356943, 41.745392, 55.724613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123656, -0.255665, 0.958825,
		0.985141, -0.147687, 0.087670,
		0.119192, 0.955418, 0.270128,
		29.392700, 42.032017, 55.805653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727795, 41.286728, 56.185291>,  <29.309267, 41.363224, 55.616562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727795, 41.286728, 56.185291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.557457, 41.647503, 56.214039>,  <29.455256, 41.863968, 56.231289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.557457, 41.647503, 56.214039>,  <29.727795, 41.286728, 56.185291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557457, 41.647503, 56.214039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307402, -0.218928, 0.926053,
		0.850977, 0.372261, 0.370487,
		-0.425843, 0.901938, 0.071869,
		29.429705, 41.918083, 56.235600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885166, 41.469532, 56.863800>,  <29.727795, 41.286728, 56.185291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885166, 41.469532, 56.863800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.591469, 41.718712, 56.755859>,  <29.415251, 41.868221, 56.691093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.591469, 41.718712, 56.755859>,  <29.885166, 41.469532, 56.863800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591469, 41.718712, 56.755859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398787, -0.074082, 0.914046,
		0.549416, 0.778744, 0.302819,
		-0.734242, 0.622952, -0.269851,
		29.371197, 41.905598, 56.674904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857677, 41.975140, 57.373970>,  <29.885166, 41.469532, 56.863800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857677, 41.975140, 57.373970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.487064, 41.980576, 57.223579>,  <29.264696, 41.983837, 57.133347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.487064, 41.980576, 57.223579>,  <29.857677, 41.975140, 57.373970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487064, 41.980576, 57.223579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373715, -0.148339, 0.915605,
		-0.043330, 0.988843, 0.142519,
		-0.926531, 0.013588, -0.375973,
		29.209105, 41.984653, 57.110786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535364, 42.413834, 57.814522>,  <29.857677, 41.975140, 57.373970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535364, 42.413834, 57.814522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.260706, 42.189686, 57.629265>,  <29.095911, 42.055195, 57.518108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.260706, 42.189686, 57.629265>,  <29.535364, 42.413834, 57.814522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260706, 42.189686, 57.629265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483052, -0.124428, 0.866706,
		-0.543306, 0.818841, -0.185252,
		-0.686644, -0.560373, -0.463145,
		29.054712, 42.021572, 57.490322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029306, 42.668095, 58.136700>,  <29.535364, 42.413834, 57.814522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029306, 42.668095, 58.136700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.851057, 42.343636, 57.985195>,  <28.744106, 42.148960, 57.894291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.851057, 42.343636, 57.985195>,  <29.029306, 42.668095, 58.136700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851057, 42.343636, 57.985195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608428, -0.035934, 0.792795,
		-0.656683, 0.583738, -0.477512,
		-0.445625, -0.811147, -0.378760,
		28.717369, 42.100292, 57.871567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280598, 42.769817, 58.177902>,  <29.029306, 42.668095, 58.136700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280598, 42.769817, 58.177902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.297693, 42.371407, 58.146633>,  <28.307951, 42.132362, 58.127872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.297693, 42.371407, 58.146633>,  <28.280598, 42.769817, 58.177902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297693, 42.371407, 58.146633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758710, -0.083262, 0.646086,
		-0.650025, 0.031693, -0.759252,
		0.042740, -0.996024, -0.078168,
		28.310514, 42.072601, 58.123184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550076, 42.483406, 58.167484>,  <28.280598, 42.769817, 58.177902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550076, 42.483406, 58.167484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.750702, 42.153824, 58.272957>,  <27.871077, 41.956074, 58.336239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.750702, 42.153824, 58.272957>,  <27.550076, 42.483406, 58.167484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750702, 42.153824, 58.272957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670423, -0.177556, 0.720421,
		-0.546778, -0.538116, -0.641456,
		0.501564, -0.823957, 0.263681,
		27.901171, 41.906635, 58.352062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064522, 41.905785, 58.230698>,  <27.550076, 42.483406, 58.167484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064522, 41.905785, 58.230698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.369732, 41.770054, 58.450752>,  <27.552858, 41.688614, 58.582783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.369732, 41.770054, 58.450752>,  <27.064522, 41.905785, 58.230698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369732, 41.770054, 58.450752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624413, -0.167028, 0.763027,
		-0.167028, -0.925721, -0.339327,
		-0.763027, 0.339327, -0.550133,
		27.598640, 41.668255, 58.615791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703188, 41.374683, 58.614285>,  <27.064522, 41.905785, 58.230698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703188, 41.374683, 58.614285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.055006, 41.408443, 58.801590>,  <27.266098, 41.428699, 58.913975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.055006, 41.408443, 58.801590>,  <26.703188, 41.374683, 58.614285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055006, 41.408443, 58.801590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427119, -0.293635, 0.855189,
		0.209680, -0.952184, -0.222215,
		0.879547, 0.084404, 0.468265,
		27.318871, 41.433765, 58.942070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786913, 40.596275, 58.808178>,  <26.703188, 41.374683, 58.614285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786913, 40.596275, 58.808178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.739143, 40.211304, 58.905720>,  <26.710482, 39.980320, 58.964245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.739143, 40.211304, 58.905720>,  <26.786913, 40.596275, 58.808178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739143, 40.211304, 58.905720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475531, -0.271058, -0.836898,
		0.871555, 0.016014, 0.490036,
		-0.119426, -0.962430, 0.243857,
		26.703316, 39.922573, 58.978878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425926, 40.246052, 58.639370>,  <26.786913, 40.596275, 58.808178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425926, 40.246052, 58.639370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.145912, 39.960419, 58.641972>,  <26.977903, 39.789040, 58.643532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.145912, 39.960419, 58.641972>,  <27.425926, 40.246052, 58.639370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145912, 39.960419, 58.641972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352684, -0.353642, -0.866344,
		0.620940, -0.604175, 0.499406,
		-0.700034, -0.714080, 0.006508,
		26.935902, 39.746193, 58.643925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712183, 39.544918, 58.686481>,  <27.425926, 40.246052, 58.639370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712183, 39.544918, 58.686481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.354296, 39.501968, 58.513069>,  <27.139565, 39.476196, 58.409019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.354296, 39.501968, 58.513069>,  <27.712183, 39.544918, 58.686481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354296, 39.501968, 58.513069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444605, -0.306551, -0.841637,
		-0.042529, -0.945778, 0.322016,
		-0.894716, -0.107376, -0.433535,
		27.085880, 39.469757, 58.383007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893030, 39.084206, 58.175579>,  <27.712183, 39.544918, 58.686481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893030, 39.084206, 58.175579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.525181, 39.204525, 58.074539>,  <27.304470, 39.276718, 58.013916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.525181, 39.204525, 58.074539>,  <27.893030, 39.084206, 58.175579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525181, 39.204525, 58.074539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219590, -0.139504, -0.965567,
		-0.325685, -0.943428, 0.062237,
		-0.919625, 0.300804, -0.252602,
		27.249294, 39.294765, 57.998760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502302, 38.581612, 57.653984>,  <27.893030, 39.084206, 58.175579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502302, 38.581612, 57.653984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.330219, 38.938278, 57.597630>,  <27.226971, 39.152279, 57.563816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.330219, 38.938278, 57.597630>,  <27.502302, 38.581612, 57.653984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330219, 38.938278, 57.597630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116474, -0.099933, -0.988153,
		-0.895185, -0.441519, -0.060864,
		-0.430206, 0.891669, -0.140884,
		27.201157, 39.205780, 57.555363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085979, 38.448643, 57.210030>,  <27.502302, 38.581612, 57.653984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085979, 38.448643, 57.210030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.153339, 38.841103, 57.172112>,  <27.193756, 39.076580, 57.149361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.153339, 38.841103, 57.172112>,  <27.085979, 38.448643, 57.210030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153339, 38.841103, 57.172112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013815, -0.098509, -0.995040,
		-0.985622, 0.166256, -0.030143,
		0.168401, 0.981150, -0.094796,
		27.203859, 39.135448, 57.143673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727552, 38.735935, 56.581249>,  <27.085979, 38.448643, 57.210030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727552, 38.735935, 56.581249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.996296, 39.027149, 56.635757>,  <27.157541, 39.201878, 56.668461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.996296, 39.027149, 56.635757>,  <26.727552, 38.735935, 56.581249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996296, 39.027149, 56.635757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230071, -0.030253, -0.972704,
		-0.704040, 0.684871, -0.187825,
		0.671859, 0.728036, 0.136270,
		27.197853, 39.245560, 56.676640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656771, 39.059975, 55.978779>,  <26.727552, 38.735935, 56.581249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656771, 39.059975, 55.978779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.990870, 39.193790, 56.153336>,  <27.191330, 39.274078, 56.258072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.990870, 39.193790, 56.153336>,  <26.656771, 39.059975, 55.978779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990870, 39.193790, 56.153336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442304, 0.062757, -0.894667,
		-0.326689, 0.940289, -0.095551,
		0.835249, 0.334541, 0.436396,
		27.241444, 39.294151, 56.284256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970152, 39.596863, 55.448704>,  <26.656771, 39.059975, 55.978779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970152, 39.596863, 55.448704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.267584, 39.509678, 55.701553>,  <27.446043, 39.457367, 55.853264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.267584, 39.509678, 55.701553>,  <26.970152, 39.596863, 55.448704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267584, 39.509678, 55.701553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655575, 0.051633, -0.753362,
		0.131565, 0.974591, 0.181284,
		0.743580, -0.217961, 0.632124,
		27.490658, 39.444290, 55.891190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550232, 39.960159, 55.283314>,  <26.970152, 39.596863, 55.448704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550232, 39.960159, 55.283314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.736183, 39.699799, 55.523384>,  <27.847754, 39.543583, 55.667427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.736183, 39.699799, 55.523384>,  <27.550232, 39.960159, 55.283314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736183, 39.699799, 55.523384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827554, 0.078489, -0.555873,
		0.314712, 0.755091, 0.575146,
		0.464878, -0.650904, 0.600177,
		27.875647, 39.504528, 55.703438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150488, 40.300907, 55.335712>,  <27.550232, 39.960159, 55.283314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150488, 40.300907, 55.335712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.198771, 39.918133, 55.441322>,  <28.227739, 39.688469, 55.504688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.198771, 39.918133, 55.441322>,  <28.150488, 40.300907, 55.335712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198771, 39.918133, 55.441322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839095, -0.043759, -0.542222,
		0.530424, 0.286988, 0.797677,
		0.120706, -0.956934, 0.264021,
		28.234982, 39.631054, 55.520527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924568, 40.135494, 55.413700>,  <28.150488, 40.300907, 55.335712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924568, 40.135494, 55.413700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.782166, 39.765572, 55.360035>,  <28.696724, 39.543617, 55.327835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.782166, 39.765572, 55.360035>,  <28.924568, 40.135494, 55.413700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782166, 39.765572, 55.360035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764323, -0.205562, -0.611191,
		0.537652, -0.320131, 0.780030,
		-0.356006, -0.924803, -0.134163,
		28.675364, 39.488132, 55.319786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449276, 39.690247, 55.527393>,  <28.924568, 40.135494, 55.413700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449276, 39.690247, 55.527393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.190243, 39.503658, 55.286381>,  <29.034822, 39.391705, 55.141773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.190243, 39.503658, 55.286381>,  <29.449276, 39.690247, 55.527393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190243, 39.503658, 55.286381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743309, -0.212667, -0.634242,
		0.167716, -0.858591, 0.484451,
		-0.647582, -0.466470, -0.602531,
		28.995968, 39.363716, 55.105621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736414, 39.017258, 55.322838>,  <29.449276, 39.690247, 55.527393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736414, 39.017258, 55.322838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.465677, 39.118847, 55.046467>,  <29.303234, 39.179802, 54.880646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.465677, 39.118847, 55.046467>,  <29.736414, 39.017258, 55.322838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465677, 39.118847, 55.046467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587528, -0.379105, -0.714905,
		-0.443504, -0.889817, 0.107376,
		-0.676842, 0.253977, -0.690927,
		29.262625, 39.195038, 54.839188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720528, 38.485558, 54.836685>,  <29.736414, 39.017258, 55.322838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720528, 38.485558, 54.836685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.530310, 38.773685, 54.634701>,  <29.416180, 38.946564, 54.513508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.530310, 38.773685, 54.634701>,  <29.720528, 38.485558, 54.836685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530310, 38.773685, 54.634701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329002, -0.386737, -0.861506,
		-0.815853, -0.575819, -0.053078,
		-0.475544, 0.720325, -0.504965,
		29.387646, 38.989784, 54.483212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354708, 38.158119, 54.285000>,  <29.720528, 38.485558, 54.836685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354708, 38.158119, 54.285000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.398666, 38.540966, 54.177776>,  <29.425041, 38.770672, 54.113441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.398666, 38.540966, 54.177776>,  <29.354708, 38.158119, 54.285000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398666, 38.540966, 54.177776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272440, -0.288374, -0.917942,
		-0.955876, 0.027850, -0.292448,
		0.109899, 0.957113, -0.268062,
		29.431637, 38.828098, 54.097359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126047, 38.218342, 53.641533>,  <29.354708, 38.158119, 54.285000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126047, 38.218342, 53.641533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.359894, 38.541714, 53.668850>,  <29.500202, 38.735737, 53.685242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.359894, 38.541714, 53.668850>,  <29.126047, 38.218342, 53.641533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359894, 38.541714, 53.668850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448181, -0.251642, -0.857794,
		-0.676281, 0.532088, -0.509437,
		0.584618, 0.808430, 0.068292,
		29.535278, 38.784241, 53.689339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954769, 38.581619, 53.138725>,  <29.126047, 38.218342, 53.641533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954769, 38.581619, 53.138725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.315435, 38.716908, 53.246510>,  <29.531836, 38.798080, 53.311180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.315435, 38.716908, 53.246510>,  <28.954769, 38.581619, 53.138725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315435, 38.716908, 53.246510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321829, -0.108631, -0.940545,
		-0.288837, 0.934777, -0.206796,
		0.901665, 0.338217, 0.269462,
		29.585936, 38.818371, 53.327347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185719, 39.036335, 52.542854>,  <28.954769, 38.581619, 53.138725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185719, 39.036335, 52.542854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.525928, 38.990143, 52.748093>,  <29.730055, 38.962429, 52.871235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.525928, 38.990143, 52.748093>,  <29.185719, 39.036335, 52.542854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525928, 38.990143, 52.748093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525905, 0.197216, -0.827363,
		-0.005646, 0.973535, 0.228470,
		0.850525, -0.115482, 0.513100,
		29.781086, 38.955498, 52.902023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563334, 39.528759, 52.245148>,  <29.185719, 39.036335, 52.542854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563334, 39.528759, 52.245148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.806040, 39.265327, 52.423187>,  <29.951664, 39.107269, 52.530010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.806040, 39.265327, 52.423187>,  <29.563334, 39.528759, 52.245148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806040, 39.265327, 52.423187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488132, -0.133220, -0.862543,
		0.627347, 0.740627, 0.240639,
		0.606765, -0.658577, 0.445099,
		29.988070, 39.067753, 52.556717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202032, 39.691059, 51.849133>,  <29.563334, 39.528759, 52.245148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202032, 39.691059, 51.849133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.269161, 39.342403, 52.033344>,  <30.309439, 39.133209, 52.143871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.269161, 39.342403, 52.033344>,  <30.202032, 39.691059, 51.849133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269161, 39.342403, 52.033344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575331, -0.292746, -0.763737,
		0.800519, 0.393128, 0.452350,
		0.167823, -0.871637, 0.460527,
		30.319508, 39.080914, 52.171501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954191, 39.689323, 51.882854>,  <30.202032, 39.691059, 51.849133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954191, 39.689323, 51.882854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.815359, 39.316948, 51.928276>,  <30.732059, 39.093525, 51.955528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.815359, 39.316948, 51.928276>,  <30.954191, 39.689323, 51.882854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815359, 39.316948, 51.928276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548125, -0.299609, -0.780893,
		0.760983, -0.208790, 0.614257,
		-0.347079, -0.930936, 0.113555,
		30.711235, 39.037666, 51.962341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524275, 39.246738, 51.800922>,  <30.954191, 39.689323, 51.882854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524275, 39.246738, 51.800922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.191525, 39.040154, 51.719688>,  <30.991875, 38.916203, 51.670948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.191525, 39.040154, 51.719688>,  <31.524275, 39.246738, 51.800922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191525, 39.040154, 51.719688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373998, -0.251358, -0.892717,
		0.410011, -0.818585, 0.402256,
		-0.831875, -0.516467, -0.203089,
		30.941961, 38.885212, 51.658760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756002, 38.724892, 51.368195>,  <31.524275, 39.246738, 51.800922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756002, 38.724892, 51.368195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.361549, 38.677162, 51.322063>,  <31.124878, 38.648525, 51.294384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.361549, 38.677162, 51.322063>,  <31.756002, 38.724892, 51.368195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361549, 38.677162, 51.322063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151205, -0.359717, -0.920728,
		0.068379, -0.925400, 0.372772,
		-0.986135, -0.119323, -0.115328,
		31.065708, 38.641365, 51.287464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625891, 38.104153, 51.063572>,  <31.756002, 38.724892, 51.368195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625891, 38.104153, 51.063572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.304050, 38.326015, 50.978745>,  <31.110947, 38.459133, 50.927849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.304050, 38.326015, 50.978745>,  <31.625891, 38.104153, 51.063572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304050, 38.326015, 50.978745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007550, -0.366656, -0.930326,
		-0.593767, -0.746941, 0.299199,
		-0.804602, 0.554655, -0.212069,
		31.062670, 38.492413, 50.915123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103642, 37.588802, 50.813850>,  <31.625891, 38.104153, 51.063572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103642, 37.588802, 50.813850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.028275, 37.960613, 50.687057>,  <30.983053, 38.183701, 50.610981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.028275, 37.960613, 50.687057>,  <31.103642, 37.588802, 50.813850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028275, 37.960613, 50.687057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000685, -0.322889, -0.946437,
		-0.982088, -0.178109, 0.061475,
		-0.188418, 0.929527, -0.316983,
		30.971748, 38.239471, 50.591961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455631, 37.451340, 50.459114>,  <31.103642, 37.588802, 50.813850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455631, 37.451340, 50.459114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.628239, 37.783146, 50.317303>,  <30.731802, 37.982231, 50.232216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.628239, 37.783146, 50.317303>,  <30.455631, 37.451340, 50.459114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628239, 37.783146, 50.317303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030793, -0.379228, -0.924790,
		-0.901579, 0.409980, -0.138100,
		0.431517, 0.829519, -0.354529,
		30.757694, 38.032001, 50.210945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033957, 37.649281, 49.811485>,  <30.455631, 37.451340, 50.459114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033957, 37.649281, 49.811485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.401682, 37.806683, 49.810257>,  <30.622318, 37.901123, 49.809521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.401682, 37.806683, 49.810257>,  <30.033957, 37.649281, 49.811485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401682, 37.806683, 49.810257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197753, -0.468704, -0.860936,
		-0.340224, 0.790865, -0.508705,
		0.919316, 0.393509, -0.003069,
		30.677477, 37.924736, 49.809338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079161, 37.822453, 49.159306>,  <30.033957, 37.649281, 49.811485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079161, 37.822453, 49.159306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.458086, 37.808506, 49.286667>,  <30.685442, 37.800140, 49.363083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.458086, 37.808506, 49.286667>,  <30.079161, 37.822453, 49.159306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458086, 37.808506, 49.286667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242503, -0.571369, -0.784047,
		0.209261, 0.819953, -0.532811,
		0.947313, -0.034862, 0.318406,
		30.742279, 37.798046, 49.382187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518225, 38.028965, 48.563946>,  <30.079161, 37.822453, 49.159306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518225, 38.028965, 48.563946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.722185, 37.798923, 48.819839>,  <30.844561, 37.660900, 48.973377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.722185, 37.798923, 48.819839>,  <30.518225, 38.028965, 48.563946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722185, 37.798923, 48.819839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393012, -0.505782, -0.767936,
		0.765207, 0.642994, -0.031877,
		0.509901, -0.575102, 0.639733,
		30.875156, 37.626392, 49.011761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258089, 38.001877, 48.263008>,  <30.518225, 38.028965, 48.563946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258089, 38.001877, 48.263008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.169065, 37.693798, 48.502094>,  <31.115652, 37.508949, 48.645546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.169065, 37.693798, 48.502094>,  <31.258089, 38.001877, 48.263008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169065, 37.693798, 48.502094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267737, -0.637803, -0.722166,
		0.937435, -0.000694, 0.348159,
		-0.222558, -0.770199, 0.597713,
		31.102299, 37.462738, 48.681408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672462, 37.532936, 48.107067>,  <31.258089, 38.001877, 48.263008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672462, 37.532936, 48.107067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.443323, 37.304523, 48.342274>,  <31.305840, 37.167477, 48.483398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.443323, 37.304523, 48.342274>,  <31.672462, 37.532936, 48.107067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443323, 37.304523, 48.342274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226770, -0.799803, -0.555779,
		0.787667, -0.185033, 0.587660,
		-0.572849, -0.571032, 0.588018,
		31.271469, 37.133213, 48.518681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107315, 36.994049, 48.383339>,  <31.672462, 37.532936, 48.107067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107315, 36.994049, 48.383339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.732805, 36.855343, 48.405773>,  <31.508101, 36.772118, 48.419235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.732805, 36.855343, 48.405773>,  <32.107315, 36.994049, 48.383339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732805, 36.855343, 48.405773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329003, -0.921608, -0.205901,
		0.123089, -0.174327, 0.976964,
		-0.936273, -0.346768, 0.056085,
		31.451923, 36.751312, 48.422600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243877, 36.396702, 48.623226>,  <32.107315, 36.994049, 48.383339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243877, 36.396702, 48.623226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.860830, 36.356880, 48.515118>,  <31.631001, 36.332989, 48.450253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.860830, 36.356880, 48.515118>,  <32.243877, 36.396702, 48.623226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860830, 36.356880, 48.515118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145360, -0.977142, -0.155124,
		-0.248656, -0.187837, 0.950204,
		-0.957623, -0.099549, -0.270276,
		31.573544, 36.327015, 48.434036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081528, 35.625084, 48.827465>,  <32.243877, 36.396702, 48.623226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081528, 35.625084, 48.827465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841551, 35.774052, 48.544235>,  <31.697565, 35.863434, 48.374298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841551, 35.774052, 48.544235>,  <32.081528, 35.625084, 48.827465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841551, 35.774052, 48.544235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052855, -0.864661, -0.499567,
		-0.798294, -0.337138, 0.499065,
		-0.599945, 0.372423, -0.708073,
		31.661568, 35.885780, 48.331814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546284, 35.052219, 48.706245>,  <32.081528, 35.625084, 48.827465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546284, 35.052219, 48.706245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.558884, 35.284393, 48.380768>,  <31.566442, 35.423698, 48.185482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.558884, 35.284393, 48.380768>,  <31.546284, 35.052219, 48.706245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558884, 35.284393, 48.380768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212701, -0.799344, -0.561968,
		-0.976610, -0.155373, -0.148637,
		0.031498, 0.580438, -0.813695,
		31.568333, 35.458527, 48.136658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234325, 34.718674, 48.186565>,  <31.546284, 35.052219, 48.706245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234325, 34.718674, 48.186565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.437094, 34.975494, 47.956505>,  <31.558754, 35.129585, 47.818470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.437094, 34.975494, 47.956505>,  <31.234325, 34.718674, 48.186565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437094, 34.975494, 47.956505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285607, -0.754649, -0.590705,
		-0.813303, 0.135172, -0.565921,
		0.506919, 0.642053, -0.575153,
		31.589169, 35.168110, 47.783958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101984, 34.460503, 47.476994>,  <31.234325, 34.718674, 48.186565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101984, 34.460503, 47.476994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.445311, 34.664547, 47.454796>,  <31.651306, 34.786976, 47.441479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.445311, 34.664547, 47.454796>,  <31.101984, 34.460503, 47.476994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445311, 34.664547, 47.454796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337603, -0.642845, -0.687586,
		-0.386419, 0.571432, -0.723979,
		0.858315, 0.510114, -0.055490,
		31.702805, 34.817581, 47.438148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318142, 34.428318, 46.700123>,  <31.101984, 34.460503, 47.476994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318142, 34.428318, 46.700123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.649570, 34.548038, 46.889393>,  <31.848427, 34.619869, 47.002953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.649570, 34.548038, 46.889393>,  <31.318142, 34.428318, 46.700123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649570, 34.548038, 46.889393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545103, -0.624158, -0.559723,
		0.127810, 0.721698, -0.680307,
		0.828569, 0.299299, 0.473173,
		31.898142, 34.637829, 47.031345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765923, 34.522846, 46.140247>,  <31.318142, 34.428318, 46.700123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765923, 34.522846, 46.140247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.987234, 34.445263, 46.464287>,  <32.120022, 34.398712, 46.658710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.987234, 34.445263, 46.464287>,  <31.765923, 34.522846, 46.140247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987234, 34.445263, 46.464287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487191, -0.713486, -0.503571,
		0.675668, 0.673288, -0.300259,
		0.553279, -0.193963, 0.810099,
		32.153217, 34.387074, 46.707317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522697, 34.425568, 45.938366>,  <31.765923, 34.522846, 46.140247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522697, 34.425568, 45.938366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.461296, 34.254295, 46.294590>,  <32.424458, 34.151531, 46.508324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.461296, 34.254295, 46.294590>,  <32.522697, 34.425568, 45.938366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461296, 34.254295, 46.294590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371121, -0.860247, -0.349635,
		0.915809, 0.276838, 0.290954,
		-0.153500, -0.428178, 0.890562,
		32.415245, 34.125843, 46.561760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162525, 34.051132, 46.102749>,  <32.522697, 34.425568, 45.938366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162525, 34.051132, 46.102749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.846397, 33.902840, 46.297871>,  <32.656723, 33.813862, 46.414944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.846397, 33.902840, 46.297871>,  <33.162525, 34.051132, 46.102749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846397, 33.902840, 46.297871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086275, -0.855565, -0.510456,
		0.606594, -0.361336, 0.708153,
		-0.790317, -0.370735, 0.487806,
		32.609303, 33.791618, 46.444214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326237, 33.425217, 46.367985>,  <33.162525, 34.051132, 46.102749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326237, 33.425217, 46.367985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.931442, 33.446106, 46.307148>,  <32.694565, 33.458641, 46.270645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.931442, 33.446106, 46.307148>,  <33.326237, 33.425217, 46.367985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931442, 33.446106, 46.307148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036208, -0.849323, -0.526630,
		-0.156677, -0.525283, 0.836379,
		-0.986986, 0.052227, -0.152089,
		32.635345, 33.461773, 46.261520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944817, 33.813801, 46.018089>,  <33.326237, 33.425217, 46.367985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944817, 33.813801, 46.018089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.789215, 34.088768, 45.772770>,  <33.695854, 34.253750, 45.625580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.789215, 34.088768, 45.772770>,  <33.944817, 33.813801, 46.018089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789215, 34.088768, 45.772770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901924, -0.148589, 0.405529,
		0.187640, 0.710897, 0.677803,
		-0.389003, 0.687420, -0.613294,
		33.672516, 34.294994, 45.588783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273422, 33.192509, 45.783844>,  <33.944817, 33.813801, 46.018089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273422, 33.192509, 45.783844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.553074, 32.906830, 45.770321>,  <34.720863, 32.735424, 45.762207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.553074, 32.906830, 45.770321>,  <34.273422, 33.192509, 45.783844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553074, 32.906830, 45.770321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548870, 0.505790, 0.665521,
		-0.458215, -0.483840, 0.745613,
		0.699129, -0.714196, -0.033805,
		34.762814, 32.692570, 45.760178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526150, 33.173435, 46.434448>,  <34.273422, 33.192509, 45.783844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526150, 33.173435, 46.434448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.816422, 32.983940, 46.234867>,  <34.990585, 32.870243, 46.115120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.816422, 32.983940, 46.234867>,  <34.526150, 33.173435, 46.434448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816422, 32.983940, 46.234867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678919, 0.375418, 0.630976,
		-0.111604, -0.796637, 0.594067,
		0.725682, -0.473742, -0.498953,
		35.034126, 32.841816, 46.085182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003826, 32.701942, 46.767166>,  <34.526150, 33.173435, 46.434448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003826, 32.701942, 46.767166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.197815, 32.872372, 46.461678>,  <35.314209, 32.974628, 46.278385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.197815, 32.872372, 46.461678>,  <35.003826, 32.701942, 46.767166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197815, 32.872372, 46.461678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799612, 0.137610, 0.584537,
		0.354148, -0.894164, -0.273952,
		0.484973, 0.426068, -0.763719,
		35.343307, 33.000191, 46.232563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797924, 32.473797, 46.695663>,  <35.003826, 32.701942, 46.767166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797924, 32.473797, 46.695663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.723438, 32.836697, 46.544811>,  <35.678745, 33.054436, 46.454300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.723438, 32.836697, 46.544811>,  <35.797924, 32.473797, 46.695663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723438, 32.836697, 46.544811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874453, 0.328043, 0.357378,
		0.447945, -0.263232, -0.854432,
		-0.186217, 0.907247, -0.377129,
		35.667572, 33.108871, 46.431671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306919, 32.688728, 46.137207>,  <35.797924, 32.473797, 46.695663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306919, 32.688728, 46.137207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154442, 33.008160, 46.323524>,  <36.062954, 33.199818, 46.435314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154442, 33.008160, 46.323524>,  <36.306919, 32.688728, 46.137207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154442, 33.008160, 46.323524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923388, 0.304242, 0.234074,
		0.045212, 0.519337, -0.853373,
		-0.381195, 0.798577, 0.465794,
		36.040085, 33.247734, 46.463264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769989, 33.197414, 45.974812>,  <36.306919, 32.688728, 46.137207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769989, 33.197414, 45.974812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.551384, 33.309605, 46.290447>,  <36.420219, 33.376919, 46.479828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.551384, 33.309605, 46.290447>,  <36.769989, 33.197414, 45.974812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551384, 33.309605, 46.290447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819209, 0.374637, 0.434216,
		-0.173835, 0.883732, -0.434511,
		-0.546515, 0.280473, 0.789086,
		36.387428, 33.393745, 46.527172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935547, 33.912994, 46.112911>,  <36.769989, 33.197414, 45.974812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935547, 33.912994, 46.112911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.780453, 33.778473, 46.456203>,  <36.687397, 33.697762, 46.662178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.780453, 33.778473, 46.456203>,  <36.935547, 33.912994, 46.112911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780453, 33.778473, 46.456203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729065, 0.457825, 0.508784,
		-0.564023, 0.822982, 0.067667,
		-0.387740, -0.336299, 0.858231,
		36.664131, 33.677582, 46.713673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017204, 34.460278, 46.511887>,  <36.935547, 33.912994, 46.112911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017204, 34.460278, 46.511887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.927395, 34.167728, 46.769470>,  <36.873508, 33.992199, 46.924019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.927395, 34.167728, 46.769470>,  <37.017204, 34.460278, 46.511887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927395, 34.167728, 46.769470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675043, 0.359853, 0.644067,
		-0.702784, 0.579307, 0.412914,
		-0.224524, -0.731375, 0.643956,
		36.860039, 33.948315, 46.962658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098709, 34.722061, 47.209679>,  <37.017204, 34.460278, 46.511887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098709, 34.722061, 47.209679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126221, 34.326485, 47.262245>,  <37.142727, 34.089138, 47.293785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126221, 34.326485, 47.262245>,  <37.098709, 34.722061, 47.209679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126221, 34.326485, 47.262245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770287, 0.136350, 0.622950,
		-0.633978, 0.058379, 0.771144,
		0.068778, -0.988939, 0.131412,
		37.146854, 34.029804, 47.301670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028828, 34.665066, 47.913113>,  <37.098709, 34.722061, 47.209679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028828, 34.665066, 47.913113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.173969, 34.303944, 47.820774>,  <37.261055, 34.087273, 47.765373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.173969, 34.303944, 47.820774>,  <37.028828, 34.665066, 47.913113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173969, 34.303944, 47.820774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710235, 0.107568, 0.695698,
		-0.603245, -0.416388, 0.680232,
		0.362851, -0.902801, -0.230844,
		37.282825, 34.033104, 47.751522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108757, 34.208847, 48.566635>,  <37.028828, 34.665066, 47.913113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108757, 34.208847, 48.566635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.373898, 34.054848, 48.309761>,  <37.532982, 33.962448, 48.155636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.373898, 34.054848, 48.309761>,  <37.108757, 34.208847, 48.566635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373898, 34.054848, 48.309761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728537, 0.133678, 0.671836,
		-0.172808, -0.913186, 0.369092,
		0.662851, -0.384996, -0.642189,
		37.572754, 33.939350, 48.117104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476879, 33.801689, 49.014446>,  <37.108757, 34.208847, 48.566635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476879, 33.801689, 49.014446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.715611, 33.802078, 48.693501>,  <37.858849, 33.802311, 48.500931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.715611, 33.802078, 48.693501>,  <37.476879, 33.801689, 49.014446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715611, 33.802078, 48.693501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802314, -0.012422, 0.596772,
		-0.009361, -0.999922, -0.008229,
		0.596828, 0.001016, -0.802368,
		37.894657, 33.802368, 48.452789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866299, 33.219276, 49.072144>,  <37.476879, 33.801689, 49.014446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866299, 33.219276, 49.072144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063122, 33.474453, 48.835194>,  <38.181217, 33.627560, 48.693024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063122, 33.474453, 48.835194>,  <37.866299, 33.219276, 49.072144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063122, 33.474453, 48.835194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852827, -0.216583, 0.475161,
		0.174826, -0.739001, -0.650625,
		0.492059, 0.637941, -0.592375,
		38.210739, 33.665836, 48.657482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488182, 32.884453, 49.000095>,  <37.866299, 33.219276, 49.072144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488182, 32.884453, 49.000095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.612171, 33.247807, 48.887848>,  <38.686565, 33.465820, 48.820499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.612171, 33.247807, 48.887848>,  <38.488182, 32.884453, 49.000095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612171, 33.247807, 48.887848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761682, -0.060627, 0.645109,
		0.568996, -0.413710, -0.710695,
		0.309975, 0.908388, -0.280619,
		38.705162, 33.520325, 48.803661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142776, 32.845863, 48.873535>,  <38.488182, 32.884453, 49.000095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142776, 32.845863, 48.873535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.127571, 33.238430, 48.948776>,  <39.118446, 33.473969, 48.993923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.127571, 33.238430, 48.948776>,  <39.142776, 32.845863, 48.873535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127571, 33.238430, 48.948776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790500, -0.085616, 0.606448,
		0.611280, 0.171754, -0.772552,
		-0.038017, 0.981413, 0.188107,
		39.116165, 33.532852, 49.005207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805004, 33.199532, 48.701569>,  <39.142776, 32.845863, 48.873535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805004, 33.199532, 48.701569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.606155, 33.387299, 48.993465>,  <39.486847, 33.499958, 49.168602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.606155, 33.387299, 48.993465>,  <39.805004, 33.199532, 48.701569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606155, 33.387299, 48.993465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817357, -0.028904, 0.575406,
		0.291195, 0.882505, -0.369309,
		-0.497124, 0.469413, 0.729739,
		39.457020, 33.528122, 49.212387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433079, 33.703468, 48.830078>,  <39.805004, 33.199532, 48.701569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433079, 33.703468, 48.830078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.206226, 33.578011, 48.525448>,  <40.070114, 33.502735, 48.342670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.206226, 33.578011, 48.525448>,  <40.433079, 33.703468, 48.830078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206226, 33.578011, 48.525448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748845, -0.581344, -0.318229,
		-0.342926, -0.750777, 0.564566,
		-0.567127, -0.313644, -0.761574,
		40.036087, 33.483917, 48.296974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496799, 32.981419, 48.744141>,  <40.433079, 33.703468, 48.830078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496799, 32.981419, 48.744141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.421917, 33.170765, 48.399845>,  <40.376987, 33.284374, 48.193268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.421917, 33.170765, 48.399845>,  <40.496799, 32.981419, 48.744141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421917, 33.170765, 48.399845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752528, -0.494096, -0.435398,
		-0.631393, -0.729239, -0.263728,
		-0.187202, 0.473370, -0.860742,
		40.365757, 33.312775, 48.141624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166420, 32.761440, 48.286999>,  <40.496799, 32.981419, 48.744141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166420, 32.761440, 48.286999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.139450, 33.126331, 48.125359>,  <41.123268, 33.345264, 48.028374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.139450, 33.126331, 48.125359>,  <41.166420, 32.761440, 48.286999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139450, 33.126331, 48.125359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764189, 0.307616, 0.566910,
		0.641458, -0.270585, -0.717855,
		-0.067426, 0.912226, -0.404101,
		41.119221, 33.399998, 48.004128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797226, 33.013660, 48.046532>,  <41.166420, 32.761440, 48.286999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797226, 33.013660, 48.046532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.572418, 33.304325, 48.204571>,  <41.437534, 33.478722, 48.299393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.572418, 33.304325, 48.204571>,  <41.797226, 33.013660, 48.046532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572418, 33.304325, 48.204571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653443, 0.097225, 0.750706,
		0.507095, 0.680083, -0.529473,
		-0.562020, 0.726660, 0.395093,
		41.403812, 33.522324, 48.323097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207447, 33.632851, 48.174274>,  <41.797226, 33.013660, 48.046532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207447, 33.632851, 48.174274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.915791, 33.593685, 48.445206>,  <41.740799, 33.570187, 48.607765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.915791, 33.593685, 48.445206>,  <42.207447, 33.632851, 48.174274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915791, 33.593685, 48.445206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676142, 0.049920, 0.735078,
		-0.105786, 0.993942, 0.029806,
		-0.729137, -0.097914, 0.677327,
		41.697048, 33.564312, 48.648403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130203, 34.123005, 47.599728>,  <42.207447, 33.632851, 48.174274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130203, 34.123005, 47.599728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.154766, 34.392921, 47.305550>,  <42.169506, 34.554871, 47.129044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.154766, 34.392921, 47.305550>,  <42.130203, 34.123005, 47.599728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154766, 34.392921, 47.305550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048503, 0.737984, 0.673073,
		0.996934, -0.005662, 0.078049,
		0.061409, 0.674795, -0.735446,
		42.173187, 34.595360, 47.084915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716465, 34.592842, 47.635101>,  <42.130203, 34.123005, 47.599728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716465, 34.592842, 47.635101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.406563, 34.778172, 47.463020>,  <42.220619, 34.889370, 47.359772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.406563, 34.778172, 47.463020>,  <42.716465, 34.592842, 47.635101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406563, 34.778172, 47.463020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031628, 0.707976, 0.705528,
		0.631464, 0.533008, -0.563165,
		-0.774760, 0.463327, -0.430204,
		42.174133, 34.917171, 47.333958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995346, 33.846615, 47.586197>,  <42.716465, 34.592842, 47.635101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995346, 33.846615, 47.586197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.188831, 33.525345, 47.447090>,  <43.304920, 33.332584, 47.363625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.188831, 33.525345, 47.447090>,  <42.995346, 33.846615, 47.586197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188831, 33.525345, 47.447090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855181, 0.518275, -0.007492,
		0.186255, -0.293779, 0.937551,
		0.483709, -0.803171, -0.347766,
		43.333942, 33.284393, 47.342762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555161, 33.600990, 47.983212>,  <42.995346, 33.846615, 47.586197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555161, 33.600990, 47.983212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.607494, 33.520752, 47.594852>,  <43.638893, 33.472607, 47.361835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.607494, 33.520752, 47.594852>,  <43.555161, 33.600990, 47.983212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607494, 33.520752, 47.594852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823271, 0.567613, -0.006338,
		0.552366, -0.798483, 0.239410,
		0.130832, -0.200600, -0.970898,
		43.646744, 33.460571, 47.303581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389950, 33.531567, 47.824982>,  <43.555161, 33.600990, 47.983212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389950, 33.531567, 47.824982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.154694, 33.675159, 47.535095>,  <44.013538, 33.761314, 47.361164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.154694, 33.675159, 47.535095>,  <44.389950, 33.531567, 47.824982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154694, 33.675159, 47.535095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628639, 0.766686, -0.130403,
		0.508820, -0.532282, -0.676593,
		-0.588145, 0.358981, -0.724719,
		43.978249, 33.782852, 47.317680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.756950, 33.514172, 47.148861>,  <44.389950, 33.531567, 47.824982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.756950, 33.514172, 47.148861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.476002, 33.798126, 47.169750>,  <44.307430, 33.968498, 47.182285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.476002, 33.798126, 47.169750>,  <44.756950, 33.514172, 47.148861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476002, 33.798126, 47.169750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696175, 0.700391, -0.157457,
		-0.148357, -0.074235, -0.986144,
		-0.702375, 0.709888, 0.052227,
		44.265289, 34.011093, 47.185417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.074478, 34.030788, 46.743145>,  <44.756950, 33.514172, 47.148861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.074478, 34.030788, 46.743145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.786064, 34.214481, 46.950687>,  <44.613014, 34.324696, 47.075211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.786064, 34.214481, 46.950687>,  <45.074478, 34.030788, 46.743145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786064, 34.214481, 46.950687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462601, 0.876541, -0.132953,
		-0.515853, 0.144157, -0.844461,
		-0.721039, 0.459233, 0.518853,
		44.569752, 34.352253, 47.106342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661728, 33.634171, 46.314980>,  <45.074478, 34.030788, 46.743145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661728, 33.634171, 46.314980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.289196, 33.507183, 46.243603>,  <44.065678, 33.430992, 46.200775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.289196, 33.507183, 46.243603>,  <44.661728, 33.634171, 46.314980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289196, 33.507183, 46.243603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061595, 0.345609, -0.936355,
		0.358946, -0.883041, -0.302319,
		-0.931324, -0.317479, -0.178446,
		44.009796, 33.411942, 46.190071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637707, 33.186123, 45.701057>,  <44.661728, 33.634171, 46.314980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637707, 33.186123, 45.701057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.277737, 33.355541, 45.742512>,  <44.061752, 33.457191, 45.767384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.277737, 33.355541, 45.742512>,  <44.637707, 33.186123, 45.701057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277737, 33.355541, 45.742512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017477, 0.202446, -0.979137,
		-0.435690, -0.882964, -0.174784,
		-0.899927, 0.423545, 0.103635,
		44.007759, 33.482605, 45.773602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052425, 32.860813, 45.306561>,  <44.637707, 33.186123, 45.701057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052425, 32.860813, 45.306561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.054321, 33.256706, 45.363701>,  <44.055458, 33.494244, 45.397987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.054321, 33.256706, 45.363701>,  <44.052425, 32.860813, 45.306561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.054321, 33.256706, 45.363701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386399, 0.129950, -0.913131,
		-0.922320, 0.059524, -0.381816,
		0.004736, 0.989732, 0.142855,
		44.055740, 33.553627, 45.406559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748234, 33.197208, 44.779865>,  <44.052425, 32.860813, 45.306561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748234, 33.197208, 44.779865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.081844, 33.352360, 44.936813>,  <44.282009, 33.445450, 45.030983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.081844, 33.352360, 44.936813>,  <43.748234, 33.197208, 44.779865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081844, 33.352360, 44.936813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497657, -0.221852, -0.838522,
		-0.238196, 0.894613, -0.378060,
		0.834026, 0.387877, 0.392366,
		44.332054, 33.468723, 45.054523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051098, 33.757385, 44.359833>,  <43.748234, 33.197208, 44.779865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051098, 33.757385, 44.359833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.347614, 33.579239, 44.560688>,  <44.525524, 33.472351, 44.681202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.347614, 33.579239, 44.560688>,  <44.051098, 33.757385, 44.359833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347614, 33.579239, 44.560688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491699, -0.148898, -0.857940,
		0.456861, 0.882883, 0.108607,
		0.741289, -0.445362, 0.502138,
		44.570000, 33.445629, 44.711330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640224, 33.878399, 44.009167>,  <44.051098, 33.757385, 44.359833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.640224, 33.878399, 44.009167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.739346, 33.567623, 44.240669>,  <44.798820, 33.381157, 44.379570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.739346, 33.567623, 44.240669>,  <44.640224, 33.878399, 44.009167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.739346, 33.567623, 44.240669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555433, -0.375531, -0.741937,
		0.793780, 0.505319, 0.338477,
		0.247806, -0.776936, 0.578760,
		44.813686, 33.334541, 44.414299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809582, 34.142715, 43.378525>,  <44.640224, 33.878399, 44.009167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809582, 34.142715, 43.378525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.626610, 34.062103, 43.032082>,  <44.516827, 34.013737, 42.824215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.626610, 34.062103, 43.032082>,  <44.809582, 34.142715, 43.378525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626610, 34.062103, 43.032082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430342, 0.902501, 0.017285,
		0.778181, 0.380630, -0.499555,
		-0.457428, -0.201528, -0.866110,
		44.489380, 34.001644, 42.772247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.129951, 34.516567, 42.806156>,  <44.809582, 34.142715, 43.378525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.129951, 34.516567, 42.806156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.739311, 34.441818, 42.763592>,  <44.504925, 34.396969, 42.738052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.739311, 34.441818, 42.763592>,  <45.129951, 34.516567, 42.806156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.739311, 34.441818, 42.763592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181682, 0.981727, -0.056609,
		0.115041, -0.035953, -0.992710,
		-0.976605, -0.186870, -0.106407,
		44.446331, 34.385757, 42.731670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.721828, 34.750431, 42.629734>,  <45.129951, 34.516567, 42.806156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.721828, 34.750431, 42.629734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.748760, 35.115303, 42.468044>,  <45.764919, 35.334225, 42.371029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.748760, 35.115303, 42.468044>,  <45.721828, 34.750431, 42.629734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.748760, 35.115303, 42.468044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405739, -0.395164, -0.824149,
		-0.911506, -0.108519, -0.396713,
		0.067331, 0.912178, -0.404224,
		45.768959, 35.388958, 42.346775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.392303, 34.768349, 41.915199>,  <45.721828, 34.750431, 42.629734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.392303, 34.768349, 41.915199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.688549, 35.037117, 41.914265>,  <45.866299, 35.198380, 41.913704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.688549, 35.037117, 41.914265>,  <45.392303, 34.768349, 41.915199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.688549, 35.037117, 41.914265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253030, -0.282122, -0.925410,
		-0.622464, 0.684782, -0.378961,
		0.740617, 0.671923, -0.002341,
		45.910736, 35.238693, 41.913563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333969, 35.166176, 41.303478>,  <45.392303, 34.768349, 41.915199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333969, 35.166176, 41.303478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.713490, 35.210114, 41.421940>,  <45.941200, 35.236477, 41.493015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.713490, 35.210114, 41.421940>,  <45.333969, 35.166176, 41.303478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.713490, 35.210114, 41.421940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311745, -0.174603, -0.933985,
		-0.050887, 0.978492, -0.199908,
		0.948802, 0.109848, 0.296155,
		45.998131, 35.243069, 41.510788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531830, 35.708378, 40.931385>,  <45.333969, 35.166176, 41.303478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531830, 35.708378, 40.931385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.825878, 35.462799, 41.046398>,  <46.002308, 35.315453, 41.115406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.825878, 35.462799, 41.046398>,  <45.531830, 35.708378, 40.931385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.825878, 35.462799, 41.046398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325491, -0.052425, -0.944091,
		0.594692, 0.787608, 0.161295,
		0.735117, -0.613943, 0.287536,
		46.046413, 35.278618, 41.132660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.078835, 36.035770, 40.687828>,  <45.531830, 35.708378, 40.931385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.078835, 36.035770, 40.687828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.124561, 35.645058, 40.760303>,  <46.151997, 35.410629, 40.803787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.124561, 35.645058, 40.760303>,  <46.078835, 36.035770, 40.687828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.124561, 35.645058, 40.760303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211473, -0.154279, -0.965131,
		0.970676, 0.148646, 0.188926,
		0.114315, -0.976782, 0.181190,
		46.158855, 35.352024, 40.814659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815414, 35.684208, 40.570499>,  <46.078835, 36.035770, 40.687828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815414, 35.684208, 40.570499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.494762, 35.457935, 40.493153>,  <46.302372, 35.322170, 40.446743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.494762, 35.457935, 40.493153>,  <46.815414, 35.684208, 40.570499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.494762, 35.457935, 40.493153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316378, -0.126989, -0.940095,
		0.507241, -0.814786, 0.280768,
		-0.801631, -0.565684, -0.193366,
		46.254272, 35.288231, 40.435143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.036354, 35.222561, 40.080742>,  <46.815414, 35.684208, 40.570499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.036354, 35.222561, 40.080742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.641403, 35.246387, 40.022026>,  <46.404434, 35.260681, 39.986797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.641403, 35.246387, 40.022026>,  <47.036354, 35.222561, 40.080742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.641403, 35.246387, 40.022026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143888, -0.050339, -0.988313,
		-0.066268, -0.996954, 0.041132,
		-0.987373, 0.059576, -0.146786,
		46.345192, 35.264256, 39.977989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.768181, 34.659000, 39.607483>,  <47.036354, 35.222561, 40.080742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.768181, 34.659000, 39.607483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.526562, 34.977291, 39.589828>,  <46.381588, 35.168266, 39.579235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.526562, 34.977291, 39.589828>,  <46.768181, 34.659000, 39.607483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.526562, 34.977291, 39.589828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177333, 0.080214, -0.980876,
		-0.776966, -0.600325, -0.189561,
		-0.604050, 0.795723, -0.044134,
		46.345348, 35.216007, 39.576588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264774, 34.631710, 39.117828>,  <46.768181, 34.659000, 39.607483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.264774, 34.631710, 39.117828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.323532, 35.023159, 39.175396>,  <46.358788, 35.258030, 39.209934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.323532, 35.023159, 39.175396>,  <46.264774, 34.631710, 39.117828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.323532, 35.023159, 39.175396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324651, 0.089734, -0.941568,
		-0.934357, 0.185034, -0.304531,
		0.146896, 0.978627, 0.143915,
		46.367599, 35.316746, 39.218571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.989040, 35.005024, 38.569321>,  <46.264774, 34.631710, 39.117828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.989040, 35.005024, 38.569321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.308914, 35.206432, 38.700146>,  <46.500839, 35.327278, 38.778641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.308914, 35.206432, 38.700146>,  <45.989040, 35.005024, 38.569321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308914, 35.206432, 38.700146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351430, 0.049145, -0.934923,
		-0.486825, 0.862585, -0.137651,
		0.799686, 0.503519, 0.327064,
		46.548820, 35.357487, 38.798264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.039864, 35.665222, 38.314457>,  <45.989040, 35.005024, 38.569321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.039864, 35.665222, 38.314457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.412502, 35.543877, 38.394554>,  <46.636086, 35.471069, 38.442612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.412502, 35.543877, 38.394554>,  <46.039864, 35.665222, 38.314457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.412502, 35.543877, 38.394554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227525, 0.057061, -0.972099,
		0.283470, 0.951166, 0.122180,
		0.931599, -0.303360, 0.200239,
		46.691982, 35.452869, 38.454624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.546841, 35.972675, 37.977329>,  <46.039864, 35.665222, 38.314457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.546841, 35.972675, 37.977329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.688251, 35.603031, 38.035358>,  <46.773098, 35.381245, 38.070175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.688251, 35.603031, 38.035358>,  <46.546841, 35.972675, 37.977329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.688251, 35.603031, 38.035358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241004, -0.059868, -0.968676,
		0.903846, 0.377413, 0.201549,
		0.353524, -0.924108, 0.145070,
		46.794308, 35.325798, 38.078880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.224323, 35.851959, 37.719395>,  <46.546841, 35.972675, 37.977329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.224323, 35.851959, 37.719395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.021957, 35.507286, 37.703632>,  <46.900539, 35.300484, 37.694176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.021957, 35.507286, 37.703632>,  <47.224323, 35.851959, 37.719395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.021957, 35.507286, 37.703632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290948, -0.127458, -0.948211,
		0.812036, -0.491176, 0.315188,
		-0.505912, -0.861684, -0.039406,
		46.870182, 35.248779, 37.691811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.633602, 35.177967, 37.517773>,  <47.224323, 35.851959, 37.719395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.633602, 35.177967, 37.517773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.247734, 35.185078, 37.412624>,  <47.016212, 35.189346, 37.349533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.247734, 35.185078, 37.412624>,  <47.633602, 35.177967, 37.517773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.247734, 35.185078, 37.412624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244443, -0.311920, -0.918125,
		-0.098318, -0.949942, 0.296553,
		-0.964666, 0.017778, -0.262874,
		46.958336, 35.190411, 37.333763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.691730, 34.792717, 36.928009>,  <47.633602, 35.177967, 37.517773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.691730, 34.792717, 36.928009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.329380, 34.961967, 36.920525>,  <47.111969, 35.063519, 36.916035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.329380, 34.961967, 36.920525>,  <47.691730, 34.792717, 36.928009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.329380, 34.961967, 36.920525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092689, -0.241151, -0.966051,
		-0.413269, -0.873392, 0.257673,
		-0.905879, 0.423123, -0.018707,
		47.057617, 35.088905, 36.914913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.026588, 34.294685, 36.753288>,  <47.691730, 34.792717, 36.928009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.026588, 34.294685, 36.753288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.033245, 34.674385, 36.627659>,  <47.037239, 34.902206, 36.552280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.033245, 34.674385, 36.627659>,  <47.026588, 34.294685, 36.753288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.033245, 34.674385, 36.627659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070086, -0.312242, -0.947414,
		-0.997402, 0.037774, 0.061334,
		0.016637, 0.949251, -0.314078,
		47.038235, 34.959160, 36.533436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.604050, 34.396496, 36.119167>,  <47.026588, 34.294685, 36.753288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.604050, 34.396496, 36.119167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.842827, 34.717377, 36.123638>,  <46.986095, 34.909904, 36.126320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.842827, 34.717377, 36.123638>,  <46.604050, 34.396496, 36.119167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.842827, 34.717377, 36.123638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081020, -0.046423, -0.995631,
		-0.798179, 0.595245, -0.092706,
		0.596947, 0.802203, 0.011173,
		47.021912, 34.958038, 36.126991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.457645, 34.762314, 35.521553>,  <46.604050, 34.396496, 36.119167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.457645, 34.762314, 35.521553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.829285, 34.874783, 35.617657>,  <47.052269, 34.942265, 35.675320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.829285, 34.874783, 35.617657>,  <46.457645, 34.762314, 35.521553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.829285, 34.874783, 35.617657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274684, -0.089601, -0.957351,
		-0.247649, 0.955467, -0.160480,
		0.929096, 0.281168, 0.240262,
		47.108013, 34.959133, 35.689735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.661892, 35.243473, 35.057640>,  <46.457645, 34.762314, 35.521553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.661892, 35.243473, 35.057640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.016113, 35.137623, 35.210358>,  <47.228645, 35.074112, 35.301987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.016113, 35.137623, 35.210358>,  <46.661892, 35.243473, 35.057640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.016113, 35.137623, 35.210358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382892, -0.049570, -0.922462,
		0.263033, 0.963076, 0.057426,
		0.885555, -0.264626, 0.381793,
		47.281780, 35.058235, 35.324894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.309399, 35.579197, 34.667305>,  <46.661892, 35.243473, 35.057640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.309399, 35.579197, 34.667305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.458237, 35.245708, 34.830502>,  <47.547539, 35.045616, 34.928421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.458237, 35.245708, 34.830502>,  <47.309399, 35.579197, 34.667305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.458237, 35.245708, 34.830502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554180, -0.153065, -0.818203,
		0.744601, 0.530549, 0.405076,
		0.372094, -0.833720, 0.407992,
		47.569866, 34.995594, 34.952900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.010435, 33.178471, 56.004349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.389990, 33.263443, 56.097721>,  <31.617722, 33.314426, 56.153744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.389990, 33.263443, 56.097721>,  <31.010435, 33.178471, 56.004349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389990, 33.263443, 56.097721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283336, -0.247475, -0.926540,
		-0.139060, 0.945319, -0.295015,
		0.948885, 0.212433, 0.233429,
		31.674656, 33.327171, 56.167751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268612, 33.234219, 55.306122>,  <31.010435, 33.178471, 56.004349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268612, 33.234219, 55.306122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.594084, 33.270660, 55.535774>,  <31.789366, 33.292526, 55.673565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.594084, 33.270660, 55.535774>,  <31.268612, 33.234219, 55.306122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594084, 33.270660, 55.535774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580981, -0.093992, -0.808472,
		-0.019693, 0.991395, -0.129411,
		0.813679, 0.091106, 0.574131,
		31.838188, 33.297993, 55.708015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701942, 33.775875, 55.031445>,  <31.268612, 33.234219, 55.306122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701942, 33.775875, 55.031445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.937723, 33.525288, 55.235439>,  <32.079189, 33.374935, 55.357838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.937723, 33.525288, 55.235439>,  <31.701942, 33.775875, 55.031445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937723, 33.525288, 55.235439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641032, -0.021415, -0.767215,
		0.491556, 0.779155, 0.388961,
		0.589450, -0.626465, 0.509990,
		32.114559, 33.337349, 55.388435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465702, 34.047455, 54.980362>,  <31.701942, 33.775875, 55.031445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465702, 34.047455, 54.980362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.493237, 33.662998, 55.087299>,  <32.509758, 33.432323, 55.151463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.493237, 33.662998, 55.087299>,  <32.465702, 34.047455, 54.980362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493237, 33.662998, 55.087299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686262, -0.148881, -0.711954,
		0.724090, 0.232472, 0.649347,
		0.068834, -0.961141, 0.267340,
		32.513885, 33.374657, 55.167500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164288, 33.928730, 55.026096>,  <32.465702, 34.047455, 54.980362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164288, 33.928730, 55.026096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.996082, 33.569370, 54.975418>,  <32.895157, 33.353756, 54.945011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.996082, 33.569370, 54.975418>,  <33.164288, 33.928730, 55.026096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996082, 33.569370, 54.975418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552265, -0.142669, -0.821370,
		0.719839, -0.415370, 0.556147,
		-0.420517, -0.898395, -0.126696,
		32.869926, 33.299850, 54.937408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710121, 33.436039, 54.878105>,  <33.164288, 33.928730, 55.026096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710121, 33.436039, 54.878105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.374863, 33.248722, 54.766235>,  <33.173710, 33.136333, 54.699112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.374863, 33.248722, 54.766235>,  <33.710121, 33.436039, 54.878105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374863, 33.248722, 54.766235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456902, -0.322704, -0.828917,
		0.297921, -0.822536, 0.484435,
		-0.838143, -0.468291, -0.279678,
		33.123421, 33.108234, 54.682331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907024, 32.719593, 54.756355>,  <33.710121, 33.436039, 54.878105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907024, 32.719593, 54.756355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.562630, 32.771183, 54.559551>,  <33.355991, 32.802135, 54.441471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.562630, 32.771183, 54.559551>,  <33.907024, 32.719593, 54.756355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562630, 32.771183, 54.559551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435070, -0.314329, -0.843749,
		-0.263473, -0.940512, 0.214520,
		-0.860986, 0.128973, -0.492006,
		33.304333, 32.809875, 54.411949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731270, 32.171246, 54.296463>,  <33.907024, 32.719593, 54.756355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731270, 32.171246, 54.296463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.531651, 32.467186, 54.115986>,  <33.411880, 32.644749, 54.007702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.531651, 32.467186, 54.115986>,  <33.731270, 32.171246, 54.296463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531651, 32.467186, 54.115986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475260, -0.201701, -0.856414,
		-0.724625, -0.641823, -0.250964,
		-0.499047, 0.739852, -0.451190,
		33.381935, 32.689140, 53.980629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746956, 31.915710, 53.652470>,  <33.731270, 32.171246, 54.296463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746956, 31.915710, 53.652470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.623619, 32.294361, 53.614891>,  <33.549618, 32.521549, 53.592342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.623619, 32.294361, 53.614891>,  <33.746956, 31.915710, 53.652470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623619, 32.294361, 53.614891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201590, -0.031494, -0.978963,
		-0.929670, -0.320795, -0.181119,
		-0.308343, 0.946625, -0.093949,
		33.531116, 32.578350, 53.586708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238853, 31.830093, 53.169579>,  <33.746956, 31.915710, 53.652470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238853, 31.830093, 53.169579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.326824, 32.220291, 53.172215>,  <33.379608, 32.454411, 53.173798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.326824, 32.220291, 53.172215>,  <33.238853, 31.830093, 53.169579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326824, 32.220291, 53.172215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067989, -0.008586, -0.997649,
		-0.973144, 0.219860, -0.068211,
		0.219929, 0.975494, 0.006593,
		33.392803, 32.512939, 53.174194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813782, 32.147522, 52.648109>,  <33.238853, 31.830093, 53.169579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813782, 32.147522, 52.648109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.135349, 32.368099, 52.737213>,  <33.328289, 32.500446, 52.790676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.135349, 32.368099, 52.737213>,  <32.813782, 32.147522, 52.648109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135349, 32.368099, 52.737213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237931, 0.045064, -0.970236,
		-0.545068, 0.832995, -0.094978,
		0.803922, 0.551442, 0.222758,
		33.376526, 32.533531, 52.804039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840611, 32.745201, 52.128803>,  <32.813782, 32.147522, 52.648109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840611, 32.745201, 52.128803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.195820, 32.654320, 52.288700>,  <33.408943, 32.599789, 52.384640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.195820, 32.654320, 52.288700>,  <32.840611, 32.745201, 52.128803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195820, 32.654320, 52.288700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397409, -0.058010, -0.915806,
		0.231268, 0.972117, 0.038780,
		0.888021, -0.227208, 0.399744,
		33.462227, 32.586159, 52.408623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271206, 33.030479, 51.719398>,  <32.840611, 32.745201, 52.128803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271206, 33.030479, 51.719398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.528835, 32.781422, 51.897156>,  <33.683414, 32.631989, 52.003811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.528835, 32.781422, 51.897156>,  <33.271206, 33.030479, 51.719398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528835, 32.781422, 51.897156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474336, -0.130690, -0.870589,
		0.600141, 0.771518, 0.211166,
		0.644078, -0.622640, 0.444391,
		33.722057, 32.594631, 52.030472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930443, 33.036957, 51.368164>,  <33.271206, 33.030479, 51.719398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930443, 33.036957, 51.368164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.982147, 32.692905, 51.565536>,  <34.013168, 32.486477, 51.683960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.982147, 32.692905, 51.565536>,  <33.930443, 33.036957, 51.368164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982147, 32.692905, 51.565536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351401, -0.425579, -0.833906,
		0.927259, 0.281184, 0.247238,
		0.129262, -0.860127, 0.493430,
		34.020927, 32.434868, 51.713566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586784, 32.807537, 51.121052>,  <33.930443, 33.036957, 51.368164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586784, 32.807537, 51.121052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.437943, 32.473297, 51.282703>,  <34.348637, 32.272755, 51.379692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.437943, 32.473297, 51.282703>,  <34.586784, 32.807537, 51.121052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437943, 32.473297, 51.282703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297484, -0.519784, -0.800829,
		0.879229, -0.177769, 0.441989,
		-0.372102, -0.835597, 0.404126,
		34.326313, 32.222618, 51.403942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119675, 32.345314, 51.066715>,  <34.586784, 32.807537, 51.121052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119675, 32.345314, 51.066715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.772579, 32.146809, 51.077747>,  <34.564323, 32.027706, 51.084366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.772579, 32.146809, 51.077747>,  <35.119675, 32.345314, 51.066715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772579, 32.146809, 51.077747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340971, -0.634736, -0.693432,
		0.361630, -0.592312, 0.719994,
		-0.867734, -0.496263, 0.027578,
		34.512260, 31.997931, 51.086021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310894, 31.602978, 50.981441>,  <35.119675, 32.345314, 51.066715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310894, 31.602978, 50.981441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.936939, 31.654531, 50.849155>,  <34.712566, 31.685463, 50.769783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.936939, 31.654531, 50.849155>,  <35.310894, 31.602978, 50.981441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936939, 31.654531, 50.849155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170614, -0.653875, -0.737115,
		-0.311249, -0.745545, 0.589310,
		-0.934888, 0.128882, -0.330719,
		34.656471, 31.693195, 50.749939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192142, 30.931822, 50.690742>,  <35.310894, 31.602978, 50.981441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192142, 30.931822, 50.690742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.890186, 31.156244, 50.554882>,  <34.709015, 31.290897, 50.473366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.890186, 31.156244, 50.554882>,  <35.192142, 30.931822, 50.690742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890186, 31.156244, 50.554882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111937, -0.620497, -0.776178,
		-0.646238, -0.547903, 0.531206,
		-0.754883, 0.561058, -0.339658,
		34.663719, 31.324560, 50.452984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705956, 30.443062, 50.470661>,  <35.192142, 30.931822, 50.690742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705956, 30.443062, 50.470661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.596909, 30.771461, 50.270008>,  <34.531479, 30.968502, 50.149616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.596909, 30.771461, 50.270008>,  <34.705956, 30.443062, 50.470661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596909, 30.771461, 50.270008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056240, -0.534090, -0.843555,
		-0.960477, -0.201757, 0.191776,
		-0.272619, 0.821001, -0.501634,
		34.515121, 31.017761, 50.119518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076183, 30.281958, 50.120735>,  <34.705956, 30.443062, 50.470661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076183, 30.281958, 50.120735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.245514, 30.586897, 49.924931>,  <34.347115, 30.769859, 49.807449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.245514, 30.586897, 49.924931>,  <34.076183, 30.281958, 50.120735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245514, 30.586897, 49.924931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070586, -0.510918, -0.856727,
		-0.903222, 0.397231, -0.162476,
		0.423330, 0.762346, -0.489511,
		34.372513, 30.815601, 49.778076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616131, 30.499163, 49.524426>,  <34.076183, 30.281958, 50.120735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616131, 30.499163, 49.524426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.984364, 30.624338, 49.430962>,  <34.205303, 30.699444, 49.374882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.984364, 30.624338, 49.430962>,  <33.616131, 30.499163, 49.524426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984364, 30.624338, 49.430962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071471, -0.453197, -0.888541,
		-0.383952, 0.834675, -0.394839,
		0.920583, 0.312937, -0.233661,
		34.260540, 30.718220, 49.360863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537151, 30.820530, 48.875950>,  <33.616131, 30.499163, 49.524426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537151, 30.820530, 48.875950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.909466, 30.677778, 48.907627>,  <34.132854, 30.592127, 48.926636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.909466, 30.677778, 48.907627>,  <33.537151, 30.820530, 48.875950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909466, 30.677778, 48.907627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080924, -0.412423, -0.907391,
		0.356490, 0.838180, -0.412758,
		0.930788, -0.356878, 0.079196,
		34.188702, 30.570715, 48.931385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381371, 31.144268, 48.208118>,  <33.537151, 30.820530, 48.875950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381371, 31.144268, 48.208118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.164291, 31.394821, 47.984287>,  <33.034046, 31.545153, 47.849987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.164291, 31.394821, 47.984287>,  <33.381371, 31.144268, 48.208118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164291, 31.394821, 47.984287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397395, 0.395452, 0.828067,
		0.739973, 0.671761, 0.034311,
		-0.542695, 0.626382, -0.559578,
		33.001484, 31.582735, 47.816414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471546, 31.799480, 48.462872>,  <33.381371, 31.144268, 48.208118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471546, 31.799480, 48.462872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.126617, 31.820841, 48.261459>,  <32.919659, 31.833658, 48.140614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.126617, 31.820841, 48.261459>,  <33.471546, 31.799480, 48.462872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126617, 31.820841, 48.261459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395918, 0.548816, 0.736241,
		0.315662, 0.834236, -0.452115,
		-0.862326, 0.053403, -0.503529,
		32.867920, 31.836863, 48.110401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315044, 32.490578, 48.555668>,  <33.471546, 31.799480, 48.462872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315044, 32.490578, 48.555668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.987228, 32.299561, 48.428982>,  <32.790539, 32.184948, 48.352970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.987228, 32.299561, 48.428982>,  <33.315044, 32.490578, 48.555668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987228, 32.299561, 48.428982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535392, 0.441146, 0.720240,
		-0.204231, 0.759830, -0.617210,
		-0.819539, -0.477545, -0.316711,
		32.741367, 32.156296, 48.333969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728912, 33.091850, 48.449421>,  <33.315044, 32.490578, 48.555668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728912, 33.091850, 48.449421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.571259, 32.729103, 48.509087>,  <32.476665, 32.511456, 48.544888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.571259, 32.729103, 48.509087>,  <32.728912, 33.091850, 48.449421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571259, 32.729103, 48.509087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567091, 0.367691, 0.737029,
		-0.723233, 0.205899, -0.659196,
		-0.394133, -0.906868, 0.149163,
		32.453018, 32.457043, 48.553837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054356, 33.256172, 48.752895>,  <32.728912, 33.091850, 48.449421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054356, 33.256172, 48.752895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.067345, 32.859863, 48.805546>,  <32.075138, 32.622078, 48.837135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.067345, 32.859863, 48.805546>,  <32.054356, 33.256172, 48.752895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067345, 32.859863, 48.805546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552117, 0.091994, 0.828676,
		-0.833134, -0.099578, -0.544032,
		0.032470, -0.990768, 0.131623,
		32.077087, 32.562634, 48.845032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358681, 33.096313, 48.858463>,  <32.054356, 33.256172, 48.752895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358681, 33.096313, 48.858463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.603888, 32.827629, 49.024849>,  <31.751011, 32.666420, 49.124680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.603888, 32.827629, 49.024849>,  <31.358681, 33.096313, 48.858463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603888, 32.827629, 49.024849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440703, 0.146255, 0.885658,
		-0.655738, -0.726237, -0.206366,
		0.613015, -0.671706, 0.415960,
		31.787792, 32.626118, 49.149635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941488, 32.662788, 49.274281>,  <31.358681, 33.096313, 48.858463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941488, 32.662788, 49.274281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.310946, 32.619442, 49.421326>,  <31.532619, 32.593433, 49.509552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.310946, 32.619442, 49.421326>,  <30.941488, 32.662788, 49.274281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310946, 32.619442, 49.421326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354027, 0.126146, 0.926689,
		-0.146795, -0.986075, 0.078149,
		0.923643, -0.108367, 0.367615,
		31.588037, 32.586933, 49.531609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833740, 32.178288, 49.816883>,  <30.941488, 32.662788, 49.274281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833740, 32.178288, 49.816883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.179367, 32.363094, 49.896809>,  <31.386744, 32.473980, 49.944763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.179367, 32.363094, 49.896809>,  <30.833740, 32.178288, 49.816883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179367, 32.363094, 49.896809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314241, 0.184998, 0.931144,
		0.393243, -0.867360, 0.305036,
		0.864068, 0.462020, 0.199811,
		31.438587, 32.501701, 49.956753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170511, 31.856869, 50.384312>,  <30.833740, 32.178288, 49.816883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170511, 31.856869, 50.384312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.320856, 32.227436, 50.375591>,  <31.411064, 32.449776, 50.370358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.320856, 32.227436, 50.375591>,  <31.170511, 31.856869, 50.384312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320856, 32.227436, 50.375591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173732, 0.093558, 0.980339,
		0.910244, -0.364686, 0.196114,
		0.375863, 0.926418, -0.021803,
		31.433615, 32.505363, 50.369049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474642, 31.937361, 50.988926>,  <31.170511, 31.856869, 50.384312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474642, 31.937361, 50.988926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.412449, 32.312073, 50.863533>,  <31.375134, 32.536900, 50.788296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.412449, 32.312073, 50.863533>,  <31.474642, 31.937361, 50.988926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412449, 32.312073, 50.863533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367746, 0.239643, 0.898517,
		0.916835, 0.254987, 0.307236,
		-0.155484, 0.936778, -0.313484,
		31.365805, 32.593105, 50.769489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548494, 32.297039, 51.622284>,  <31.474642, 31.937361, 50.988926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548494, 32.297039, 51.622284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.384977, 32.564434, 51.373764>,  <31.286867, 32.724873, 51.224651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.384977, 32.564434, 51.373764>,  <31.548494, 32.297039, 51.622284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384977, 32.564434, 51.373764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531222, 0.379271, 0.757599,
		0.742087, 0.639749, 0.200072,
		-0.408792, 0.668487, -0.621300,
		31.262341, 32.764980, 51.187374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636381, 32.965118, 51.937088>,  <31.548494, 32.297039, 51.622284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636381, 32.965118, 51.937088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.329494, 33.013710, 51.685177>,  <31.145363, 33.042866, 51.534031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.329494, 33.013710, 51.685177>,  <31.636381, 32.965118, 51.937088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329494, 33.013710, 51.685177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529552, 0.434021, 0.728835,
		0.361874, 0.892675, -0.268660,
		-0.767217, 0.121477, -0.629779,
		31.099329, 33.050152, 51.496243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565922, 33.687599, 51.812946>,  <31.636381, 32.965118, 51.937088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565922, 33.687599, 51.812946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.221714, 33.486626, 51.779324>,  <31.015190, 33.366043, 51.759148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.221714, 33.486626, 51.779324>,  <31.565922, 33.687599, 51.812946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221714, 33.486626, 51.779324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341803, 0.447114, 0.826595,
		-0.377727, 0.740033, -0.556484,
		-0.860519, -0.502435, -0.084059,
		30.963558, 33.335896, 51.754105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156319, 34.170883, 51.942631>,  <31.565922, 33.687599, 51.812946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156319, 34.170883, 51.942631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.936529, 33.839733, 51.987701>,  <30.804655, 33.641041, 52.014744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.936529, 33.839733, 51.987701>,  <31.156319, 34.170883, 51.942631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936529, 33.839733, 51.987701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381982, 0.368850, 0.847372,
		-0.743081, 0.422569, -0.518908,
		-0.549473, -0.827880, 0.112672,
		30.771687, 33.591370, 52.021503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501829, 34.441628, 52.166386>,  <31.156319, 34.170883, 51.942631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501829, 34.441628, 52.166386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.496052, 34.056973, 52.275963>,  <30.492586, 33.826180, 52.341709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.496052, 34.056973, 52.275963>,  <30.501829, 34.441628, 52.166386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496052, 34.056973, 52.275963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394151, 0.257265, 0.882304,
		-0.918932, -0.095234, -0.382745,
		-0.014441, -0.961637, 0.273946,
		30.491720, 33.768482, 52.358147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799982, 34.334747, 52.294937>,  <30.501829, 34.441628, 52.166386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799982, 34.334747, 52.294937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.009600, 34.051022, 52.483509>,  <30.135370, 33.880787, 52.596653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.009600, 34.051022, 52.483509>,  <29.799982, 34.334747, 52.294937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009600, 34.051022, 52.483509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361521, 0.315928, 0.877207,
		-0.771156, -0.630127, -0.090873,
		0.524043, -0.709316, 0.471434,
		30.166813, 33.838226, 52.624939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389725, 34.047585, 52.823212>,  <29.799982, 34.334747, 52.294937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389725, 34.047585, 52.823212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.745672, 33.927158, 52.960320>,  <29.959240, 33.854900, 53.042583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.745672, 33.927158, 52.960320>,  <29.389725, 34.047585, 52.823212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745672, 33.927158, 52.960320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305512, 0.164732, 0.937830,
		-0.338818, -0.939266, 0.054609,
		0.889868, -0.301070, 0.342771,
		30.012632, 33.836838, 53.063152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213976, 33.576649, 53.303097>,  <29.389725, 34.047585, 52.823212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213976, 33.576649, 53.303097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.583771, 33.705322, 53.384922>,  <29.805647, 33.782524, 53.434017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.583771, 33.705322, 53.384922>,  <29.213976, 33.576649, 53.303097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583771, 33.705322, 53.384922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267125, 0.163787, 0.949641,
		0.271979, -0.932574, 0.237348,
		0.924485, 0.321684, 0.204567,
		29.861116, 33.801826, 53.446293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.430130, 33.375805, 54.033237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694469, 33.667557, 53.962490>,  <29.853073, 33.842609, 53.920044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694469, 33.667557, 53.962490>,  <29.430130, 33.375805, 54.033237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694469, 33.667557, 53.962490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183709, 0.385689, 0.904154,
		0.727690, -0.565015, 0.388875,
		0.660846, 0.729384, -0.176864,
		29.892723, 33.886372, 53.909431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003704, 33.378559, 54.607445>,  <29.430130, 33.375805, 54.033237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003704, 33.378559, 54.607445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980093, 33.737843, 54.433208>,  <29.965927, 33.953411, 54.328667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980093, 33.737843, 54.433208>,  <30.003704, 33.378559, 54.607445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980093, 33.737843, 54.433208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144045, 0.424124, 0.894075,
		0.987809, 0.115521, 0.104347,
		-0.059028, 0.898206, -0.435594,
		29.962385, 34.007305, 54.302532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341990, 33.885742, 55.048500>,  <30.003704, 33.378559, 54.607445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341990, 33.885742, 55.048500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133406, 34.135559, 54.815941>,  <30.008255, 34.285450, 54.676407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133406, 34.135559, 54.815941>,  <30.341990, 33.885742, 55.048500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133406, 34.135559, 54.815941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375616, 0.443785, 0.813614,
		0.766155, 0.642648, 0.003174,
		-0.521459, 0.624546, -0.581397,
		29.976969, 34.322922, 54.641521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418238, 34.523262, 55.390633>,  <30.341990, 33.885742, 55.048500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418238, 34.523262, 55.390633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097740, 34.563805, 55.154758>,  <29.905441, 34.588131, 55.013233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097740, 34.563805, 55.154758>,  <30.418238, 34.523262, 55.390633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097740, 34.563805, 55.154758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459838, 0.526260, 0.715261,
		0.382825, 0.844262, -0.375056,
		-0.801245, 0.101355, -0.589690,
		29.857367, 34.594212, 54.977852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316959, 35.193565, 55.293751>,  <30.418238, 34.523262, 55.390633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316959, 35.193565, 55.293751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964073, 35.016548, 55.229431>,  <29.752342, 34.910339, 55.190842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964073, 35.016548, 55.229431>,  <30.316959, 35.193565, 55.293751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964073, 35.016548, 55.229431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379671, 0.466637, 0.798812,
		-0.278472, 0.765773, -0.579694,
		-0.882215, -0.442540, -0.160796,
		29.699409, 34.883785, 55.181190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687946, 35.724575, 55.423496>,  <30.316959, 35.193565, 55.293751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687946, 35.724575, 55.423496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499630, 35.371868, 55.435127>,  <29.386641, 35.160244, 55.442108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499630, 35.371868, 55.435127>,  <29.687946, 35.724575, 55.423496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499630, 35.371868, 55.435127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597502, 0.342920, 0.724842,
		-0.649114, 0.323872, -0.688301,
		-0.470789, -0.881766, 0.029080,
		29.358393, 35.107338, 55.443851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072567, 35.963737, 55.654388>,  <29.687946, 35.724575, 55.423496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072567, 35.963737, 55.654388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094419, 35.574066, 55.742012>,  <29.107531, 35.340263, 55.794586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094419, 35.574066, 55.742012>,  <29.072567, 35.963737, 55.654388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094419, 35.574066, 55.742012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499578, 0.163285, 0.850741,
		-0.864545, -0.155912, -0.477759,
		0.054630, -0.974181, 0.219058,
		29.110809, 35.281811, 55.807728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.475836, 35.765896, 55.952301>,  <29.072567, 35.963737, 55.654388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.475836, 35.765896, 55.952301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694866, 35.460312, 56.088840>,  <28.826284, 35.276962, 56.170765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694866, 35.460312, 56.088840>,  <28.475836, 35.765896, 55.952301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694866, 35.460312, 56.088840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553687, -0.024955, 0.832350,
		-0.627366, -0.644778, -0.436661,
		0.547578, -0.763962, 0.341350,
		28.859140, 35.231125, 56.191246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920816, 35.251011, 56.112350>,  <28.475836, 35.765896, 55.952301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920816, 35.251011, 56.112350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253386, 35.189552, 56.325939>,  <28.452927, 35.152679, 56.454094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253386, 35.189552, 56.325939>,  <27.920816, 35.251011, 56.112350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253386, 35.189552, 56.325939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540907, -0.003987, 0.841073,
		-0.127095, -0.988119, -0.086421,
		0.831424, -0.153642, 0.533973,
		28.502813, 35.143459, 56.486130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726109, 34.701828, 56.487106>,  <27.920816, 35.251011, 56.112350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726109, 34.701828, 56.487106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023914, 34.888794, 56.677776>,  <28.202597, 35.000973, 56.792179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023914, 34.888794, 56.677776>,  <27.726109, 34.701828, 56.487106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023914, 34.888794, 56.677776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443200, -0.187928, 0.876503,
		0.499275, -0.863830, 0.067246,
		0.744512, 0.467419, 0.476677,
		28.247269, 35.029018, 56.820778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815594, 34.187386, 57.163940>,  <27.726109, 34.701828, 56.487106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815594, 34.187386, 57.163940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972080, 34.548775, 57.234016>,  <28.065973, 34.765606, 57.276062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972080, 34.548775, 57.234016>,  <27.815594, 34.187386, 57.163940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972080, 34.548775, 57.234016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338767, -0.035616, 0.940196,
		0.855679, -0.427169, 0.292132,
		0.391217, 0.903471, 0.175187,
		28.089445, 34.819817, 57.286572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124741, 34.109497, 57.923473>,  <27.815594, 34.187386, 57.163940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124741, 34.109497, 57.923473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095428, 34.499531, 57.839714>,  <28.077841, 34.733551, 57.789459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095428, 34.499531, 57.839714>,  <28.124741, 34.109497, 57.923473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095428, 34.499531, 57.839714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343043, 0.172511, 0.923343,
		0.936457, 0.139497, 0.321853,
		-0.073280, 0.975080, -0.209402,
		28.073444, 34.792053, 57.776894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171463, 34.532074, 58.596813>,  <28.124741, 34.109497, 57.923473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171463, 34.532074, 58.596813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984421, 34.793827, 58.359116>,  <27.872196, 34.950878, 58.216496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984421, 34.793827, 58.359116>,  <28.171463, 34.532074, 58.596813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984421, 34.793827, 58.359116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478577, 0.377791, 0.792615,
		0.743176, 0.655021, 0.136518,
		-0.467604, 0.654386, -0.594243,
		27.844139, 34.990143, 58.180843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332273, 35.222153, 58.822376>,  <28.171463, 34.532074, 58.596813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332273, 35.222153, 58.822376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980196, 35.254368, 58.635284>,  <27.768950, 35.273697, 58.523029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980196, 35.254368, 58.635284>,  <28.332273, 35.222153, 58.822376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980196, 35.254368, 58.635284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323833, 0.618555, 0.715906,
		0.346979, 0.781603, -0.518366,
		-0.880192, 0.080540, -0.467734,
		27.716139, 35.278530, 58.494965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223707, 35.882797, 58.896206>,  <28.332273, 35.222153, 58.822376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223707, 35.882797, 58.896206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862707, 35.743103, 58.795387>,  <27.646107, 35.659286, 58.734898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862707, 35.743103, 58.795387>,  <28.223707, 35.882797, 58.896206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862707, 35.743103, 58.795387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422962, 0.608320, 0.671602,
		-0.081224, 0.712727, -0.696723,
		-0.902499, -0.349238, -0.252046,
		27.591957, 35.638332, 58.719772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800184, 36.495224, 58.847424>,  <28.223707, 35.882797, 58.896206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800184, 36.495224, 58.847424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529291, 36.200985, 58.841068>,  <27.366756, 36.024441, 58.837254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529291, 36.200985, 58.841068>,  <27.800184, 36.495224, 58.847424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529291, 36.200985, 58.841068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617899, 0.556881, 0.555053,
		-0.399448, 0.385717, -0.831663,
		-0.677231, -0.735599, -0.015889,
		27.326122, 35.980305, 58.836300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258753, 36.761681, 58.594311>,  <27.800184, 36.495224, 58.847424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258753, 36.761681, 58.594311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108259, 36.450859, 58.796154>,  <27.017963, 36.264366, 58.917259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108259, 36.450859, 58.796154>,  <27.258753, 36.761681, 58.594311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108259, 36.450859, 58.796154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563680, 0.624209, 0.540951,
		-0.735332, -0.080915, -0.672860,
		-0.376234, -0.777057, 0.504610,
		26.995390, 36.217743, 58.947536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516590, 36.873497, 58.622231>,  <27.258753, 36.761681, 58.594311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516590, 36.873497, 58.622231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595255, 36.627644, 58.927792>,  <26.642454, 36.480129, 59.111130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595255, 36.627644, 58.927792>,  <26.516590, 36.873497, 58.622231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595255, 36.627644, 58.927792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539059, 0.583016, 0.607872,
		-0.818988, -0.531332, -0.216670,
		0.196660, -0.614637, 0.763902,
		26.654253, 36.443253, 59.156963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886318, 36.886005, 58.943810>,  <26.516590, 36.873497, 58.622231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886318, 36.886005, 58.943810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138020, 36.725277, 59.209919>,  <26.289040, 36.628841, 59.369583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138020, 36.725277, 59.209919>,  <25.886318, 36.886005, 58.943810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138020, 36.725277, 59.209919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497840, 0.448932, 0.742035,
		-0.596824, -0.798125, 0.082451,
		0.629251, -0.401817, 0.665272,
		26.326796, 36.604733, 59.409500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446709, 36.564335, 59.491222>,  <25.886318, 36.886005, 58.943810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446709, 36.564335, 59.491222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.799568, 36.628349, 59.668404>,  <26.011284, 36.666756, 59.774712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.799568, 36.628349, 59.668404>,  <25.446709, 36.564335, 59.491222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799568, 36.628349, 59.668404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462884, 0.468145, 0.752714,
		-0.086905, -0.869039, 0.487050,
		0.882148, 0.160033, 0.442949,
		26.064213, 36.676361, 59.801289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.514847, 36.213463, 60.185326>,  <25.446709, 36.564335, 59.491222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.514847, 36.213463, 60.185326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765223, 36.525410, 60.186665>,  <25.915447, 36.712578, 60.187466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765223, 36.525410, 60.186665>,  <25.514847, 36.213463, 60.185326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765223, 36.525410, 60.186665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324372, 0.256443, 0.910505,
		0.709214, -0.571005, 0.413484,
		0.625938, 0.779865, 0.003345,
		25.953005, 36.759369, 60.187668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753635, 36.280647, 60.828907>,  <25.514847, 36.213463, 60.185326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753635, 36.280647, 60.828907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866745, 36.642254, 60.700657>,  <25.934610, 36.859219, 60.623707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866745, 36.642254, 60.700657>,  <25.753635, 36.280647, 60.828907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866745, 36.642254, 60.700657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178319, 0.377986, 0.908476,
		0.942466, -0.199719, 0.268087,
		0.282773, 0.904013, -0.320625,
		25.951576, 36.913456, 60.604469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225945, 36.596554, 61.307903>,  <25.753635, 36.280647, 60.828907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225945, 36.596554, 61.307903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033743, 36.894737, 61.123116>,  <25.918423, 37.073647, 61.012245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033743, 36.894737, 61.123116>,  <26.225945, 36.596554, 61.307903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033743, 36.894737, 61.123116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342176, 0.325655, 0.881399,
		0.807485, 0.581589, 0.098598,
		-0.480503, 0.745455, -0.461967,
		25.889591, 37.118374, 60.984524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372620, 37.233093, 61.697353>,  <26.225945, 36.596554, 61.307903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372620, 37.233093, 61.697353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024973, 37.271713, 61.503315>,  <25.816385, 37.294888, 61.386894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024973, 37.271713, 61.503315>,  <26.372620, 37.233093, 61.697353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024973, 37.271713, 61.503315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397513, 0.447237, 0.801225,
		0.294311, 0.889189, -0.350320,
		-0.869117, 0.096553, -0.485091,
		25.764238, 37.300678, 61.357788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902287, 36.883316, 61.391373>,  <26.372620, 37.233093, 61.697353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902287, 36.883316, 61.391373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186140, 36.889523, 61.673130>,  <27.356453, 36.893246, 61.842186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186140, 36.889523, 61.673130>,  <26.902287, 36.883316, 61.391373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186140, 36.889523, 61.673130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703246, -0.076829, -0.706784,
		0.043153, 0.996924, -0.065431,
		0.709636, 0.015514, 0.704397,
		27.399031, 36.894176, 61.884449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439297, 37.305172, 61.145111>,  <26.902287, 36.883316, 61.391373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439297, 37.305172, 61.145111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598141, 37.044178, 61.403278>,  <27.693447, 36.887581, 61.558178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598141, 37.044178, 61.403278>,  <27.439297, 37.305172, 61.145111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598141, 37.044178, 61.403278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691950, -0.249132, -0.677598,
		0.602917, 0.715680, 0.352554,
		0.397110, -0.652484, 0.645420,
		27.717274, 36.848434, 61.596905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157991, 37.502243, 61.245289>,  <27.439297, 37.305172, 61.145111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157991, 37.502243, 61.245289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136805, 37.121986, 61.367584>,  <28.124092, 36.893833, 61.440960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136805, 37.121986, 61.367584>,  <28.157991, 37.502243, 61.245289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136805, 37.121986, 61.367584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724073, -0.247406, -0.643823,
		0.687686, 0.187273, 0.701439,
		-0.052969, -0.950641, 0.305737,
		28.120914, 36.836796, 61.459305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920252, 37.358593, 61.233601>,  <28.157991, 37.502243, 61.245289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920252, 37.358593, 61.233601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716127, 37.015133, 61.252789>,  <28.593653, 36.809055, 61.264301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716127, 37.015133, 61.252789>,  <28.920252, 37.358593, 61.233601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716127, 37.015133, 61.252789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679111, -0.436571, -0.590097,
		0.527629, -0.268556, 0.805906,
		-0.510309, -0.858652, 0.047968,
		28.563034, 36.757538, 61.267178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379078, 36.914280, 61.353676>,  <28.920252, 37.358593, 61.233601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379078, 36.914280, 61.353676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093975, 36.682701, 61.195286>,  <28.922915, 36.543755, 61.100250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093975, 36.682701, 61.195286>,  <29.379078, 36.914280, 61.353676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093975, 36.682701, 61.195286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670070, -0.395146, -0.628384,
		0.207333, -0.713217, 0.669578,
		-0.712755, -0.578949, -0.395978,
		28.880148, 36.509018, 61.076492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683588, 36.298882, 61.306152>,  <29.379078, 36.914280, 61.353676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683588, 36.298882, 61.306152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376297, 36.246666, 61.055462>,  <29.191923, 36.215336, 60.905048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376297, 36.246666, 61.055462>,  <29.683588, 36.298882, 61.306152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376297, 36.246666, 61.055462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562568, -0.604886, -0.563587,
		-0.305527, -0.785539, 0.538127,
		-0.768226, -0.130542, -0.626728,
		29.145830, 36.207504, 60.867443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758141, 35.554092, 61.039169>,  <29.683588, 36.298882, 61.306152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758141, 35.554092, 61.039169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526131, 35.724403, 60.761383>,  <29.386925, 35.826591, 60.594711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526131, 35.724403, 60.761383>,  <29.758141, 35.554092, 61.039169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526131, 35.724403, 60.761383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453829, -0.539059, -0.709546,
		-0.676469, -0.726722, 0.119435,
		-0.580025, 0.425783, -0.694464,
		29.352123, 35.852139, 60.553043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595337, 34.954544, 60.650749>,  <29.758141, 35.554092, 61.039169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595337, 34.954544, 60.650749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533258, 35.282764, 60.430706>,  <29.496012, 35.479694, 60.298679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533258, 35.282764, 60.430706>,  <29.595337, 34.954544, 60.650749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533258, 35.282764, 60.430706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393620, -0.459375, -0.796265,
		-0.906078, -0.340109, -0.251692,
		-0.155196, 0.820549, -0.550103,
		29.486700, 35.528931, 60.265675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286003, 34.774227, 60.017353>,  <29.595337, 34.954544, 60.650749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286003, 34.774227, 60.017353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452848, 35.128674, 59.936539>,  <29.552956, 35.341343, 59.888050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452848, 35.128674, 59.936539>,  <29.286003, 34.774227, 60.017353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452848, 35.128674, 59.936539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335749, -0.356805, -0.871758,
		-0.844565, 0.295789, -0.446340,
		0.417113, 0.886115, -0.202034,
		29.577982, 35.394508, 59.875927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095415, 34.903107, 59.377922>,  <29.286003, 34.774227, 60.017353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095415, 34.903107, 59.377922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415577, 35.137676, 59.427650>,  <29.607674, 35.278419, 59.457485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415577, 35.137676, 59.427650>,  <29.095415, 34.903107, 59.377922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415577, 35.137676, 59.427650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420923, -0.402145, -0.813083,
		-0.426820, 0.703124, -0.568719,
		0.800405, 0.586427, 0.124318,
		29.655699, 35.313606, 59.464947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280125, 35.167980, 58.764896>,  <29.095415, 34.903107, 59.377922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280125, 35.167980, 58.764896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615698, 35.205605, 58.979317>,  <29.817041, 35.228180, 59.107967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615698, 35.205605, 58.979317>,  <29.280125, 35.167980, 58.764896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615698, 35.205605, 58.979317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535155, -0.321756, -0.781078,
		0.099010, 0.942139, -0.320267,
		0.838931, 0.094058, 0.536048,
		29.867378, 35.233822, 59.140133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742064, 35.499832, 58.279991>,  <29.280125, 35.167980, 58.764896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742064, 35.499832, 58.279991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976954, 35.321774, 58.550400>,  <30.117887, 35.214939, 58.712646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976954, 35.321774, 58.550400>,  <29.742064, 35.499832, 58.279991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976954, 35.321774, 58.550400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466474, -0.496431, -0.732091,
		0.661490, 0.745250, -0.083866,
		0.587225, -0.445149, 0.676024,
		30.153122, 35.188229, 58.753208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347216, 35.640350, 58.051163>,  <29.742064, 35.499832, 58.279991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347216, 35.640350, 58.051163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432760, 35.334908, 58.294857>,  <30.484087, 35.151642, 58.441074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432760, 35.334908, 58.294857>,  <30.347216, 35.640350, 58.051163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432760, 35.334908, 58.294857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563374, -0.413089, -0.715518,
		0.798043, 0.496251, 0.341851,
		0.213862, -0.763604, 0.609238,
		30.496920, 35.105827, 58.477627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104527, 35.645000, 58.019279>,  <30.347216, 35.640350, 58.051163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104527, 35.645000, 58.019279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947290, 35.294792, 58.131660>,  <30.852949, 35.084667, 58.199089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947290, 35.294792, 58.131660>,  <31.104527, 35.645000, 58.019279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947290, 35.294792, 58.131660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564584, -0.470992, -0.677799,
		0.725758, -0.107813, 0.679449,
		-0.393091, -0.875524, 0.280956,
		30.829363, 35.032135, 58.215946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645542, 35.191723, 57.911720>,  <31.104527, 35.645000, 58.019279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645542, 35.191723, 57.911720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347332, 34.926331, 57.936977>,  <31.168406, 34.767094, 57.952129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347332, 34.926331, 57.936977>,  <31.645542, 35.191723, 57.911720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347332, 34.926331, 57.936977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497455, -0.616999, -0.609796,
		0.443545, -0.423209, 0.790040,
		-0.745525, -0.663481, 0.063139,
		31.123674, 34.727287, 57.955917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974081, 34.581779, 57.897514>,  <31.645542, 35.191723, 57.911720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974081, 34.581779, 57.897514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600279, 34.458408, 57.826439>,  <31.375998, 34.384388, 57.783794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600279, 34.458408, 57.826439>,  <31.974081, 34.581779, 57.897514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600279, 34.458408, 57.826439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343439, -0.650097, -0.677808,
		0.093537, -0.694440, 0.713444,
		-0.934505, -0.308425, -0.177690,
		31.319927, 34.365883, 57.773132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962097, 33.818630, 58.051064>,  <31.974081, 34.581779, 57.897514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962097, 33.818630, 58.051064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656399, 33.904560, 57.807823>,  <31.472980, 33.956116, 57.661880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656399, 33.904560, 57.807823>,  <31.962097, 33.818630, 58.051064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656399, 33.904560, 57.807823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441324, -0.513356, -0.736001,
		-0.470279, -0.830854, 0.297525,
		-0.764246, 0.214821, -0.608096,
		31.427126, 33.969006, 57.625393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753134, 33.230568, 57.785442>,  <31.962097, 33.818630, 58.051064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753134, 33.230568, 57.785442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594877, 33.504875, 57.541084>,  <31.499924, 33.669460, 57.394470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594877, 33.504875, 57.541084>,  <31.753134, 33.230568, 57.785442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594877, 33.504875, 57.541084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274291, -0.546584, -0.791208,
		-0.876490, -0.480597, 0.028151,
		-0.395639, 0.685764, -0.610899,
		31.476185, 33.710606, 57.357815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682642, 32.818356, 57.330116>,  <31.753134, 33.230568, 57.785442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682642, 32.818356, 57.330116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649498, 33.175976, 57.154026>,  <31.629612, 33.390549, 57.048370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649498, 33.175976, 57.154026>,  <31.682642, 32.818356, 57.330116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649498, 33.175976, 57.154026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327426, -0.392801, -0.859360,
		-0.941236, -0.215349, -0.260190,
		-0.082859, 0.894054, -0.440229,
		31.624640, 33.444191, 57.021957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313461, 32.773399, 56.659206>,  <31.682642, 32.818356, 57.330116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313461, 32.773399, 56.659206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533787, 33.106388, 56.635212>,  <31.665983, 33.306179, 56.620815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533787, 33.106388, 56.635212>,  <31.313461, 32.773399, 56.659206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533787, 33.106388, 56.635212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248972, -0.232480, -0.940195,
		-0.796628, 0.502939, -0.335315,
		0.550815, 0.832469, -0.059982,
		31.699032, 33.356129, 56.617218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.679966, 35.356583, 50.691383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.690445, 35.235229, 51.072388>,  <47.696732, 35.162418, 51.300991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.690445, 35.235229, 51.072388>,  <47.679966, 35.356583, 50.691383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.690445, 35.235229, 51.072388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983544, 0.162564, 0.078831,
		-0.178759, -0.938898, -0.294134,
		0.026199, -0.303386, 0.952508,
		47.698303, 35.144215, 51.358139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.316559, 34.688229, 50.765965>,  <47.679966, 35.356583, 50.691383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.316559, 34.688229, 50.765965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.314102, 34.874371, 51.120007>,  <47.312626, 34.986057, 51.332432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.314102, 34.874371, 51.120007>,  <47.316559, 34.688229, 50.765965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.314102, 34.874371, 51.120007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999362, -0.033992, 0.010934,
		0.035175, -0.884470, 0.465269,
		-0.006145, 0.465357, 0.885102,
		47.312260, 35.013977, 51.385536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.872223, 34.320248, 51.177143>,  <47.316559, 34.688229, 50.765965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.872223, 34.320248, 51.177143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.895557, 34.664268, 51.379887>,  <46.909557, 34.870682, 51.501534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.895557, 34.664268, 51.379887>,  <46.872223, 34.320248, 51.177143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.895557, 34.664268, 51.379887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990312, 0.113946, -0.079364,
		-0.126012, -0.497321, 0.858366,
		0.058338, 0.860051, 0.506862,
		46.913059, 34.922283, 51.531944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.435089, 34.265755, 51.821762>,  <46.872223, 34.320248, 51.177143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.435089, 34.265755, 51.821762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.456047, 34.653099, 51.724163>,  <46.468620, 34.885506, 51.665604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.456047, 34.653099, 51.724163>,  <46.435089, 34.265755, 51.821762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456047, 34.653099, 51.724163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988419, 0.015441, -0.150961,
		-0.142417, 0.249077, 0.957955,
		0.052392, 0.968361, -0.243994,
		46.471764, 34.943607, 51.650967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788948, 34.471157, 52.090572>,  <46.435089, 34.265755, 51.821762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788948, 34.471157, 52.090572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.909912, 34.755634, 51.836720>,  <45.982491, 34.926319, 51.684410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.909912, 34.755634, 51.836720>,  <45.788948, 34.471157, 52.090572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.909912, 34.755634, 51.836720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953159, 0.221399, -0.206082,
		-0.006058, 0.667223, 0.744834,
		0.302408, 0.711194, -0.634628,
		46.000633, 34.968994, 51.646332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531719, 35.127857, 52.383156>,  <45.788948, 34.471157, 52.090572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531719, 35.127857, 52.383156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.613243, 35.150658, 51.992214>,  <45.662159, 35.164337, 51.757648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.613243, 35.150658, 51.992214>,  <45.531719, 35.127857, 52.383156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.613243, 35.150658, 51.992214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967387, 0.165102, -0.192102,
		0.150413, 0.984628, 0.088787,
		0.203808, 0.056997, -0.977350,
		45.674385, 35.167755, 51.699009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181293, 35.699600, 52.215866>,  <45.531719, 35.127857, 52.383156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181293, 35.699600, 52.215866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.248901, 35.527836, 51.861004>,  <45.289467, 35.424778, 51.648087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.248901, 35.527836, 51.861004>,  <45.181293, 35.699600, 52.215866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.248901, 35.527836, 51.861004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947387, 0.177464, -0.266391,
		0.271829, 0.885500, -0.376827,
		0.169016, -0.429414, -0.887151,
		45.299606, 35.399014, 51.594860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.759720, 36.130020, 51.672279>,  <45.181293, 35.699600, 52.215866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.759720, 36.130020, 51.672279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.840408, 35.777420, 51.501507>,  <44.888821, 35.565861, 51.399044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.840408, 35.777420, 51.501507>,  <44.759720, 36.130020, 51.672279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840408, 35.777420, 51.501507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969526, -0.117835, -0.214790,
		0.139029, 0.457252, -0.878403,
		0.201719, -0.881496, -0.426935,
		44.900925, 35.512970, 51.373425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.512486, 36.226994, 50.977299>,  <44.759720, 36.130020, 51.672279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.512486, 36.226994, 50.977299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.558411, 35.829700, 50.984333>,  <44.585968, 35.591324, 50.988556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.558411, 35.829700, 50.984333>,  <44.512486, 36.226994, 50.977299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558411, 35.829700, 50.984333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958219, -0.115402, -0.261724,
		0.261982, 0.013196, -0.964982,
		0.114815, -0.993231, 0.017589,
		44.592854, 35.531731, 50.989609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.331196, 35.904011, 50.284603>,  <44.512486, 36.226994, 50.977299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.331196, 35.904011, 50.284603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.312836, 35.611977, 50.557327>,  <44.301819, 35.436756, 50.720963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.312836, 35.611977, 50.557327>,  <44.331196, 35.904011, 50.284603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312836, 35.611977, 50.557327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933930, -0.210848, -0.288648,
		0.354496, -0.650014, -0.672171,
		-0.045899, -0.730085, 0.681812,
		44.299065, 35.392952, 50.761871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960415, 35.234123, 50.003521>,  <44.331196, 35.904011, 50.284603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960415, 35.234123, 50.003521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.905346, 35.212185, 50.399105>,  <43.872303, 35.199024, 50.636456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.905346, 35.212185, 50.399105>,  <43.960415, 35.234123, 50.003521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905346, 35.212185, 50.399105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987263, -0.072779, -0.141472,
		0.079734, -0.995839, -0.044124,
		-0.137672, -0.054842, 0.988958,
		43.864044, 35.195732, 50.695793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606163, 34.620842, 50.084614>,  <43.960415, 35.234123, 50.003521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606163, 34.620842, 50.084614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.543102, 34.828571, 50.420578>,  <43.505264, 34.953209, 50.622158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.543102, 34.828571, 50.420578>,  <43.606163, 34.620842, 50.084614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543102, 34.828571, 50.420578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987419, -0.072404, -0.140573,
		-0.012189, -0.851507, 0.524201,
		-0.157653, 0.519320, 0.839912,
		43.495808, 34.984367, 50.672550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013859, 34.248058, 50.413769>,  <43.606163, 34.620842, 50.084614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013859, 34.248058, 50.413769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.024788, 34.621456, 50.556789>,  <43.031345, 34.845493, 50.642601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.024788, 34.621456, 50.556789>,  <43.013859, 34.248058, 50.413769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024788, 34.621456, 50.556789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998672, 0.041118, -0.031032,
		-0.043670, -0.356229, 0.933378,
		0.027324, 0.933494, 0.357551,
		43.032986, 34.901505, 50.664055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556576, 34.231213, 51.082897>,  <43.013859, 34.248058, 50.413769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556576, 34.231213, 51.082897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.587143, 34.602345, 50.936855>,  <42.605484, 34.825024, 50.849232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.587143, 34.602345, 50.936855>,  <42.556576, 34.231213, 51.082897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587143, 34.602345, 50.936855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989403, 0.115905, 0.087449,
		0.123454, 0.354550, 0.926852,
		0.076422, 0.927826, -0.365102,
		42.610069, 34.880692, 50.827324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941490, 34.394817, 51.243343>,  <42.556576, 34.231213, 51.082897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941490, 34.394817, 51.243343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.071247, 34.725979, 51.060326>,  <42.149101, 34.924675, 50.950516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.071247, 34.725979, 51.060326>,  <41.941490, 34.394817, 51.243343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071247, 34.725979, 51.060326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937813, 0.344688, -0.041188,
		0.123609, 0.442448, 0.888234,
		0.324388, 0.827907, -0.457540,
		42.168564, 34.974350, 50.923065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688225, 34.983749, 51.582771>,  <41.941490, 34.394817, 51.243343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688225, 34.983749, 51.582771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.756588, 35.114014, 51.210808>,  <41.797604, 35.192173, 50.987629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.756588, 35.114014, 51.210808>,  <41.688225, 34.983749, 51.582771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756588, 35.114014, 51.210808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954645, 0.288276, -0.074495,
		0.243812, 0.900469, 0.360155,
		0.170904, 0.325658, -0.929913,
		41.807858, 35.211712, 50.931835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403561, 35.610481, 51.551384>,  <41.688225, 34.983749, 51.582771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403561, 35.610481, 51.551384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.440140, 35.515209, 51.164623>,  <41.462086, 35.458046, 50.932568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.440140, 35.515209, 51.164623>,  <41.403561, 35.610481, 51.551384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440140, 35.515209, 51.164623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881145, 0.432995, -0.189997,
		0.463919, 0.869359, -0.170276,
		0.091447, -0.238181, -0.966906,
		41.467575, 35.443756, 50.874550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276119, 36.239380, 51.001537>,  <41.403561, 35.610481, 51.551384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276119, 36.239380, 51.001537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.201023, 35.903660, 50.797447>,  <41.155964, 35.702229, 50.674992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.201023, 35.903660, 50.797447>,  <41.276119, 36.239380, 51.001537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201023, 35.903660, 50.797447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819242, 0.420368, -0.390041,
		0.541843, 0.344770, -0.766511,
		-0.187742, -0.839299, -0.510225,
		41.144699, 35.651871, 50.644379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078457, 36.493580, 50.410130>,  <41.276119, 36.239380, 51.001537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078457, 36.493580, 50.410130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.956371, 36.116268, 50.357864>,  <40.883121, 35.889881, 50.326504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.956371, 36.116268, 50.357864>,  <41.078457, 36.493580, 50.410130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956371, 36.116268, 50.357864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823115, 0.330318, -0.461922,
		0.478882, -0.033430, -0.877242,
		-0.305211, -0.943278, -0.130667,
		40.864807, 35.833286, 50.318665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917580, 36.390820, 49.701286>,  <41.078457, 36.493580, 50.410130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917580, 36.390820, 49.701286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.712200, 36.109032, 49.897285>,  <40.588974, 35.939960, 50.014885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.712200, 36.109032, 49.897285>,  <40.917580, 36.390820, 49.701286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712200, 36.109032, 49.897285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814272, 0.219775, -0.537271,
		0.270800, -0.674853, -0.686470,
		-0.513447, -0.704467, 0.489999,
		40.558167, 35.897690, 50.044285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576584, 36.058468, 49.164062>,  <40.917580, 36.390820, 49.701286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576584, 36.058468, 49.164062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.397541, 35.988213, 49.514786>,  <40.290115, 35.946060, 49.725220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.397541, 35.988213, 49.514786>,  <40.576584, 36.058468, 49.164062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397541, 35.988213, 49.514786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880055, 0.260409, -0.397102,
		-0.158584, -0.949389, -0.271132,
		-0.447610, -0.175637, 0.876811,
		40.263260, 35.935520, 49.777828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016346, 35.571976, 49.116302>,  <40.576584, 36.058468, 49.164062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016346, 35.571976, 49.116302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.962612, 35.837532, 49.410568>,  <39.930370, 35.996864, 49.587128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.962612, 35.837532, 49.410568>,  <40.016346, 35.571976, 49.116302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962612, 35.837532, 49.410568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779304, 0.387783, -0.492249,
		-0.612078, -0.639435, 0.465278,
		-0.134334, 0.663888, 0.735667,
		39.922314, 36.036697, 49.631268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311489, 35.493164, 49.406990>,  <40.016346, 35.571976, 49.116302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311489, 35.493164, 49.406990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.434563, 35.872078, 49.442703>,  <39.508408, 36.099426, 49.464130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.434563, 35.872078, 49.442703>,  <39.311489, 35.493164, 49.406990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434563, 35.872078, 49.442703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865306, 0.317608, -0.387776,
		-0.395693, 0.042056, 0.917419,
		0.307688, 0.947289, 0.089284,
		39.526871, 36.156265, 49.469490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946880, 34.761486, 49.372780>,  <39.311489, 35.493164, 49.406990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946880, 34.761486, 49.372780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.005474, 34.388947, 49.239429>,  <39.040630, 34.165424, 49.159420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.005474, 34.388947, 49.239429>,  <38.946880, 34.761486, 49.372780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005474, 34.388947, 49.239429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649626, 0.163583, -0.742446,
		0.746009, 0.325323, -0.581065,
		0.146483, -0.931347, -0.333372,
		39.049419, 34.109543, 49.139420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894844, 34.770416, 48.736134>,  <38.946880, 34.761486, 49.372780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894844, 34.770416, 48.736134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.844330, 34.373665, 48.742111>,  <38.814022, 34.135612, 48.745697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.844330, 34.373665, 48.742111>,  <38.894844, 34.770416, 48.736134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844330, 34.373665, 48.742111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694019, 0.077577, -0.715765,
		0.708794, -0.100761, -0.698182,
		-0.126284, -0.991882, 0.014944,
		38.806446, 34.076099, 48.746593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007145, 34.457497, 47.994663>,  <38.894844, 34.770416, 48.736134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007145, 34.457497, 47.994663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.758255, 34.205044, 48.179924>,  <38.608921, 34.053570, 48.291080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.758255, 34.205044, 48.179924>,  <39.007145, 34.457497, 47.994663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758255, 34.205044, 48.179924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589999, -0.010783, -0.807332,
		0.514530, -0.775598, -0.365660,
		-0.622221, -0.631136, 0.463150,
		38.571587, 34.015705, 48.318871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688786, 34.081417, 47.435795>,  <39.007145, 34.457497, 47.994663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688786, 34.081417, 47.435795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.452408, 33.998356, 47.747608>,  <38.310581, 33.948517, 47.934696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.452408, 33.998356, 47.747608>,  <38.688786, 34.081417, 47.435795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452408, 33.998356, 47.747608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740574, -0.243547, -0.626287,
		0.319906, -0.947398, -0.009864,
		-0.590941, -0.207658, 0.779530,
		38.275127, 33.936058, 47.981468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493767, 33.378212, 47.353802>,  <38.688786, 34.081417, 47.435795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493767, 33.378212, 47.353802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.211628, 33.561916, 47.569790>,  <38.042343, 33.672138, 47.699383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.211628, 33.561916, 47.569790>,  <38.493767, 33.378212, 47.353802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211628, 33.561916, 47.569790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704698, -0.371868, -0.604247,
		-0.076709, -0.806719, 0.585935,
		-0.705348, 0.459259, 0.539968,
		38.000023, 33.699696, 47.731781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930531, 32.943886, 47.434658>,  <38.493767, 33.378212, 47.353802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930531, 32.943886, 47.434658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.748863, 33.295933, 47.489956>,  <37.639862, 33.507160, 47.523136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.748863, 33.295933, 47.489956>,  <37.930531, 32.943886, 47.434658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748863, 33.295933, 47.489956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787191, -0.323769, -0.524884,
		-0.417203, -0.347214, 0.839871,
		-0.454172, 0.880123, 0.138247,
		37.612610, 33.559971, 47.531429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304356, 32.781387, 47.398499>,  <37.930531, 32.943886, 47.434658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304356, 32.781387, 47.398499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.235920, 33.175365, 47.388626>,  <37.194859, 33.411751, 47.382702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.235920, 33.175365, 47.388626>,  <37.304356, 32.781387, 47.398499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235920, 33.175365, 47.388626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851547, -0.160425, -0.499130,
		-0.495577, -0.064374, 0.866175,
		-0.171088, 0.984947, -0.024685,
		37.184593, 33.470848, 47.381222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657101, 32.972336, 47.857349>,  <37.304356, 32.781387, 47.398499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657101, 32.972336, 47.857349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714222, 33.253765, 47.578899>,  <36.748497, 33.422623, 47.411827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.714222, 33.253765, 47.578899>,  <36.657101, 32.972336, 47.857349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714222, 33.253765, 47.578899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919525, -0.165896, -0.356303,
		-0.366169, 0.690991, 0.623259,
		0.142806, 0.703570, -0.696129,
		36.757065, 33.464836, 47.370060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025688, 33.315144, 47.799824>,  <36.657101, 32.972336, 47.857349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025688, 33.315144, 47.799824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.216267, 33.430244, 47.467510>,  <36.330612, 33.499306, 47.268124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.216267, 33.430244, 47.467510>,  <36.025688, 33.315144, 47.799824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216267, 33.430244, 47.467510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863948, -0.022038, -0.503098,
		-0.163075, 0.957452, 0.238101,
		0.476445, 0.287750, -0.830783,
		36.359200, 33.516571, 47.218277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624691, 33.806374, 47.511967>,  <36.025688, 33.315144, 47.799824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624691, 33.806374, 47.511967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.864437, 33.702976, 47.208931>,  <36.008286, 33.640938, 47.027111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.864437, 33.702976, 47.208931>,  <35.624691, 33.806374, 47.511967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864437, 33.702976, 47.208931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789340, -0.033572, -0.613037,
		0.133033, 0.965429, -0.224163,
		0.599370, -0.258495, -0.757586,
		36.044247, 33.625427, 46.981655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542343, 34.348434, 46.987362>,  <35.624691, 33.806374, 47.511967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542343, 34.348434, 46.987362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.676022, 33.997990, 46.848373>,  <35.756229, 33.787724, 46.764980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.676022, 33.997990, 46.848373>,  <35.542343, 34.348434, 46.987362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676022, 33.997990, 46.848373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753808, -0.027162, -0.656533,
		0.565760, 0.481337, -0.669500,
		0.334199, -0.876114, -0.347468,
		35.776279, 33.735157, 46.744133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354298, 34.356033, 46.268330>,  <35.542343, 34.348434, 46.987362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354298, 34.356033, 46.268330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.443150, 33.972908, 46.341267>,  <35.496460, 33.743031, 46.385029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.443150, 33.972908, 46.341267>,  <35.354298, 34.356033, 46.268330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443150, 33.972908, 46.341267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867388, -0.279533, -0.411704,
		0.445306, -0.066707, -0.892890,
		0.222129, -0.957816, 0.182338,
		35.509789, 33.685562, 46.395969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.098921, 33.229733, 50.699528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.414116, 33.192055, 50.942905>,  <30.603233, 33.169449, 51.088932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.414116, 33.192055, 50.942905>,  <30.098921, 33.229733, 50.699528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414116, 33.192055, 50.942905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579304, -0.221258, -0.784507,
		0.208521, 0.970655, -0.119780,
		0.787988, -0.094198, 0.608442,
		30.650513, 33.163795, 51.125439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704498, 33.629654, 50.427269>,  <30.098921, 33.229733, 50.699528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704498, 33.629654, 50.427269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.879478, 33.359932, 50.665245>,  <30.984467, 33.198097, 50.808029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.879478, 33.359932, 50.665245>,  <30.704498, 33.629654, 50.427269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879478, 33.359932, 50.665245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643151, -0.227787, -0.731075,
		0.628485, 0.702444, 0.334033,
		0.437450, -0.674304, 0.594938,
		31.010714, 33.157642, 50.843727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309818, 33.842388, 50.279842>,  <30.704498, 33.629654, 50.427269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309818, 33.842388, 50.279842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.319860, 33.469467, 50.424168>,  <31.325886, 33.245716, 50.510761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.319860, 33.469467, 50.424168>,  <31.309818, 33.842388, 50.279842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319860, 33.469467, 50.424168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569850, -0.283198, -0.771407,
		0.821365, 0.224975, 0.524162,
		0.025105, -0.932301, 0.360811,
		31.327393, 33.189777, 50.532410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008507, 33.670551, 50.265350>,  <31.309818, 33.842388, 50.279842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008507, 33.670551, 50.265350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.818827, 33.320877, 50.307171>,  <31.705017, 33.111073, 50.332264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.818827, 33.320877, 50.307171>,  <32.008507, 33.670551, 50.265350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818827, 33.320877, 50.307171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601472, -0.408390, -0.686622,
		0.642932, -0.262715, 0.719458,
		-0.474205, -0.874185, 0.104551,
		31.676565, 33.058620, 50.338535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528358, 33.128445, 50.140209>,  <32.008507, 33.670551, 50.265350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528358, 33.128445, 50.140209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.188046, 32.923878, 50.091835>,  <31.983858, 32.801136, 50.062809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.188046, 32.923878, 50.091835>,  <32.528358, 33.128445, 50.140209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188046, 32.923878, 50.091835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412155, -0.506565, -0.757311,
		0.326044, -0.694147, 0.641759,
		-0.850778, -0.511421, -0.120934,
		31.932812, 32.770451, 50.055553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758736, 32.368328, 49.981495>,  <32.528358, 33.128445, 50.140209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758736, 32.368328, 49.981495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.393410, 32.425747, 49.829048>,  <32.174213, 32.460197, 49.737579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.393410, 32.425747, 49.829048>,  <32.758736, 32.368328, 49.981495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393410, 32.425747, 49.829048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226304, -0.599157, -0.767983,
		-0.338594, -0.787658, 0.514732,
		-0.913313, 0.143548, -0.381121,
		32.119415, 32.468811, 49.714710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592014, 31.773066, 49.774166>,  <32.758736, 32.368328, 49.981495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592014, 31.773066, 49.774166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.350849, 32.018295, 49.569954>,  <32.206150, 32.165432, 49.447426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.350849, 32.018295, 49.569954>,  <32.592014, 31.773066, 49.774166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350849, 32.018295, 49.569954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225642, -0.482752, -0.846189,
		-0.765237, -0.625371, 0.152720,
		-0.602908, 0.613075, -0.510530,
		32.169975, 32.202217, 49.416794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173470, 31.366978, 49.304699>,  <32.592014, 31.773066, 49.774166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173470, 31.366978, 49.304699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.163750, 31.728579, 49.133965>,  <32.157917, 31.945539, 49.031525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.163750, 31.728579, 49.133965>,  <32.173470, 31.366978, 49.304699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163750, 31.728579, 49.133965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229078, -0.410569, -0.882585,
		-0.973105, -0.119227, -0.197109,
		-0.024301, 0.904001, -0.426839,
		32.156460, 31.999779, 49.005913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788691, 31.349527, 48.689133>,  <32.173470, 31.366978, 49.304699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788691, 31.349527, 48.689133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.976303, 31.696920, 48.624943>,  <32.088871, 31.905355, 48.586430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.976303, 31.696920, 48.624943>,  <31.788691, 31.349527, 48.689133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976303, 31.696920, 48.624943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370309, -0.358344, -0.857007,
		-0.801799, 0.342536, -0.489680,
		0.469030, 0.868481, -0.160475,
		32.117012, 31.957464, 48.576801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616081, 31.578737, 48.022747>,  <31.788691, 31.349527, 48.689133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616081, 31.578737, 48.022747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.967299, 31.747732, 48.112679>,  <32.178028, 31.849129, 48.166637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.967299, 31.747732, 48.112679>,  <31.616081, 31.578737, 48.022747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967299, 31.747732, 48.112679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329171, -0.192122, -0.924519,
		-0.347402, 0.885774, -0.307761,
		0.878043, 0.422485, 0.224827,
		32.230713, 31.874477, 48.180126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755119, 32.073051, 47.432018>,  <31.616081, 31.578737, 48.022747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755119, 32.073051, 47.432018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.082615, 31.958527, 47.631092>,  <32.279114, 31.889812, 47.750538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.082615, 31.958527, 47.631092>,  <31.755119, 32.073051, 47.432018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082615, 31.958527, 47.631092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499598, -0.071927, -0.863266,
		0.282960, 0.955433, 0.084151,
		0.818740, -0.286312, 0.497684,
		32.328236, 31.872633, 47.780396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355267, 32.482281, 47.165539>,  <31.755119, 32.073051, 47.432018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355267, 32.482281, 47.165539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.552536, 32.189751, 47.353981>,  <32.670898, 32.014233, 47.467045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.552536, 32.189751, 47.353981>,  <32.355267, 32.482281, 47.165539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552536, 32.189751, 47.353981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620042, -0.084348, -0.780021,
		0.610189, 0.676789, 0.411856,
		0.493171, -0.731329, 0.471106,
		32.700489, 31.970352, 47.495312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960850, 33.128521, 47.155014>,  <32.355267, 32.482281, 47.165539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960850, 33.128521, 47.155014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.263580, 33.340645, 47.002182>,  <32.445221, 33.467918, 46.910484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.263580, 33.340645, 47.002182>,  <31.960850, 33.128521, 47.155014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263580, 33.340645, 47.002182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155906, 0.714161, 0.682398,
		0.634746, -0.456890, 0.623176,
		0.756829, 0.530306, -0.382079,
		32.490627, 33.499737, 46.887558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452202, 33.510937, 47.740898>,  <31.960850, 33.128521, 47.155014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452202, 33.510937, 47.740898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.439148, 33.702034, 47.389740>,  <32.431316, 33.816692, 47.179047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.439148, 33.702034, 47.389740>,  <32.452202, 33.510937, 47.740898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439148, 33.702034, 47.389740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126864, 0.869275, 0.477772,
		0.991383, 0.126965, 0.032240,
		-0.032635, 0.477745, -0.877892,
		32.429359, 33.845356, 47.126373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906166, 34.085861, 47.719566>,  <32.452202, 33.510937, 47.740898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906166, 34.085861, 47.719566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.661217, 34.181309, 47.418087>,  <32.514248, 34.238579, 47.237202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.661217, 34.181309, 47.418087>,  <32.906166, 34.085861, 47.719566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661217, 34.181309, 47.418087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054684, 0.938291, 0.341497,
		0.788673, 0.250340, -0.561538,
		-0.612377, 0.238623, -0.753694,
		32.477505, 34.252895, 47.191978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039288, 34.878777, 47.580467>,  <32.906166, 34.085861, 47.719566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039288, 34.878777, 47.580467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.682625, 34.809990, 47.412956>,  <32.468628, 34.768719, 47.312450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.682625, 34.809990, 47.412956>,  <33.039288, 34.878777, 47.580467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682625, 34.809990, 47.412956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357159, 0.835633, 0.417319,
		0.278179, 0.521675, -0.806518,
		-0.891658, -0.171966, -0.418777,
		32.415127, 34.758400, 47.287323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814838, 35.494629, 47.216736>,  <33.039288, 34.878777, 47.580467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814838, 35.494629, 47.216736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.493435, 35.275639, 47.310234>,  <32.300591, 35.144245, 47.366333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.493435, 35.275639, 47.310234>,  <32.814838, 35.494629, 47.216736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493435, 35.275639, 47.310234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372120, 0.768424, 0.520625,
		-0.464645, 0.331348, -0.821166,
		-0.803512, -0.547479, 0.233744,
		32.252380, 35.111397, 47.380356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306973, 36.081806, 47.176113>,  <32.814838, 35.494629, 47.216736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306973, 36.081806, 47.176113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.086414, 35.797440, 47.350727>,  <31.954081, 35.626820, 47.455494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.086414, 35.797440, 47.350727>,  <32.306973, 36.081806, 47.176113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086414, 35.797440, 47.350727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555170, 0.703271, 0.444068,
		-0.622699, 0.002503, -0.782458,
		-0.551391, -0.710918, 0.436536,
		31.920998, 35.584164, 47.481689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641453, 36.255039, 47.073463>,  <32.306973, 36.081806, 47.176113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641453, 36.255039, 47.073463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.617714, 36.017639, 47.394520>,  <31.603472, 35.875198, 47.587154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.617714, 36.017639, 47.394520>,  <31.641453, 36.255039, 47.073463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617714, 36.017639, 47.394520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603705, 0.661690, 0.444642,
		-0.794995, -0.458170, -0.397570,
		-0.059346, -0.593503, 0.802640,
		31.599911, 35.839588, 47.635311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903713, 36.310345, 47.352970>,  <31.641453, 36.255039, 47.073463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903713, 36.310345, 47.352970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.129227, 36.184074, 47.658257>,  <31.264534, 36.108315, 47.841427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.129227, 36.184074, 47.658257>,  <30.903713, 36.310345, 47.352970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129227, 36.184074, 47.658257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439683, 0.667538, 0.600893,
		-0.699161, -0.674347, 0.237551,
		0.563784, -0.315674, 0.763215,
		31.298363, 36.089371, 47.887222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420986, 36.235455, 47.818363>,  <30.903713, 36.310345, 47.352970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420986, 36.235455, 47.818363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.772152, 36.253925, 48.008995>,  <30.982851, 36.265007, 48.123375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.772152, 36.253925, 48.008995>,  <30.420986, 36.235455, 47.818363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772152, 36.253925, 48.008995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359367, 0.721295, 0.592105,
		-0.316417, -0.691087, 0.649830,
		0.877915, 0.046176, 0.476584,
		31.035526, 36.267776, 48.151970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252935, 36.298992, 48.486153>,  <30.420986, 36.235455, 47.818363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252935, 36.298992, 48.486153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.626564, 36.439983, 48.463295>,  <30.850742, 36.524578, 48.449581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.626564, 36.439983, 48.463295>,  <30.252935, 36.298992, 48.486153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626564, 36.439983, 48.463295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232039, 0.720795, 0.653155,
		0.271412, -0.596836, 0.755065,
		0.934073, 0.352479, -0.057143,
		30.906786, 36.545727, 48.446152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448332, 36.339283, 49.232647>,  <30.252935, 36.298992, 48.486153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448332, 36.339283, 49.232647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.687241, 36.571259, 49.011040>,  <30.830585, 36.710445, 48.878075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.687241, 36.571259, 49.011040>,  <30.448332, 36.339283, 49.232647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687241, 36.571259, 49.011040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030171, 0.706521, 0.707049,
		0.801472, -0.405585, 0.439482,
		0.597271, 0.579939, -0.554019,
		30.866423, 36.745239, 48.844833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040785, 36.530853, 49.647495>,  <30.448332, 36.339283, 49.232647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040785, 36.530853, 49.647495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.051222, 36.805145, 49.356541>,  <31.057484, 36.969719, 49.181969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.051222, 36.805145, 49.356541>,  <31.040785, 36.530853, 49.647495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051222, 36.805145, 49.356541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113087, 0.720941, 0.683707,
		0.993243, -0.100098, -0.058735,
		0.026093, 0.685729, -0.727389,
		31.059050, 37.010864, 49.138325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600920, 36.939934, 49.817722>,  <31.040785, 36.530853, 49.647495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600920, 36.939934, 49.817722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.390486, 37.160992, 49.559166>,  <31.264225, 37.293625, 49.404034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.390486, 37.160992, 49.559166>,  <31.600920, 36.939934, 49.817722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390486, 37.160992, 49.559166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135721, 0.804891, 0.577694,
		0.839533, 0.216186, -0.498446,
		-0.526084, 0.552643, -0.646392,
		31.232660, 37.326786, 49.365250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980682, 37.645866, 49.710838>,  <31.600920, 36.939934, 49.817722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980682, 37.645866, 49.710838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.593231, 37.680122, 49.617523>,  <31.360760, 37.700676, 49.561535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.593231, 37.680122, 49.617523>,  <31.980682, 37.645866, 49.710838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593231, 37.680122, 49.617523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052842, 0.846293, 0.530090,
		0.242830, 0.525788, -0.815218,
		-0.968629, 0.085644, -0.233289,
		31.302643, 37.705814, 49.547535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907305, 38.378460, 49.723633>,  <31.980682, 37.645866, 49.710838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907305, 38.378460, 49.723633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.534502, 38.235744, 49.749146>,  <31.310822, 38.150116, 49.764454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.534502, 38.235744, 49.749146>,  <31.907305, 38.378460, 49.723633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534502, 38.235744, 49.749146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253318, 0.767082, 0.589419,
		-0.259223, 0.533185, -0.805306,
		-0.932005, -0.356790, 0.063779,
		31.254900, 38.128708, 49.768280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463861, 39.022461, 49.813023>,  <31.907305, 38.378460, 49.723633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463861, 39.022461, 49.813023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.233585, 38.721489, 49.941044>,  <31.095419, 38.540905, 50.017857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.233585, 38.721489, 49.941044>,  <31.463861, 39.022461, 49.813023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233585, 38.721489, 49.941044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348841, 0.580018, 0.736131,
		-0.739521, 0.312137, -0.596389,
		-0.575690, -0.752429, 0.320049,
		31.060879, 38.495762, 50.037060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255386, 39.754238, 49.501812>,  <31.463861, 39.022461, 49.813023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255386, 39.754238, 49.501812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.507065, 40.006237, 49.683895>,  <31.658072, 40.157436, 49.793144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.507065, 40.006237, 49.683895>,  <31.255386, 39.754238, 49.501812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507065, 40.006237, 49.683895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753372, -0.350284, -0.556536,
		-0.191163, 0.693113, -0.695019,
		0.629196, 0.629996, 0.455211,
		31.695824, 40.195236, 49.820457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612715, 40.064278, 48.972157>,  <31.255386, 39.754238, 49.501812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612715, 40.064278, 48.972157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.849060, 40.091030, 49.293755>,  <31.990868, 40.107082, 49.486713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.849060, 40.091030, 49.293755>,  <31.612715, 40.064278, 48.972157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849060, 40.091030, 49.293755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764623, -0.364329, -0.531617,
		0.257362, 0.928865, -0.266409,
		0.590861, 0.066884, 0.803996,
		32.026318, 40.111095, 49.534954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237144, 40.409645, 48.833378>,  <31.612715, 40.064278, 48.972157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237144, 40.409645, 48.833378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.358784, 40.194561, 49.147930>,  <32.431767, 40.065510, 49.336662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.358784, 40.194561, 49.147930>,  <32.237144, 40.409645, 48.833378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358784, 40.194561, 49.147930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873548, -0.171921, -0.455364,
		0.380048, 0.825417, 0.417433,
		0.304099, -0.537708, 0.786380,
		32.450012, 40.033249, 49.383842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005219, 40.607441, 49.001282>,  <32.237144, 40.409645, 48.833378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005219, 40.607441, 49.001282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937458, 40.253643, 49.175167>,  <32.896801, 40.041367, 49.279499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937458, 40.253643, 49.175167>,  <33.005219, 40.607441, 49.001282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937458, 40.253643, 49.175167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858173, -0.349275, -0.376226,
		0.484603, 0.309326, 0.818216,
		-0.169406, -0.884491, 0.434715,
		32.886635, 39.988297, 49.305580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597717, 40.403885, 49.357269>,  <33.005219, 40.607441, 49.001282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597717, 40.403885, 49.357269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.401550, 40.056900, 49.323814>,  <33.283852, 39.848709, 49.303741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.401550, 40.056900, 49.323814>,  <33.597717, 40.403885, 49.357269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401550, 40.056900, 49.323814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848833, -0.453727, -0.271319,
		0.197413, -0.204052, 0.958849,
		-0.490418, -0.867465, -0.083634,
		33.254425, 39.796661, 49.298725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142536, 40.012978, 49.548843>,  <33.597717, 40.403885, 49.357269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142536, 40.012978, 49.548843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.868004, 39.760090, 49.405037>,  <33.703285, 39.608356, 49.318752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.868004, 39.760090, 49.405037>,  <34.142536, 40.012978, 49.548843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868004, 39.760090, 49.405037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711383, -0.686388, -0.151016,
		-0.151291, -0.359398, 0.920839,
		-0.686327, -0.632222, -0.359514,
		33.662106, 39.570423, 49.297184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383896, 39.385254, 49.775211>,  <34.142536, 40.012978, 49.548843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383896, 39.385254, 49.775211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116131, 39.307461, 49.488419>,  <33.955471, 39.260784, 49.316341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116131, 39.307461, 49.488419>,  <34.383896, 39.385254, 49.775211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116131, 39.307461, 49.488419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568936, -0.754815, -0.326445,
		-0.477700, -0.626443, 0.615932,
		-0.669414, -0.194483, -0.716981,
		33.915306, 39.249115, 49.273323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312462, 38.703346, 49.810665>,  <34.383896, 39.385254, 49.775211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312462, 38.703346, 49.810665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.184513, 38.775551, 49.438622>,  <34.107742, 38.818874, 49.215397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.184513, 38.775551, 49.438622>,  <34.312462, 38.703346, 49.810665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184513, 38.775551, 49.438622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659842, -0.662037, -0.355409,
		-0.679920, -0.727409, 0.092659,
		-0.319871, 0.180510, -0.930107,
		34.088551, 38.829704, 49.159588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278217, 37.997715, 49.382553>,  <34.312462, 38.703346, 49.810665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278217, 37.997715, 49.382553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.332767, 38.317551, 49.148609>,  <34.365498, 38.509453, 49.008244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.332767, 38.317551, 49.148609>,  <34.278217, 37.997715, 49.382553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332767, 38.317551, 49.148609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779160, -0.451179, -0.435141,
		-0.611810, -0.396360, -0.684534,
		0.136375, 0.799585, -0.584863,
		34.373680, 38.557426, 48.973148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628849, 37.689117, 48.700588>,  <34.278217, 37.997715, 49.382553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628849, 37.689117, 48.700588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664341, 38.081711, 48.632687>,  <34.685635, 38.317268, 48.591946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664341, 38.081711, 48.632687>,  <34.628849, 37.689117, 48.700588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664341, 38.081711, 48.632687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808236, -0.170547, -0.563620,
		-0.582136, -0.087193, -0.808403,
		0.088727, 0.981484, -0.169754,
		34.690960, 38.376156, 48.581760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660828, 37.795620, 47.972660>,  <34.628849, 37.689117, 48.700588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660828, 37.795620, 47.972660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.859768, 38.093876, 48.150047>,  <34.979130, 38.272831, 48.256481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.859768, 38.093876, 48.150047>,  <34.660828, 37.795620, 47.972660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859768, 38.093876, 48.150047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827210, -0.253517, -0.501451,
		-0.261475, 0.616238, -0.742887,
		0.497348, 0.745641, 0.443469,
		35.008972, 38.317570, 48.283089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021709, 38.185581, 47.387924>,  <34.660828, 37.795620, 47.972660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021709, 38.185581, 47.387924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.211086, 38.273613, 47.729080>,  <35.324711, 38.326431, 47.933773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.211086, 38.273613, 47.729080>,  <35.021709, 38.185581, 47.387924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211086, 38.273613, 47.729080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870215, 0.032978, -0.491567,
		-0.136310, 0.974925, -0.175903,
		0.473440, 0.220079, 0.852889,
		35.353119, 38.339638, 47.984947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.688520, 41.927299, 55.103111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.367163, 42.122238, 54.966259>,  <30.174347, 42.239201, 54.884148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.367163, 42.122238, 54.966259>,  <30.688520, 41.927299, 55.103111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367163, 42.122238, 54.966259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327865, -0.117575, -0.937380,
		-0.497051, -0.865259, -0.065324,
		-0.803396, 0.487343, -0.342129,
		30.126144, 42.268440, 54.863621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440039, 41.441071, 54.605740>,  <30.688520, 41.927299, 55.103111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440039, 41.441071, 54.605740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.253569, 41.786785, 54.530178>,  <30.141687, 41.994213, 54.484840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.253569, 41.786785, 54.530178>,  <30.440039, 41.441071, 54.605740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253569, 41.786785, 54.530178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148280, -0.134175, -0.979801,
		-0.872178, -0.484770, -0.065608,
		-0.466175, 0.864289, -0.188906,
		30.113716, 42.046070, 54.473507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735229, 41.367092, 54.231239>,  <30.440039, 41.441071, 54.605740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735229, 41.367092, 54.231239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.895220, 41.722919, 54.142986>,  <29.991213, 41.936417, 54.090034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.895220, 41.722919, 54.142986>,  <29.735229, 41.367092, 54.231239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895220, 41.722919, 54.142986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083208, -0.274981, -0.957842,
		-0.912741, 0.364754, -0.184005,
		0.399975, 0.889573, -0.220636,
		30.015213, 41.989792, 54.076794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388214, 41.580906, 53.700508>,  <29.735229, 41.367092, 54.231239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388214, 41.580906, 53.700508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.729702, 41.786606, 53.667747>,  <29.934595, 41.910027, 53.648090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.729702, 41.786606, 53.667747>,  <29.388214, 41.580906, 53.700508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729702, 41.786606, 53.667747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053664, -0.243332, -0.968457,
		-0.517958, 0.822397, -0.235334,
		0.853721, 0.514249, -0.081903,
		29.985819, 41.940880, 53.643177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379171, 41.798771, 53.053501>,  <29.388214, 41.580906, 53.700508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379171, 41.798771, 53.053501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.761431, 41.867954, 53.148849>,  <29.990786, 41.909466, 53.206059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.761431, 41.867954, 53.148849>,  <29.379171, 41.798771, 53.053501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761431, 41.867954, 53.148849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270673, -0.196833, -0.942334,
		-0.116064, 0.965061, -0.234918,
		0.955649, 0.172957, 0.238371,
		30.048126, 41.919842, 53.220360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616459, 42.342869, 52.631908>,  <29.379171, 41.798771, 53.053501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616459, 42.342869, 52.631908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.922441, 42.114796, 52.751728>,  <30.106031, 41.977951, 52.823620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.922441, 42.114796, 52.751728>,  <29.616459, 42.342869, 52.631908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922441, 42.114796, 52.751728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321140, -0.065490, -0.944764,
		0.558309, 0.818901, 0.133013,
		0.764958, -0.570186, 0.299546,
		30.151928, 41.943741, 52.841591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113241, 42.352684, 52.051704>,  <29.616459, 42.342869, 52.631908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113241, 42.352684, 52.051704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.292068, 42.061954, 52.260262>,  <30.399364, 41.887516, 52.385395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.292068, 42.061954, 52.260262>,  <30.113241, 42.352684, 52.051704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292068, 42.061954, 52.260262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503952, -0.276921, -0.818137,
		0.739029, 0.628521, 0.242483,
		0.447067, -0.726826, 0.521396,
		30.426189, 41.843906, 52.416679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806553, 42.301510, 51.706215>,  <30.113241, 42.352684, 52.051704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806553, 42.301510, 51.706215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.774982, 41.962997, 51.916958>,  <30.756041, 41.759892, 52.043404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.774982, 41.962997, 51.916958>,  <30.806553, 42.301510, 51.706215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774982, 41.962997, 51.916958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444775, -0.502881, -0.741139,
		0.892158, 0.175839, 0.416094,
		-0.078925, -0.846281, 0.526858,
		30.751305, 41.709114, 52.075016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533339, 42.008190, 51.762932>,  <30.806553, 42.301510, 51.706215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533339, 42.008190, 51.762932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.247875, 41.730198, 51.798008>,  <31.076597, 41.563400, 51.819054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.247875, 41.730198, 51.798008>,  <31.533339, 42.008190, 51.762932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247875, 41.730198, 51.798008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420088, -0.524791, -0.740352,
		0.560553, -0.491519, 0.666476,
		-0.713657, -0.694985, 0.087692,
		31.033777, 41.521702, 51.824314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911682, 41.422543, 51.807240>,  <31.533339, 42.008190, 51.762932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911682, 41.422543, 51.807240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.541756, 41.315044, 51.699543>,  <31.319799, 41.250546, 51.634926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.541756, 41.315044, 51.699543>,  <31.911682, 41.422543, 51.807240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541756, 41.315044, 51.699543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375690, -0.534033, -0.757408,
		0.059763, -0.801615, 0.594846,
		-0.924817, -0.268743, -0.269243,
		31.264311, 41.234421, 51.618771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938286, 40.690804, 51.758282>,  <31.911682, 41.422543, 51.807240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938286, 40.690804, 51.758282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.632711, 40.824757, 51.537643>,  <31.449366, 40.905128, 51.405262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.632711, 40.824757, 51.537643>,  <31.938286, 40.690804, 51.758282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632711, 40.824757, 51.537643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230617, -0.656654, -0.718068,
		-0.602672, -0.675766, 0.424414,
		-0.763939, 0.334882, -0.551590,
		31.403530, 40.925220, 51.372166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849775, 40.181229, 51.414879>,  <31.938286, 40.690804, 51.758282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849775, 40.181229, 51.414879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.627579, 40.434093, 51.198803>,  <31.494261, 40.585812, 51.069157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.627579, 40.434093, 51.198803>,  <31.849775, 40.181229, 51.414879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627579, 40.434093, 51.198803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109162, -0.588575, -0.801038,
		-0.824326, -0.503938, 0.257941,
		-0.555491, 0.632159, -0.540189,
		31.460932, 40.623741, 51.036747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400444, 39.805103, 50.976147>,  <31.849775, 40.181229, 51.414879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400444, 39.805103, 50.976147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.409422, 40.157269, 50.786678>,  <31.414808, 40.368568, 50.672997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.409422, 40.157269, 50.786678>,  <31.400444, 39.805103, 50.976147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409422, 40.157269, 50.786678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344089, -0.451643, -0.823177,
		-0.938669, -0.144509, -0.313079,
		0.022444, 0.880418, -0.473668,
		31.416155, 40.421394, 50.644577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078562, 39.692665, 50.308243>,  <31.400444, 39.805103, 50.976147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078562, 39.692665, 50.308243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.336210, 39.998470, 50.318237>,  <31.490799, 40.181953, 50.324234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.336210, 39.998470, 50.318237>,  <31.078562, 39.692665, 50.308243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336210, 39.998470, 50.318237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470994, -0.370657, -0.800486,
		-0.602722, 0.527379, -0.598830,
		0.644120, 0.764516, 0.024988,
		31.529446, 40.227825, 50.325733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456356, 39.342262, 50.067867>,  <31.078562, 39.692665, 50.308243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456356, 39.342262, 50.067867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.613258, 39.016319, 50.238579>,  <30.707399, 38.820751, 50.341003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.613258, 39.016319, 50.238579>,  <30.456356, 39.342262, 50.067867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613258, 39.016319, 50.238579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044897, 0.446447, 0.893683,
		-0.918760, -0.369712, 0.138536,
		0.392254, -0.814861, 0.426776,
		30.730934, 38.771862, 50.366611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061241, 39.280685, 50.672333>,  <30.456356, 39.342262, 50.067867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061241, 39.280685, 50.672333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.357620, 39.021481, 50.742847>,  <30.535448, 38.865959, 50.785156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.357620, 39.021481, 50.742847>,  <30.061241, 39.280685, 50.672333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357620, 39.021481, 50.742847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065020, 0.192046, 0.979230,
		-0.668406, -0.737021, 0.100163,
		0.740949, -0.648011, 0.176286,
		30.579905, 38.827076, 50.795734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747551, 38.668282, 51.080338>,  <30.061241, 39.280685, 50.672333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747551, 38.668282, 51.080338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.142704, 38.637203, 51.134079>,  <30.379797, 38.618557, 51.166325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.142704, 38.637203, 51.134079>,  <29.747551, 38.668282, 51.080338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142704, 38.637203, 51.134079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138949, -0.057152, 0.988649,
		-0.069131, -0.995338, -0.067254,
		0.987884, -0.077691, 0.134350,
		30.439070, 38.613895, 51.174385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850710, 38.177769, 51.543224>,  <29.747551, 38.668282, 51.080338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850710, 38.177769, 51.543224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.189690, 38.387997, 51.573166>,  <30.393078, 38.514133, 51.591129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.189690, 38.387997, 51.573166>,  <29.850710, 38.177769, 51.543224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189690, 38.387997, 51.573166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201945, 0.188750, 0.961037,
		0.490964, -0.829548, 0.266092,
		0.847451, 0.525570, 0.074854,
		30.443926, 38.545666, 51.595623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243536, 37.802315, 52.046650>,  <29.850710, 38.177769, 51.543224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243536, 37.802315, 52.046650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.354012, 38.185341, 52.013672>,  <30.420298, 38.415157, 51.993885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.354012, 38.185341, 52.013672>,  <30.243536, 37.802315, 52.046650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354012, 38.185341, 52.013672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173631, 0.134083, 0.975640,
		0.945289, -0.255146, 0.203295,
		0.276189, 0.957561, -0.082446,
		30.436869, 38.472610, 51.988937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521175, 37.895447, 52.689613>,  <30.243536, 37.802315, 52.046650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521175, 37.895447, 52.689613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.445297, 38.266220, 52.560116>,  <30.399771, 38.488686, 52.482418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.445297, 38.266220, 52.560116>,  <30.521175, 37.895447, 52.689613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445297, 38.266220, 52.560116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243505, 0.275016, 0.930092,
		0.951168, 0.255268, 0.173543,
		-0.189695, 0.926933, -0.323746,
		30.388390, 38.544300, 52.462994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859238, 38.263786, 53.087532>,  <30.521175, 37.895447, 52.689613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859238, 38.263786, 53.087532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.599493, 38.516613, 52.918381>,  <30.443645, 38.668308, 52.816891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.599493, 38.516613, 52.918381>,  <30.859238, 38.263786, 53.087532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599493, 38.516613, 52.918381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344036, 0.251750, 0.904578,
		0.678210, 0.732883, 0.053976,
		-0.649362, 0.632063, -0.422878,
		30.404684, 38.706230, 52.791519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991657, 38.889168, 53.452858>,  <30.859238, 38.263786, 53.087532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991657, 38.889168, 53.452858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.621733, 38.893074, 53.300739>,  <30.399778, 38.895416, 53.209469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.621733, 38.893074, 53.300739>,  <30.991657, 38.889168, 53.452858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621733, 38.893074, 53.300739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369164, 0.218364, 0.903346,
		0.091866, 0.975818, -0.198341,
		-0.924812, 0.009767, -0.380298,
		30.344290, 38.896004, 53.186649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622906, 39.436687, 53.807358>,  <30.991657, 38.889168, 53.452858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622906, 39.436687, 53.807358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.315975, 39.246586, 53.635151>,  <30.131817, 39.132526, 53.531826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.315975, 39.246586, 53.635151>,  <30.622906, 39.436687, 53.807358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315975, 39.246586, 53.635151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593742, 0.272940, 0.756950,
		-0.242239, 0.836443, -0.491613,
		-0.767327, -0.475254, -0.430515,
		30.085777, 39.104012, 53.505997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100100, 39.990269, 53.753914>,  <30.622906, 39.436687, 53.807358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100100, 39.990269, 53.753914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.934904, 39.627193, 53.724133>,  <29.835787, 39.409348, 53.706264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.934904, 39.627193, 53.724133>,  <30.100100, 39.990269, 53.753914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934904, 39.627193, 53.724133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595066, 0.207052, 0.776548,
		-0.689448, 0.365008, -0.625644,
		-0.412987, -0.907689, -0.074452,
		29.811008, 39.354885, 53.701797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369434, 40.110420, 53.739365>,  <30.100100, 39.990269, 53.753914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369434, 40.110420, 53.739365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.393057, 39.726048, 53.847534>,  <29.407230, 39.495426, 53.912437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.393057, 39.726048, 53.847534>,  <29.369434, 40.110420, 53.739365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393057, 39.726048, 53.847534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744013, 0.138242, 0.653707,
		-0.665549, -0.239809, -0.706778,
		0.059058, -0.960927, 0.270428,
		29.410774, 39.437771, 53.928661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754456, 39.979713, 53.923950>,  <29.369434, 40.110420, 53.739365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754456, 39.979713, 53.923950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.950670, 39.673424, 54.090343>,  <29.068399, 39.489651, 54.190182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.950670, 39.673424, 54.090343>,  <28.754456, 39.979713, 53.923950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950670, 39.673424, 54.090343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647013, -0.000262, 0.762479,
		-0.583737, -0.643172, -0.495561,
		0.490535, -0.765722, 0.415988,
		29.097830, 39.443707, 54.215141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278736, 39.424152, 54.052746>,  <28.754456, 39.979713, 53.923950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278736, 39.424152, 54.052746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.570450, 39.330200, 54.309799>,  <28.745478, 39.273827, 54.464031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.570450, 39.330200, 54.309799>,  <28.278736, 39.424152, 54.052746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570450, 39.330200, 54.309799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680009, -0.144873, 0.718749,
		-0.075722, -0.961167, -0.265375,
		0.729283, -0.234883, 0.642632,
		28.789234, 39.259735, 54.502590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986979, 38.868172, 54.419098>,  <28.278736, 39.424152, 54.052746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986979, 38.868172, 54.419098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.301285, 38.990536, 54.634129>,  <28.489868, 39.063953, 54.763145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.301285, 38.990536, 54.634129>,  <27.986979, 38.868172, 54.419098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301285, 38.990536, 54.634129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532276, -0.108251, 0.839621,
		0.315045, -0.945885, 0.077771,
		0.785766, 0.305914, 0.537576,
		28.537014, 39.082310, 54.795403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.154247, 36.611179, 57.571514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.874268, 36.807728, 57.364193>,  <32.706280, 36.925655, 57.239799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.874268, 36.807728, 57.364193>,  <33.154247, 36.611179, 57.571514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874268, 36.807728, 57.364193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234665, -0.527187, -0.816704,
		-0.674543, -0.693275, 0.253695,
		-0.699945, 0.491369, -0.518298,
		32.664284, 36.955139, 57.208702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900162, 36.131893, 57.171356>,  <33.154247, 36.611179, 57.571514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900162, 36.131893, 57.171356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755386, 36.448997, 56.975178>,  <32.668522, 36.639259, 56.857471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755386, 36.448997, 56.975178>,  <32.900162, 36.131893, 57.171356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755386, 36.448997, 56.975178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126973, -0.479286, -0.868425,
		-0.923514, -0.376589, 0.072813,
		-0.361938, 0.792758, -0.490444,
		32.646805, 36.686825, 56.828045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609501, 35.819248, 56.570904>,  <32.900162, 36.131893, 57.171356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609501, 35.819248, 56.570904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.645702, 36.202656, 56.462791>,  <32.667423, 36.432701, 56.397923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.645702, 36.202656, 56.462791>,  <32.609501, 35.819248, 56.570904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645702, 36.202656, 56.462791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355639, -0.284609, -0.890235,
		-0.930232, -0.015558, -0.366643,
		0.090499, 0.958517, -0.270285,
		32.672852, 36.490211, 56.381706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386532, 35.900417, 55.960800>,  <32.609501, 35.819248, 56.570904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386532, 35.900417, 55.960800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659195, 36.189411, 56.007034>,  <32.822792, 36.362808, 56.034775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659195, 36.189411, 56.007034>,  <32.386532, 35.900417, 55.960800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659195, 36.189411, 56.007034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446301, -0.285387, -0.848157,
		-0.579794, 0.629737, -0.516981,
		0.681656, 0.722485, 0.115587,
		32.863693, 36.406158, 56.041710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452286, 36.119320, 55.279488>,  <32.386532, 35.900417, 55.960800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452286, 36.119320, 55.279488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.760067, 36.287884, 55.471466>,  <32.944736, 36.389023, 55.586655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.760067, 36.287884, 55.471466>,  <32.452286, 36.119320, 55.279488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760067, 36.287884, 55.471466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591362, -0.186163, -0.784624,
		-0.241301, 0.887556, -0.392452,
		0.769458, 0.421412, 0.479945,
		32.990906, 36.414307, 55.615448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860641, 36.570446, 54.751667>,  <32.452286, 36.119320, 55.279488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860641, 36.570446, 54.751667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.107380, 36.510277, 55.060699>,  <33.255421, 36.474174, 55.246120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.107380, 36.510277, 55.060699>,  <32.860641, 36.570446, 54.751667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107380, 36.510277, 55.060699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724006, -0.276590, -0.631912,
		0.308741, 0.949142, -0.061705,
		0.616842, -0.150423, 0.772579,
		33.292431, 36.465149, 55.292473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475536, 36.827152, 54.551304>,  <32.860641, 36.570446, 54.751667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475536, 36.827152, 54.551304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557751, 36.600224, 54.870277>,  <33.607079, 36.464066, 55.061661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557751, 36.600224, 54.870277>,  <33.475536, 36.827152, 54.551304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557751, 36.600224, 54.870277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852331, -0.296648, -0.430734,
		0.480922, 0.768208, 0.422576,
		0.205537, -0.567324, 0.797432,
		33.619411, 36.430027, 55.109509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265350, 36.860641, 54.606384>,  <33.475536, 36.827152, 54.551304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265350, 36.860641, 54.606384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.088768, 36.536587, 54.760681>,  <33.982819, 36.342155, 54.853260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.088768, 36.536587, 54.760681>,  <34.265350, 36.860641, 54.606384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088768, 36.536587, 54.760681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667856, -0.583769, -0.461717,
		0.599238, 0.053794, 0.798761,
		-0.441454, -0.810136, 0.385744,
		33.956333, 36.293545, 54.876404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818375, 36.428711, 54.767975>,  <34.265350, 36.860641, 54.606384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818375, 36.428711, 54.767975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503220, 36.182621, 54.778862>,  <34.314129, 36.034969, 54.785393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503220, 36.182621, 54.778862>,  <34.818375, 36.428711, 54.767975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503220, 36.182621, 54.778862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587881, -0.764559, -0.264282,
		0.183403, -0.192223, 0.964061,
		-0.787883, -0.615223, 0.027218,
		34.266853, 35.998055, 54.787029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121960, 35.817963, 54.933098>,  <34.818375, 36.428711, 54.767975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121960, 35.817963, 54.933098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766209, 35.684708, 54.807865>,  <34.552757, 35.604755, 54.732727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766209, 35.684708, 54.807865>,  <35.121960, 35.817963, 54.933098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766209, 35.684708, 54.807865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416364, -0.873061, -0.253781,
		-0.188792, -0.356063, 0.915192,
		-0.889381, -0.333141, -0.313079,
		34.499393, 35.584766, 54.713940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209484, 35.160492, 55.046631>,  <35.121960, 35.817963, 54.933098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209484, 35.160492, 55.046631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.930489, 35.198101, 54.762470>,  <34.763092, 35.220669, 54.591972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.930489, 35.198101, 54.762470>,  <35.209484, 35.160492, 55.046631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930489, 35.198101, 54.762470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349538, -0.820783, -0.451817,
		-0.625567, -0.563449, 0.539621,
		-0.697488, 0.094025, -0.710402,
		34.721241, 35.226307, 54.549351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980495, 34.504929, 54.888397>,  <35.209484, 35.160492, 55.046631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980495, 34.504929, 54.888397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858887, 34.725594, 54.577724>,  <34.785923, 34.857990, 54.391319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858887, 34.725594, 54.577724>,  <34.980495, 34.504929, 54.888397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858887, 34.725594, 54.577724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274816, -0.729834, -0.625954,
		-0.912166, -0.403749, 0.070279,
		-0.304020, 0.551660, -0.776687,
		34.767681, 34.891090, 54.344719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714027, 33.939274, 54.402596>,  <34.980495, 34.504929, 54.888397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714027, 33.939274, 54.402596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800060, 34.258568, 54.177540>,  <34.851681, 34.450146, 54.042507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800060, 34.258568, 54.177540>,  <34.714027, 33.939274, 54.402596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800060, 34.258568, 54.177540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110115, -0.592268, -0.798181,
		-0.970368, 0.109722, -0.215286,
		0.215085, 0.798235, -0.562636,
		34.864586, 34.498039, 54.008751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418606, 33.878105, 53.712322>,  <34.714027, 33.939274, 54.402596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418606, 33.878105, 53.712322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685966, 34.168644, 53.648239>,  <34.846382, 34.342968, 53.609787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685966, 34.168644, 53.648239>,  <34.418606, 33.878105, 53.712322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685966, 34.168644, 53.648239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258719, -0.428980, -0.865471,
		-0.697356, 0.537032, -0.474649,
		0.668400, 0.726342, -0.160211,
		34.886486, 34.386547, 53.600174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891941, 33.735100, 53.220058>,  <34.418606, 33.878105, 53.712322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891941, 33.735100, 53.220058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720638, 33.374863, 53.190304>,  <33.617855, 33.158722, 53.172451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720638, 33.374863, 53.190304>,  <33.891941, 33.735100, 53.220058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720638, 33.374863, 53.190304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362439, 0.095775, 0.927073,
		-0.827787, 0.423990, -0.367425,
		-0.428260, -0.900589, -0.074389,
		33.592159, 33.104687, 53.167988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207626, 33.822830, 53.378883>,  <33.891941, 33.735100, 53.220058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207626, 33.822830, 53.378883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.279228, 33.434914, 53.445168>,  <33.322189, 33.202164, 53.484936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.279228, 33.434914, 53.445168>,  <33.207626, 33.822830, 53.378883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279228, 33.434914, 53.445168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284910, 0.110115, 0.952209,
		-0.941693, -0.217657, -0.256593,
		0.179000, -0.969794, 0.165707,
		33.332928, 33.143974, 53.494881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571201, 33.668461, 53.675934>,  <33.207626, 33.822830, 53.378883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571201, 33.668461, 53.675934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.838711, 33.377934, 53.739433>,  <32.999218, 33.203617, 53.777534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.838711, 33.377934, 53.739433>,  <32.571201, 33.668461, 53.675934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838711, 33.377934, 53.739433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348169, -0.117307, 0.930063,
		-0.656900, -0.677275, -0.331334,
		0.668776, -0.726318, 0.158747,
		33.039345, 33.160038, 53.787056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165634, 33.107082, 53.874088>,  <32.571201, 33.668461, 53.675934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165634, 33.107082, 53.874088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.526634, 33.024006, 54.025013>,  <32.743233, 32.974159, 54.115570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.526634, 33.024006, 54.025013>,  <32.165634, 33.107082, 53.874088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526634, 33.024006, 54.025013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392482, -0.035816, 0.919062,
		-0.177369, -0.977538, -0.113839,
		0.902495, -0.207693, 0.377314,
		32.797382, 32.961697, 54.138206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051022, 32.523487, 54.301994>,  <32.165634, 33.107082, 53.874088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051022, 32.523487, 54.301994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387257, 32.694298, 54.435295>,  <32.588997, 32.796783, 54.515274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387257, 32.694298, 54.435295>,  <32.051022, 32.523487, 54.301994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387257, 32.694298, 54.435295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418072, 0.120286, 0.900415,
		0.344418, -0.896202, 0.279640,
		0.840591, 0.427029, 0.333248,
		32.639435, 32.822407, 54.535271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162865, 32.176842, 54.850739>,  <32.051022, 32.523487, 54.301994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162865, 32.176842, 54.850739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.376686, 32.513695, 54.879196>,  <32.504978, 32.715809, 54.896271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.376686, 32.513695, 54.879196>,  <32.162865, 32.176842, 54.850739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376686, 32.513695, 54.879196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241869, 0.071784, 0.967650,
		0.809786, -0.534466, 0.242059,
		0.534552, 0.842136, 0.071140,
		32.537052, 32.766335, 54.900539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382320, 32.109398, 55.553925>,  <32.162865, 32.176842, 54.850739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382320, 32.109398, 55.553925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.449482, 32.482502, 55.426319>,  <32.489780, 32.706364, 55.349754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.449482, 32.482502, 55.426319>,  <32.382320, 32.109398, 55.553925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449482, 32.482502, 55.426319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438639, 0.360499, 0.823187,
		0.882839, 0.001715, 0.469673,
		0.167905, 0.932758, -0.319014,
		32.499855, 32.762329, 55.330616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846806, 32.518444, 56.009624>,  <32.382320, 32.109398, 55.553925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846806, 32.518444, 56.009624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.618214, 32.772438, 55.801701>,  <32.481056, 32.924835, 55.676945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.618214, 32.772438, 55.801701>,  <32.846806, 32.518444, 56.009624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618214, 32.772438, 55.801701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380955, 0.355760, 0.853410,
		0.726830, 0.685732, 0.038590,
		-0.571481, 0.634985, -0.519810,
		32.446770, 32.962933, 55.645756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917206, 33.084995, 56.375443>,  <32.846806, 32.518444, 56.009624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917206, 33.084995, 56.375443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582672, 33.171238, 56.173828>,  <32.381950, 33.222984, 56.052860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582672, 33.171238, 56.173828>,  <32.917206, 33.084995, 56.375443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582672, 33.171238, 56.173828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346458, 0.504669, 0.790744,
		0.424866, 0.835955, -0.347372,
		-0.836334, 0.215611, -0.504040,
		32.331772, 33.235920, 56.022617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774986, 33.849419, 56.517086>,  <32.917206, 33.084995, 56.375443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774986, 33.849419, 56.517086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432522, 33.679554, 56.399345>,  <32.227043, 33.577637, 56.328701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432522, 33.679554, 56.399345>,  <32.774986, 33.849419, 56.517086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432522, 33.679554, 56.399345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490929, 0.490887, 0.719736,
		-0.161151, 0.760719, -0.628759,
		-0.856166, -0.424662, -0.294352,
		32.175671, 33.552155, 56.311039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394588, 34.412338, 56.415726>,  <32.774986, 33.849419, 56.517086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394588, 34.412338, 56.415726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.160789, 34.094334, 56.480610>,  <32.020508, 33.903530, 56.519539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.160789, 34.094334, 56.480610>,  <32.394588, 34.412338, 56.415726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160789, 34.094334, 56.480610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513366, 0.517162, 0.684835,
		-0.628341, 0.317014, -0.710415,
		-0.584502, -0.795013, 0.162210,
		31.985439, 33.855831, 56.529274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731627, 34.644039, 56.516308>,  <32.394588, 34.412338, 56.415726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731627, 34.644039, 56.516308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.686682, 34.278236, 56.671772>,  <31.659716, 34.058754, 56.765049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.686682, 34.278236, 56.671772>,  <31.731627, 34.644039, 56.516308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686682, 34.278236, 56.671772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597988, 0.374609, 0.708575,
		-0.793590, -0.152796, -0.588955,
		-0.112361, -0.914506, 0.388656,
		31.652973, 34.003883, 56.788368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058342, 34.610207, 56.562111>,  <31.731627, 34.644039, 56.516308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058342, 34.610207, 56.562111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.195463, 34.334152, 56.817047>,  <31.277737, 34.168518, 56.970009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.195463, 34.334152, 56.817047>,  <31.058342, 34.610207, 56.562111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195463, 34.334152, 56.817047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682699, 0.283017, 0.673665,
		-0.645297, -0.666043, -0.374136,
		0.342803, -0.690136, 0.637337,
		31.298304, 34.127113, 57.008247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435036, 34.388042, 56.833878>,  <31.058342, 34.610207, 56.562111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435036, 34.388042, 56.833878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.727116, 34.252148, 57.070992>,  <30.902363, 34.170612, 57.213261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.727116, 34.252148, 57.070992>,  <30.435036, 34.388042, 56.833878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727116, 34.252148, 57.070992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493073, 0.338560, 0.801409,
		-0.472960, -0.877472, 0.079701,
		0.730197, -0.339736, 0.592782,
		30.946175, 34.150227, 57.248825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699879, 34.295506, 56.536518>,  <30.435036, 34.388042, 56.833878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699879, 34.295506, 56.536518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402477, 34.545837, 56.442249>,  <29.224037, 34.696037, 56.385689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402477, 34.545837, 56.442249>,  <29.699879, 34.295506, 56.536518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402477, 34.545837, 56.442249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153572, -0.183213, -0.971004,
		-0.650861, -0.758136, 0.040109,
		-0.743502, 0.625829, -0.235675,
		29.179426, 34.733585, 56.371548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151098, 33.980618, 56.105484>,  <29.699879, 34.295506, 56.536518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151098, 33.980618, 56.105484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.126678, 34.363823, 55.993427>,  <29.112026, 34.593746, 55.926193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.126678, 34.363823, 55.993427>,  <29.151098, 33.980618, 56.105484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126678, 34.363823, 55.993427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252650, -0.256691, -0.932887,
		-0.965630, -0.127729, -0.226372,
		-0.061049, 0.958016, -0.280139,
		29.108364, 34.651226, 55.909386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878157, 33.921921, 55.493057>,  <29.151098, 33.980618, 56.105484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878157, 33.921921, 55.493057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.006641, 34.300480, 55.479492>,  <29.083733, 34.527615, 55.471352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.006641, 34.300480, 55.479492>,  <28.878157, 33.921921, 55.493057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006641, 34.300480, 55.479492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395721, -0.166674, -0.903119,
		-0.860365, 0.276671, -0.428048,
		0.321211, 0.946400, -0.033916,
		29.103004, 34.584400, 55.469318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630379, 34.175888, 54.882801>,  <28.878157, 33.921921, 55.493057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630379, 34.175888, 54.882801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.954130, 34.390770, 54.977726>,  <29.148380, 34.519699, 55.034679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.954130, 34.390770, 54.977726>,  <28.630379, 34.175888, 54.882801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954130, 34.390770, 54.977726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420764, -0.248527, -0.872463,
		-0.409717, 0.806003, -0.427190,
		0.809376, 0.537209, 0.237311,
		29.196943, 34.551933, 55.048920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745090, 34.556366, 54.288200>,  <28.630379, 34.175888, 54.882801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745090, 34.556366, 54.288200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.084023, 34.554699, 54.500618>,  <29.287382, 34.553699, 54.628071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.084023, 34.554699, 54.500618>,  <28.745090, 34.556366, 54.288200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084023, 34.554699, 54.500618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524241, -0.153194, -0.837677,
		0.084846, 0.988187, -0.127620,
		0.847333, -0.004170, 0.531046,
		29.338223, 34.553448, 54.659931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209593, 35.121784, 53.968517>,  <28.745090, 34.556366, 54.288200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209593, 35.121784, 53.968517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.484383, 34.899109, 54.155350>,  <29.649256, 34.765503, 54.267448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.484383, 34.899109, 54.155350>,  <29.209593, 35.121784, 53.968517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484383, 34.899109, 54.155350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372056, -0.282672, -0.884122,
		0.624212, 0.781148, 0.012931,
		0.686974, -0.556691, 0.467078,
		29.690475, 34.732101, 54.295475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900063, 35.181358, 53.670631>,  <29.209593, 35.121784, 53.968517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900063, 35.181358, 53.670631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.939966, 34.835724, 53.867977>,  <29.963909, 34.628345, 53.986385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.939966, 34.835724, 53.867977>,  <29.900063, 35.181358, 53.670631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939966, 34.835724, 53.867977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433387, -0.408601, -0.803256,
		0.895669, 0.293951, 0.333720,
		0.099759, -0.864082, 0.493366,
		29.969894, 34.576500, 54.015987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597918, 34.923733, 53.601925>,  <29.900063, 35.181358, 53.670631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597918, 34.923733, 53.601925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.393946, 34.595314, 53.704571>,  <30.271563, 34.398262, 53.766159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.393946, 34.595314, 53.704571>,  <30.597918, 34.923733, 53.601925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393946, 34.595314, 53.704571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464007, -0.513730, -0.721650,
		0.724339, -0.248921, 0.642939,
		-0.509931, -0.821048, 0.256614,
		30.240967, 34.348999, 53.781555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113201, 34.331814, 53.653343>,  <30.597918, 34.923733, 53.601925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113201, 34.331814, 53.653343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.763704, 34.144836, 53.599575>,  <30.554007, 34.032650, 53.567314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.763704, 34.144836, 53.599575>,  <31.113201, 34.331814, 53.653343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763704, 34.144836, 53.599575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375824, -0.473402, -0.796647,
		0.308754, -0.746583, 0.589309,
		-0.873743, -0.467445, -0.134419,
		30.501581, 34.004604, 53.559250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194004, 33.661957, 53.492695>,  <31.113201, 34.331814, 53.653343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194004, 33.661957, 53.492695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.823307, 33.707325, 53.349426>,  <30.600889, 33.734547, 53.263466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.823307, 33.707325, 53.349426>,  <31.194004, 33.661957, 53.492695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823307, 33.707325, 53.349426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247937, -0.531632, -0.809873,
		-0.282274, -0.839347, 0.464563,
		-0.926741, 0.113423, -0.358171,
		30.545284, 33.741352, 53.241974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025801, 33.038017, 53.275352>,  <31.194004, 33.661957, 53.492695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025801, 33.038017, 53.275352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.764154, 33.276951, 53.089741>,  <30.607166, 33.420311, 52.978374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.764154, 33.276951, 53.089741>,  <31.025801, 33.038017, 53.275352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764154, 33.276951, 53.089741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245771, -0.412339, -0.877253,
		-0.715352, -0.687870, 0.122909,
		-0.654116, 0.597337, -0.464026,
		30.567919, 33.456154, 52.950531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606522, 32.607346, 52.838821>,  <31.025801, 33.038017, 53.275352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606522, 32.607346, 52.838821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.544355, 32.968517, 52.678535>,  <30.507055, 33.185219, 52.582363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.544355, 32.968517, 52.678535>,  <30.606522, 32.607346, 52.838821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544355, 32.968517, 52.678535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059302, -0.396382, -0.916168,
		-0.986068, -0.166148, 0.008058,
		-0.155413, 0.902926, -0.400713,
		30.497732, 33.239395, 52.558323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127174, 32.580196, 52.401310>,  <30.606522, 32.607346, 52.838821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127174, 32.580196, 52.401310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.349253, 32.889313, 52.278316>,  <30.482500, 33.074783, 52.204521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.349253, 32.889313, 52.278316>,  <30.127174, 32.580196, 52.401310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349253, 32.889313, 52.278316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044824, -0.396966, -0.916738,
		-0.830510, 0.495188, -0.255034,
		0.555198, 0.772792, -0.307488,
		30.515812, 33.121151, 52.186069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874773, 32.636707, 51.781536>,  <30.127174, 32.580196, 52.401310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874773, 32.636707, 51.781536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.227695, 32.824688, 51.771065>,  <30.439449, 32.937477, 51.764782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.227695, 32.824688, 51.771065>,  <29.874773, 32.636707, 51.781536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227695, 32.824688, 51.771065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157365, -0.346954, -0.924586,
		-0.443594, 0.811645, -0.380073,
		0.882304, 0.469951, -0.026182,
		30.492386, 32.965672, 51.763210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.979513, 38.466228, 55.092438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.238060, 38.760838, 55.172180>,  <28.393188, 38.937603, 55.220024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.238060, 38.760838, 55.172180>,  <27.979513, 38.466228, 55.092438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238060, 38.760838, 55.172180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472420, 0.181122, 0.862563,
		0.599192, -0.651709, 0.465021,
		0.646365, 0.736526, 0.199353,
		28.431971, 38.981796, 55.231987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288864, 38.332115, 55.734119>,  <27.979513, 38.466228, 55.092438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288864, 38.332115, 55.734119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.277439, 38.725731, 55.663864>,  <28.270584, 38.961899, 55.621712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.277439, 38.725731, 55.663864>,  <28.288864, 38.332115, 55.734119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277439, 38.725731, 55.663864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594011, 0.124610, 0.794747,
		0.803950, 0.127032, 0.580971,
		-0.028563, 0.984040, -0.175639,
		28.268869, 39.020943, 55.611172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263023, 38.482113, 56.369267>,  <28.288864, 38.332115, 55.734119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263023, 38.482113, 56.369267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.185165, 38.817734, 56.166050>,  <28.138451, 39.019108, 56.044121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.185165, 38.817734, 56.166050>,  <28.263023, 38.482113, 56.369267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185165, 38.817734, 56.166050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644977, 0.280744, 0.710765,
		0.738998, 0.466021, 0.486524,
		-0.194643, 0.839051, -0.508042,
		28.126772, 39.069450, 56.013638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391941, 39.044483, 56.765903>,  <28.263023, 38.482113, 56.369267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391941, 39.044483, 56.765903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.115297, 39.165909, 56.503750>,  <27.949312, 39.238762, 56.346458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.115297, 39.165909, 56.503750>,  <28.391941, 39.044483, 56.765903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115297, 39.165909, 56.503750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588729, 0.288733, 0.755005,
		0.418421, 0.908011, -0.020975,
		-0.691609, 0.303562, -0.655384,
		27.907814, 39.256977, 56.307137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393286, 39.684731, 56.886623>,  <28.391941, 39.044483, 56.765903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393286, 39.684731, 56.886623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.057304, 39.565197, 56.705437>,  <27.855715, 39.493477, 56.596725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.057304, 39.565197, 56.705437>,  <28.393286, 39.684731, 56.886623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057304, 39.565197, 56.705437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539299, 0.366973, 0.757949,
		-0.060275, 0.880925, -0.469401,
		-0.839954, -0.298833, -0.452963,
		27.805319, 39.475548, 56.569550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948221, 40.298859, 56.823696>,  <28.393286, 39.684731, 56.886623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948221, 40.298859, 56.823696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.713219, 39.977852, 56.782112>,  <27.572218, 39.785248, 56.757160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.713219, 39.977852, 56.782112>,  <27.948221, 40.298859, 56.823696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713219, 39.977852, 56.782112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434898, 0.204784, 0.876885,
		-0.682423, 0.560387, -0.469324,
		-0.587505, -0.802515, -0.103962,
		27.536966, 39.737099, 56.750923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332277, 40.487411, 57.023846>,  <27.948221, 40.298859, 56.823696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332277, 40.487411, 57.023846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.301342, 40.090183, 57.059250>,  <27.282782, 39.851849, 57.080494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.301342, 40.090183, 57.059250>,  <27.332277, 40.487411, 57.023846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301342, 40.090183, 57.059250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523790, 0.116006, 0.843912,
		-0.848330, 0.018905, -0.529131,
		-0.077336, -0.993068, 0.088509,
		27.278141, 39.792263, 57.085804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672194, 40.337730, 57.412392>,  <27.332277, 40.487411, 57.023846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672194, 40.337730, 57.412392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.847572, 39.980938, 57.456463>,  <26.952799, 39.766865, 57.482906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.847572, 39.980938, 57.456463>,  <26.672194, 40.337730, 57.412392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847572, 39.980938, 57.456463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556669, -0.173269, 0.812464,
		-0.705610, -0.417553, -0.572506,
		0.438444, -0.891979, 0.110179,
		26.979105, 39.713345, 57.489517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098263, 39.841602, 57.566345>,  <26.672194, 40.337730, 57.412392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098263, 39.841602, 57.566345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.443867, 39.696579, 57.706081>,  <26.651230, 39.609566, 57.789921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.443867, 39.696579, 57.706081>,  <26.098263, 39.841602, 57.566345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443867, 39.696579, 57.706081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451538, -0.251076, 0.856198,
		-0.222703, -0.897507, -0.380637,
		0.864012, -0.362550, 0.349343,
		26.703070, 39.587811, 57.810883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865070, 39.253830, 57.987251>,  <26.098263, 39.841602, 57.566345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865070, 39.253830, 57.987251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.245008, 39.324036, 58.090778>,  <26.472971, 39.366161, 58.152897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.245008, 39.324036, 58.090778>,  <25.865070, 39.253830, 57.987251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245008, 39.324036, 58.090778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211441, -0.249342, 0.945051,
		0.230408, -0.952377, -0.199725,
		0.949845, 0.175518, 0.258822,
		26.529963, 39.376690, 58.168427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040277, 38.807205, 58.595409>,  <25.865070, 39.253830, 57.987251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040277, 38.807205, 58.595409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.318090, 39.093491, 58.624760>,  <26.484777, 39.265263, 58.642368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.318090, 39.093491, 58.624760>,  <26.040277, 38.807205, 58.595409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.318090, 39.093491, 58.624760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015734, -0.117072, 0.992999,
		0.719290, -0.688515, -0.092571,
		0.694532, 0.715710, 0.073376,
		26.526449, 39.308205, 58.646774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450230, 38.651058, 59.132954>,  <26.040277, 38.807205, 58.595409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450230, 38.651058, 59.132954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.518974, 39.041866, 59.082535>,  <26.560221, 39.276352, 59.052284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.518974, 39.041866, 59.082535>,  <26.450230, 38.651058, 59.132954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518974, 39.041866, 59.082535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051471, 0.136682, 0.989277,
		0.983775, -0.163532, 0.073779,
		0.171863, 0.977023, -0.126047,
		26.570534, 39.334972, 59.044720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979042, 38.390541, 59.616867>,  <26.450230, 38.651058, 59.132954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979042, 38.390541, 59.616867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.958614, 37.991104, 59.611012>,  <25.946358, 37.751442, 59.607498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.958614, 37.991104, 59.611012>,  <25.979042, 38.390541, 59.616867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.958614, 37.991104, 59.611012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446725, -0.035955, 0.893949,
		-0.893213, 0.039111, 0.447930,
		-0.051069, -0.998588, -0.014643,
		25.943295, 37.691528, 59.606617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782026, 38.218067, 60.380016>,  <25.979042, 38.390541, 59.616867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782026, 38.218067, 60.380016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.837290, 37.861115, 60.551857>,  <25.870449, 37.646942, 60.654961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.837290, 37.861115, 60.551857>,  <25.782026, 38.218067, 60.380016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837290, 37.861115, 60.551857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468355, -0.323331, -0.822254,
		0.872671, 0.314810, 0.373282,
		0.138160, -0.892386, 0.429604,
		25.878738, 37.593399, 60.680737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432085, 38.084347, 60.155315>,  <25.782026, 38.218067, 60.380016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432085, 38.084347, 60.155315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.277382, 37.738728, 60.284214>,  <26.184559, 37.531357, 60.361553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.277382, 37.738728, 60.284214>,  <26.432085, 38.084347, 60.155315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277382, 37.738728, 60.284214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520923, -0.493049, -0.696809,
		0.760958, -0.101631, 0.640792,
		-0.386759, -0.864045, 0.322248,
		26.161354, 37.479515, 60.380890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897430, 37.611542, 60.009972>,  <26.432085, 38.084347, 60.155315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897430, 37.611542, 60.009972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.609478, 37.343025, 60.080563>,  <26.436707, 37.181915, 60.122917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.609478, 37.343025, 60.080563>,  <26.897430, 37.611542, 60.009972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609478, 37.343025, 60.080563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466457, -0.656167, -0.593180,
		0.513992, -0.344701, 0.785489,
		-0.719882, -0.671287, 0.176476,
		26.393513, 37.141640, 60.133507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235821, 36.936127, 60.272831>,  <26.897430, 37.611542, 60.009972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235821, 36.936127, 60.272831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.872265, 36.856163, 60.126431>,  <26.654131, 36.808186, 60.038589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.872265, 36.856163, 60.126431>,  <27.235821, 36.936127, 60.272831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872265, 36.856163, 60.126431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414580, -0.528228, -0.741011,
		-0.045196, -0.825234, 0.562980,
		-0.908890, -0.199910, -0.365999,
		26.599598, 36.796188, 60.016632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100073, 36.205830, 60.376030>,  <27.235821, 36.936127, 60.272831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100073, 36.205830, 60.376030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.877958, 36.351540, 60.076977>,  <26.744690, 36.438965, 59.897545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.877958, 36.351540, 60.076977>,  <27.100073, 36.205830, 60.376030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877958, 36.351540, 60.076977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368439, -0.698185, -0.613832,
		-0.745593, -0.616311, 0.253479,
		-0.555287, 0.364278, -0.747635,
		26.711372, 36.460823, 59.852688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910957, 35.617203, 60.113842>,  <27.100073, 36.205830, 60.376030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910957, 35.617203, 60.113842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.831999, 35.877140, 59.820248>,  <26.784624, 36.033104, 59.644093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.831999, 35.877140, 59.820248>,  <26.910957, 35.617203, 60.113842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831999, 35.877140, 59.820248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381490, -0.638781, -0.668150,
		-0.903051, -0.411898, -0.121816,
		-0.197396, 0.649845, -0.733987,
		26.772779, 36.072094, 59.600052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620020, 35.204029, 59.589104>,  <26.910957, 35.617203, 60.113842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620020, 35.204029, 59.589104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.765844, 35.539246, 59.426735>,  <26.853338, 35.740376, 59.329311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.765844, 35.539246, 59.426735>,  <26.620020, 35.204029, 59.589104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765844, 35.539246, 59.426735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325860, -0.523178, -0.787464,
		-0.872302, 0.154805, -0.463816,
		0.364561, 0.838046, -0.405924,
		26.875214, 35.790661, 59.304958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365477, 35.134716, 58.911324>,  <26.620020, 35.204029, 59.589104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365477, 35.134716, 58.911324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.681650, 35.376480, 58.871517>,  <26.871355, 35.521538, 58.847633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.681650, 35.376480, 58.871517>,  <26.365477, 35.134716, 58.911324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681650, 35.376480, 58.871517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298532, -0.521965, -0.799019,
		-0.534877, 0.601864, -0.593014,
		0.790434, 0.604411, -0.099511,
		26.918779, 35.557804, 58.841663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359255, 35.384560, 58.280121>,  <26.365477, 35.134716, 58.911324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359255, 35.384560, 58.280121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.733109, 35.419949, 58.417892>,  <26.957420, 35.441181, 58.500557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.733109, 35.419949, 58.417892>,  <26.359255, 35.384560, 58.280121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733109, 35.419949, 58.417892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349658, -0.405156, -0.844741,
		0.064813, 0.909956, -0.409608,
		0.934633, 0.088473, 0.344433,
		27.013498, 35.446491, 58.521221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741886, 35.629089, 57.708641>,  <26.359255, 35.384560, 58.280121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741886, 35.629089, 57.708641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.029602, 35.504932, 57.957245>,  <27.202232, 35.430439, 58.106407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.029602, 35.504932, 57.957245>,  <26.741886, 35.629089, 57.708641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029602, 35.504932, 57.957245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501926, -0.386329, -0.773835,
		0.480302, 0.868565, -0.122088,
		0.719292, -0.310395, 0.621509,
		27.245390, 35.411816, 58.143696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368938, 35.878048, 57.454098>,  <26.741886, 35.629089, 57.708641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368938, 35.878048, 57.454098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.541840, 35.601833, 57.686069>,  <27.645580, 35.436104, 57.825253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.541840, 35.601833, 57.686069>,  <27.368938, 35.878048, 57.454098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541840, 35.601833, 57.686069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722265, -0.119924, -0.681140,
		0.539898, 0.713289, 0.446911,
		0.432254, -0.690534, 0.579930,
		27.671516, 35.394672, 57.860050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024370, 36.070255, 57.531109>,  <27.368938, 35.878048, 57.454098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024370, 36.070255, 57.531109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.023203, 35.676270, 57.600201>,  <28.022503, 35.439877, 57.641655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.023203, 35.676270, 57.600201>,  <28.024370, 36.070255, 57.531109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023203, 35.676270, 57.600201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708330, -0.123963, -0.694912,
		0.705876, 0.120319, 0.698042,
		-0.002920, -0.984965, 0.172728,
		28.022327, 35.380779, 57.652020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733246, 35.871479, 57.630524>,  <28.024370, 36.070255, 57.531109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733246, 35.871479, 57.630524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.519720, 35.559601, 57.499611>,  <28.391605, 35.372475, 57.421062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.519720, 35.559601, 57.499611>,  <28.733246, 35.871479, 57.630524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519720, 35.559601, 57.499611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727645, -0.226371, -0.647526,
		0.430788, -0.583802, 0.688184,
		-0.533812, -0.779699, -0.327283,
		28.359577, 35.325691, 57.401424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233582, 35.332069, 57.538689>,  <28.733246, 35.871479, 57.630524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233582, 35.332069, 57.538689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.922617, 35.205318, 57.321350>,  <28.736038, 35.129269, 57.190948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.922617, 35.205318, 57.321350>,  <29.233582, 35.332069, 57.538689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922617, 35.205318, 57.321350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624566, -0.286566, -0.726497,
		0.074507, -0.904140, 0.420690,
		-0.777410, -0.316877, -0.543344,
		28.689394, 35.110256, 57.158348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528889, 34.661827, 57.156628>,  <29.233582, 35.332069, 57.538689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528889, 34.661827, 57.156628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.220392, 34.814644, 56.952969>,  <29.035294, 34.906334, 56.830772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.220392, 34.814644, 56.952969>,  <29.528889, 34.661827, 57.156628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220392, 34.814644, 56.952969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493436, -0.146484, -0.857359,
		-0.402130, -0.912461, -0.075539,
		-0.771241, 0.382043, -0.509146,
		28.989019, 34.929256, 56.800224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113598, 34.140789, 57.407951>,  <29.528889, 34.661827, 57.156628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113598, 34.140789, 57.407951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.492552, 34.187958, 57.526985>,  <30.719925, 34.216259, 57.598404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.492552, 34.187958, 57.526985>,  <30.113598, 34.140789, 57.407951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492552, 34.187958, 57.526985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316567, 0.482791, 0.816516,
		-0.047387, -0.867760, 0.494719,
		0.947386, 0.117920, 0.297582,
		30.776768, 34.223335, 57.616261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074455, 33.953575, 58.115715>,  <30.113598, 34.140789, 57.407951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074455, 33.953575, 58.115715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.407881, 34.170563, 58.073959>,  <30.607937, 34.300755, 58.048904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.407881, 34.170563, 58.073959>,  <30.074455, 33.953575, 58.115715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407881, 34.170563, 58.073959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219629, 0.498822, 0.838415,
		0.506904, -0.675935, 0.534940,
		0.833553, 0.542484, -0.104399,
		30.657949, 34.333305, 58.042645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511553, 33.901615, 58.773773>,  <30.074455, 33.953575, 58.115715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511553, 33.901615, 58.773773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.590919, 34.239498, 58.574936>,  <30.638538, 34.442226, 58.455635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.590919, 34.239498, 58.574936>,  <30.511553, 33.901615, 58.773773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590919, 34.239498, 58.574936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252072, 0.534092, 0.806972,
		0.947149, -0.034814, 0.318900,
		0.198416, 0.844709, -0.497089,
		30.650444, 34.492912, 58.425808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853451, 34.131371, 59.231636>,  <30.511553, 33.901615, 58.773773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853451, 34.131371, 59.231636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.737211, 34.438709, 59.003532>,  <30.667467, 34.623112, 58.866673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.737211, 34.438709, 59.003532>,  <30.853451, 34.131371, 59.231636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737211, 34.438709, 59.003532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269352, 0.506186, 0.819283,
		0.918150, 0.391684, 0.059858,
		-0.290601, 0.768348, -0.570256,
		30.650030, 34.669212, 58.832455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038347, 34.654087, 59.561962>,  <30.853451, 34.131371, 59.231636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038347, 34.654087, 59.561962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.761793, 34.806358, 59.316338>,  <30.595861, 34.897720, 59.168964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.761793, 34.806358, 59.316338>,  <31.038347, 34.654087, 59.561962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761793, 34.806358, 59.316338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361042, 0.554155, 0.750041,
		0.625808, 0.740269, -0.245695,
		-0.691385, 0.380676, -0.614062,
		30.554379, 34.920563, 59.132118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959826, 35.360909, 59.774143>,  <31.038347, 34.654087, 59.561962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959826, 35.360909, 59.774143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.613932, 35.303558, 59.581612>,  <30.406395, 35.269150, 59.466091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.613932, 35.303558, 59.581612>,  <30.959826, 35.360909, 59.774143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613932, 35.303558, 59.581612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468396, 0.576035, 0.669917,
		0.181216, 0.804754, -0.565272,
		-0.864735, -0.143372, -0.481330,
		30.354511, 35.260548, 59.437214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761938, 36.046349, 59.756695>,  <30.959826, 35.360909, 59.774143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761938, 36.046349, 59.756695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.442423, 35.817924, 59.680977>,  <30.250713, 35.680870, 59.635548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.442423, 35.817924, 59.680977>,  <30.761938, 36.046349, 59.756695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442423, 35.817924, 59.680977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561166, 0.593826, 0.576597,
		-0.216864, 0.566802, -0.794799,
		-0.798788, -0.571057, -0.189290,
		30.202785, 35.646606, 59.624191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800089, 36.841335, 59.596821>,  <30.761938, 36.046349, 59.756695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800089, 36.841335, 59.596821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.143890, 36.991390, 59.735687>,  <31.350172, 37.081421, 59.819008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.143890, 36.991390, 59.735687>,  <30.800089, 36.841335, 59.596821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143890, 36.991390, 59.735687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481336, -0.365540, -0.796678,
		-0.171957, 0.851853, -0.494749,
		0.859504, 0.375135, 0.347171,
		31.401741, 37.103931, 59.839840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717224, 37.344318, 59.059681>,  <30.800089, 36.841335, 59.596821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717224, 37.344318, 59.059681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.089214, 37.277313, 59.190578>,  <31.312408, 37.237110, 59.269115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.089214, 37.277313, 59.190578>,  <30.717224, 37.344318, 59.059681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089214, 37.277313, 59.190578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356295, 0.191412, -0.914558,
		0.090565, 0.967109, 0.237693,
		0.929974, -0.167516, 0.327240,
		31.368206, 37.227058, 59.288750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161627, 37.918053, 58.925316>,  <30.717224, 37.344318, 59.059681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161627, 37.918053, 58.925316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.422504, 37.616978, 58.961334>,  <31.579031, 37.436333, 58.982944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.422504, 37.616978, 58.961334>,  <31.161627, 37.918053, 58.925316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422504, 37.616978, 58.961334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357158, 0.200327, -0.912309,
		0.668643, 0.627163, 0.399480,
		0.652193, -0.752686, 0.090049,
		31.618162, 37.391171, 58.988350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546225, 38.014439, 58.416542>,  <31.161627, 37.918053, 58.925316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546225, 38.014439, 58.416542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.732368, 37.672070, 58.506729>,  <31.844055, 37.466648, 58.560841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.732368, 37.672070, 58.506729>,  <31.546225, 38.014439, 58.416542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732368, 37.672070, 58.506729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310538, -0.080658, -0.947133,
		0.828858, 0.510776, 0.228261,
		0.465361, -0.855922, 0.225469,
		31.871977, 37.415295, 58.574371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295170, 38.178932, 58.255039>,  <31.546225, 38.014439, 58.416542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295170, 38.178932, 58.255039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.250370, 37.781590, 58.265640>,  <32.223492, 37.543182, 58.271999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.250370, 37.781590, 58.265640>,  <32.295170, 38.178932, 58.255039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250370, 37.781590, 58.265640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518876, -0.081206, -0.850984,
		0.847481, -0.081554, 0.524523,
		-0.111996, -0.993355, 0.026504,
		32.216770, 37.483582, 58.273590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952473, 37.832222, 58.168034>,  <32.295170, 38.178932, 58.255039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952473, 37.832222, 58.168034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.654110, 37.598778, 58.039642>,  <32.475094, 37.458714, 57.962608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.654110, 37.598778, 58.039642>,  <32.952473, 37.832222, 58.168034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654110, 37.598778, 58.039642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480944, -0.138550, -0.865735,
		0.460777, -0.800129, 0.384028,
		-0.745907, -0.583607, -0.320977,
		32.430340, 37.423695, 57.943348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250187, 37.325634, 57.677944>,  <32.952473, 37.832222, 58.168034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250187, 37.325634, 57.677944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.866749, 37.251915, 57.591099>,  <32.636688, 37.207684, 57.538994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.866749, 37.251915, 57.591099>,  <33.250187, 37.325634, 57.677944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866749, 37.251915, 57.591099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262058, -0.272412, -0.925806,
		0.111481, -0.944365, 0.309429,
		-0.958591, -0.184298, -0.217110,
		32.579170, 37.196625, 57.525967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.467911, 41.576488, 59.577209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123722, 41.530495, 59.378666>,  <27.917210, 41.502899, 59.259541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123722, 41.530495, 59.378666>,  <28.467911, 41.576488, 59.577209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123722, 41.530495, 59.378666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503010, -0.036710, -0.863501,
		0.081070, -0.992689, 0.089427,
		-0.860470, -0.114987, -0.496356,
		27.865582, 41.495998, 59.229759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504629, 40.986053, 59.224304>,  <28.467911, 41.576488, 59.577209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504629, 40.986053, 59.224304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242270, 41.226799, 59.042072>,  <28.084854, 41.371246, 58.932732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242270, 41.226799, 59.042072>,  <28.504629, 40.986053, 59.224304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242270, 41.226799, 59.042072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516306, -0.082576, -0.852414,
		-0.550656, -0.794319, -0.256583,
		-0.655901, 0.601862, -0.455583,
		28.045500, 41.407356, 58.905396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579861, 40.763550, 58.575485>,  <28.504629, 40.986053, 59.224304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579861, 40.763550, 58.575485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397867, 41.115494, 58.520573>,  <28.288671, 41.326660, 58.487625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397867, 41.115494, 58.520573>,  <28.579861, 40.763550, 58.575485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397867, 41.115494, 58.520573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473500, 0.108475, -0.874089,
		-0.754181, -0.462696, -0.465966,
		-0.454983, 0.879856, -0.137277,
		28.261372, 41.379452, 58.479389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499668, 40.807201, 57.928516>,  <28.579861, 40.763550, 58.575485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499668, 40.807201, 57.928516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434975, 41.194206, 58.006237>,  <28.396158, 41.426411, 58.052872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434975, 41.194206, 58.006237>,  <28.499668, 40.807201, 57.928516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434975, 41.194206, 58.006237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426146, 0.246069, -0.870546,
		-0.890079, -0.057995, -0.452101,
		-0.161736, 0.967516, 0.194306,
		28.386454, 41.484463, 58.064529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296833, 41.035069, 57.331348>,  <28.499668, 40.807201, 57.928516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296833, 41.035069, 57.331348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400925, 41.382301, 57.500446>,  <28.463381, 41.590641, 57.601906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400925, 41.382301, 57.500446>,  <28.296833, 41.035069, 57.331348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400925, 41.382301, 57.500446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265535, 0.356609, -0.895724,
		-0.928316, 0.345349, -0.137705,
		0.260231, 0.868081, 0.422748,
		28.478994, 41.642727, 57.627270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015289, 41.542107, 56.876076>,  <28.296833, 41.035069, 57.331348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015289, 41.542107, 56.876076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335318, 41.689346, 57.065556>,  <28.527334, 41.777691, 57.179241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335318, 41.689346, 57.065556>,  <28.015289, 41.542107, 56.876076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335318, 41.689346, 57.065556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292410, 0.450176, -0.843705,
		-0.523818, 0.813536, 0.252535,
		0.800070, 0.368104, 0.473696,
		28.575338, 41.799778, 57.207664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069025, 42.121353, 56.518772>,  <28.015289, 41.542107, 56.876076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069025, 42.121353, 56.518772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412909, 42.058685, 56.713238>,  <28.619238, 42.021084, 56.829918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412909, 42.058685, 56.713238>,  <28.069025, 42.121353, 56.518772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412909, 42.058685, 56.713238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504482, 0.409515, -0.760128,
		-0.080004, 0.898750, 0.431100,
		0.859707, -0.156669, 0.486166,
		28.670820, 42.011684, 56.859089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395632, 42.743114, 56.461525>,  <28.069025, 42.121353, 56.518772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395632, 42.743114, 56.461525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688915, 42.478798, 56.525726>,  <28.864885, 42.320210, 56.564247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688915, 42.478798, 56.525726>,  <28.395632, 42.743114, 56.461525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688915, 42.478798, 56.525726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580064, 0.484603, -0.654741,
		0.354864, 0.573165, 0.738616,
		0.733210, -0.660788, 0.160504,
		28.908878, 42.280560, 56.573879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004717, 43.116688, 56.332500>,  <28.395632, 42.743114, 56.461525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004717, 43.116688, 56.332500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150440, 42.744884, 56.309536>,  <29.237875, 42.521801, 56.295757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150440, 42.744884, 56.309536>,  <29.004717, 43.116688, 56.332500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150440, 42.744884, 56.309536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628763, 0.290972, -0.721105,
		0.686976, 0.226608, 0.690443,
		0.364308, -0.929507, -0.057408,
		29.259733, 42.466034, 56.292313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730698, 43.236965, 56.202652>,  <29.004717, 43.116688, 56.332500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730698, 43.236965, 56.202652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649769, 42.862682, 56.087055>,  <29.601212, 42.638111, 56.017696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649769, 42.862682, 56.087055>,  <29.730698, 43.236965, 56.202652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649769, 42.862682, 56.087055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477974, 0.163209, -0.863078,
		0.854756, -0.312748, 0.414224,
		-0.202321, -0.935709, -0.288989,
		29.589073, 42.581970, 56.000359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317957, 43.019444, 55.851826>,  <29.730698, 43.236965, 56.202652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317957, 43.019444, 55.851826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042702, 42.764812, 55.712551>,  <29.877548, 42.612034, 55.628986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042702, 42.764812, 55.712551>,  <30.317957, 43.019444, 55.851826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042702, 42.764812, 55.712551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446637, 0.006548, -0.894691,
		0.571823, -0.771183, 0.279814,
		-0.688138, -0.636580, -0.348183,
		29.836260, 42.573837, 55.608097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693693, 42.495659, 55.518696>,  <30.317957, 43.019444, 55.851826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693693, 42.495659, 55.518696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320902, 42.507053, 55.374138>,  <30.097227, 42.513889, 55.287403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320902, 42.507053, 55.374138>,  <30.693693, 42.495659, 55.518696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320902, 42.507053, 55.374138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353921, -0.144294, -0.924077,
		-0.078466, -0.989125, 0.124399,
		-0.931978, 0.028481, -0.361395,
		30.041309, 42.515598, 55.265720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115093, 42.198555, 56.120586>,  <30.693693, 42.495659, 55.518696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115093, 42.198555, 56.120586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511148, 42.199043, 56.176628>,  <31.748781, 42.199337, 56.210255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511148, 42.199043, 56.176628>,  <31.115093, 42.198555, 56.120586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511148, 42.199043, 56.176628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122536, -0.477353, 0.870126,
		0.067941, -0.878711, -0.472495,
		0.990136, 0.001220, 0.140106,
		31.808189, 42.199409, 56.218658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281677, 41.435249, 56.314484>,  <31.115093, 42.198555, 56.120586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281677, 41.435249, 56.314484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563873, 41.680313, 56.456989>,  <31.733191, 41.827351, 56.542492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563873, 41.680313, 56.456989>,  <31.281677, 41.435249, 56.314484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563873, 41.680313, 56.456989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109073, -0.402840, 0.908748,
		0.700274, -0.679974, -0.217375,
		0.705492, 0.612663, 0.356265,
		31.775520, 41.864113, 56.563869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888514, 41.004898, 56.670597>,  <31.281677, 41.435249, 56.314484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888514, 41.004898, 56.670597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869169, 41.379135, 56.810493>,  <31.857563, 41.603680, 56.894432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869169, 41.379135, 56.810493>,  <31.888514, 41.004898, 56.670597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869169, 41.379135, 56.810493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042091, -0.351753, 0.935146,
		0.997943, 0.030502, 0.056391,
		-0.048359, 0.935596, 0.349745,
		31.854662, 41.659813, 56.915417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416489, 41.076141, 57.225456>,  <31.888514, 41.004898, 56.670597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416489, 41.076141, 57.225456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160950, 41.379894, 57.274792>,  <32.007626, 41.562145, 57.304394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160950, 41.379894, 57.274792>,  <32.416489, 41.076141, 57.225456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160950, 41.379894, 57.274792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030191, -0.184945, 0.982285,
		0.768743, 0.623804, 0.141078,
		-0.638845, 0.759384, 0.123342,
		31.969296, 41.607708, 57.311794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334972, 41.045246, 57.868973>,  <32.416489, 41.076141, 57.225456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334972, 41.045246, 57.868973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073639, 41.345512, 57.829685>,  <31.916838, 41.525673, 57.806114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073639, 41.345512, 57.829685>,  <32.334972, 41.045246, 57.868973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073639, 41.345512, 57.829685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277179, -0.116454, 0.953735,
		0.704501, 0.650335, 0.284153,
		-0.653338, 0.750668, -0.098217,
		31.877638, 41.570713, 57.800220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312782, 41.513542, 58.510876>,  <32.334972, 41.045246, 57.868973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312782, 41.513542, 58.510876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955307, 41.555866, 58.336464>,  <31.740822, 41.581261, 58.231815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955307, 41.555866, 58.336464>,  <32.312782, 41.513542, 58.510876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955307, 41.555866, 58.336464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438049, 0.004614, 0.898939,
		0.097128, 0.994376, 0.042226,
		-0.893689, 0.105809, -0.436033,
		31.687201, 41.587608, 58.205654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016258, 41.955013, 58.946274>,  <32.312782, 41.513542, 58.510876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016258, 41.955013, 58.946274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739437, 41.769150, 58.725311>,  <31.573345, 41.657631, 58.592731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739437, 41.769150, 58.725311>,  <32.016258, 41.955013, 58.946274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739437, 41.769150, 58.725311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597539, -0.060580, 0.799548,
		-0.404985, 0.883413, -0.235730,
		-0.692050, -0.464663, -0.552408,
		31.531822, 41.629749, 58.559589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379438, 42.219341, 59.102219>,  <32.016258, 41.955013, 58.946274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379438, 42.219341, 59.102219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290672, 41.853859, 58.966042>,  <31.237413, 41.634571, 58.884335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290672, 41.853859, 58.966042>,  <31.379438, 42.219341, 59.102219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290672, 41.853859, 58.966042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740235, -0.069392, 0.668757,
		-0.634670, 0.400414, -0.660956,
		-0.221914, -0.913703, -0.340442,
		31.224098, 41.579746, 58.863911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614153, 42.199986, 58.994740>,  <31.379438, 42.219341, 59.102219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614153, 42.199986, 58.994740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744818, 41.823799, 59.032310>,  <30.823215, 41.598087, 59.054852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744818, 41.823799, 59.032310>,  <30.614153, 42.199986, 58.994740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744818, 41.823799, 59.032310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697140, -0.172648, 0.695837,
		-0.638192, -0.292784, -0.712031,
		0.326661, -0.940463, 0.093929,
		30.842815, 41.541660, 59.060490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171778, 41.942482, 59.438778>,  <30.614153, 42.199986, 58.994740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171778, 41.942482, 59.438778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420420, 41.629505, 59.423847>,  <30.569605, 41.441719, 59.414886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420420, 41.629505, 59.423847>,  <30.171778, 41.942482, 59.438778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420420, 41.629505, 59.423847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479309, -0.417611, 0.771922,
		-0.619575, -0.461936, -0.634620,
		0.621603, -0.782442, -0.037331,
		30.606901, 41.394772, 59.412647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765043, 41.241463, 59.375927>,  <30.171778, 41.942482, 59.438778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765043, 41.241463, 59.375927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113846, 41.172859, 59.559315>,  <30.323128, 41.131699, 59.669346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113846, 41.172859, 59.559315>,  <29.765043, 41.241463, 59.375927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113846, 41.172859, 59.559315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488927, -0.350420, 0.798847,
		0.023647, -0.920755, -0.389423,
		0.872004, -0.171509, 0.458468,
		30.375446, 41.121407, 59.696854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696234, 40.589687, 59.521152>,  <29.765043, 41.241463, 59.375927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696234, 40.589687, 59.521152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974899, 40.702644, 59.784943>,  <30.142097, 40.770420, 59.943218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974899, 40.702644, 59.784943>,  <29.696234, 40.589687, 59.521152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974899, 40.702644, 59.784943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377672, -0.637198, 0.671820,
		0.609939, -0.717099, -0.337259,
		0.696662, 0.282397, 0.659480,
		30.183899, 40.787365, 59.982788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009094, 39.938534, 59.831524>,  <29.696234, 40.589687, 59.521152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009094, 39.938534, 59.831524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158579, 40.219311, 60.074047>,  <30.248270, 40.387779, 60.219563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158579, 40.219311, 60.074047>,  <30.009094, 39.938534, 59.831524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158579, 40.219311, 60.074047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379005, -0.481050, 0.790535,
		0.846578, -0.525227, 0.086267,
		0.373711, 0.701946, 0.606310,
		30.270693, 40.429893, 60.255939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495111, 39.654572, 60.369015>,  <30.009094, 39.938534, 59.831524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495111, 39.654572, 60.369015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352545, 39.993534, 60.526428>,  <30.267006, 40.196911, 60.620876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352545, 39.993534, 60.526428>,  <30.495111, 39.654572, 60.369015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352545, 39.993534, 60.526428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279821, -0.498678, 0.820378,
		0.891442, 0.182275, 0.414859,
		-0.356415, 0.847405, 0.393538,
		30.245621, 40.247757, 60.644489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444563, 39.536633, 61.198174>,  <30.495111, 39.654572, 60.369015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444563, 39.536633, 61.198174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418522, 39.259068, 61.485016>,  <30.402897, 39.092529, 61.657124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418522, 39.259068, 61.485016>,  <30.444563, 39.536633, 61.198174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418522, 39.259068, 61.485016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550326, -0.624435, -0.554276,
		0.832408, 0.358561, 0.422530,
		-0.065101, -0.693913, 0.717110,
		30.398991, 39.050892, 61.700150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150038, 39.248154, 61.468288>,  <30.444563, 39.536633, 61.198174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150038, 39.248154, 61.468288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889408, 38.948811, 61.517952>,  <30.733030, 38.769207, 61.547749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889408, 38.948811, 61.517952>,  <31.150038, 39.248154, 61.468288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889408, 38.948811, 61.517952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595694, -0.606100, -0.527059,
		0.469679, -0.269459, 0.840710,
		-0.651576, -0.748354, 0.124157,
		30.693935, 38.724304, 61.555199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573483, 38.633369, 61.621849>,  <31.150038, 39.248154, 61.468288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573483, 38.633369, 61.621849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217894, 38.490513, 61.507179>,  <31.004539, 38.404800, 61.438377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217894, 38.490513, 61.507179>,  <31.573483, 38.633369, 61.621849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217894, 38.490513, 61.507179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457587, -0.718032, -0.524446,
		-0.018537, -0.597394, 0.801733,
		-0.888972, -0.357141, -0.286670,
		30.951202, 38.383369, 61.421177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576361, 37.933659, 61.642403>,  <31.573483, 38.633369, 61.621849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576361, 37.933659, 61.642403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272873, 38.011337, 61.393684>,  <31.090780, 38.057945, 61.244453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272873, 38.011337, 61.393684>,  <31.576361, 37.933659, 61.642403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272873, 38.011337, 61.393684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304270, -0.738361, -0.601867,
		-0.575989, -0.645843, 0.501123,
		-0.758721, 0.194192, -0.621798,
		31.045258, 38.069595, 61.207146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276201, 37.250473, 61.484562>,  <31.576361, 37.933659, 61.642403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276201, 37.250473, 61.484562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174376, 37.506813, 61.194870>,  <31.113279, 37.660618, 61.021053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174376, 37.506813, 61.194870>,  <31.276201, 37.250473, 61.484562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174376, 37.506813, 61.194870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462732, -0.576886, -0.673113,
		-0.849162, -0.506476, -0.149685,
		-0.254565, 0.640846, -0.724232,
		31.098005, 37.699066, 60.977600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317987, 36.779331, 60.916641>,  <31.276201, 37.250473, 61.484562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317987, 36.779331, 60.916641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301857, 37.149769, 60.766590>,  <31.292179, 37.372032, 60.676559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301857, 37.149769, 60.766590>,  <31.317987, 36.779331, 60.916641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301857, 37.149769, 60.766590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402739, -0.328524, -0.854327,
		-0.914426, -0.185530, -0.359727,
		-0.040324, 0.926094, -0.375131,
		31.289759, 37.427597, 60.654053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811357, 36.751743, 60.313004>,  <31.317987, 36.779331, 60.916641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811357, 36.751743, 60.313004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089960, 37.036747, 60.279037>,  <31.257122, 37.207748, 60.258659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089960, 37.036747, 60.279037>,  <30.811357, 36.751743, 60.313004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089960, 37.036747, 60.279037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403671, -0.486914, -0.774574,
		-0.593233, 0.505221, -0.626758,
		0.696508, 0.712507, -0.084911,
		31.298912, 37.250500, 60.253563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156830, 36.543758, 59.844616>,  <30.811357, 36.751743, 60.313004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156830, 36.543758, 59.844616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977922, 36.186031, 59.849438>,  <29.870579, 35.971394, 59.852329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977922, 36.186031, 59.849438>,  <30.156830, 36.543758, 59.844616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977922, 36.186031, 59.849438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750124, 0.382424, 0.539506,
		-0.487099, 0.232263, -0.841896,
		-0.447268, -0.894319, 0.012052,
		29.843742, 35.917736, 59.853054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421669, 36.594589, 59.476376>,  <30.156830, 36.543758, 59.844616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421669, 36.594589, 59.476376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450363, 36.299648, 59.745052>,  <29.467581, 36.122684, 59.906258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450363, 36.299648, 59.745052>,  <29.421669, 36.594589, 59.476376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450363, 36.299648, 59.745052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712776, 0.433173, 0.551645,
		-0.697714, -0.518337, -0.494492,
		0.071737, -0.737352, 0.671689,
		29.471884, 36.078442, 59.946560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695007, 36.455315, 59.622505>,  <29.421669, 36.594589, 59.476376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695007, 36.455315, 59.622505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884451, 36.263081, 59.917728>,  <28.998117, 36.147739, 60.094864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884451, 36.263081, 59.917728>,  <28.695007, 36.455315, 59.622505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884451, 36.263081, 59.917728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742423, 0.232983, 0.628114,
		-0.473818, -0.845432, -0.246457,
		0.473607, -0.480587, 0.738060,
		29.026533, 36.118904, 60.139145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211723, 36.056213, 59.972599>,  <28.695007, 36.455315, 59.622505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211723, 36.056213, 59.972599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488909, 36.122051, 60.253372>,  <28.655220, 36.161552, 60.421837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488909, 36.122051, 60.253372>,  <28.211723, 36.056213, 59.972599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488909, 36.122051, 60.253372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719978, 0.106815, 0.685727,
		0.037884, -0.980562, 0.192518,
		0.692962, 0.164587, 0.701936,
		28.696796, 36.171429, 60.463951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933714, 35.786682, 60.622112>,  <28.211723, 36.056213, 59.972599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933714, 35.786682, 60.622112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252935, 35.982296, 60.762939>,  <28.444469, 36.099667, 60.847435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252935, 35.982296, 60.762939>,  <27.933714, 35.786682, 60.622112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252935, 35.982296, 60.762939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515803, 0.252340, 0.818701,
		0.311542, -0.834961, 0.453631,
		0.798053, 0.489044, 0.352061,
		28.492352, 36.129009, 60.868557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937757, 35.614586, 61.290279>,  <27.933714, 35.786682, 60.622112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937757, 35.614586, 61.290279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137934, 35.960777, 61.281330>,  <28.258039, 36.168491, 61.275963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137934, 35.960777, 61.281330>,  <27.937757, 35.614586, 61.290279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137934, 35.960777, 61.281330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501262, 0.310716, 0.807584,
		0.705900, -0.392935, 0.589328,
		0.500441, 0.865482, -0.022371,
		28.288067, 36.220421, 61.274620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293051, 35.684822, 61.892422>,  <27.937757, 35.614586, 61.290279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293051, 35.684822, 61.892422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201342, 36.040672, 61.734436>,  <28.146317, 36.254181, 61.639645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201342, 36.040672, 61.734436>,  <28.293051, 35.684822, 61.892422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201342, 36.040672, 61.734436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557982, 0.212357, 0.802223,
		0.797552, 0.404312, 0.447708,
		-0.229275, 0.889627, -0.394964,
		28.132559, 36.307560, 61.615948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202375, 36.111023, 62.530537>,  <28.293051, 35.684822, 61.892422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202375, 36.111023, 62.530537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047417, 36.334682, 62.237343>,  <27.954441, 36.468880, 62.061424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047417, 36.334682, 62.237343>,  <28.202375, 36.111023, 62.530537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047417, 36.334682, 62.237343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680161, 0.363368, 0.636667,
		0.622338, 0.745193, 0.239546,
		-0.387397, 0.559152, -0.732989,
		27.931198, 36.502430, 62.017445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241161, 36.796417, 62.841877>,  <28.202375, 36.111023, 62.530537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241161, 36.796417, 62.841877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985340, 36.823639, 62.535587>,  <27.831848, 36.839973, 62.351814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985340, 36.823639, 62.535587>,  <28.241161, 36.796417, 62.841877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985340, 36.823639, 62.535587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617680, 0.547489, 0.564559,
		0.457648, 0.834041, -0.308113,
		-0.639554, 0.068054, -0.765728,
		27.793474, 36.844055, 62.305870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.651745, 35.085705, 49.293488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.636189, 35.338223, 48.983662>,  <37.626854, 35.489735, 48.797764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.636189, 35.338223, 48.983662>,  <37.651745, 35.085705, 49.293488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636189, 35.338223, 48.983662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975867, 0.142694, 0.165295,
		0.214876, 0.762304, 0.610509,
		-0.038889, 0.631294, -0.774568,
		37.624523, 35.527611, 48.751289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189034, 35.720238, 49.485325>,  <37.651745, 35.085705, 49.293488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189034, 35.720238, 49.485325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.215698, 35.770332, 49.089371>,  <37.231697, 35.800388, 48.851799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.215698, 35.770332, 49.089371>,  <37.189034, 35.720238, 49.485325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215698, 35.770332, 49.089371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963932, 0.264281, -0.031480,
		0.257665, 0.956280, 0.138339,
		0.066664, 0.125238, -0.989884,
		37.235699, 35.807903, 48.792404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970566, 36.399303, 49.319595>,  <37.189034, 35.720238, 49.485325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970566, 36.399303, 49.319595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903957, 36.148144, 49.015484>,  <36.863991, 35.997448, 48.833019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903957, 36.148144, 49.015484>,  <36.970566, 36.399303, 49.319595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903957, 36.148144, 49.015484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964852, 0.262733, -0.005657,
		0.203301, 0.732610, -0.649578,
		-0.166521, -0.627897, -0.760274,
		36.854000, 35.959774, 48.787403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680588, 36.819633, 48.989010>,  <36.970566, 36.399303, 49.319595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680588, 36.819633, 48.989010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.595207, 36.471291, 48.811901>,  <36.543980, 36.262283, 48.705635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.595207, 36.471291, 48.811901>,  <36.680588, 36.819633, 48.989010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595207, 36.471291, 48.811901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959658, 0.271807, -0.071959,
		0.183015, 0.409550, -0.893742,
		-0.213454, -0.870856, -0.442773,
		36.531170, 36.210033, 48.679070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163506, 36.939117, 48.528946>,  <36.680588, 36.819633, 48.989010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163506, 36.939117, 48.528946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103504, 36.546082, 48.572800>,  <36.067505, 36.310261, 48.599110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103504, 36.546082, 48.572800>,  <36.163506, 36.939117, 48.528946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103504, 36.546082, 48.572800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986766, 0.155695, 0.045306,
		-0.061586, -0.101386, -0.992939,
		-0.150002, -0.982589, 0.109633,
		36.058502, 36.251305, 48.605690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511852, 36.729607, 48.086639>,  <36.163506, 36.939117, 48.528946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511852, 36.729607, 48.086639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.548294, 36.430027, 48.349174>,  <35.570160, 36.250278, 48.506695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.548294, 36.430027, 48.349174>,  <35.511852, 36.729607, 48.086639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548294, 36.430027, 48.349174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990343, 0.001017, 0.138635,
		-0.104498, -0.662626, -0.741625,
		0.091109, -0.748950, 0.656333,
		35.575626, 36.205341, 48.546074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846878, 36.298527, 47.946201>,  <35.511852, 36.729607, 48.086639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846878, 36.298527, 47.946201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.015839, 36.217205, 48.299526>,  <35.117214, 36.168411, 48.511520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.015839, 36.217205, 48.299526>,  <34.846878, 36.298527, 47.946201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015839, 36.217205, 48.299526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891698, -0.268075, 0.364707,
		0.162650, -0.941703, -0.294516,
		0.422398, -0.203299, 0.883317,
		35.142559, 36.156216, 48.564522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734802, 35.651936, 48.122532>,  <34.846878, 36.298527, 47.946201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734802, 35.651936, 48.122532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.822014, 35.802094, 48.482876>,  <34.874340, 35.892189, 48.699081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.822014, 35.802094, 48.482876>,  <34.734802, 35.651936, 48.122532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822014, 35.802094, 48.482876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874517, -0.334602, 0.351086,
		0.433223, -0.864363, 0.255333,
		0.218030, 0.375392, 0.900857,
		34.887424, 35.914711, 48.753132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346088, 35.206894, 48.542583>,  <34.734802, 35.651936, 48.122532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346088, 35.206894, 48.542583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.442635, 35.509651, 48.785519>,  <34.500561, 35.691307, 48.931278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.442635, 35.509651, 48.785519>,  <34.346088, 35.206894, 48.542583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442635, 35.509651, 48.785519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838334, -0.152613, 0.523359,
		0.488814, -0.635471, 0.597694,
		0.241363, 0.756892, 0.607337,
		34.515045, 35.736717, 48.967720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257828, 34.927765, 49.169964>,  <34.346088, 35.206894, 48.542583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257828, 34.927765, 49.169964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.228210, 35.325111, 49.205166>,  <34.210438, 35.563519, 49.226288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.228210, 35.325111, 49.205166>,  <34.257828, 34.927765, 49.169964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228210, 35.325111, 49.205166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830078, -0.110300, 0.546630,
		0.552709, -0.032572, 0.832737,
		-0.074046, 0.993364, 0.088001,
		34.205997, 35.623119, 49.231567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186882, 35.031139, 49.831253>,  <34.257828, 34.927765, 49.169964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186882, 35.031139, 49.831253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.035889, 35.379856, 49.706367>,  <33.945293, 35.589088, 49.631435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.035889, 35.379856, 49.706367>,  <34.186882, 35.031139, 49.831253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035889, 35.379856, 49.706367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760817, -0.099787, 0.641249,
		0.527884, 0.479597, 0.700946,
		-0.377486, 0.871796, -0.312210,
		33.922642, 35.641396, 49.612705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803493, 35.324444, 50.453735>,  <34.186882, 35.031139, 49.831253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803493, 35.324444, 50.453735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.667126, 35.526810, 50.136795>,  <33.585304, 35.648228, 49.946629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.667126, 35.526810, 50.136795>,  <33.803493, 35.324444, 50.453735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667126, 35.526810, 50.136795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927408, -0.043011, 0.371570,
		0.153902, 0.861512, 0.483850,
		-0.340923, 0.505912, -0.792354,
		33.564850, 35.678585, 49.899090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369751, 35.924461, 50.669094>,  <33.803493, 35.324444, 50.453735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369751, 35.924461, 50.669094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.274036, 35.823330, 50.294113>,  <33.216606, 35.762653, 50.069122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.274036, 35.823330, 50.294113>,  <33.369751, 35.924461, 50.669094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274036, 35.823330, 50.294113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970507, 0.033162, 0.238782,
		-0.029282, 0.966943, -0.253305,
		-0.239288, -0.252826, -0.937454,
		33.202251, 35.747482, 50.012878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854000, 36.401443, 50.336758>,  <33.369751, 35.924461, 50.669094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854000, 36.401443, 50.336758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.834316, 36.016411, 50.230167>,  <32.822506, 35.785389, 50.166214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.834316, 36.016411, 50.230167>,  <32.854000, 36.401443, 50.336758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834316, 36.016411, 50.230167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900998, -0.072356, 0.427747,
		-0.431024, 0.261145, -0.863725,
		-0.049208, -0.962584, -0.266478,
		32.819553, 35.727634, 50.150223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312653, 36.309978, 49.848091>,  <32.854000, 36.401443, 50.336758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312653, 36.309978, 49.848091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.355881, 35.949936, 50.016911>,  <32.381817, 35.733910, 50.118202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.355881, 35.949936, 50.016911>,  <32.312653, 36.309978, 49.848091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355881, 35.949936, 50.016911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880743, 0.110220, 0.460591,
		-0.461100, -0.421494, -0.780852,
		0.108071, -0.900108, 0.422050,
		32.388302, 35.679905, 50.143524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886431, 35.782539, 49.513668>,  <32.312653, 36.309978, 49.848091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886431, 35.782539, 49.513668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.949150, 35.656185, 49.887970>,  <31.986782, 35.580372, 50.112549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.949150, 35.656185, 49.887970>,  <31.886431, 35.782539, 49.513668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949150, 35.656185, 49.887970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983472, 0.036924, 0.177258,
		-0.090544, -0.948079, -0.304872,
		0.156798, -0.315883, 0.935753,
		31.996189, 35.561420, 50.168697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293318, 35.309246, 49.605324>,  <31.886431, 35.782539, 49.513668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293318, 35.309246, 49.605324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.459265, 35.348701, 49.967133>,  <31.558832, 35.372375, 50.184216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.459265, 35.348701, 49.967133>,  <31.293318, 35.309246, 49.605324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459265, 35.348701, 49.967133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906974, -0.034583, 0.419764,
		0.072685, -0.994523, 0.075112,
		0.414867, 0.098635, 0.904520,
		31.583725, 35.378292, 50.238487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990017, 34.703300, 50.003502>,  <31.293318, 35.309246, 49.605324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990017, 34.703300, 50.003502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.108986, 35.007748, 50.234066>,  <31.180367, 35.190414, 50.372402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.108986, 35.007748, 50.234066>,  <30.990017, 34.703300, 50.003502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108986, 35.007748, 50.234066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870606, -0.031610, 0.490964,
		0.391901, -0.647845, 0.653231,
		0.297420, 0.761116, 0.576406,
		31.198212, 35.236084, 50.406986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912645, 34.510433, 50.748131>,  <30.990017, 34.703300, 50.003502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912645, 34.510433, 50.748131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.888557, 34.909401, 50.732498>,  <30.874105, 35.148781, 50.723118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.888557, 34.909401, 50.732498>,  <30.912645, 34.510433, 50.748131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888557, 34.909401, 50.732498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928940, -0.041671, 0.367879,
		0.365301, 0.058457, 0.929052,
		-0.060220, 0.997420, -0.039080,
		30.870491, 35.208626, 50.720776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538050, 34.694927, 51.421787>,  <30.912645, 34.510433, 50.748131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538050, 34.694927, 51.421787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.545095, 35.034210, 51.210037>,  <30.549322, 35.237778, 51.082985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.545095, 35.034210, 51.210037>,  <30.538050, 34.694927, 51.421787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545095, 35.034210, 51.210037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901681, 0.242260, 0.358164,
		0.432043, 0.471020, 0.769076,
		0.017614, 0.848204, -0.529377,
		30.550379, 35.288670, 51.051224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269651, 35.264610, 51.892666>,  <30.538050, 34.694927, 51.421787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269651, 35.264610, 51.892666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.206467, 35.374138, 51.513176>,  <30.168556, 35.439854, 51.285484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.206467, 35.374138, 51.513176>,  <30.269651, 35.264610, 51.892666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206467, 35.374138, 51.513176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945652, 0.234613, 0.225165,
		0.284237, 0.932727, 0.221876,
		-0.157963, 0.273818, -0.948721,
		30.159079, 35.456284, 51.228561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834133, 35.872875, 51.859409>,  <30.269651, 35.264610, 51.892666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834133, 35.872875, 51.859409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.778255, 35.742596, 51.485371>,  <29.744730, 35.664429, 51.260948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.778255, 35.742596, 51.485371>,  <29.834133, 35.872875, 51.859409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778255, 35.742596, 51.485371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968297, 0.242435, 0.060213,
		0.207089, 0.913865, -0.349236,
		-0.139693, -0.325694, -0.935098,
		29.736347, 35.644886, 51.204842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270411, 36.271492, 51.572456>,  <29.834133, 35.872875, 51.859409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270411, 36.271492, 51.572456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.314501, 35.974346, 51.308334>,  <29.340956, 35.796059, 51.149860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.314501, 35.974346, 51.308334>,  <29.270411, 36.271492, 51.572456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314501, 35.974346, 51.308334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975313, 0.047058, -0.215752,
		0.191347, 0.667785, -0.719340,
		0.110226, -0.742865, -0.660304,
		29.347569, 35.751488, 51.110245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933403, 36.496162, 50.919586>,  <29.270411, 36.271492, 51.572456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933403, 36.496162, 50.919586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.933277, 36.096413, 50.905392>,  <28.933203, 35.856564, 50.896877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.933277, 36.096413, 50.905392>,  <28.933403, 36.496162, 50.919586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933277, 36.096413, 50.905392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991691, 0.004875, -0.128550,
		0.128642, 0.035147, -0.991068,
		-0.000313, -0.999370, -0.035482,
		28.933184, 35.796600, 50.894749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602142, 36.235859, 50.231968>,  <28.933403, 36.496162, 50.919586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602142, 36.235859, 50.231968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.552660, 35.937145, 50.493351>,  <28.522970, 35.757915, 50.650181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.552660, 35.937145, 50.493351>,  <28.602142, 36.235859, 50.231968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552660, 35.937145, 50.493351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979618, -0.013116, -0.200443,
		0.158259, -0.664933, -0.729944,
		-0.123707, -0.746788, 0.653456,
		28.515549, 35.713108, 50.689388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926647, 35.915016, 49.978672>,  <28.602142, 36.235859, 50.231968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926647, 35.915016, 49.978672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.970287, 35.734947, 50.333172>,  <27.996471, 35.626904, 50.545872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.970287, 35.734947, 50.333172>,  <27.926647, 35.915016, 49.978672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970287, 35.734947, 50.333172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993566, -0.076657, 0.083372,
		0.030405, -0.889643, -0.455643,
		0.109099, -0.450176, 0.886250,
		28.003017, 35.599895, 50.599049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439718, 35.440983, 49.909794>,  <27.926647, 35.915016, 49.978672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439718, 35.440983, 49.909794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.509697, 35.467484, 50.302731>,  <27.551685, 35.483383, 50.538494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.509697, 35.467484, 50.302731>,  <27.439718, 35.440983, 49.909794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509697, 35.467484, 50.302731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983986, -0.022821, 0.176779,
		0.034131, -0.997542, 0.061203,
		0.174948, 0.066256, 0.982346,
		27.562181, 35.487362, 50.597435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968809, 35.086685, 50.216362>,  <27.439718, 35.440983, 49.909794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968809, 35.086685, 50.216362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.080729, 35.320511, 50.520992>,  <27.147881, 35.460804, 50.703770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.080729, 35.320511, 50.520992>,  <26.968809, 35.086685, 50.216362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080729, 35.320511, 50.520992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919835, -0.063983, 0.387053,
		0.274984, -0.808823, 0.519797,
		0.279800, 0.584560, 0.761578,
		27.164669, 35.495880, 50.749466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827988, 34.697998, 50.809200>,  <26.968809, 35.086685, 50.216362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827988, 34.697998, 50.809200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.847836, 35.076176, 50.937988>,  <26.859745, 35.303082, 51.015263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.847836, 35.076176, 50.937988>,  <26.827988, 34.697998, 50.809200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847836, 35.076176, 50.937988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834807, -0.137713, 0.533040,
		0.548301, -0.295233, 0.782434,
		0.049620, 0.945448, 0.321971,
		26.862722, 35.359810, 51.034580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633348, 34.637600, 51.584419>,  <26.827988, 34.697998, 50.809200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633348, 34.637600, 51.584419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.594198, 35.022617, 51.483280>,  <26.570707, 35.253628, 51.422596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.594198, 35.022617, 51.483280>,  <26.633348, 34.637600, 51.584419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594198, 35.022617, 51.483280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809791, 0.070660, 0.582448,
		0.578496, 0.261766, 0.772542,
		-0.097877, 0.962542, -0.252852,
		26.564835, 35.311378, 51.407425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364708, 34.993282, 52.190002>,  <26.633348, 34.637600, 51.584419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364708, 34.993282, 52.190002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.238350, 35.223877, 51.888573>,  <26.162535, 35.362232, 51.707714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.238350, 35.223877, 51.888573>,  <26.364708, 34.993282, 52.190002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238350, 35.223877, 51.888573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871316, 0.138092, 0.470891,
		0.375523, 0.805356, 0.458677,
		-0.315895, 0.576483, -0.753576,
		26.143581, 35.396820, 51.662498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946663, 35.468540, 52.516666>,  <26.364708, 34.993282, 52.190002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946663, 35.468540, 52.516666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.846029, 35.490303, 52.130146>,  <25.785648, 35.503361, 51.898232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.846029, 35.490303, 52.130146>,  <25.946663, 35.468540, 52.516666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.846029, 35.490303, 52.130146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965633, 0.053204, 0.254406,
		0.065252, 0.997101, 0.039151,
		-0.251585, 0.054406, -0.966305,
		25.770554, 35.506626, 51.840256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490093, 36.114552, 52.459000>,  <25.946663, 35.468540, 52.516666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490093, 36.114552, 52.459000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.409384, 35.891666, 52.136806>,  <25.360958, 35.757935, 51.943493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.409384, 35.891666, 52.136806>,  <25.490093, 36.114552, 52.459000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409384, 35.891666, 52.136806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978664, 0.147260, 0.143287,
		0.038772, 0.817205, -0.575042,
		-0.201776, -0.557217, -0.805479,
		25.348850, 35.724503, 51.895164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.120110, 36.516026, 52.006493>,  <25.490093, 36.114552, 52.459000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.120110, 36.516026, 52.006493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.047573, 36.132977, 51.916988>,  <25.004051, 35.903145, 51.863285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.047573, 36.132977, 51.916988>,  <25.120110, 36.516026, 52.006493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.047573, 36.132977, 51.916988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983046, 0.182796, 0.014369,
		0.027142, 0.222569, -0.974539,
		-0.181340, -0.957627, -0.223757,
		24.993172, 35.845688, 51.849861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.562210, 36.475666, 51.449905>,  <25.120110, 36.516026, 52.006493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.562210, 36.475666, 51.449905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.551983, 36.112751, 51.617798>,  <24.545847, 35.895000, 51.718533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.551983, 36.112751, 51.617798>,  <24.562210, 36.475666, 51.449905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.551983, 36.112751, 51.617798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998153, 0.000029, -0.060745,
		0.055101, -0.420505, -0.905615,
		-0.025570, -0.907290, 0.419727,
		24.544312, 35.840565, 51.743717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.453613, 30.574314, 49.377834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.123169, 30.655951, 49.167732>,  <34.924904, 30.704933, 49.041672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.123169, 30.655951, 49.167732>,  <35.453613, 30.574314, 49.377834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123169, 30.655951, 49.167732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163563, 0.805134, 0.570093,
		0.539250, 0.556871, -0.631747,
		-0.826109, 0.204093, -0.525252,
		34.875336, 30.717178, 49.010159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391006, 31.282114, 49.102886>,  <35.453613, 30.574314, 49.377834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391006, 31.282114, 49.102886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.034615, 31.113728, 49.170933>,  <34.820778, 31.012695, 49.211761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.034615, 31.113728, 49.170933>,  <35.391006, 31.282114, 49.102886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034615, 31.113728, 49.170933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197177, 0.696240, 0.690196,
		-0.408991, 0.581409, -0.703342,
		-0.890981, -0.420967, 0.170116,
		34.767319, 30.987438, 49.221966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937874, 31.832962, 49.171883>,  <35.391006, 31.282114, 49.102886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937874, 31.832962, 49.171883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.750107, 31.532127, 49.356926>,  <34.637447, 31.351627, 49.467953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.750107, 31.532127, 49.356926>,  <34.937874, 31.832962, 49.171883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750107, 31.532127, 49.356926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175416, 0.592915, 0.785927,
		-0.865374, 0.287781, -0.410255,
		-0.469421, -0.752086, 0.462612,
		34.609280, 31.306501, 49.495708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279526, 32.136349, 49.440933>,  <34.937874, 31.832962, 49.171883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279526, 32.136349, 49.440933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372837, 31.802773, 49.640984>,  <34.428822, 31.602627, 49.761013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372837, 31.802773, 49.640984>,  <34.279526, 32.136349, 49.440933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372837, 31.802773, 49.640984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094910, 0.492332, 0.865217,
		-0.967768, -0.249301, 0.035700,
		0.233276, -0.833941, 0.500125,
		34.442822, 31.552589, 49.791019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744408, 32.094559, 49.872116>,  <34.279526, 32.136349, 49.440933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744408, 32.094559, 49.872116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.020447, 31.861794, 50.044228>,  <34.186069, 31.722134, 50.147495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.020447, 31.861794, 50.044228>,  <33.744408, 32.094559, 49.872116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020447, 31.861794, 50.044228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147441, 0.469026, 0.870790,
		-0.708537, -0.664372, 0.237876,
		0.690099, -0.581914, 0.430278,
		34.227478, 31.687220, 50.173309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400246, 31.931234, 50.430317>,  <33.744408, 32.094559, 49.872116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400246, 31.931234, 50.430317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.780354, 31.857029, 50.530369>,  <34.008419, 31.812506, 50.590401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.780354, 31.857029, 50.530369>,  <33.400246, 31.931234, 50.430317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780354, 31.857029, 50.530369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152882, 0.421837, 0.893690,
		-0.271304, -0.887490, 0.372499,
		0.950274, -0.185513, 0.250127,
		34.065437, 31.801374, 50.605408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341991, 31.474039, 51.067730>,  <33.400246, 31.931234, 50.430317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341991, 31.474039, 51.067730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.694099, 31.663809, 51.064827>,  <33.905365, 31.777670, 51.063084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.694099, 31.663809, 51.064827>,  <33.341991, 31.474039, 51.067730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694099, 31.663809, 51.064827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110061, 0.219045, 0.969487,
		0.461538, -0.852609, 0.245033,
		0.880267, 0.474424, -0.007258,
		33.958179, 31.806135, 51.062649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590969, 31.259369, 51.727791>,  <33.341991, 31.474039, 51.067730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590969, 31.259369, 51.727791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.836014, 31.560709, 51.632149>,  <33.983040, 31.741512, 51.574764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.836014, 31.560709, 51.632149>,  <33.590969, 31.259369, 51.727791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836014, 31.560709, 51.632149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023847, 0.319998, 0.947118,
		0.790025, -0.574513, 0.213999,
		0.612611, 0.753350, -0.239105,
		34.019798, 31.786715, 51.560417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167545, 31.267958, 52.230167>,  <33.590969, 31.259369, 51.727791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167545, 31.267958, 52.230167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.131504, 31.639925, 52.087543>,  <34.109879, 31.863106, 52.001968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.131504, 31.639925, 52.087543>,  <34.167545, 31.267958, 52.230167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131504, 31.639925, 52.087543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075790, 0.350578, 0.933462,
		0.993044, 0.111133, 0.038890,
		-0.090104, 0.929917, -0.356562,
		34.104473, 31.918900, 51.980576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402576, 31.765396, 52.732235>,  <34.167545, 31.267958, 52.230167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402576, 31.765396, 52.732235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.202347, 32.020443, 52.498013>,  <34.082211, 32.173470, 52.357479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.202347, 32.020443, 52.498013>,  <34.402576, 31.765396, 52.732235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202347, 32.020443, 52.498013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291827, 0.512520, 0.807564,
		0.815025, 0.575123, -0.070479,
		-0.500571, 0.637618, -0.585553,
		34.052177, 32.211727, 52.322346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694279, 32.435291, 52.859974>,  <34.402576, 31.765396, 52.732235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694279, 32.435291, 52.859974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.323914, 32.489319, 52.718872>,  <34.101696, 32.521736, 52.634209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.323914, 32.489319, 52.718872>,  <34.694279, 32.435291, 52.859974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323914, 32.489319, 52.718872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247045, 0.489918, 0.836032,
		0.285748, 0.861241, -0.420253,
		-0.925914, 0.135073, -0.352759,
		34.046139, 32.529842, 52.613045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528030, 33.176735, 53.004543>,  <34.694279, 32.435291, 52.859974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528030, 33.176735, 53.004543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.168816, 33.009640, 52.949368>,  <33.953285, 32.909382, 52.916264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.168816, 33.009640, 52.949368>,  <34.528030, 33.176735, 53.004543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168816, 33.009640, 52.949368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261582, 0.254947, 0.930901,
		-0.353703, 0.872066, -0.338224,
		-0.898036, -0.417736, -0.137941,
		33.899406, 32.884319, 52.907986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489124, 33.951733, 52.807911>,  <34.528030, 33.176735, 53.004543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489124, 33.951733, 52.807911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.787708, 34.136723, 52.999290>,  <34.966858, 34.247715, 53.114120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.787708, 34.136723, 52.999290>,  <34.489124, 33.951733, 52.807911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787708, 34.136723, 52.999290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627977, -0.251780, -0.736377,
		-0.220088, 0.850134, -0.478366,
		0.746462, 0.462471, 0.478451,
		35.011646, 34.275463, 53.142826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773785, 34.511425, 52.368813>,  <34.489124, 33.951733, 52.807911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773785, 34.511425, 52.368813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052727, 34.398300, 52.632240>,  <35.220093, 34.330425, 52.790298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052727, 34.398300, 52.632240>,  <34.773785, 34.511425, 52.368813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052727, 34.398300, 52.632240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708841, 0.136214, -0.692091,
		0.106027, 0.949454, 0.295459,
		0.697354, -0.282814, 0.658569,
		35.261932, 34.313457, 52.829811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305054, 34.861755, 52.122337>,  <34.773785, 34.511425, 52.368813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305054, 34.861755, 52.122337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.489986, 34.593475, 52.354343>,  <35.600945, 34.432507, 52.493546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.489986, 34.593475, 52.354343>,  <35.305054, 34.861755, 52.122337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489986, 34.593475, 52.354343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834604, 0.108228, -0.540114,
		0.299478, 0.733794, 0.609803,
		0.462330, -0.670696, 0.580015,
		35.628685, 34.392265, 52.528347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928680, 35.191563, 52.238220>,  <35.305054, 34.861755, 52.122337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928680, 35.191563, 52.238220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.978420, 34.808598, 52.342457>,  <36.008263, 34.578819, 52.404999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.978420, 34.808598, 52.342457>,  <35.928680, 35.191563, 52.238220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978420, 34.808598, 52.342457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940108, 0.029673, -0.339583,
		0.317387, 0.287209, 0.903757,
		0.124348, -0.957408, 0.260590,
		36.015724, 34.521374, 52.420635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529991, 35.191517, 52.556919>,  <35.928680, 35.191563, 52.238220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529991, 35.191517, 52.556919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.475994, 34.814339, 52.435173>,  <36.443596, 34.588032, 52.362125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.475994, 34.814339, 52.435173>,  <36.529991, 35.191517, 52.556919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475994, 34.814339, 52.435173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938310, -0.022958, -0.345033,
		0.318358, -0.332165, 0.887871,
		-0.134991, -0.942942, -0.304365,
		36.435497, 34.531456, 52.343864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097416, 34.882111, 52.717522>,  <36.529991, 35.191517, 52.556919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097416, 34.882111, 52.717522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.936890, 34.645851, 52.437500>,  <36.840572, 34.504093, 52.269485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.936890, 34.645851, 52.437500>,  <37.097416, 34.882111, 52.717522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936890, 34.645851, 52.437500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845310, 0.055467, -0.531389,
		0.352696, -0.805018, 0.477023,
		-0.401318, -0.590651, -0.700053,
		36.816494, 34.468655, 52.227486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664879, 34.387733, 52.522701>,  <37.097416, 34.882111, 52.717522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664879, 34.387733, 52.522701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.410095, 34.387188, 52.214340>,  <37.257225, 34.386860, 52.029324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.410095, 34.387188, 52.214340>,  <37.664879, 34.387733, 52.522701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410095, 34.387188, 52.214340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766365, 0.107194, -0.633399,
		0.083495, -0.994237, -0.067240,
		-0.636957, -0.001355, -0.770898,
		37.219009, 34.386780, 51.983070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796265, 33.873081, 52.000286>,  <37.664879, 34.387733, 52.522701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796265, 33.873081, 52.000286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.596973, 34.159279, 51.804394>,  <37.477398, 34.330997, 51.686859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.596973, 34.159279, 51.804394>,  <37.796265, 33.873081, 52.000286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596973, 34.159279, 51.804394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748932, 0.070533, -0.658882,
		-0.436881, -0.695053, -0.570996,
		-0.498232, 0.715490, -0.489733,
		37.447502, 34.373924, 51.657475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890369, 33.712437, 51.237526>,  <37.796265, 33.873081, 52.000286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890369, 33.712437, 51.237526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811558, 34.104462, 51.227203>,  <37.764271, 34.339676, 51.221008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811558, 34.104462, 51.227203>,  <37.890369, 33.712437, 51.237526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811558, 34.104462, 51.227203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769282, 0.138228, -0.623778,
		-0.607771, -0.142756, -0.781175,
		-0.197028, 0.980058, -0.025809,
		37.752449, 34.398479, 51.219460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114605, 33.900154, 50.590328>,  <37.890369, 33.712437, 51.237526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114605, 33.900154, 50.590328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.067982, 34.248623, 50.781105>,  <38.040009, 34.457703, 50.895573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.067982, 34.248623, 50.781105>,  <38.114605, 33.900154, 50.590328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067982, 34.248623, 50.781105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823951, 0.352945, -0.443323,
		-0.554545, 0.341305, -0.758941,
		-0.116556, 0.871172, 0.476942,
		38.033016, 34.509975, 50.924187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007801, 34.405708, 50.017654>,  <38.114605, 33.900154, 50.590328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007801, 34.405708, 50.017654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.150059, 34.607319, 50.332481>,  <38.235413, 34.728287, 50.521378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.150059, 34.607319, 50.332481>,  <38.007801, 34.405708, 50.017654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150059, 34.607319, 50.332481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783930, 0.297658, -0.544843,
		-0.508892, 0.810775, -0.289263,
		0.355644, 0.504028, 0.787066,
		38.256752, 34.758526, 50.568600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315998, 35.091976, 49.811642>,  <38.007801, 34.405708, 50.017654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315998, 35.091976, 49.811642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.495224, 35.035965, 50.164829>,  <38.602760, 35.002357, 50.376743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.495224, 35.035965, 50.164829>,  <38.315998, 35.091976, 49.811642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495224, 35.035965, 50.164829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889937, 0.163948, -0.425597,
		-0.085166, 0.976481, 0.198072,
		0.448061, -0.140025, 0.882969,
		38.629642, 34.993958, 50.429722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783710, 35.667744, 49.895508>,  <38.315998, 35.091976, 49.811642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783710, 35.667744, 49.895508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.922665, 35.382278, 50.138821>,  <39.006035, 35.210999, 50.284809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.922665, 35.382278, 50.138821>,  <38.783710, 35.667744, 49.895508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922665, 35.382278, 50.138821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916540, 0.121309, -0.381101,
		0.198190, 0.689900, 0.696246,
		0.347383, -0.713668, 0.608279,
		39.026878, 35.168179, 50.321304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362843, 35.926167, 50.211372>,  <38.783710, 35.667744, 49.895508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362843, 35.926167, 50.211372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.410606, 35.530434, 50.244759>,  <39.439262, 35.292995, 50.264790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.410606, 35.530434, 50.244759>,  <39.362843, 35.926167, 50.211372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410606, 35.530434, 50.244759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962646, 0.094788, -0.253629,
		0.243011, 0.110634, 0.963694,
		0.119407, -0.989331, 0.083467,
		39.446430, 35.233635, 50.269798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173321, 36.681431, 50.026363>,  <39.362843, 35.926167, 50.211372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173321, 36.681431, 50.026363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.842987, 36.584175, 50.229885>,  <38.644787, 36.525822, 50.351997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.842987, 36.584175, 50.229885>,  <39.173321, 36.681431, 50.026363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842987, 36.584175, 50.229885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285237, 0.958444, -0.004959,
		-0.486457, -0.149226, -0.860867,
		-0.825832, -0.243139, 0.508806,
		38.595238, 36.511234, 50.382526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617954, 37.095154, 49.710655>,  <39.173321, 36.681431, 50.026363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617954, 37.095154, 49.710655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.523666, 36.998924, 50.087284>,  <38.467094, 36.941185, 50.313263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.523666, 36.998924, 50.087284>,  <38.617954, 37.095154, 49.710655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523666, 36.998924, 50.087284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408486, 0.903657, 0.128623,
		-0.881803, -0.354301, -0.311277,
		-0.235716, -0.240573, 0.941574,
		38.452953, 36.926754, 50.369755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250481, 37.664204, 49.663452>,  <38.617954, 37.095154, 49.710655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250481, 37.664204, 49.663452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.219685, 37.488781, 50.021610>,  <38.201206, 37.383526, 50.236507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.219685, 37.488781, 50.021610>,  <38.250481, 37.664204, 49.663452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219685, 37.488781, 50.021610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561401, 0.761235, 0.324576,
		-0.823955, -0.477690, -0.304812,
		-0.076987, -0.438558, 0.895400,
		38.196590, 37.357212, 50.290230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378700, 38.394470, 49.927452>,  <38.250481, 37.664204, 49.663452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378700, 38.394470, 49.927452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.141693, 38.438221, 49.608215>,  <37.999489, 38.464474, 49.416672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.141693, 38.438221, 49.608215>,  <38.378700, 38.394470, 49.927452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141693, 38.438221, 49.608215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408463, 0.813135, 0.414692,
		0.694317, 0.571705, -0.437123,
		-0.592522, 0.109379, -0.798094,
		37.963936, 38.471035, 49.368786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355564, 39.120514, 49.680489>,  <38.378700, 38.394470, 49.927452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355564, 39.120514, 49.680489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.004482, 38.938808, 49.619461>,  <37.793835, 38.829784, 49.582844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.004482, 38.938808, 49.619461>,  <38.355564, 39.120514, 49.680489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004482, 38.938808, 49.619461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449520, 0.670185, 0.590579,
		-0.166031, 0.586936, -0.792426,
		-0.877704, -0.454266, -0.152568,
		37.741173, 38.802528, 49.573692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882942, 39.700306, 49.548698>,  <38.355564, 39.120514, 49.680489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882942, 39.700306, 49.548698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.665752, 39.371361, 49.616699>,  <37.535439, 39.173992, 49.657501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.665752, 39.371361, 49.616699>,  <37.882942, 39.700306, 49.548698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665752, 39.371361, 49.616699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631091, 0.533162, 0.563438,
		-0.553989, 0.198646, -0.808478,
		-0.542974, -0.822362, 0.170002,
		37.502861, 39.124653, 49.667702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221226, 39.934242, 49.312485>,  <37.882942, 39.700306, 49.548698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221226, 39.934242, 49.312485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.197659, 39.657207, 49.600052>,  <37.183517, 39.490986, 49.772594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.197659, 39.657207, 49.600052>,  <37.221226, 39.934242, 49.312485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197659, 39.657207, 49.600052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645574, 0.575747, 0.501747,
		-0.761421, -0.434553, -0.481041,
		-0.058923, -0.692588, 0.718922,
		37.179981, 39.449432, 49.815727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585358, 40.077900, 49.534081>,  <37.221226, 39.934242, 49.312485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585358, 40.077900, 49.534081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731228, 39.836098, 49.817371>,  <36.818752, 39.691017, 49.987347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731228, 39.836098, 49.817371>,  <36.585358, 40.077900, 49.534081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731228, 39.836098, 49.817371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520265, 0.498520, 0.693399,
		-0.772227, -0.621333, -0.132702,
		0.364677, -0.604502, 0.708228,
		36.840630, 39.654747, 50.029839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986507, 39.827122, 49.891594>,  <36.585358, 40.077900, 49.534081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986507, 39.827122, 49.891594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.288471, 39.747803, 50.141647>,  <36.469650, 39.700211, 50.291679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.288471, 39.747803, 50.141647>,  <35.986507, 39.827122, 49.891594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288471, 39.747803, 50.141647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548656, 0.331237, 0.767632,
		-0.359283, -0.922476, 0.141260,
		0.754912, -0.198294, 0.625129,
		36.514946, 39.688316, 50.329185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657303, 39.562626, 50.490879>,  <35.986507, 39.827122, 49.891594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657303, 39.562626, 50.490879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.026848, 39.666607, 50.603230>,  <36.248577, 39.728996, 50.670639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.026848, 39.666607, 50.603230>,  <35.657303, 39.562626, 50.490879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026848, 39.666607, 50.603230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380374, 0.542674, 0.748880,
		0.042250, -0.798704, 0.600239,
		0.923867, 0.259955, 0.280878,
		36.304008, 39.744595, 50.687492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627045, 39.509930, 51.288502>,  <35.657303, 39.562626, 50.490879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627045, 39.509930, 51.288502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927197, 39.741852, 51.161533>,  <36.107288, 39.881004, 51.085350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927197, 39.741852, 51.161533>,  <35.627045, 39.509930, 51.288502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927197, 39.741852, 51.161533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244516, 0.689628, 0.681634,
		0.614115, -0.433872, 0.659256,
		0.750383, 0.579800, -0.317422,
		36.152309, 39.915791, 51.066307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102711, 39.718040, 51.922039>,  <35.627045, 39.509930, 51.288502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102711, 39.718040, 51.922039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118042, 39.997334, 51.636101>,  <36.127243, 40.164909, 51.464539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118042, 39.997334, 51.636101>,  <36.102711, 39.718040, 51.922039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118042, 39.997334, 51.636101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186191, 0.707836, 0.681397,
		0.981765, 0.106979, 0.157136,
		0.038331, 0.698229, -0.714847,
		36.129543, 40.206802, 51.421646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458969, 40.283199, 52.163216>,  <36.102711, 39.718040, 51.922039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458969, 40.283199, 52.163216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300308, 40.472160, 51.848381>,  <36.205112, 40.585537, 51.659481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300308, 40.472160, 51.848381>,  <36.458969, 40.283199, 52.163216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300308, 40.472160, 51.848381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158526, 0.809288, 0.565617,
		0.904178, 0.349126, -0.246117,
		-0.396651, 0.472402, -0.787086,
		36.181313, 40.613880, 51.612255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737026, 40.933025, 52.100025>,  <36.458969, 40.283199, 52.163216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737026, 40.933025, 52.100025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.382282, 40.930531, 51.915226>,  <36.169437, 40.929035, 51.804348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.382282, 40.930531, 51.915226>,  <36.737026, 40.933025, 52.100025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382282, 40.930531, 51.915226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250236, 0.847047, 0.468929,
		0.388406, 0.531482, -0.752773,
		-0.886861, -0.006236, -0.461994,
		36.116222, 40.928661, 51.776627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594833, 41.678185, 51.963017>,  <36.737026, 40.933025, 52.100025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594833, 41.678185, 51.963017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.250259, 41.475956, 51.943726>,  <36.043514, 41.354618, 51.932152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.250259, 41.475956, 51.943726>,  <36.594833, 41.678185, 51.963017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250259, 41.475956, 51.943726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414871, 0.645756, 0.641000,
		-0.292927, 0.572190, -0.766024,
		-0.861438, -0.505568, -0.048226,
		35.991829, 41.324287, 51.929256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070023, 42.231064, 52.032436>,  <36.594833, 41.678185, 51.963017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070023, 42.231064, 52.032436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873466, 41.894791, 52.123459>,  <35.755531, 41.693027, 52.178070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873466, 41.894791, 52.123459>,  <36.070023, 42.231064, 52.032436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873466, 41.894791, 52.123459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460090, 0.472413, 0.751760,
		-0.739493, 0.264713, -0.618932,
		-0.491393, -0.840686, 0.227555,
		35.726048, 41.642586, 52.191727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427925, 42.452549, 52.156418>,  <36.070023, 42.231064, 52.032436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427925, 42.452549, 52.156418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408249, 42.090576, 52.325497>,  <35.396442, 41.873390, 52.426945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408249, 42.090576, 52.325497>,  <35.427925, 42.452549, 52.156418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408249, 42.090576, 52.325497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671765, 0.343160, 0.656486,
		-0.739130, -0.251663, -0.624782,
		-0.049187, -0.904935, 0.422697,
		35.393494, 41.819096, 52.452305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686848, 42.344742, 52.148228>,  <35.427925, 42.452549, 52.156418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686848, 42.344742, 52.148228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.845486, 42.093121, 52.415661>,  <34.940670, 41.942146, 52.576122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.845486, 42.093121, 52.415661>,  <34.686848, 42.344742, 52.148228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845486, 42.093121, 52.415661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699929, 0.264036, 0.663614,
		-0.593979, -0.731147, -0.335578,
		0.396596, -0.629054, 0.668583,
		34.964466, 41.904404, 52.616238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165817, 41.843964, 52.314224>,  <34.686848, 42.344742, 52.148228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165817, 41.843964, 52.314224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419411, 41.833046, 52.623371>,  <34.571568, 41.826496, 52.808861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419411, 41.833046, 52.623371>,  <34.165817, 41.843964, 52.314224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419411, 41.833046, 52.623371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771684, -0.087880, 0.629906,
		0.050731, -0.995757, -0.076772,
		0.633980, -0.027288, 0.772868,
		34.609604, 41.824856, 52.855232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882168, 41.399204, 52.858578>,  <34.165817, 41.843964, 52.314224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882168, 41.399204, 52.858578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.171230, 41.581020, 53.066872>,  <34.344669, 41.690109, 53.191849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.171230, 41.581020, 53.066872>,  <33.882168, 41.399204, 52.858578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171230, 41.581020, 53.066872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664370, 0.248879, 0.704750,
		0.190740, -0.855249, 0.481838,
		0.722655, 0.454542, 0.520731,
		34.388027, 41.717381, 53.223091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841129, 41.179901, 53.517078>,  <33.882168, 41.399204, 52.858578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841129, 41.179901, 53.517078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.052181, 41.514336, 53.577175>,  <34.178814, 41.714996, 53.613235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.052181, 41.514336, 53.577175>,  <33.841129, 41.179901, 53.517078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052181, 41.514336, 53.577175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521331, 0.179066, 0.834355,
		0.670686, -0.518558, 0.530356,
		0.527631, 0.836082, 0.150243,
		34.210472, 41.765160, 53.622250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043636, 41.192341, 54.229038>,  <33.841129, 41.179901, 53.517078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043636, 41.192341, 54.229038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.033237, 41.573486, 54.108128>,  <34.026997, 41.802174, 54.035583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.033237, 41.573486, 54.108128>,  <34.043636, 41.192341, 54.229038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033237, 41.573486, 54.108128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533280, 0.242536, 0.810425,
		0.845539, 0.182269, 0.501838,
		-0.026001, 0.952866, -0.302274,
		34.025436, 41.859344, 54.017445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182308, 41.497524, 54.809727>,  <34.043636, 41.192341, 54.229038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182308, 41.497524, 54.809727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.039707, 41.815918, 54.614052>,  <33.954147, 42.006954, 54.496647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.039707, 41.815918, 54.614052>,  <34.182308, 41.497524, 54.809727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039707, 41.815918, 54.614052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473223, 0.297622, 0.829145,
		0.805584, 0.527090, 0.270576,
		-0.356504, 0.795988, -0.489190,
		33.932755, 42.054714, 54.467293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280987, 42.160355, 55.238018>,  <34.182308, 41.497524, 54.809727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280987, 42.160355, 55.238018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.984795, 42.240761, 54.981491>,  <33.807079, 42.289005, 54.827576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.984795, 42.240761, 54.981491>,  <34.280987, 42.160355, 55.238018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984795, 42.240761, 54.981491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464024, 0.537373, 0.704210,
		0.486183, 0.819037, -0.304636,
		-0.740478, 0.201016, -0.641315,
		33.762650, 42.301067, 54.789097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082474, 42.848373, 55.216545>,  <34.280987, 42.160355, 55.238018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082474, 42.848373, 55.216545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.749847, 42.677273, 55.074825>,  <33.550270, 42.574612, 54.989792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.749847, 42.677273, 55.074825>,  <34.082474, 42.848373, 55.216545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749847, 42.677273, 55.074825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546640, 0.517254, 0.658508,
		-0.098413, 0.741268, -0.663956,
		-0.831564, -0.427751, -0.354302,
		33.500378, 42.548946, 54.968536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567047, 43.277882, 55.467937>,  <34.082474, 42.848373, 55.216545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567047, 43.277882, 55.467937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326565, 42.984219, 55.341721>,  <33.182274, 42.808022, 55.265991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326565, 42.984219, 55.341721>,  <33.567047, 43.277882, 55.467937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326565, 42.984219, 55.341721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705021, 0.301439, 0.641934,
		-0.376163, 0.608399, -0.698822,
		-0.601204, -0.734156, -0.315544,
		33.146202, 42.763973, 55.247059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807587, 43.512245, 55.376106>,  <33.567047, 43.277882, 55.467937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807587, 43.512245, 55.376106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.838070, 43.125900, 55.475140>,  <32.856358, 42.894093, 55.534557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.838070, 43.125900, 55.475140>,  <32.807587, 43.512245, 55.376106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838070, 43.125900, 55.475140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658508, 0.137697, 0.739870,
		-0.748706, -0.219414, -0.625537,
		0.076204, -0.965866, 0.247580,
		32.860931, 42.836140, 55.549416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118000, 43.213829, 55.533134>,  <32.807587, 43.512245, 55.376106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118000, 43.213829, 55.533134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.404503, 42.999920, 55.712463>,  <32.576405, 42.871574, 55.820061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.404503, 42.999920, 55.712463>,  <32.118000, 43.213829, 55.533134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404503, 42.999920, 55.712463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483303, 0.083284, 0.871482,
		-0.503385, -0.840880, -0.198806,
		0.716255, -0.534775, 0.448324,
		32.619381, 42.839489, 55.846962>
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
