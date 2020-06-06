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
	<40.234123, 35.364426, 49.514278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079266, 35.678120, 49.708225>,  <39.986351, 35.866337, 49.824593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079266, 35.678120, 49.708225>,  <40.234123, 35.364426, 49.514278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079266, 35.678120, 49.708225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908236, 0.233789, 0.347060,
		0.158820, 0.574735, -0.802780,
		-0.387148, 0.784234, 0.484864,
		39.963120, 35.913391, 49.853683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553108, 35.892597, 49.284164>,  <40.234123, 35.364426, 49.514278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553108, 35.892597, 49.284164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414989, 36.001560, 49.643398>,  <40.332119, 36.066936, 49.858940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414989, 36.001560, 49.643398>,  <40.553108, 35.892597, 49.284164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414989, 36.001560, 49.643398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938089, 0.072082, 0.338811,
		0.027560, 0.959478, -0.280433,
		-0.345296, 0.272409, 0.898089,
		40.311401, 36.083282, 49.912827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888767, 36.559338, 49.429077>,  <40.553108, 35.892597, 49.284164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888767, 36.559338, 49.429077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802647, 36.415512, 49.792255>,  <40.750977, 36.329216, 50.010162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802647, 36.415512, 49.792255>,  <40.888767, 36.559338, 49.429077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802647, 36.415512, 49.792255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944288, 0.160348, 0.287419,
		-0.248933, 0.919238, 0.305013,
		-0.215298, -0.359568, 0.907941,
		40.738056, 36.307640, 50.064636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604568, 36.552559, 49.769470>,  <40.888767, 36.559338, 49.429077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604568, 36.552559, 49.769470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395580, 36.373131, 50.059521>,  <41.270187, 36.265472, 50.233551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395580, 36.373131, 50.059521>,  <41.604568, 36.552559, 49.769470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395580, 36.373131, 50.059521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835410, -0.099136, 0.540612,
		-0.170618, 0.888231, 0.426538,
		-0.522474, -0.448573, 0.725123,
		41.238838, 36.238560, 50.277058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579823, 36.958714, 50.376175>,  <41.604568, 36.552559, 49.769470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579823, 36.958714, 50.376175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552101, 36.569118, 50.462475>,  <41.535469, 36.335361, 50.514256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552101, 36.569118, 50.462475>,  <41.579823, 36.958714, 50.376175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552101, 36.569118, 50.462475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838298, 0.060376, 0.541860,
		-0.540790, 0.218412, 0.812307,
		-0.069305, -0.973987, 0.215745,
		41.531311, 36.276924, 50.527199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148399, 36.939922, 50.813210>,  <41.579823, 36.958714, 50.376175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148399, 36.939922, 50.813210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042194, 36.554733, 50.794529>,  <41.978470, 36.323620, 50.783321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042194, 36.554733, 50.794529>,  <42.148399, 36.939922, 50.813210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042194, 36.554733, 50.794529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913078, -0.266714, 0.308467,
		-0.309501, 0.039264, 0.950088,
		-0.265513, -0.962976, -0.046697,
		41.962540, 36.265842, 50.780521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350731, 36.627110, 51.456947>,  <42.148399, 36.939922, 50.813210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350731, 36.627110, 51.456947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326973, 36.312965, 51.210472>,  <42.312717, 36.124481, 51.062588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326973, 36.312965, 51.210472>,  <42.350731, 36.627110, 51.456947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326973, 36.312965, 51.210472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953160, -0.228011, 0.198740,
		-0.296579, -0.575523, 0.762111,
		-0.059391, -0.785356, -0.616189,
		42.309155, 36.077358, 51.025616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461609, 36.100983, 51.858002>,  <42.350731, 36.627110, 51.456947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461609, 36.100983, 51.858002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564209, 36.006859, 51.483017>,  <42.625767, 35.950382, 51.258026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564209, 36.006859, 51.483017>,  <42.461609, 36.100983, 51.858002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564209, 36.006859, 51.483017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923151, -0.227713, 0.309740,
		-0.286358, -0.944868, 0.158821,
		0.256498, -0.235312, -0.937463,
		42.641159, 35.936264, 51.201778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889595, 35.680729, 51.982727>,  <42.461609, 36.100983, 51.858002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889595, 35.680729, 51.982727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975521, 35.728134, 51.594952>,  <43.027077, 35.756577, 51.362286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975521, 35.728134, 51.594952>,  <42.889595, 35.680729, 51.982727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975521, 35.728134, 51.594952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940186, -0.293810, 0.172414,
		-0.264399, -0.948489, -0.174534,
		0.214812, 0.118509, -0.969439,
		43.039967, 35.763687, 51.304119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220737, 35.055092, 51.705223>,  <42.889595, 35.680729, 51.982727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220737, 35.055092, 51.705223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329456, 35.354782, 51.463634>,  <43.394688, 35.534595, 51.318680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329456, 35.354782, 51.463634>,  <43.220737, 35.055092, 51.705223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329456, 35.354782, 51.463634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950922, -0.305543, 0.048903,
		-0.147901, -0.587626, -0.795501,
		0.271796, 0.749226, -0.603976,
		43.410995, 35.579552, 51.282440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881737, 34.901287, 51.409801>,  <43.220737, 35.055092, 51.705223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881737, 34.901287, 51.409801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887009, 35.272259, 51.260296>,  <43.890171, 35.494843, 51.170593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887009, 35.272259, 51.260296>,  <43.881737, 34.901287, 51.409801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887009, 35.272259, 51.260296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984763, -0.076864, -0.155996,
		-0.173404, -0.366008, -0.914314,
		0.013182, 0.927432, -0.373759,
		43.890965, 35.550488, 51.148167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386002, 34.951210, 50.788486>,  <43.881737, 34.901287, 51.409801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386002, 34.951210, 50.788486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338940, 35.328587, 50.912476>,  <44.310703, 35.555012, 50.986870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338940, 35.328587, 50.912476>,  <44.386002, 34.951210, 50.788486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338940, 35.328587, 50.912476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979140, 0.162282, -0.122268,
		-0.165655, 0.289118, -0.942851,
		-0.117658, 0.943438, 0.309970,
		44.303642, 35.611618, 51.005466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758667, 35.322227, 50.338486>,  <44.386002, 34.951210, 50.788486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758667, 35.322227, 50.338486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.702957, 35.550850, 50.661949>,  <44.669533, 35.688023, 50.856026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.702957, 35.550850, 50.661949>,  <44.758667, 35.322227, 50.338486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.702957, 35.550850, 50.661949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961023, 0.274961, -0.028826,
		-0.238824, 0.773122, -0.587575,
		-0.139274, 0.571558, 0.808656,
		44.661175, 35.722317, 50.904545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148239, 35.883068, 50.245743>,  <44.758667, 35.322227, 50.338486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148239, 35.883068, 50.245743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083263, 35.894943, 50.640251>,  <45.044277, 35.902069, 50.876957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083263, 35.894943, 50.640251>,  <45.148239, 35.883068, 50.245743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.083263, 35.894943, 50.640251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963432, 0.220642, 0.152037,
		-0.213099, 0.974903, -0.064447,
		-0.162441, 0.029692, 0.986271,
		45.034531, 35.903851, 50.936134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.606033, 36.527691, 50.563553>,  <45.148239, 35.883068, 50.245743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.606033, 36.527691, 50.563553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533321, 36.264698, 50.856041>,  <45.489693, 36.106903, 51.031532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533321, 36.264698, 50.856041>,  <45.606033, 36.527691, 50.563553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533321, 36.264698, 50.856041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951358, 0.070513, 0.299910,
		-0.248745, 0.750166, 0.612680,
		-0.181781, -0.657479, 0.731216,
		45.478786, 36.067455, 51.075405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.887405, 36.802135, 51.158577>,  <45.606033, 36.527691, 50.563553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.887405, 36.802135, 51.158577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846813, 36.412502, 51.239429>,  <45.822460, 36.178722, 51.287941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846813, 36.412502, 51.239429>,  <45.887405, 36.802135, 51.158577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846813, 36.412502, 51.239429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876867, 0.008394, 0.480660,
		-0.469901, 0.226022, 0.853292,
		-0.101478, -0.974086, 0.202136,
		45.816368, 36.120277, 51.300072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.080967, 36.651772, 51.910255>,  <45.887405, 36.802135, 51.158577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.080967, 36.651772, 51.910255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133492, 36.315659, 51.699852>,  <46.165009, 36.113991, 51.573612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133492, 36.315659, 51.699852>,  <46.080967, 36.651772, 51.910255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.133492, 36.315659, 51.699852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891012, -0.132558, 0.434195,
		-0.434573, -0.525695, 0.731295,
		0.131315, -0.840282, -0.526007,
		46.172886, 36.063576, 51.542049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.536934, 36.240124, 52.358261>,  <46.080967, 36.651772, 51.910255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.536934, 36.240124, 52.358261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.547333, 36.026535, 52.020218>,  <46.553570, 35.898380, 51.817394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.547333, 36.026535, 52.020218>,  <46.536934, 36.240124, 52.358261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.547333, 36.026535, 52.020218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967202, -0.200246, 0.156273,
		-0.252674, -0.821448, 0.511252,
		0.025993, -0.533970, -0.845104,
		46.555130, 35.866344, 51.766685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.961678, 35.630989, 52.486500>,  <46.536934, 36.240124, 52.358261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.961678, 35.630989, 52.486500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.989906, 35.656651, 52.088322>,  <47.006844, 35.672047, 51.849415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.989906, 35.656651, 52.088322>,  <46.961678, 35.630989, 52.486500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.989906, 35.656651, 52.088322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986574, -0.151835, 0.060153,
		-0.147283, -0.986321, -0.074010,
		0.070568, 0.064157, -0.995442,
		47.011078, 35.675896, 51.789688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.365971, 35.054363, 52.326977>,  <46.961678, 35.630989, 52.486500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.365971, 35.054363, 52.326977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.378510, 35.319637, 52.027859>,  <47.386032, 35.478802, 51.848389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.378510, 35.319637, 52.027859>,  <47.365971, 35.054363, 52.326977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.378510, 35.319637, 52.027859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998587, -0.052897, -0.005053,
		-0.042908, -0.746584, -0.663906,
		0.031346, 0.663185, -0.747799,
		47.387913, 35.518593, 51.803520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.752621, 34.749653, 51.876564>,  <47.365971, 35.054363, 52.326977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.752621, 34.749653, 51.876564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753609, 35.140209, 51.790157>,  <47.754200, 35.374542, 51.738316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753609, 35.140209, 51.790157>,  <47.752621, 34.749653, 51.876564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.753609, 35.140209, 51.790157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985498, 0.034277, 0.166192,
		0.169672, -0.213292, -0.962142,
		0.002468, 0.976387, -0.216015,
		47.754349, 35.433125, 51.725353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.688015, 34.949036, 51.655506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.559456, 34.873318, 52.026638>,  <24.482321, 34.827888, 52.249317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.559456, 34.873318, 52.026638>,  <24.688015, 34.949036, 51.655506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.559456, 34.873318, 52.026638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864765, 0.340580, 0.369035,
		-0.385857, 0.920963, 0.054231,
		-0.321398, -0.189292, 0.927832,
		24.463037, 34.816528, 52.304989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886209, 35.522663, 52.024139>,  <24.688015, 34.949036, 51.655506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.886209, 35.522663, 52.024139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.838079, 35.234955, 52.297832>,  <24.809202, 35.062328, 52.462048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.838079, 35.234955, 52.297832>,  <24.886209, 35.522663, 52.024139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838079, 35.234955, 52.297832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821030, 0.315351, 0.475882,
		-0.558061, 0.619032, 0.552601,
		-0.120323, -0.719273, 0.684229,
		24.801983, 35.019173, 52.503101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.236824, 35.803158, 52.499176>,  <24.886209, 35.522663, 52.024139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.236824, 35.803158, 52.499176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.213501, 35.420116, 52.612030>,  <25.199507, 35.190292, 52.679741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.213501, 35.420116, 52.612030>,  <25.236824, 35.803158, 52.499176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213501, 35.420116, 52.612030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938160, 0.044045, 0.343390,
		-0.341257, 0.284710, 0.895815,
		-0.058310, -0.957601, 0.282134,
		25.196009, 35.132835, 52.696671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.409933, 35.796741, 53.172375>,  <25.236824, 35.803158, 52.499176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.409933, 35.796741, 53.172375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.479776, 35.436279, 53.013664>,  <25.521683, 35.220001, 52.918438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.479776, 35.436279, 53.013664>,  <25.409933, 35.796741, 53.172375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.479776, 35.436279, 53.013664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959585, 0.065412, 0.273713,
		-0.220703, -0.428536, 0.876155,
		0.174607, -0.901154, -0.396780,
		25.532158, 35.165932, 52.894630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941175, 35.501915, 53.580044>,  <25.409933, 35.796741, 53.172375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941175, 35.501915, 53.580044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.944605, 35.279594, 53.247536>,  <25.946663, 35.146202, 53.048031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.944605, 35.279594, 53.247536>,  <25.941175, 35.501915, 53.580044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944605, 35.279594, 53.247536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986427, -0.131622, 0.098177,
		-0.163980, -0.820832, 0.547125,
		0.008573, -0.555797, -0.831274,
		25.947176, 35.112854, 52.998154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236605, 34.880451, 53.751465>,  <25.941175, 35.501915, 53.580044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236605, 34.880451, 53.751465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.281437, 34.904430, 53.354710>,  <26.308336, 34.918816, 53.116657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.281437, 34.904430, 53.354710>,  <26.236605, 34.880451, 53.751465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.281437, 34.904430, 53.354710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964059, -0.248537, 0.093914,
		-0.240891, -0.966766, -0.085647,
		0.112079, 0.059946, -0.991890,
		26.315062, 34.922413, 53.057144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622992, 34.279560, 53.547653>,  <26.236605, 34.880451, 53.751465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622992, 34.279560, 53.547653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.652796, 34.544712, 53.249649>,  <26.670679, 34.703804, 53.070847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.652796, 34.544712, 53.249649>,  <26.622992, 34.279560, 53.547653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652796, 34.544712, 53.249649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971117, -0.218049, -0.096889,
		-0.226673, -0.716268, -0.659984,
		0.074510, 0.662884, -0.745006,
		26.675148, 34.743576, 53.026146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985344, 33.967663, 52.964710>,  <26.622992, 34.279560, 53.547653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985344, 33.967663, 52.964710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.055616, 34.350468, 52.872391>,  <27.097780, 34.580151, 52.817001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.055616, 34.350468, 52.872391>,  <26.985344, 33.967663, 52.964710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055616, 34.350468, 52.872391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946173, -0.228882, -0.228842,
		-0.271830, -0.178170, -0.945708,
		0.175683, 0.957010, -0.230796,
		27.108322, 34.637569, 52.803150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417429, 33.932793, 52.353397>,  <26.985344, 33.967663, 52.964710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417429, 33.932793, 52.353397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.471748, 34.304825, 52.489933>,  <27.504339, 34.528042, 52.571854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.471748, 34.304825, 52.489933>,  <27.417429, 33.932793, 52.353397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471748, 34.304825, 52.489933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987629, -0.154350, 0.027654,
		0.078406, 0.333363, -0.939533,
		0.135798, 0.930078, 0.341341,
		27.512487, 34.583847, 52.592335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947691, 34.319878, 51.893749>,  <27.417429, 33.932793, 52.353397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947691, 34.319878, 51.893749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.971483, 34.558289, 52.214050>,  <27.985758, 34.701336, 52.406231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.971483, 34.558289, 52.214050>,  <27.947691, 34.319878, 51.893749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971483, 34.558289, 52.214050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988412, 0.077059, -0.130778,
		-0.139653, 0.799255, -0.584541,
		0.059481, 0.596031, 0.800755,
		27.989326, 34.737099, 52.454277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236483, 34.846115, 51.680340>,  <27.947691, 34.319878, 51.893749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236483, 34.846115, 51.680340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.302519, 34.865551, 52.074371>,  <28.342140, 34.877213, 52.310791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.302519, 34.865551, 52.074371>,  <28.236483, 34.846115, 51.680340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302519, 34.865551, 52.074371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947356, 0.270003, -0.172089,
		-0.274337, 0.961633, -0.001459,
		0.165093, 0.048592, 0.985080,
		28.352047, 34.880127, 52.369896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670168, 35.316792, 51.774284>,  <28.236483, 34.846115, 51.680340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670168, 35.316792, 51.774284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.704882, 35.226040, 52.162304>,  <28.725710, 35.171589, 52.395115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.704882, 35.226040, 52.162304>,  <28.670168, 35.316792, 51.774284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704882, 35.226040, 52.162304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979116, 0.199117, -0.041026,
		-0.183845, 0.953350, 0.239424,
		0.086785, -0.226882, 0.970048,
		28.730917, 35.157974, 52.453320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848789, 35.955544, 52.116898>,  <28.670168, 35.316792, 51.774284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848789, 35.955544, 52.116898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.967369, 35.609997, 52.279793>,  <29.038517, 35.402668, 52.377529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.967369, 35.609997, 52.279793>,  <28.848789, 35.955544, 52.116898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967369, 35.609997, 52.279793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947315, 0.211821, -0.240263,
		0.121294, 0.457013, 0.881151,
		0.296449, -0.863870, 0.407242,
		29.056303, 35.350834, 52.401966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365761, 36.136280, 52.548992>,  <28.848789, 35.955544, 52.116898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365761, 36.136280, 52.548992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.421955, 35.745491, 52.484764>,  <29.455671, 35.511017, 52.446228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.421955, 35.745491, 52.484764>,  <29.365761, 36.136280, 52.548992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421955, 35.745491, 52.484764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966054, 0.170777, -0.193842,
		0.216801, -0.127889, 0.967803,
		0.140488, -0.976975, -0.160573,
		29.464102, 35.452400, 52.436592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017910, 35.998062, 52.922665>,  <29.365761, 36.136280, 52.548992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017910, 35.998062, 52.922665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.943661, 35.696274, 52.670849>,  <29.899111, 35.515202, 52.519760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.943661, 35.696274, 52.670849>,  <30.017910, 35.998062, 52.922665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943661, 35.696274, 52.670849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943982, 0.040970, -0.327443,
		0.272838, -0.655054, 0.704601,
		-0.185625, -0.754470, -0.629538,
		29.887974, 35.469933, 52.481987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538427, 35.666313, 52.985981>,  <30.017910, 35.998062, 52.922665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538427, 35.666313, 52.985981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.394072, 35.512363, 52.646187>,  <30.307459, 35.419994, 52.442310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.394072, 35.512363, 52.646187>,  <30.538427, 35.666313, 52.985981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394072, 35.512363, 52.646187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920277, 0.000674, -0.391267,
		0.151162, -0.922968, 0.353950,
		-0.360888, -0.384877, -0.849488,
		30.285805, 35.396900, 52.391342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998745, 35.070328, 52.708302>,  <30.538427, 35.666313, 52.985981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998745, 35.070328, 52.708302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.784716, 35.227386, 52.409096>,  <30.656298, 35.321621, 52.229572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.784716, 35.227386, 52.409096>,  <30.998745, 35.070328, 52.708302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784716, 35.227386, 52.409096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790519, -0.079562, -0.607247,
		-0.297949, -0.916240, -0.267826,
		-0.535075, 0.392650, -0.748011,
		30.624193, 35.345181, 52.184692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216248, 34.676678, 52.036179>,  <30.998745, 35.070328, 52.708302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216248, 34.676678, 52.036179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.057892, 35.030281, 51.936745>,  <30.962879, 35.242443, 51.877083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.057892, 35.030281, 51.936745>,  <31.216248, 34.676678, 52.036179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057892, 35.030281, 51.936745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829248, 0.227859, -0.510321,
		-0.394488, -0.408170, -0.823272,
		-0.395888, 0.884012, -0.248586,
		30.939125, 35.295486, 51.862167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376806, 34.768101, 51.237335>,  <31.216248, 34.676678, 52.036179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376806, 34.768101, 51.237335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.319151, 35.125664, 51.407116>,  <31.284557, 35.340202, 51.508984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.319151, 35.125664, 51.407116>,  <31.376806, 34.768101, 51.237335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319151, 35.125664, 51.407116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825998, 0.344891, -0.445845,
		-0.544932, 0.286331, -0.788076,
		-0.144141, 0.893904, 0.424451,
		31.275909, 35.393833, 51.534451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570597, 35.113194, 50.629135>,  <31.376806, 34.768101, 51.237335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570597, 35.113194, 50.629135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.537830, 35.397640, 50.908447>,  <31.518169, 35.568310, 51.076035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.537830, 35.397640, 50.908447>,  <31.570597, 35.113194, 50.629135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537830, 35.397640, 50.908447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748392, 0.506591, -0.428107,
		-0.658179, 0.487519, -0.573695,
		-0.081918, 0.711119, 0.698283,
		31.513254, 35.610977, 51.117931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600416, 35.718842, 50.319447>,  <31.570597, 35.113194, 50.629135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600416, 35.718842, 50.319447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.707258, 35.839016, 50.685699>,  <31.771364, 35.911121, 50.905453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.707258, 35.839016, 50.685699>,  <31.600416, 35.718842, 50.319447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707258, 35.839016, 50.685699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814072, 0.438119, -0.381233,
		-0.515696, 0.847224, -0.127555,
		0.267105, 0.300440, 0.915637,
		31.787390, 35.929150, 50.960392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.058950, 34.964195, 34.520756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.237726, 34.808361, 34.842865>,  <24.344992, 34.714863, 35.036133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.237726, 34.808361, 34.842865>,  <24.058950, 34.964195, 34.520756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.237726, 34.808361, 34.842865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363465, 0.901621, 0.234464,
		-0.817397, 0.187899, 0.544570,
		0.446940, -0.389582, 0.805277,
		24.371809, 34.691486, 35.084450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.992174, 35.373592, 35.177944>,  <24.058950, 34.964195, 34.520756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.992174, 35.373592, 35.177944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.338682, 35.180626, 35.229866>,  <24.546587, 35.064846, 35.261021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.338682, 35.180626, 35.229866>,  <23.992174, 35.373592, 35.177944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.338682, 35.180626, 35.229866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436781, 0.857485, 0.271924,
		-0.242491, -0.178860, 0.953524,
		0.866268, -0.482420, 0.129809,
		24.598562, 35.035900, 35.268810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.218527, 35.729580, 35.764645>,  <23.992174, 35.373592, 35.177944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.218527, 35.729580, 35.764645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.514212, 35.552025, 35.562050>,  <24.691622, 35.445492, 35.440495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.514212, 35.552025, 35.562050>,  <24.218527, 35.729580, 35.764645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.514212, 35.552025, 35.562050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633774, 0.712888, 0.300202,
		0.227810, -0.542910, 0.808302,
		0.739211, -0.443892, -0.506485,
		24.735975, 35.418858, 35.410103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.920858, 35.483105, 36.170261>,  <24.218527, 35.729580, 35.764645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.920858, 35.483105, 36.170261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.972946, 35.591824, 35.788860>,  <25.004200, 35.657055, 35.560020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.972946, 35.591824, 35.788860>,  <24.920858, 35.483105, 36.170261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.972946, 35.591824, 35.788860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520711, 0.799643, 0.299050,
		0.843743, -0.535443, -0.037396,
		0.130221, 0.271794, -0.953504,
		25.012012, 35.673363, 35.502808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712173, 35.661171, 36.004589>,  <24.920858, 35.483105, 36.170261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.712173, 35.661171, 36.004589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.451944, 35.853039, 35.769073>,  <25.295807, 35.968159, 35.627762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.451944, 35.853039, 35.769073>,  <25.712173, 35.661171, 36.004589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.451944, 35.853039, 35.769073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401822, 0.875291, 0.269081,
		0.644432, -0.061532, -0.762182,
		-0.650574, 0.479666, -0.588791,
		25.256773, 35.996937, 35.592438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003265, 36.117867, 36.655193>,  <25.712173, 35.661171, 36.004589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003265, 36.117867, 36.655193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.179657, 36.189339, 36.303371>,  <26.285492, 36.232224, 36.092278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.179657, 36.189339, 36.303371>,  <26.003265, 36.117867, 36.655193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179657, 36.189339, 36.303371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397897, 0.917336, -0.013132,
		0.804497, 0.355762, 0.475623,
		0.440978, 0.178685, -0.879551,
		26.311951, 36.242943, 36.039505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201820, 36.819191, 36.626991>,  <26.003265, 36.117867, 36.655193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201820, 36.819191, 36.626991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.137682, 36.755459, 36.237343>,  <26.099199, 36.717220, 36.003555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.137682, 36.755459, 36.237343>,  <26.201820, 36.819191, 36.626991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137682, 36.755459, 36.237343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528436, 0.847402, -0.051616,
		0.833693, 0.506482, -0.220073,
		-0.160347, -0.159327, -0.974117,
		26.089577, 36.707661, 35.945107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.456964, 37.001938, 36.832142>,  <26.201820, 36.819191, 36.626991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.456964, 37.001938, 36.832142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.226044, 37.297550, 36.971027>,  <25.087490, 37.474918, 37.054359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.226044, 37.297550, 36.971027>,  <25.456964, 37.001938, 36.832142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.226044, 37.297550, 36.971027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588166, 0.081416, 0.804632,
		0.566376, 0.668737, -0.481673,
		-0.577303, 0.739028, 0.347216,
		25.052853, 37.519257, 37.075191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792709, 37.596142, 36.993359>,  <25.456964, 37.001938, 36.832142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792709, 37.596142, 36.993359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.476984, 37.604721, 37.238808>,  <25.287550, 37.609867, 37.386078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.476984, 37.604721, 37.238808>,  <25.792709, 37.596142, 36.993359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476984, 37.604721, 37.238808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611134, -0.068898, 0.788523,
		0.059189, 0.997393, 0.041275,
		-0.789311, 0.021447, 0.613618,
		25.240191, 37.611156, 37.422894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996481, 37.976498, 37.658203>,  <25.792709, 37.596142, 36.993359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996481, 37.976498, 37.658203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.680862, 37.755005, 37.764626>,  <25.491491, 37.622108, 37.828480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.680862, 37.755005, 37.764626>,  <25.996481, 37.976498, 37.658203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.680862, 37.755005, 37.764626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439932, -0.207032, 0.873841,
		-0.428792, 0.806547, 0.406963,
		-0.789048, -0.553732, 0.266052,
		25.444147, 37.588886, 37.844440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377497, 37.652721, 38.259022>,  <25.996481, 37.976498, 37.658203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377497, 37.652721, 38.259022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.672480, 37.920212, 38.221161>,  <26.849470, 38.080708, 38.198444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.672480, 37.920212, 38.221161>,  <26.377497, 37.652721, 38.259022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672480, 37.920212, 38.221161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571821, -0.692784, -0.439398,
		-0.359412, 0.269913, -0.893292,
		0.737457, 0.668728, -0.094653,
		26.893717, 38.120831, 38.192764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003115, 37.346500, 38.346825>,  <26.377497, 37.652721, 38.259022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003115, 37.346500, 38.346825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.080379, 37.512901, 38.702267>,  <27.126738, 37.612743, 38.915531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.080379, 37.512901, 38.702267>,  <27.003115, 37.346500, 38.346825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080379, 37.512901, 38.702267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672682, 0.603161, -0.428597,
		-0.714274, 0.680540, -0.163332,
		0.193162, 0.416006, 0.888610,
		27.138329, 37.637703, 38.968849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601400, 37.832138, 38.688843>,  <27.003115, 37.346500, 38.346825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601400, 37.832138, 38.688843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.530457, 37.667828, 39.046570>,  <27.487890, 37.569241, 39.261208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.530457, 37.667828, 39.046570>,  <27.601400, 37.832138, 38.688843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530457, 37.667828, 39.046570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697500, -0.693550, -0.180228,
		0.694289, 0.591823, 0.409522,
		-0.177360, -0.410772, 0.894321,
		27.477249, 37.544598, 39.314865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241714, 37.712479, 39.120159>,  <27.601400, 37.832138, 38.688843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241714, 37.712479, 39.120159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.949684, 37.446495, 39.183170>,  <27.774466, 37.286903, 39.220978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.949684, 37.446495, 39.183170>,  <28.241714, 37.712479, 39.120159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949684, 37.446495, 39.183170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643312, -0.746537, -0.169802,
		0.230514, -0.022626, 0.972806,
		-0.730078, -0.664959, 0.157532,
		27.730661, 37.247005, 39.230431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559155, 37.911308, 39.693401>,  <28.241714, 37.712479, 39.120159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559155, 37.911308, 39.693401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.699718, 38.155273, 39.977520>,  <28.784056, 38.301655, 40.147991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.699718, 38.155273, 39.977520>,  <28.559155, 37.911308, 39.693401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699718, 38.155273, 39.977520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358537, -0.788513, 0.499699,
		0.864849, 0.079068, -0.495766,
		0.351408, 0.609915, 0.710294,
		28.805141, 38.338249, 40.190609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725321, 37.419209, 40.226868>,  <28.559155, 37.911308, 39.693401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725321, 37.419209, 40.226868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.916027, 37.656376, 39.967285>,  <29.030451, 37.798676, 39.811535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.916027, 37.656376, 39.967285>,  <28.725321, 37.419209, 40.226868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916027, 37.656376, 39.967285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713041, 0.170884, 0.679978,
		0.514070, -0.786919, -0.341307,
		0.476764, 0.592923, -0.648952,
		29.059055, 37.834251, 39.772598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115078, 37.449844, 40.825916>,  <28.725321, 37.419209, 40.226868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115078, 37.449844, 40.825916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.952190, 37.462753, 41.191021>,  <27.854458, 37.470497, 41.410084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.952190, 37.462753, 41.191021>,  <28.115078, 37.449844, 40.825916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952190, 37.462753, 41.191021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908168, -0.091800, 0.408417,
		0.096972, 0.995254, 0.008074,
		-0.407220, 0.032272, 0.912760,
		27.830025, 37.472435, 41.464848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360899, 38.074936, 41.361095>,  <28.115078, 37.449844, 40.825916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360899, 38.074936, 41.361095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.280041, 37.715839, 41.517654>,  <28.231525, 37.500381, 41.611591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.280041, 37.715839, 41.517654>,  <28.360899, 38.074936, 41.361095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280041, 37.715839, 41.517654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944953, -0.073796, 0.318774,
		-0.257293, 0.434296, 0.863242,
		-0.202147, -0.897742, 0.391402,
		28.219397, 37.446518, 41.635075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420433, 38.028107, 42.163456>,  <28.360899, 38.074936, 41.361095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420433, 38.028107, 42.163456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.535810, 37.724510, 41.929966>,  <28.605036, 37.542355, 41.789871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.535810, 37.724510, 41.929966>,  <28.420433, 38.028107, 42.163456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535810, 37.724510, 41.929966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955720, 0.191092, 0.223792,
		-0.058309, -0.622432, 0.780499,
		0.288443, -0.758987, -0.583729,
		28.622343, 37.496815, 41.754848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861631, 37.653343, 42.657917>,  <28.420433, 38.028107, 42.163456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861631, 37.653343, 42.657917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.974398, 37.583324, 42.280582>,  <29.042057, 37.541313, 42.054180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.974398, 37.583324, 42.280582>,  <28.861631, 37.653343, 42.657917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974398, 37.583324, 42.280582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954532, 0.150483, 0.257339,
		0.096909, -0.972992, 0.209512,
		0.281917, -0.175048, -0.943335,
		29.058973, 37.530811, 41.997581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035326, 36.900848, 42.608299>,  <28.861631, 37.653343, 42.657917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035326, 36.900848, 42.608299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208868, 37.203396, 42.412468>,  <29.312992, 37.384922, 42.294971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208868, 37.203396, 42.412468>,  <29.035326, 36.900848, 42.608299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208868, 37.203396, 42.412468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802768, -0.077805, 0.591194,
		0.409066, -0.649507, -0.640941,
		0.433853, 0.756364, -0.489576,
		29.339024, 37.430305, 42.265594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724894, 36.659420, 42.478638>,  <29.035326, 36.900848, 42.608299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724894, 36.659420, 42.478638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.694191, 37.058235, 42.476700>,  <29.675770, 37.297523, 42.475536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.694191, 37.058235, 42.476700>,  <29.724894, 36.659420, 42.478638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694191, 37.058235, 42.476700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683661, 0.056168, 0.727635,
		0.725752, 0.052540, -0.685947,
		-0.076758, 0.997038, -0.004844,
		29.671164, 37.357346, 42.475246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421896, 36.901760, 42.662720>,  <29.724894, 36.659420, 42.478638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421896, 36.901760, 42.662720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.153048, 37.187420, 42.740948>,  <29.991739, 37.358814, 42.787884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.153048, 37.187420, 42.740948>,  <30.421896, 36.901760, 42.662720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153048, 37.187420, 42.740948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582091, 0.346375, 0.735659,
		0.457628, 0.608292, -0.648504,
		-0.672121, 0.714147, 0.195570,
		29.951412, 37.401665, 42.799618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793707, 37.311127, 42.942501>,  <30.421896, 36.901760, 42.662720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793707, 37.311127, 42.942501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.447786, 37.484314, 43.044216>,  <30.240234, 37.588226, 43.105244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.447786, 37.484314, 43.044216>,  <30.793707, 37.311127, 42.942501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447786, 37.484314, 43.044216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493627, 0.640364, 0.588443,
		0.091943, 0.634407, -0.767512,
		-0.864799, 0.432968, 0.254283,
		30.188347, 37.614204, 43.120502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888601, 37.947475, 42.821960>,  <30.793707, 37.311127, 42.942501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888601, 37.947475, 42.821960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.609903, 37.925766, 43.108067>,  <30.442684, 37.912743, 43.279732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.609903, 37.925766, 43.108067>,  <30.888601, 37.947475, 42.821960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609903, 37.925766, 43.108067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490464, 0.691589, 0.530236,
		-0.523445, 0.720250, -0.455242,
		-0.696743, -0.054270, 0.715265,
		30.400881, 37.909485, 43.322647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202303, 38.474937, 43.335075>,  <30.888601, 37.947475, 42.821960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202303, 38.474937, 43.335075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.411865, 38.327160, 43.642071>,  <31.537601, 38.238495, 43.826267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.411865, 38.327160, 43.642071>,  <31.202303, 38.474937, 43.335075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411865, 38.327160, 43.642071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788599, 0.130166, 0.600973,
		-0.321924, -0.920093, -0.223146,
		0.523904, -0.369441, 0.767488,
		31.569036, 38.216328, 43.872318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808220, 38.000919, 43.791664>,  <31.202303, 38.474937, 43.335075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808220, 38.000919, 43.791664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.127563, 38.076366, 44.020416>,  <31.319170, 38.121635, 44.157669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.127563, 38.076366, 44.020416>,  <30.808220, 38.000919, 43.791664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127563, 38.076366, 44.020416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596031, 0.112109, 0.795097,
		0.085854, -0.975631, 0.201923,
		0.798358, 0.188615, 0.571881,
		31.367071, 38.132950, 44.191982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929453, 37.501503, 44.327660>,  <30.808220, 38.000919, 43.791664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929453, 37.501503, 44.327660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.061928, 37.866459, 44.423878>,  <31.141413, 38.085430, 44.481609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.061928, 37.866459, 44.423878>,  <30.929453, 37.501503, 44.327660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061928, 37.866459, 44.423878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569286, -0.010091, 0.822077,
		0.752481, -0.409203, 0.516068,
		0.331189, 0.912387, 0.240547,
		31.161285, 38.140175, 44.496040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526247, 37.547356, 44.936619>,  <30.929453, 37.501503, 44.327660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526247, 37.547356, 44.936619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.195095, 37.346016, 45.035618>,  <30.996405, 37.225212, 45.095016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.195095, 37.346016, 45.035618>,  <31.526247, 37.547356, 44.936619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195095, 37.346016, 45.035618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465822, -0.371186, 0.803263,
		-0.312453, 0.780295, 0.541768,
		-0.827878, -0.503350, 0.247501,
		30.946732, 37.195011, 45.109867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308207, 37.739620, 45.687401>,  <31.526247, 37.547356, 44.936619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308207, 37.739620, 45.687401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.189894, 37.375721, 45.570873>,  <31.118906, 37.157379, 45.500957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.189894, 37.375721, 45.570873>,  <31.308207, 37.739620, 45.687401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189894, 37.375721, 45.570873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445709, -0.401168, 0.800255,
		-0.844901, 0.106856, 0.524141,
		-0.295780, -0.909751, -0.291320,
		31.101160, 37.102795, 45.483479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933470, 37.302902, 46.284580>,  <31.308207, 37.739620, 45.687401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933470, 37.302902, 46.284580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.091591, 37.059063, 46.009735>,  <31.186464, 36.912762, 45.844826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.091591, 37.059063, 46.009735>,  <30.933470, 37.302902, 46.284580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091591, 37.059063, 46.009735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533949, -0.456179, 0.711899,
		-0.747418, -0.648301, 0.145164,
		0.395304, -0.609596, -0.687116,
		31.210182, 36.876183, 45.803600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619879, 37.694214, 46.924568>,  <30.933470, 37.302902, 46.284580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619879, 37.694214, 46.924568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.582996, 37.867104, 47.283382>,  <30.560867, 37.970837, 47.498672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.582996, 37.867104, 47.283382>,  <30.619879, 37.694214, 46.924568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582996, 37.867104, 47.283382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854708, -0.427830, 0.293998,
		0.510854, 0.793816, -0.329977,
		-0.092206, 0.432224, 0.897040,
		30.555334, 37.996773, 47.552494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235025, 38.179546, 47.119007>,  <30.619879, 37.694214, 46.924568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235025, 38.179546, 47.119007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.054588, 38.019100, 47.437912>,  <30.946325, 37.922832, 47.629253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.054588, 38.019100, 47.437912>,  <31.235025, 38.179546, 47.119007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054588, 38.019100, 47.437912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873969, -0.379516, 0.303554,
		0.180812, 0.833711, 0.521760,
		-0.451093, -0.401116, 0.797259,
		30.919260, 37.898766, 47.677090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718262, 38.460468, 47.758495>,  <31.235025, 38.179546, 47.119007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718262, 38.460468, 47.758495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.520624, 38.113804, 47.786121>,  <31.402040, 37.905804, 47.802696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.520624, 38.113804, 47.786121>,  <31.718262, 38.460468, 47.758495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520624, 38.113804, 47.786121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775491, -0.403418, 0.485662,
		-0.393044, 0.293520, 0.871414,
		-0.494096, -0.866660, 0.069061,
		31.372395, 37.853806, 47.806839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217777, 38.132801, 48.084057>,  <31.718262, 38.460468, 47.758495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217777, 38.132801, 48.084057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005493, 37.793777, 48.083645>,  <31.878124, 37.590363, 48.083397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005493, 37.793777, 48.083645>,  <32.217777, 38.132801, 48.084057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005493, 37.793777, 48.083645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707732, -0.443823, 0.549669,
		-0.466333, 0.290983, 0.835382,
		-0.530706, -0.847556, -0.001031,
		31.846281, 37.539513, 48.083336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475716, 37.894024, 48.675289>,  <32.217777, 38.132801, 48.084057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475716, 37.894024, 48.675289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301994, 37.583706, 48.492195>,  <32.197762, 37.397514, 48.382339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301994, 37.583706, 48.492195>,  <32.475716, 37.894024, 48.675289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301994, 37.583706, 48.492195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624303, -0.625559, 0.467889,
		-0.649328, -0.082562, 0.756014,
		-0.434302, -0.775796, -0.457737,
		32.171703, 37.350967, 48.354874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751389, 37.427914, 49.019157>,  <32.475716, 37.894024, 48.675289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751389, 37.427914, 49.019157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.583740, 37.218563, 48.722397>,  <32.483150, 37.092953, 48.544342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.583740, 37.218563, 48.722397>,  <32.751389, 37.427914, 49.019157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583740, 37.218563, 48.722397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491311, -0.817896, 0.299433,
		-0.763513, -0.239006, 0.599936,
		-0.419119, -0.523377, -0.741900,
		32.458004, 37.061550, 48.499828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386578, 36.961060, 49.267391>,  <32.751389, 37.427914, 49.019157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386578, 36.961060, 49.267391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.498600, 36.804394, 48.916809>,  <32.565815, 36.710396, 48.706459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.498600, 36.804394, 48.916809>,  <32.386578, 36.961060, 49.267391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498600, 36.804394, 48.916809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563591, -0.672004, 0.480391,
		-0.777130, -0.628499, 0.032537,
		0.280060, -0.391664, -0.876451,
		32.582619, 36.686893, 48.653873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967110, 36.935616, 49.814022>,  <32.386578, 36.961060, 49.267391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967110, 36.935616, 49.814022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.182060, 36.641743, 49.648384>,  <32.311031, 36.465420, 49.549000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.182060, 36.641743, 49.648384>,  <31.967110, 36.935616, 49.814022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182060, 36.641743, 49.648384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472272, -0.668959, 0.573980,
		-0.698703, -0.112878, -0.706451,
		0.537376, -0.734678, -0.414095,
		32.343273, 36.421341, 49.524155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644222, 36.472904, 50.320766>,  <31.967110, 36.935616, 49.814022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644222, 36.472904, 50.320766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.873508, 36.282402, 50.587482>,  <32.011082, 36.168102, 50.747513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.873508, 36.282402, 50.587482>,  <31.644222, 36.472904, 50.320766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873508, 36.282402, 50.587482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777520, 0.572971, -0.259163,
		-0.258622, 0.666997, 0.698735,
		0.573216, -0.476255, 0.666786,
		32.045475, 36.139526, 50.787518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996433, 37.011562, 50.648788>,  <31.644222, 36.472904, 50.320766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996433, 37.011562, 50.648788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.180031, 36.661282, 50.708755>,  <32.290188, 36.451115, 50.744736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.180031, 36.661282, 50.708755>,  <31.996433, 37.011562, 50.648788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180031, 36.661282, 50.708755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880195, 0.425279, -0.210699,
		0.120752, 0.228667, 0.965987,
		0.458993, -0.875700, 0.149918,
		32.317730, 36.398571, 50.753731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676929, 37.210716, 50.802975>,  <31.996433, 37.011562, 50.648788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676929, 37.210716, 50.802975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.732376, 36.820095, 50.737080>,  <32.765644, 36.585724, 50.697544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.732376, 36.820095, 50.737080>,  <32.676929, 37.210716, 50.802975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732376, 36.820095, 50.737080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942633, 0.181109, -0.280433,
		0.303691, -0.116412, 0.945632,
		0.138616, -0.976549, -0.164735,
		32.773960, 36.527130, 50.687660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327686, 36.958359, 51.169708>,  <32.676929, 37.210716, 50.802975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327686, 36.958359, 51.169708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.273872, 36.682331, 50.885258>,  <33.241585, 36.516712, 50.714588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.273872, 36.682331, 50.885258>,  <33.327686, 36.958359, 51.169708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273872, 36.682331, 50.885258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896993, 0.220147, -0.383326,
		0.421075, -0.689446, 0.589373,
		-0.134534, -0.690072, -0.711127,
		33.233513, 36.475307, 50.671921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960373, 36.536716, 51.215084>,  <33.327686, 36.958359, 51.169708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960373, 36.536716, 51.215084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807106, 36.440762, 50.858288>,  <33.715145, 36.383190, 50.644211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807106, 36.440762, 50.858288>,  <33.960373, 36.536716, 51.215084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807106, 36.440762, 50.858288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922209, -0.044864, -0.384080,
		0.052117, -0.969764, 0.238413,
		-0.383163, -0.239884, -0.891987,
		33.692158, 36.368797, 50.590691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425518, 36.034870, 51.012409>,  <33.960373, 36.536716, 51.215084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425518, 36.034870, 51.012409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.229225, 36.179916, 50.695499>,  <34.111450, 36.266945, 50.505356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.229225, 36.179916, 50.695499>,  <34.425518, 36.034870, 51.012409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229225, 36.179916, 50.695499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825854, -0.096294, -0.555601,
		-0.277761, -0.926951, -0.252212,
		-0.490729, 0.362615, -0.792272,
		34.082008, 36.288700, 50.457817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648281, 35.679344, 50.461960>,  <34.425518, 36.034870, 51.012409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648281, 35.679344, 50.461960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.485985, 35.991711, 50.271992>,  <34.388607, 36.179131, 50.158012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.485985, 35.991711, 50.271992>,  <34.648281, 35.679344, 50.461960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485985, 35.991711, 50.271992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803633, 0.057301, -0.592361,
		-0.435369, -0.622007, -0.650816,
		-0.405745, 0.780912, -0.474918,
		34.364262, 36.225983, 50.129517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941914, 35.568054, 49.709793>,  <34.648281, 35.679344, 50.461960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941914, 35.568054, 49.709793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.804821, 35.942425, 49.742226>,  <34.722565, 36.167049, 49.761684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.804821, 35.942425, 49.742226>,  <34.941914, 35.568054, 49.709793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804821, 35.942425, 49.742226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816284, 0.339410, -0.467419,
		-0.464990, -0.094015, -0.880310,
		-0.342730, 0.935928, 0.081080,
		34.702003, 36.223202, 49.766548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106365, 35.889168, 48.990444>,  <34.941914, 35.568054, 49.709793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106365, 35.889168, 48.990444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.076401, 36.175694, 49.267941>,  <35.058422, 36.347610, 49.434441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.076401, 36.175694, 49.267941>,  <35.106365, 35.889168, 48.990444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076401, 36.175694, 49.267941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835433, 0.424933, -0.348544,
		-0.544462, 0.553466, -0.630267,
		-0.074914, 0.716315, 0.693744,
		35.053928, 36.390587, 49.476063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033680, 36.498558, 48.647934>,  <35.106365, 35.889168, 48.990444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033680, 36.498558, 48.647934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.177948, 36.601509, 49.006527>,  <35.264507, 36.663280, 49.221684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.177948, 36.601509, 49.006527>,  <35.033680, 36.498558, 48.647934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177948, 36.601509, 49.006527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750264, 0.490956, -0.442794,
		-0.554096, 0.832298, -0.016027,
		0.360668, 0.257375, 0.896480,
		35.286148, 36.678722, 49.275471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221893, 37.215809, 48.602371>,  <35.033680, 36.498558, 48.647934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221893, 37.215809, 48.602371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.425266, 37.045300, 48.901646>,  <35.547291, 36.942993, 49.081211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.425266, 37.045300, 48.901646>,  <35.221893, 37.215809, 48.602371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425266, 37.045300, 48.901646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851884, 0.375799, -0.364785,
		-0.125670, 0.822838, 0.554206,
		0.508429, -0.426277, 0.748189,
		35.577797, 36.917416, 49.126102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560558, 37.804043, 49.014851>,  <35.221893, 37.215809, 48.602371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560558, 37.804043, 49.014851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.760525, 37.462929, 49.075298>,  <35.880505, 37.258259, 49.111568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.760525, 37.462929, 49.075298>,  <35.560558, 37.804043, 49.014851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760525, 37.462929, 49.075298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865776, 0.487525, -0.112923,
		0.022624, 0.187288, 0.982044,
		0.499921, -0.852785, 0.151120,
		35.910500, 37.207092, 49.120636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159523, 37.964134, 49.277241>,  <35.560558, 37.804043, 49.014851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159523, 37.964134, 49.277241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263718, 37.588200, 49.188831>,  <36.326233, 37.362640, 49.135784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263718, 37.588200, 49.188831>,  <36.159523, 37.964134, 49.277241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263718, 37.588200, 49.188831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914874, 0.313420, -0.254506,
		0.308468, -0.135915, 0.941475,
		0.260486, -0.939838, -0.221025,
		36.341862, 37.306248, 49.122524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833363, 37.999958, 49.424988>,  <36.159523, 37.964134, 49.277241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833363, 37.999958, 49.424988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.806465, 37.650318, 49.232555>,  <36.790329, 37.440536, 49.117096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.806465, 37.650318, 49.232555>,  <36.833363, 37.999958, 49.424988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806465, 37.650318, 49.232555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909715, 0.144307, -0.389352,
		0.409754, -0.463823, 0.785475,
		-0.067241, -0.874096, -0.481077,
		36.786293, 37.388088, 49.088234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413799, 37.447121, 49.640488>,  <36.833363, 37.999958, 49.424988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413799, 37.447121, 49.640488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.278141, 37.422779, 49.264980>,  <37.196747, 37.408173, 49.039677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.278141, 37.422779, 49.264980>,  <37.413799, 37.447121, 49.640488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278141, 37.422779, 49.264980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919890, 0.187453, -0.344477,
		0.196937, -0.980386, -0.007594,
		-0.339144, -0.060855, -0.938764,
		37.176399, 37.404522, 48.983353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744350, 36.830837, 49.496601>,  <37.413799, 37.447121, 49.640488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744350, 36.830837, 49.496601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.654907, 37.059818, 49.181057>,  <37.601242, 37.197208, 48.991730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.654907, 37.059818, 49.181057>,  <37.744350, 36.830837, 49.496601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654907, 37.059818, 49.181057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920093, -0.143075, -0.364634,
		-0.321602, -0.807356, -0.494720,
		-0.223608, 0.572455, -0.788856,
		37.587826, 37.231556, 48.944401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941723, 36.454903, 48.890854>,  <37.744350, 36.830837, 49.496601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941723, 36.454903, 48.890854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.923111, 36.837364, 48.775200>,  <37.911942, 37.066841, 48.705807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.923111, 36.837364, 48.775200>,  <37.941723, 36.454903, 48.890854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923111, 36.837364, 48.775200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860892, -0.108422, -0.497101,
		-0.506655, -0.272043, -0.818103,
		-0.046532, 0.956158, -0.289132,
		37.909153, 37.124210, 48.688461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081684, 36.403214, 48.172718>,  <37.941723, 36.454903, 48.890854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081684, 36.403214, 48.172718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163586, 36.754005, 48.346607>,  <38.212727, 36.964481, 48.450943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163586, 36.754005, 48.346607>,  <38.081684, 36.403214, 48.172718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163586, 36.754005, 48.346607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786222, 0.117196, -0.606729,
		-0.583035, 0.466023, -0.665502,
		0.204755, 0.876977, 0.434727,
		38.225014, 37.017097, 48.477024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050156, 35.720821, 48.459732>,  <38.081684, 36.403214, 48.172718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050156, 35.720821, 48.459732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.340561, 35.448349, 48.422001>,  <38.514805, 35.284866, 48.399361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.340561, 35.448349, 48.422001>,  <38.050156, 35.720821, 48.459732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340561, 35.448349, 48.422001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065939, -0.205492, 0.976435,
		-0.684516, -0.702681, -0.194106,
		0.726010, -0.681184, -0.094329,
		38.558365, 35.243996, 48.393703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912579, 34.968052, 48.593552>,  <38.050156, 35.720821, 48.459732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912579, 34.968052, 48.593552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.283424, 35.063351, 48.709274>,  <38.505932, 35.120529, 48.778709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.283424, 35.063351, 48.709274>,  <37.912579, 34.968052, 48.593552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283424, 35.063351, 48.709274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253106, -0.171288, 0.952154,
		0.276402, -0.955981, -0.098502,
		0.927113, 0.238246, 0.289309,
		38.561558, 35.134823, 48.796066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081940, 34.372566, 48.889511>,  <37.912579, 34.968052, 48.593552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081940, 34.372566, 48.889511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.251339, 34.697746, 49.049393>,  <38.352978, 34.892853, 49.145321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.251339, 34.697746, 49.049393>,  <38.081940, 34.372566, 48.889511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251339, 34.697746, 49.049393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397114, -0.229973, 0.888489,
		0.814219, -0.534998, 0.225442,
		0.423495, 0.812951, 0.399703,
		38.378387, 34.941631, 49.169304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289421, 34.186489, 49.557621>,  <38.081940, 34.372566, 48.889511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289421, 34.186489, 49.557621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.244198, 34.583725, 49.545078>,  <38.217064, 34.822067, 49.537552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.244198, 34.583725, 49.545078>,  <38.289421, 34.186489, 49.557621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244198, 34.583725, 49.545078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350131, -0.010289, 0.936644,
		0.929853, 0.116870, 0.348877,
		-0.113056, 0.993094, -0.031353,
		38.210281, 34.881653, 49.535671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683784, 34.527134, 50.118904>,  <38.289421, 34.186489, 49.557621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683784, 34.527134, 50.118904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363380, 34.737991, 50.005417>,  <38.171139, 34.864506, 49.937325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363380, 34.737991, 50.005417>,  <38.683784, 34.527134, 50.118904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363380, 34.737991, 50.005417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200095, 0.210909, 0.956807,
		0.564215, 0.823185, -0.063461,
		-0.801014, 0.527147, -0.283714,
		38.123077, 34.896137, 49.920303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713863, 35.044178, 50.601093>,  <38.683784, 34.527134, 50.118904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713863, 35.044178, 50.601093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.336578, 35.011940, 50.472191>,  <38.110207, 34.992596, 50.394848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.336578, 35.011940, 50.472191>,  <38.713863, 35.044178, 50.601093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336578, 35.011940, 50.472191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327238, 0.058674, 0.943119,
		-0.057103, 0.995018, -0.081716,
		-0.943215, -0.080596, -0.322257,
		38.053616, 34.987762, 50.375515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406029, 35.515526, 51.049564>,  <38.713863, 35.044178, 50.601093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406029, 35.515526, 51.049564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.109295, 35.296600, 50.894577>,  <37.931255, 35.165245, 50.801586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.109295, 35.296600, 50.894577>,  <38.406029, 35.515526, 51.049564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109295, 35.296600, 50.894577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351095, -0.175275, 0.919788,
		-0.571322, 0.818371, -0.062132,
		-0.741838, -0.547310, -0.387465,
		37.886745, 35.132408, 50.778339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839462, 35.694500, 51.375954>,  <38.406029, 35.515526, 51.049564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839462, 35.694500, 51.375954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.730305, 35.331543, 51.248096>,  <37.664810, 35.113770, 51.171383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.730305, 35.331543, 51.248096>,  <37.839462, 35.694500, 51.375954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730305, 35.331543, 51.248096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138147, -0.291849, 0.946435,
		-0.952073, 0.302436, -0.045709,
		-0.272896, -0.907390, -0.319643,
		37.648438, 35.059326, 51.152203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136322, 35.567204, 51.671883>,  <37.839462, 35.694500, 51.375954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136322, 35.567204, 51.671883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.302654, 35.212719, 51.590183>,  <37.402454, 35.000031, 51.541164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.302654, 35.212719, 51.590183>,  <37.136322, 35.567204, 51.671883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302654, 35.212719, 51.590183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276195, -0.337045, 0.900065,
		-0.866487, -0.317862, -0.384920,
		0.415832, -0.886208, -0.204253,
		37.427402, 34.946857, 51.528908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612907, 35.132584, 51.719666>,  <37.136322, 35.567204, 51.671883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612907, 35.132584, 51.719666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.942085, 34.912220, 51.775177>,  <37.139591, 34.780003, 51.808483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.942085, 34.912220, 51.775177>,  <36.612907, 35.132584, 51.719666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942085, 34.912220, 51.775177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338768, -0.279754, 0.898317,
		-0.456065, -0.786282, -0.416852,
		0.822947, -0.550908, 0.138781,
		37.188969, 34.746948, 51.816811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403923, 34.317566, 51.874084>,  <36.612907, 35.132584, 51.719666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403923, 34.317566, 51.874084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783268, 34.355381, 51.995193>,  <37.010876, 34.378071, 52.067860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783268, 34.355381, 51.995193>,  <36.403923, 34.317566, 51.874084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783268, 34.355381, 51.995193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242432, -0.399479, 0.884106,
		0.204534, -0.911854, -0.355932,
		0.948363, 0.094540, 0.302770,
		37.067776, 34.383743, 52.086025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555511, 33.705311, 52.145535>,  <36.403923, 34.317566, 51.874084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555511, 33.705311, 52.145535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.836727, 33.940941, 52.304897>,  <37.005455, 34.082317, 52.400517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.836727, 33.940941, 52.304897>,  <36.555511, 33.705311, 52.145535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836727, 33.940941, 52.304897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229524, -0.342290, 0.911129,
		0.673095, -0.732002, -0.105435,
		0.703038, 0.589077, 0.398406,
		37.047638, 34.117664, 52.424419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666374, 33.297817, 52.744709>,  <36.555511, 33.705311, 52.145535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666374, 33.297817, 52.744709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822304, 33.661282, 52.804550>,  <36.915859, 33.879360, 52.840454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822304, 33.661282, 52.804550>,  <36.666374, 33.297817, 52.744709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822304, 33.661282, 52.804550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225168, -0.063479, 0.972250,
		0.892939, -0.412689, 0.179855,
		0.389819, 0.908657, 0.149607,
		36.939251, 33.933880, 52.849434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124828, 33.226421, 53.340755>,  <36.666374, 33.297817, 52.744709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124828, 33.226421, 53.340755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027828, 33.611607, 53.293598>,  <36.969627, 33.842716, 53.265305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027828, 33.611607, 53.293598>,  <37.124828, 33.226421, 53.340755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027828, 33.611607, 53.293598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117915, 0.091366, 0.988812,
		0.962959, 0.253686, 0.091392,
		-0.242498, 0.962962, -0.117895,
		36.955078, 33.900494, 53.258228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493259, 33.591415, 53.928062>,  <37.124828, 33.226421, 53.340755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493259, 33.591415, 53.928062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.227901, 33.869587, 53.817581>,  <37.068687, 34.036491, 53.751293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.227901, 33.869587, 53.817581>,  <37.493259, 33.591415, 53.928062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227901, 33.869587, 53.817581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132766, 0.253866, 0.958084,
		0.736398, 0.672257, -0.076084,
		-0.663394, 0.695430, -0.276199,
		37.028885, 34.078217, 53.734722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600891, 34.193066, 54.331707>,  <37.493259, 33.591415, 53.928062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600891, 34.193066, 54.331707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.221298, 34.213215, 54.207199>,  <36.993542, 34.225304, 54.132492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.221298, 34.213215, 54.207199>,  <37.600891, 34.193066, 54.331707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221298, 34.213215, 54.207199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299328, 0.166499, 0.939511,
		0.099148, 0.984754, -0.142928,
		-0.948985, 0.050368, -0.311272,
		36.936604, 34.228325, 54.113819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327606, 34.793911, 54.634037>,  <37.600891, 34.193066, 54.331707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327606, 34.793911, 54.634037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.007736, 34.566879, 54.555676>,  <36.815815, 34.430660, 54.508659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.007736, 34.566879, 54.555676>,  <37.327606, 34.793911, 54.634037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007736, 34.566879, 54.555676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275360, 0.056725, 0.959666,
		-0.533570, 0.821365, -0.201649,
		-0.799675, -0.567575, -0.195904,
		36.767834, 34.396606, 54.496902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834545, 35.065971, 55.028809>,  <37.327606, 34.793911, 54.634037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834545, 35.065971, 55.028809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.672199, 34.711109, 54.940956>,  <36.574791, 34.498192, 54.888245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.672199, 34.711109, 54.940956>,  <36.834545, 35.065971, 55.028809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672199, 34.711109, 54.940956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299215, -0.098084, 0.949131,
		-0.863565, 0.450935, -0.225640,
		-0.405865, -0.887151, -0.219629,
		36.550442, 34.444965, 54.875069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129578, 35.099163, 55.278950>,  <36.834545, 35.065971, 55.028809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129578, 35.099163, 55.278950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236713, 34.713779, 55.277828>,  <36.300995, 34.482548, 55.277153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236713, 34.713779, 55.277828>,  <36.129578, 35.099163, 55.278950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236713, 34.713779, 55.277828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310906, -0.089186, 0.946247,
		-0.911921, -0.252569, -0.323433,
		0.267838, -0.963460, -0.002806,
		36.317066, 34.424740, 55.276985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560478, 34.767860, 55.509533>,  <36.129578, 35.099163, 55.278950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560478, 34.767860, 55.509533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.867573, 34.527832, 55.599426>,  <36.051830, 34.383816, 55.653362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.867573, 34.527832, 55.599426>,  <35.560478, 34.767860, 55.509533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867573, 34.527832, 55.599426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253041, 0.038300, 0.966697,
		-0.588691, -0.799032, -0.122438,
		0.767733, -0.600067, 0.224735,
		36.097893, 34.347813, 55.666847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242691, 34.343193, 55.929482>,  <35.560478, 34.767860, 55.509533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242691, 34.343193, 55.929482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.634552, 34.337532, 56.009560>,  <35.869667, 34.334137, 56.057606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.634552, 34.337532, 56.009560>,  <35.242691, 34.343193, 55.929482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634552, 34.337532, 56.009560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195605, 0.155902, 0.968211,
		-0.044911, -0.987671, 0.149962,
		0.979654, -0.014150, 0.200195,
		35.928448, 34.333286, 56.069618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227802, 33.917183, 56.452690>,  <35.242691, 34.343193, 55.929482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227802, 33.917183, 56.452690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.565609, 34.131157, 56.462849>,  <35.768291, 34.259541, 56.468945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.565609, 34.131157, 56.462849>,  <35.227802, 33.917183, 56.452690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565609, 34.131157, 56.462849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145242, 0.183130, 0.972300,
		0.515465, -0.824808, 0.232350,
		0.844512, 0.534934, 0.025400,
		35.818962, 34.291637, 56.470470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442875, 33.727451, 56.985027>,  <35.227802, 33.917183, 56.452690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442875, 33.727451, 56.985027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652435, 34.063896, 56.931271>,  <35.778172, 34.265762, 56.899017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652435, 34.063896, 56.931271>,  <35.442875, 33.727451, 56.985027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652435, 34.063896, 56.931271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080406, 0.205915, 0.975261,
		0.847974, -0.500137, 0.175510,
		0.523904, 0.841108, -0.134396,
		35.809608, 34.316227, 56.890953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942005, 33.737236, 57.504158>,  <35.442875, 33.727451, 56.985027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942005, 33.737236, 57.504158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.948063, 34.121376, 57.392807>,  <35.951698, 34.351860, 57.325996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.948063, 34.121376, 57.392807>,  <35.942005, 33.737236, 57.504158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948063, 34.121376, 57.392807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069203, 0.278747, 0.957868,
		0.997488, 0.004756, 0.070681,
		0.015147, 0.960353, -0.278376,
		35.952606, 34.409481, 57.309296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276234, 34.217804, 58.011246>,  <35.942005, 33.737236, 57.504158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276234, 34.217804, 58.011246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.056339, 34.465870, 57.787392>,  <35.924404, 34.614708, 57.653080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.056339, 34.465870, 57.787392>,  <36.276234, 34.217804, 58.011246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056339, 34.465870, 57.787392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241848, 0.523094, 0.817241,
		0.799562, 0.584613, -0.137579,
		-0.549736, 0.620162, -0.559634,
		35.891418, 34.651920, 57.619503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462158, 34.862442, 58.287479>,  <36.276234, 34.217804, 58.011246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462158, 34.862442, 58.287479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.106155, 34.923794, 58.115730>,  <35.892551, 34.960606, 58.012680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.106155, 34.923794, 58.115730>,  <36.462158, 34.862442, 58.287479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106155, 34.923794, 58.115730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354198, 0.360399, 0.862935,
		0.287098, 0.920102, -0.266433,
		-0.890010, 0.153377, -0.429368,
		35.839153, 34.969807, 57.986919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222206, 35.422039, 58.703835>,  <36.462158, 34.862442, 58.287479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222206, 35.422039, 58.703835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.894672, 35.305950, 58.505730>,  <35.698154, 35.236298, 58.386868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.894672, 35.305950, 58.505730>,  <36.222206, 35.422039, 58.703835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894672, 35.305950, 58.505730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572990, 0.361261, 0.735645,
		-0.034584, 0.886149, -0.462109,
		-0.818832, -0.290225, -0.495260,
		35.649021, 35.218884, 58.357151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818436, 35.959362, 58.626312>,  <36.222206, 35.422039, 58.703835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818436, 35.959362, 58.626312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.584061, 35.635468, 58.613636>,  <35.443436, 35.441132, 58.606030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.584061, 35.635468, 58.613636>,  <35.818436, 35.959362, 58.626312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584061, 35.635468, 58.613636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608730, 0.413999, 0.676796,
		-0.534908, 0.415848, -0.735489,
		-0.585936, -0.809738, -0.031688,
		35.408279, 35.392548, 58.604130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138512, 36.242783, 58.685375>,  <35.818436, 35.959362, 58.626312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138512, 36.242783, 58.685375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.071800, 35.854420, 58.754108>,  <35.031773, 35.621403, 58.795349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.071800, 35.854420, 58.754108>,  <35.138512, 36.242783, 58.685375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071800, 35.854420, 58.754108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680598, 0.239454, 0.692421,
		-0.713422, -0.001465, -0.700733,
		-0.166779, -0.970906, 0.171829,
		35.021767, 35.563148, 58.805656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389812, 36.097939, 58.572983>,  <35.138512, 36.242783, 58.685375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389812, 36.097939, 58.572983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.546928, 35.825062, 58.819664>,  <34.641197, 35.661335, 58.967674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.546928, 35.825062, 58.819664>,  <34.389812, 36.097939, 58.572983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546928, 35.825062, 58.819664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702264, 0.210464, 0.680096,
		-0.593751, -0.700226, -0.396411,
		0.392791, -0.682193, 0.616707,
		34.664764, 35.620403, 59.004677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841679, 35.684692, 58.772018>,  <34.389812, 36.097939, 58.572983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841679, 35.684692, 58.772018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130291, 35.609741, 59.038635>,  <34.303459, 35.564770, 59.198605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130291, 35.609741, 59.038635>,  <33.841679, 35.684692, 58.772018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130291, 35.609741, 59.038635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667881, 0.065475, 0.741382,
		-0.182562, -0.980103, -0.077905,
		0.721530, -0.187379, 0.666546,
		34.346748, 35.553528, 59.238598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526134, 35.184574, 59.287865>,  <33.841679, 35.684692, 58.772018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526134, 35.184574, 59.287865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.852806, 35.314526, 59.478649>,  <34.048809, 35.392494, 59.593121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.852806, 35.314526, 59.478649>,  <33.526134, 35.184574, 59.287865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852806, 35.314526, 59.478649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474517, -0.092343, 0.875389,
		0.328438, -0.941237, 0.078746,
		0.816677, 0.324877, 0.476962,
		34.097809, 35.411987, 59.621738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651814, 34.733570, 59.828903>,  <33.526134, 35.184574, 59.287865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651814, 34.733570, 59.828903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.829514, 35.081760, 59.913681>,  <33.936134, 35.290676, 59.964546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.829514, 35.081760, 59.913681>,  <33.651814, 34.733570, 59.828903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829514, 35.081760, 59.913681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385918, -0.027565, 0.922121,
		0.808525, -0.491441, 0.323687,
		0.444246, 0.870475, 0.211943,
		33.962788, 35.342903, 59.977264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775204, 34.707947, 60.583469>,  <33.651814, 34.733570, 59.828903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775204, 34.707947, 60.583469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.834312, 35.091560, 60.486797>,  <33.869778, 35.321728, 60.428795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.834312, 35.091560, 60.486797>,  <33.775204, 34.707947, 60.583469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834312, 35.091560, 60.486797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499975, 0.283279, 0.818400,
		0.853340, -0.000099, 0.521354,
		0.147770, 0.959038, -0.241684,
		33.878643, 35.379272, 60.414291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153446, 35.079460, 61.094639>,  <33.775204, 34.707947, 60.583469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153446, 35.079460, 61.094639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.936131, 35.359982, 60.910023>,  <33.805740, 35.528294, 60.799252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.936131, 35.359982, 60.910023>,  <34.153446, 35.079460, 61.094639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936131, 35.359982, 60.910023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402103, 0.265233, 0.876336,
		0.736989, 0.661688, 0.137897,
		-0.543286, 0.701299, -0.461541,
		33.773144, 35.570370, 60.771561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288017, 35.754082, 61.391876>,  <34.153446, 35.079460, 61.094639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288017, 35.754082, 61.391876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.934353, 35.782623, 61.207195>,  <33.722157, 35.799747, 61.096386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.934353, 35.782623, 61.207195>,  <34.288017, 35.754082, 61.391876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934353, 35.782623, 61.207195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385599, 0.446529, 0.807419,
		0.263775, 0.891920, -0.367290,
		-0.884159, 0.071350, -0.461706,
		33.669106, 35.804028, 61.068684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949154, 36.268646, 61.764030>,  <34.288017, 35.754082, 61.391876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949154, 36.268646, 61.764030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.653240, 36.098736, 61.555305>,  <33.475693, 35.996788, 61.430073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.653240, 36.098736, 61.555305>,  <33.949154, 36.268646, 61.764030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653240, 36.098736, 61.555305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634969, 0.184207, 0.750255,
		-0.222571, 0.886358, -0.405994,
		-0.739782, -0.424778, -0.521811,
		33.431305, 35.971302, 61.398762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416515, 36.791389, 61.779770>,  <33.949154, 36.268646, 61.764030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416515, 36.791389, 61.779770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.258995, 36.429790, 61.713192>,  <33.164482, 36.212830, 61.673244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.258995, 36.429790, 61.713192>,  <33.416515, 36.791389, 61.779770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258995, 36.429790, 61.713192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563266, 0.094227, 0.820886,
		-0.726397, 0.417020, -0.546298,
		-0.393802, -0.904000, -0.166447,
		33.140854, 36.158592, 61.663258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745502, 36.932022, 61.729786>,  <33.416515, 36.791389, 61.779770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745502, 36.932022, 61.729786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.794308, 36.553379, 61.849144>,  <32.823589, 36.326191, 61.920761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.794308, 36.553379, 61.849144>,  <32.745502, 36.932022, 61.729786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794308, 36.553379, 61.849144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524961, 0.193602, 0.828815,
		-0.842336, -0.257772, -0.473312,
		0.122011, -0.946611, 0.298398,
		32.830910, 36.269398, 61.938663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098663, 36.738644, 61.951332>,  <32.745502, 36.932022, 61.729786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098663, 36.738644, 61.951332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.310394, 36.438316, 62.109360>,  <32.437435, 36.258118, 62.204174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.310394, 36.438316, 62.109360>,  <32.098663, 36.738644, 61.951332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310394, 36.438316, 62.109360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505180, 0.095175, 0.857750,
		-0.681618, -0.653611, -0.328922,
		0.529330, -0.750823, 0.395064,
		32.469193, 36.213070, 62.227879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619368, 36.383244, 62.354591>,  <32.098663, 36.738644, 61.951332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619368, 36.383244, 62.354591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.984095, 36.298985, 62.495567>,  <32.202930, 36.248428, 62.580154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.984095, 36.298985, 62.495567>,  <31.619368, 36.383244, 62.354591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984095, 36.298985, 62.495567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369416, -0.046197, 0.928115,
		-0.179230, -0.976468, -0.119942,
		0.911816, -0.210654, 0.352443,
		32.257641, 36.235790, 62.601299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510031, 35.763821, 62.639042>,  <31.619368, 36.383244, 62.354591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510031, 35.763821, 62.639042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.812063, 35.948700, 62.825043>,  <31.993282, 36.059628, 62.936646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.812063, 35.948700, 62.825043>,  <31.510031, 35.763821, 62.639042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812063, 35.948700, 62.825043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545997, 0.050649, 0.836255,
		0.362961, -0.885330, 0.290602,
		0.755080, 0.462195, 0.465004,
		32.038586, 36.087357, 62.964542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441408, 35.500557, 63.270393>,  <31.510031, 35.763821, 62.639042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441408, 35.500557, 63.270393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.666775, 35.830029, 63.296040>,  <31.801994, 36.027714, 63.311428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.666775, 35.830029, 63.296040>,  <31.441408, 35.500557, 63.270393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666775, 35.830029, 63.296040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293974, 0.127344, 0.947293,
		0.772103, -0.552568, 0.313888,
		0.563415, 0.823682, 0.064118,
		31.835800, 36.077133, 63.315273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685699, 35.325607, 63.928116>,  <31.441408, 35.500557, 63.270393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685699, 35.325607, 63.928116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.727438, 35.709835, 63.825031>,  <31.752481, 35.940372, 63.763180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.727438, 35.709835, 63.825031>,  <31.685699, 35.325607, 63.928116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727438, 35.709835, 63.825031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298019, 0.277419, 0.913358,
		0.948839, -0.018503, 0.315216,
		0.104347, 0.960570, -0.257712,
		31.758741, 35.998005, 63.747719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024803, 35.695526, 64.508171>,  <31.685699, 35.325607, 63.928116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024803, 35.695526, 64.508171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.817270, 35.970299, 64.304626>,  <31.692751, 36.135162, 64.182503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.817270, 35.970299, 64.304626>,  <32.024803, 35.695526, 64.508171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817270, 35.970299, 64.304626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324558, 0.392401, 0.860630,
		0.790873, 0.611674, 0.019361,
		-0.518828, 0.686933, -0.508863,
		31.661621, 36.176380, 64.151970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472473, 36.102180, 64.772331>,  <32.024803, 35.695526, 64.508171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472473, 36.102180, 64.772331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.775223, 35.940804, 64.977997>,  <31.956873, 35.843975, 65.101395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.775223, 35.940804, 64.977997>,  <31.472473, 36.102180, 64.772331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775223, 35.940804, 64.977997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074721, 0.834981, 0.545183,
		-0.649273, -0.374216, 0.662123,
		0.756876, -0.403447, 0.514169,
		32.002285, 35.819771, 65.132248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841562, 36.578213, 65.146408>,  <31.472473, 36.102180, 64.772331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841562, 36.578213, 65.146408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.472111, 36.616787, 65.294792>,  <31.250441, 36.639931, 65.383827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.472111, 36.616787, 65.294792>,  <31.841562, 36.578213, 65.146408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472111, 36.616787, 65.294792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294311, 0.798458, 0.525210,
		-0.245550, 0.594277, -0.765859,
		-0.923626, 0.096435, 0.370964,
		31.195023, 36.645718, 65.406082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681288, 37.243961, 64.997269>,  <31.841562, 36.578213, 65.146408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681288, 37.243961, 64.997269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.455120, 37.102970, 65.295547>,  <31.319420, 37.018375, 65.474518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.455120, 37.102970, 65.295547>,  <31.681288, 37.243961, 64.997269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455120, 37.102970, 65.295547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175029, 0.832221, 0.526092,
		-0.806018, 0.427981, -0.408862,
		-0.565421, -0.352477, 0.745694,
		31.285494, 36.997227, 65.519257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206764, 37.759579, 65.055923>,  <31.681288, 37.243961, 64.997269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206764, 37.759579, 65.055923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.237501, 37.589596, 65.416702>,  <31.255943, 37.487606, 65.633171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.237501, 37.589596, 65.416702>,  <31.206764, 37.759579, 65.055923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237501, 37.589596, 65.416702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193879, 0.893723, 0.404562,
		-0.978011, 0.143781, 0.151067,
		0.076844, -0.424955, 0.901947,
		31.260553, 37.462109, 65.687286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977131, 37.634060, 64.351044>,  <31.206764, 37.759579, 65.055923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977131, 37.634060, 64.351044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.707190, 37.424374, 64.143288>,  <30.545225, 37.298561, 64.018631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.707190, 37.424374, 64.143288>,  <30.977131, 37.634060, 64.351044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707190, 37.424374, 64.143288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456584, -0.849551, 0.264186,
		-0.579743, -0.058861, 0.812671,
		-0.674855, -0.524212, -0.519396,
		30.504732, 37.267109, 63.987469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354296, 37.667580, 64.805168>,  <30.977131, 37.634060, 64.351044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354296, 37.667580, 64.805168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.417185, 37.476719, 65.151024>,  <30.454918, 37.362202, 65.358536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.417185, 37.476719, 65.151024>,  <30.354296, 37.667580, 64.805168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417185, 37.476719, 65.151024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973036, 0.224466, -0.053060,
		-0.168765, 0.849670, 0.499579,
		0.157223, -0.477154, 0.864642,
		30.464352, 37.333572, 65.410416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616779, 37.456894, 64.573692>,  <30.354296, 37.667580, 64.805168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616779, 37.456894, 64.573692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.625387, 37.737621, 64.858505>,  <29.630552, 37.906055, 65.029396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.625387, 37.737621, 64.858505>,  <29.616779, 37.456894, 64.573692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625387, 37.737621, 64.858505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716084, 0.486184, -0.500848,
		-0.697683, 0.520655, -0.492094,
		0.021521, 0.701814, 0.712035,
		29.631844, 37.948166, 65.072113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644541, 38.089329, 64.263466>,  <29.616779, 37.456894, 64.573692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644541, 38.089329, 64.263466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.812262, 38.149792, 64.621536>,  <29.912893, 38.186069, 64.836380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.812262, 38.149792, 64.621536>,  <29.644541, 38.089329, 64.263466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812262, 38.149792, 64.621536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732749, 0.525785, -0.432005,
		-0.535972, 0.837078, 0.109698,
		0.419300, 0.151161, 0.895175,
		29.938051, 38.195141, 64.890091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820808, 38.850994, 64.485832>,  <29.644541, 38.089329, 64.263466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820808, 38.850994, 64.485832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.062071, 38.565853, 64.628960>,  <30.206827, 38.394768, 64.714836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.062071, 38.565853, 64.628960>,  <29.820808, 38.850994, 64.485832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062071, 38.565853, 64.628960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780048, 0.433518, -0.451206,
		0.166520, 0.551269, 0.817541,
		0.603155, -0.712856, 0.357827,
		30.243017, 38.351997, 64.736305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360828, 39.088634, 64.686012>,  <29.820808, 38.850994, 64.485832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360828, 39.088634, 64.686012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.501598, 38.722252, 64.608887>,  <30.586060, 38.502422, 64.562614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.501598, 38.722252, 64.608887>,  <30.360828, 39.088634, 64.686012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501598, 38.722252, 64.608887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726622, 0.397185, -0.560594,
		0.590058, 0.057190, 0.805332,
		0.351926, -0.915955, -0.192807,
		30.607176, 38.447464, 64.551048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997387, 39.059891, 64.920547>,  <30.360828, 39.088634, 64.686012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997387, 39.059891, 64.920547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.948839, 38.805367, 64.615814>,  <30.919710, 38.652653, 64.432976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.948839, 38.805367, 64.615814>,  <30.997387, 39.059891, 64.920547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948839, 38.805367, 64.615814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744406, 0.449349, -0.493910,
		0.656605, -0.627051, 0.419138,
		-0.121368, -0.636312, -0.761825,
		30.912430, 38.614471, 64.387268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624685, 38.817696, 64.733208>,  <30.997387, 39.059891, 64.920547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624685, 38.817696, 64.733208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.401205, 38.796600, 64.402130>,  <31.267117, 38.783943, 64.203484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.401205, 38.796600, 64.402130>,  <31.624685, 38.817696, 64.733208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401205, 38.796600, 64.402130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809935, 0.180082, -0.558190,
		0.178447, -0.982241, -0.057962,
		-0.558715, -0.052661, -0.827687,
		31.233595, 38.780781, 64.153824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184032, 38.631397, 64.167908>,  <31.624685, 38.817696, 64.733208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184032, 38.631397, 64.167908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.852020, 38.744255, 63.975471>,  <31.652813, 38.811970, 63.860012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.852020, 38.744255, 63.975471>,  <32.184032, 38.631397, 64.167908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852020, 38.744255, 63.975471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557147, 0.458400, -0.692428,
		0.025164, -0.842772, -0.537683,
		-0.830033, 0.282144, -0.481083,
		31.603010, 38.828899, 63.831146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343315, 38.466614, 63.404781>,  <32.184032, 38.631397, 64.167908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343315, 38.466614, 63.404781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.039555, 38.725792, 63.381222>,  <31.857298, 38.881298, 63.367088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.039555, 38.725792, 63.381222>,  <32.343315, 38.466614, 63.404781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039555, 38.725792, 63.381222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433012, 0.435776, -0.789050,
		-0.485598, -0.624710, -0.611499,
		-0.759404, 0.647948, -0.058895,
		31.811733, 38.920177, 63.363552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031704, 38.443035, 62.665421>,  <32.343315, 38.466614, 63.404781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031704, 38.443035, 62.665421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.935728, 38.794872, 62.829735>,  <31.878143, 39.005974, 62.928322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.935728, 38.794872, 62.829735>,  <32.031704, 38.443035, 62.665421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935728, 38.794872, 62.829735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299594, 0.469578, -0.830505,
		-0.923404, -0.076199, -0.376190,
		-0.239935, 0.879596, 0.410782,
		31.863747, 39.058750, 62.952969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807177, 38.775410, 62.110600>,  <32.031704, 38.443035, 62.665421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807177, 38.775410, 62.110600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.901791, 39.070583, 62.363426>,  <31.958559, 39.247688, 62.515121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.901791, 39.070583, 62.363426>,  <31.807177, 38.775410, 62.110600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901791, 39.070583, 62.363426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132960, 0.619821, -0.773398,
		-0.962483, 0.266975, 0.048494,
		0.236535, 0.737934, 0.632064,
		31.972752, 39.291965, 62.553047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331450, 39.331028, 62.006744>,  <31.807177, 38.775410, 62.110600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331450, 39.331028, 62.006744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.667553, 39.477707, 62.166492>,  <31.869215, 39.565716, 62.262341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.667553, 39.477707, 62.166492>,  <31.331450, 39.331028, 62.006744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667553, 39.477707, 62.166492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066732, 0.661054, -0.747365,
		-0.538065, 0.654630, 0.530986,
		0.840258, 0.366697, 0.399375,
		31.919630, 39.587715, 62.286304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304045, 40.123905, 61.948608>,  <31.331450, 39.331028, 62.006744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304045, 40.123905, 61.948608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.686060, 40.027454, 62.017609>,  <31.915270, 39.969582, 62.059010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.686060, 40.027454, 62.017609>,  <31.304045, 40.123905, 61.948608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686060, 40.027454, 62.017609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288685, 0.623778, -0.726334,
		0.067540, 0.743476, 0.665344,
		0.955039, -0.241131, 0.172500,
		31.972572, 39.955116, 62.069359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635643, 40.734402, 62.144855>,  <31.304045, 40.123905, 61.948608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635643, 40.734402, 62.144855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.895895, 40.470890, 61.993759>,  <32.052048, 40.312782, 61.903103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.895895, 40.470890, 61.993759>,  <31.635643, 40.734402, 62.144855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895895, 40.470890, 61.993759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201446, 0.629323, -0.750581,
		0.732189, 0.412257, 0.542166,
		0.650630, -0.658784, -0.377736,
		32.091084, 40.273254, 61.880440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028687, 41.177223, 61.749264>,  <31.635643, 40.734402, 62.144855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028687, 41.177223, 61.749264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.172581, 40.822033, 61.634659>,  <32.258915, 40.608917, 61.565895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.172581, 40.822033, 61.634659>,  <32.028687, 41.177223, 61.749264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172581, 40.822033, 61.634659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303480, 0.401722, -0.864014,
		0.882322, 0.223864, 0.413996,
		0.359733, -0.887978, -0.286510,
		32.280502, 40.555641, 61.548706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598057, 41.375614, 61.465889>,  <32.028687, 41.177223, 61.749264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598057, 41.375614, 61.465889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.567394, 41.002605, 61.324730>,  <32.548996, 40.778801, 61.240036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.567394, 41.002605, 61.324730>,  <32.598057, 41.375614, 61.465889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567394, 41.002605, 61.324730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422176, 0.290286, -0.858779,
		0.903267, -0.214815, 0.371434,
		-0.076656, -0.932517, -0.352896,
		32.544395, 40.722851, 61.218861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290833, 41.271282, 61.059845>,  <32.598057, 41.375614, 61.465889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290833, 41.271282, 61.059845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.037815, 40.996773, 60.916225>,  <32.886005, 40.832066, 60.830055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.037815, 40.996773, 60.916225>,  <33.290833, 41.271282, 61.059845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037815, 40.996773, 60.916225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351869, 0.158349, -0.922558,
		0.689983, -0.709896, 0.141316,
		-0.632543, -0.686275, -0.359049,
		32.848053, 40.790890, 60.808510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702412, 40.911453, 60.640251>,  <33.290833, 41.271282, 61.059845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702412, 40.911453, 60.640251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.328953, 40.840965, 60.515511>,  <33.104877, 40.798672, 60.440666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.328953, 40.840965, 60.515511>,  <33.702412, 40.911453, 60.640251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328953, 40.840965, 60.515511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297267, 0.104522, -0.949056,
		0.199842, -0.978785, -0.045201,
		-0.933647, -0.176224, -0.311848,
		33.048859, 40.788097, 60.421955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641514, 40.327316, 60.115509>,  <33.702412, 40.911453, 60.640251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641514, 40.327316, 60.115509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326889, 40.564411, 60.046246>,  <33.138115, 40.706669, 60.004688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326889, 40.564411, 60.046246>,  <33.641514, 40.327316, 60.115509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326889, 40.564411, 60.046246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176365, -0.053101, -0.982892,
		-0.591792, -0.803643, -0.062772,
		-0.786561, 0.592738, -0.173159,
		33.090919, 40.742233, 59.994297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353012, 40.088268, 59.596127>,  <33.641514, 40.327316, 60.115509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353012, 40.088268, 59.596127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.188110, 40.451511, 59.566780>,  <33.089169, 40.669456, 59.549171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.188110, 40.451511, 59.566780>,  <33.353012, 40.088268, 59.596127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188110, 40.451511, 59.566780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218608, 0.020427, -0.975599,
		-0.884453, -0.418233, -0.206941,
		-0.412255, 0.908110, -0.073362,
		33.064434, 40.723946, 59.544773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861946, 40.065769, 59.007484>,  <33.353012, 40.088268, 59.596127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861946, 40.065769, 59.007484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.958176, 40.449932, 59.063686>,  <33.015915, 40.680431, 59.097408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.958176, 40.449932, 59.063686>,  <32.861946, 40.065769, 59.007484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958176, 40.449932, 59.063686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201553, 0.092171, -0.975131,
		-0.949473, 0.262912, -0.171399,
		0.240576, 0.960407, 0.140505,
		33.030350, 40.738052, 59.105839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589298, 40.487923, 58.436604>,  <32.861946, 40.065769, 59.007484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589298, 40.487923, 58.436604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.863651, 40.725956, 58.604149>,  <33.028263, 40.868774, 58.704678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.863651, 40.725956, 58.604149>,  <32.589298, 40.487923, 58.436604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863651, 40.725956, 58.604149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392014, 0.182798, -0.901615,
		-0.613103, 0.782599, -0.107904,
		0.685879, 0.595083, 0.418864,
		33.069416, 40.904480, 58.729809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523796, 40.975357, 57.994129>,  <32.589298, 40.487923, 58.436604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523796, 40.975357, 57.994129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.889168, 40.992523, 58.156017>,  <33.108391, 41.002823, 58.253151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.889168, 40.992523, 58.156017>,  <32.523796, 40.975357, 57.994129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889168, 40.992523, 58.156017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385066, 0.230871, -0.893545,
		-0.131782, 0.972038, 0.194361,
		0.913432, 0.042911, 0.404723,
		33.163197, 41.005398, 58.277435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815544, 41.532017, 57.700798>,  <32.523796, 40.975357, 57.994129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815544, 41.532017, 57.700798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.135494, 41.317394, 57.808361>,  <33.327465, 41.188622, 57.872898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.135494, 41.317394, 57.808361>,  <32.815544, 41.532017, 57.700798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135494, 41.317394, 57.808361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406791, 0.155257, -0.900231,
		0.441271, 0.829462, 0.342451,
		0.799876, -0.536552, 0.268907,
		33.375458, 41.156429, 57.889034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407188, 41.928131, 57.452625>,  <32.815544, 41.532017, 57.700798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407188, 41.928131, 57.452625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.526581, 41.550804, 57.510685>,  <33.598217, 41.324409, 57.545521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.526581, 41.550804, 57.510685>,  <33.407188, 41.928131, 57.452625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526581, 41.550804, 57.510685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471342, 0.013454, -0.881848,
		0.829906, 0.331631, 0.448639,
		0.298484, -0.943313, 0.145146,
		33.616127, 41.267811, 57.554230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056618, 41.854111, 57.096645>,  <33.407188, 41.928131, 57.452625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056618, 41.854111, 57.096645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.975433, 41.464497, 57.136768>,  <33.926723, 41.230728, 57.160843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.975433, 41.464497, 57.136768>,  <34.056618, 41.854111, 57.096645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975433, 41.464497, 57.136768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239068, -0.148636, -0.959559,
		0.949553, -0.170776, 0.263029,
		-0.202966, -0.974034, 0.100311,
		33.914543, 41.172287, 57.166862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628124, 41.483181, 56.876148>,  <34.056618, 41.854111, 57.096645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628124, 41.483181, 56.876148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.336681, 41.209862, 56.857227>,  <34.161816, 41.045872, 56.845875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.336681, 41.209862, 56.857227>,  <34.628124, 41.483181, 56.876148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336681, 41.209862, 56.857227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293122, -0.248655, -0.923174,
		0.619043, -0.686494, 0.381461,
		-0.728605, -0.683299, -0.047298,
		34.118099, 41.004871, 56.843037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962315, 40.955051, 56.524662>,  <34.628124, 41.483181, 56.876148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962315, 40.955051, 56.524662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.578175, 40.843555, 56.522049>,  <34.347691, 40.776657, 56.520481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.578175, 40.843555, 56.522049>,  <34.962315, 40.955051, 56.524662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578175, 40.843555, 56.522049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142284, -0.469789, -0.871237,
		0.239775, -0.837618, 0.490819,
		-0.960345, -0.278736, -0.006536,
		34.290070, 40.759933, 56.520088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928913, 40.180305, 56.489925>,  <34.962315, 40.955051, 56.524662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928913, 40.180305, 56.489925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.607800, 40.346100, 56.318470>,  <34.415131, 40.445576, 56.215595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.607800, 40.346100, 56.318470>,  <34.928913, 40.180305, 56.489925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607800, 40.346100, 56.318470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138126, -0.570048, -0.809917,
		-0.580039, -0.709401, 0.400380,
		-0.802792, 0.414481, -0.428637,
		34.366962, 40.470448, 56.189877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649567, 39.582077, 56.207935>,  <34.928913, 40.180305, 56.489925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649567, 39.582077, 56.207935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.465435, 39.887207, 56.026299>,  <34.354958, 40.070286, 55.917316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.465435, 39.887207, 56.026299>,  <34.649567, 39.582077, 56.207935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465435, 39.887207, 56.026299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069034, -0.479205, -0.874984,
		-0.885061, -0.434127, 0.167931,
		-0.460328, 0.762821, -0.454095,
		34.327335, 40.116055, 55.890068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957397, 39.339027, 55.929688>,  <34.649567, 39.582077, 56.207935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957397, 39.339027, 55.929688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.108669, 39.652500, 55.732578>,  <34.199432, 39.840584, 55.614311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.108669, 39.652500, 55.732578>,  <33.957397, 39.339027, 55.929688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108669, 39.652500, 55.732578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152779, -0.472172, -0.868166,
		-0.913038, 0.403609, -0.058836,
		0.378180, 0.783680, -0.492773,
		34.222122, 39.887604, 55.584747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847729, 39.193661, 55.237438>,  <33.957397, 39.339027, 55.929688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847729, 39.193661, 55.237438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072617, 39.518539, 55.175152>,  <34.207550, 39.713467, 55.137779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072617, 39.518539, 55.175152>,  <33.847729, 39.193661, 55.237438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072617, 39.518539, 55.175152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151727, -0.286403, -0.946019,
		-0.812951, 0.508244, -0.284253,
		0.562219, 0.812196, -0.155717,
		34.241283, 39.762199, 55.128437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667675, 39.294567, 54.624275>,  <33.847729, 39.193661, 55.237438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667675, 39.294567, 54.624275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.013927, 39.485107, 54.685951>,  <34.221680, 39.599430, 54.722958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.013927, 39.485107, 54.685951>,  <33.667675, 39.294567, 54.624275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013927, 39.485107, 54.685951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311801, -0.271916, -0.910408,
		-0.391746, 0.836153, -0.383905,
		0.865630, 0.476350, 0.154191,
		34.273617, 39.628014, 54.732208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800514, 39.647301, 54.046787>,  <33.667675, 39.294567, 54.624275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800514, 39.647301, 54.046787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156342, 39.605892, 54.224758>,  <34.369839, 39.581047, 54.331539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156342, 39.605892, 54.224758>,  <33.800514, 39.647301, 54.046787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156342, 39.605892, 54.224758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363861, -0.428301, -0.827142,
		0.276186, 0.897687, -0.343335,
		0.889565, -0.103518, 0.444924,
		34.423210, 39.574837, 54.358234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269585, 39.815327, 53.521626>,  <33.800514, 39.647301, 54.046787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269585, 39.815327, 53.521626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.482239, 39.607582, 53.789246>,  <34.609829, 39.482937, 53.949818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.482239, 39.607582, 53.789246>,  <34.269585, 39.815327, 53.521626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482239, 39.607582, 53.789246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432215, -0.512982, -0.741646,
		0.728393, 0.683459, -0.048243,
		0.531633, -0.519359, 0.669054,
		34.641727, 39.451775, 53.989964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959053, 39.729851, 53.266556>,  <34.269585, 39.815327, 53.521626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959053, 39.729851, 53.266556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.961014, 39.459362, 53.561230>,  <34.962189, 39.297070, 53.738033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.961014, 39.459362, 53.561230>,  <34.959053, 39.729851, 53.266556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961014, 39.459362, 53.561230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569733, -0.603546, -0.557796,
		0.821815, 0.422446, 0.382308,
		0.004898, -0.676218, 0.736685,
		34.962482, 39.256496, 53.782234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626389, 39.508347, 53.372269>,  <34.959053, 39.729851, 53.266556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626389, 39.508347, 53.372269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.406654, 39.206116, 53.515003>,  <35.274815, 39.024776, 53.600643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.406654, 39.206116, 53.515003>,  <35.626389, 39.508347, 53.372269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406654, 39.206116, 53.515003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605429, -0.654228, -0.453256,
		0.575924, -0.032948, 0.816839,
		-0.549333, -0.755579, 0.356839,
		35.241856, 38.979443, 53.622055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111984, 39.105556, 53.708603>,  <35.626389, 39.508347, 53.372269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111984, 39.105556, 53.708603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.776585, 38.894421, 53.654472>,  <35.575344, 38.767738, 53.621994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.776585, 38.894421, 53.654472>,  <36.111984, 39.105556, 53.708603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776585, 38.894421, 53.654472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543755, -0.794356, -0.270793,
		0.035441, -0.300641, 0.953079,
		-0.838495, -0.527838, -0.135322,
		35.525036, 38.736069, 53.613876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403343, 38.385883, 53.748035>,  <36.111984, 39.105556, 53.708603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403343, 38.385883, 53.748035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042351, 38.332905, 53.584091>,  <35.825756, 38.301117, 53.485725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042351, 38.332905, 53.584091>,  <36.403343, 38.385883, 53.748035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042351, 38.332905, 53.584091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399609, -0.612584, -0.681949,
		-0.160756, -0.779230, 0.605771,
		-0.902480, -0.132444, -0.409864,
		35.771606, 38.293171, 53.461132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277336, 37.643211, 53.752464>,  <36.403343, 38.385883, 53.748035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277336, 37.643211, 53.752464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088024, 37.833157, 53.455677>,  <35.974438, 37.947124, 53.277607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088024, 37.833157, 53.455677>,  <36.277336, 37.643211, 53.752464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088024, 37.833157, 53.455677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481964, -0.565443, -0.669317,
		-0.737373, -0.674374, 0.038745,
		-0.473278, 0.474863, -0.741966,
		35.946041, 37.975616, 53.233086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257526, 37.112083, 53.254951>,  <36.277336, 37.643211, 53.752464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257526, 37.112083, 53.254951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.144684, 37.433086, 53.044659>,  <36.076981, 37.625687, 52.918484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.144684, 37.433086, 53.044659>,  <36.257526, 37.112083, 53.254951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144684, 37.433086, 53.044659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389196, -0.405148, -0.827273,
		-0.876895, -0.437990, -0.198040,
		-0.282101, 0.802508, -0.525736,
		36.060055, 37.673840, 52.886936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888897, 36.876926, 52.738552>,  <36.257526, 37.112083, 53.254951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888897, 36.876926, 52.738552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.979843, 37.226364, 52.566444>,  <36.034412, 37.436028, 52.463181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.979843, 37.226364, 52.566444>,  <35.888897, 36.876926, 52.738552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979843, 37.226364, 52.566444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300961, -0.483251, -0.822126,
		-0.926135, 0.057430, -0.372794,
		0.227368, 0.873596, -0.430272,
		36.048054, 37.488441, 52.437363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678761, 36.813175, 51.978558>,  <35.888897, 36.876926, 52.738552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678761, 36.813175, 51.978558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.936069, 37.119137, 51.991978>,  <36.090454, 37.302715, 52.000031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.936069, 37.119137, 51.991978>,  <35.678761, 36.813175, 51.978558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936069, 37.119137, 51.991978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343929, -0.249527, -0.905234,
		-0.684046, 0.593849, -0.423586,
		0.643269, 0.764905, 0.033554,
		36.129051, 37.348610, 52.002045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605377, 37.236652, 51.304279>,  <35.678761, 36.813175, 51.978558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605377, 37.236652, 51.304279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.972660, 37.279331, 51.456867>,  <36.193027, 37.304939, 51.548420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.972660, 37.279331, 51.456867>,  <35.605377, 37.236652, 51.304279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972660, 37.279331, 51.456867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392857, -0.368454, -0.842558,
		0.050653, 0.923502, -0.380233,
		0.918203, 0.106700, 0.381468,
		36.248119, 37.311340, 51.571308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024109, 37.584030, 50.821056>,  <35.605377, 37.236652, 51.304279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024109, 37.584030, 50.821056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290325, 37.378975, 51.038036>,  <36.450054, 37.255939, 51.168224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290325, 37.378975, 51.038036>,  <36.024109, 37.584030, 50.821056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290325, 37.378975, 51.038036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618131, -0.028740, -0.785550,
		0.418296, 0.858122, 0.297752,
		0.665540, -0.512642, 0.542453,
		36.489986, 37.225182, 51.200771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874664, 38.384697, 50.619884>,  <36.024109, 37.584030, 50.821056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874664, 38.384697, 50.619884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.531025, 38.494911, 50.447361>,  <35.324841, 38.561039, 50.343845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.531025, 38.494911, 50.447361>,  <35.874664, 38.384697, 50.619884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531025, 38.494911, 50.447361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227334, 0.549589, 0.803910,
		0.458547, 0.788690, -0.409514,
		-0.859100, 0.275534, -0.431309,
		35.273296, 38.577572, 50.317966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685749, 38.940929, 51.001598>,  <35.874664, 38.384697, 50.619884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685749, 38.940929, 51.001598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.363926, 38.878242, 50.772469>,  <35.170834, 38.840630, 50.634991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.363926, 38.878242, 50.772469>,  <35.685749, 38.940929, 51.001598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363926, 38.878242, 50.772469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547447, 0.569583, 0.613088,
		0.230188, 0.806855, -0.544057,
		-0.804559, -0.156716, -0.572822,
		35.122559, 38.831226, 50.600620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402668, 39.552006, 50.914738>,  <35.685749, 38.940929, 51.001598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402668, 39.552006, 50.914738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.106632, 39.294743, 50.836128>,  <34.929012, 39.140385, 50.788963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.106632, 39.294743, 50.836128>,  <35.402668, 39.552006, 50.914738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106632, 39.294743, 50.836128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600583, 0.500596, 0.623461,
		-0.302606, 0.579443, -0.756753,
		-0.740088, -0.643156, -0.196520,
		34.884605, 39.101795, 50.777172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815437, 39.917927, 50.659599>,  <35.402668, 39.552006, 50.914738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815437, 39.917927, 50.659599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668800, 39.577713, 50.810440>,  <34.580818, 39.373585, 50.900944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668800, 39.577713, 50.810440>,  <34.815437, 39.917927, 50.659599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668800, 39.577713, 50.810440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646473, 0.524351, 0.554192,
		-0.669091, -0.040621, -0.742070,
		-0.366593, -0.850533, 0.377099,
		34.558823, 39.322552, 50.923569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146454, 40.088619, 50.779167>,  <34.815437, 39.917927, 50.659599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146454, 40.088619, 50.779167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.144680, 39.748829, 50.990208>,  <34.143616, 39.544952, 51.116833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.144680, 39.748829, 50.990208>,  <34.146454, 40.088619, 50.779167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144680, 39.748829, 50.990208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791182, 0.325650, 0.517671,
		-0.611565, -0.415136, -0.673536,
		-0.004433, -0.849478, 0.527604,
		34.143349, 39.493984, 51.148491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451031, 39.941425, 50.813091>,  <34.146454, 40.088619, 50.779167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451031, 39.941425, 50.813091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.622597, 39.753151, 51.121502>,  <33.725536, 39.640186, 51.306549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.622597, 39.753151, 51.121502>,  <33.451031, 39.941425, 50.813091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622597, 39.753151, 51.121502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797063, 0.204479, 0.568225,
		-0.425114, -0.858280, -0.287461,
		0.428916, -0.470685, 0.771030,
		33.751270, 39.611946, 51.352810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984478, 39.446548, 51.121803>,  <33.451031, 39.941425, 50.813091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984478, 39.446548, 51.121803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.224918, 39.501755, 51.436668>,  <33.369183, 39.534878, 51.625587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.224918, 39.501755, 51.436668>,  <32.984478, 39.446548, 51.121803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224918, 39.501755, 51.436668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798110, 0.052882, 0.600186,
		0.041188, -0.989022, 0.141912,
		0.601102, 0.137982, 0.787170,
		33.405251, 39.543159, 51.672817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743439, 38.994633, 51.738834>,  <32.984478, 39.446548, 51.121803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743439, 38.994633, 51.738834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.972103, 39.274624, 51.910057>,  <33.109303, 39.442619, 52.012791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.972103, 39.274624, 51.910057>,  <32.743439, 38.994633, 51.738834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972103, 39.274624, 51.910057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701452, 0.146303, 0.697538,
		0.425638, -0.699016, 0.574639,
		0.571662, 0.699980, 0.428054,
		33.143600, 39.484619, 52.038475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983498, 38.801666, 52.455219>,  <32.743439, 38.994633, 51.738834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983498, 38.801666, 52.455219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.000854, 39.199490, 52.417324>,  <33.011269, 39.438183, 52.394585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.000854, 39.199490, 52.417324>,  <32.983498, 38.801666, 52.455219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000854, 39.199490, 52.417324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522991, 0.103413, 0.846041,
		0.851233, 0.012834, 0.524631,
		0.043395, 0.994555, -0.094741,
		33.013874, 39.497856, 52.388901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006557, 38.993698, 53.065048>,  <32.983498, 38.801666, 52.455219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006557, 38.993698, 53.065048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.937481, 39.350723, 52.898434>,  <32.896034, 39.564938, 52.798466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.937481, 39.350723, 52.898434>,  <33.006557, 38.993698, 53.065048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937481, 39.350723, 52.898434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552056, 0.262520, 0.791402,
		0.815728, 0.366621, 0.447412,
		-0.172690, 0.892565, -0.416540,
		32.885674, 39.618492, 52.773472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083675, 39.476692, 53.572792>,  <33.006557, 38.993698, 53.065048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083675, 39.476692, 53.572792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.850845, 39.652557, 53.299183>,  <32.711147, 39.758076, 53.135017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.850845, 39.652557, 53.299183>,  <33.083675, 39.476692, 53.572792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850845, 39.652557, 53.299183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581034, 0.363604, 0.728143,
		0.568852, 0.821272, 0.043817,
		-0.582071, 0.439664, -0.684024,
		32.676224, 39.784458, 53.093975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113445, 40.153786, 53.779346>,  <33.083675, 39.476692, 53.572792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113445, 40.153786, 53.779346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.787384, 40.108181, 53.552181>,  <32.591747, 40.080818, 53.415882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.787384, 40.108181, 53.552181>,  <33.113445, 40.153786, 53.779346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787384, 40.108181, 53.552181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552471, 0.447649, 0.703126,
		0.174060, 0.886911, -0.427892,
		-0.815156, -0.114012, -0.567911,
		32.542839, 40.073978, 53.381809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706127, 40.780540, 53.884663>,  <33.113445, 40.153786, 53.779346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706127, 40.780540, 53.884663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.431515, 40.524059, 53.747532>,  <32.266747, 40.370171, 53.665253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.431515, 40.524059, 53.747532>,  <32.706127, 40.780540, 53.884663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431515, 40.524059, 53.747532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717222, 0.519732, 0.464189,
		-0.119461, 0.564564, -0.816698,
		-0.686529, -0.641207, -0.342830,
		32.225555, 40.331696, 53.644684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185440, 41.187561, 53.569080>,  <32.706127, 40.780540, 53.884663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185440, 41.187561, 53.569080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.044712, 40.829464, 53.678452>,  <31.960276, 40.614605, 53.744076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.044712, 40.829464, 53.678452>,  <32.185440, 41.187561, 53.569080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044712, 40.829464, 53.678452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540936, 0.432838, 0.721137,
		-0.763944, 0.105801, -0.636550,
		-0.351820, -0.895241, 0.273432,
		31.939165, 40.560890, 53.760483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488445, 41.274502, 53.712971>,  <32.185440, 41.187561, 53.569080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488445, 41.274502, 53.712971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.613890, 40.950882, 53.911800>,  <31.689157, 40.756710, 54.031097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.613890, 40.950882, 53.911800>,  <31.488445, 41.274502, 53.712971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613890, 40.950882, 53.911800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529977, 0.285226, 0.798606,
		-0.787891, -0.513892, -0.339327,
		0.313613, -0.809049, 0.497078,
		31.707973, 40.708168, 54.060925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898016, 41.006191, 53.982197>,  <31.488445, 41.274502, 53.712971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898016, 41.006191, 53.982197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.182795, 40.875278, 54.230717>,  <31.353662, 40.796730, 54.379829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.182795, 40.875278, 54.230717>,  <30.898016, 41.006191, 53.982197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182795, 40.875278, 54.230717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625346, 0.107052, 0.772970,
		-0.319493, -0.938842, -0.128451,
		0.711946, -0.327285, 0.621303,
		31.396378, 40.777092, 54.417107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512112, 40.688259, 54.519329>,  <30.898016, 41.006191, 53.982197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512112, 40.688259, 54.519329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.871649, 40.722172, 54.691326>,  <31.087372, 40.742519, 54.794525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.871649, 40.722172, 54.691326>,  <30.512112, 40.688259, 54.519329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871649, 40.722172, 54.691326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434451, 0.043096, 0.899664,
		0.057758, -0.995466, 0.075576,
		0.898841, 0.084797, 0.429992,
		31.141302, 40.747604, 54.820324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460207, 40.303089, 55.075317>,  <30.512112, 40.688259, 54.519329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460207, 40.303089, 55.075317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.753971, 40.563862, 55.150822>,  <30.930229, 40.720325, 55.196125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.753971, 40.563862, 55.150822>,  <30.460207, 40.303089, 55.075317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753971, 40.563862, 55.150822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294727, 0.055807, 0.953951,
		0.611375, -0.756223, 0.233126,
		0.734409, 0.651930, 0.188760,
		30.974295, 40.759441, 55.207451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738089, 40.006596, 55.670383>,  <30.460207, 40.303089, 55.075317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738089, 40.006596, 55.670383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.906557, 40.368988, 55.687401>,  <31.007639, 40.586426, 55.697609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.906557, 40.368988, 55.687401>,  <30.738089, 40.006596, 55.670383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906557, 40.368988, 55.687401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302039, 0.095875, 0.948462,
		0.855212, -0.412313, 0.314022,
		0.421170, 0.905983, 0.042541,
		31.032907, 40.640781, 55.700165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177351, 39.996056, 56.258331>,  <30.738089, 40.006596, 55.670383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177351, 39.996056, 56.258331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.083241, 40.376827, 56.179863>,  <31.026773, 40.605289, 56.132782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.083241, 40.376827, 56.179863>,  <31.177351, 39.996056, 56.258331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083241, 40.376827, 56.179863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124377, 0.170688, 0.977444,
		0.963937, 0.254369, 0.078238,
		-0.235277, 0.951925, -0.196170,
		31.012657, 40.662403, 56.121014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616388, 40.357418, 56.722794>,  <31.177351, 39.996056, 56.258331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616388, 40.357418, 56.722794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.328466, 40.619835, 56.632027>,  <31.155714, 40.777287, 56.577568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.328466, 40.619835, 56.632027>,  <31.616388, 40.357418, 56.722794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328466, 40.619835, 56.632027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057110, 0.269812, 0.961218,
		0.691824, 0.704847, -0.156746,
		-0.719804, 0.656042, -0.226916,
		31.112526, 40.816647, 56.563953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907290, 41.110695, 57.031639>,  <31.616388, 40.357418, 56.722794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907290, 41.110695, 57.031639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.511820, 41.119995, 56.972328>,  <31.274538, 41.125576, 56.936741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.511820, 41.119995, 56.972328>,  <31.907290, 41.110695, 57.031639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511820, 41.119995, 56.972328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130663, 0.352766, 0.926544,
		0.073853, 0.935422, -0.345732,
		-0.988672, 0.023254, -0.148278,
		31.215218, 41.126972, 56.927845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609528, 41.745888, 57.323414>,  <31.907290, 41.110695, 57.031639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609528, 41.745888, 57.323414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.281206, 41.517555, 57.315121>,  <31.084213, 41.380554, 57.310146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.281206, 41.517555, 57.315121>,  <31.609528, 41.745888, 57.323414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281206, 41.517555, 57.315121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181979, 0.226919, 0.956761,
		-0.541445, 0.789087, -0.290136,
		-0.820805, -0.570832, -0.020733,
		31.034966, 41.346306, 57.308899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114004, 42.071140, 57.728859>,  <31.609528, 41.745888, 57.323414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114004, 42.071140, 57.728859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.006250, 41.685970, 57.734642>,  <30.941599, 41.454868, 57.738113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.006250, 41.685970, 57.734642>,  <31.114004, 42.071140, 57.728859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006250, 41.685970, 57.734642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256185, 0.086128, 0.962783,
		-0.928333, 0.255654, -0.269889,
		-0.269385, -0.962924, 0.014460,
		30.925434, 41.397095, 57.738979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626722, 42.146568, 58.269043>,  <31.114004, 42.071140, 57.728859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626722, 42.146568, 58.269043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.634283, 41.749569, 58.220722>,  <30.638821, 41.511372, 58.191730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.634283, 41.749569, 58.220722>,  <30.626722, 42.146568, 58.269043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634283, 41.749569, 58.220722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438257, -0.116825, 0.891226,
		-0.898651, 0.036097, -0.437176,
		0.018903, -0.992496, -0.120804,
		30.639954, 41.451820, 58.184483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977135, 41.763863, 58.544033>,  <30.626722, 42.146568, 58.269043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977135, 41.763863, 58.544033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.241331, 41.463535, 58.542004>,  <30.399849, 41.283340, 58.540787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.241331, 41.463535, 58.542004>,  <29.977135, 41.763863, 58.544033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241331, 41.463535, 58.542004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543199, -0.482495, 0.687120,
		-0.518353, -0.451076, -0.726526,
		0.660489, -0.750818, -0.005079,
		30.439478, 41.238289, 58.540482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583155, 41.156303, 58.534306>,  <29.977135, 41.763863, 58.544033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583155, 41.156303, 58.534306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.953075, 41.085270, 58.668892>,  <30.175028, 41.042652, 58.749645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.953075, 41.085270, 58.668892>,  <29.583155, 41.156303, 58.534306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953075, 41.085270, 58.668892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365018, -0.663498, 0.653094,
		0.107270, -0.726798, -0.678423,
		0.924800, -0.177580, 0.336468,
		30.230515, 41.031998, 58.769833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767298, 40.329853, 58.584835>,  <29.583155, 41.156303, 58.534306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767298, 40.329853, 58.584835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.019440, 40.519932, 58.830383>,  <30.170725, 40.633980, 58.977715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.019440, 40.519932, 58.830383>,  <29.767298, 40.329853, 58.584835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019440, 40.519932, 58.830383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184717, -0.676238, 0.713149,
		0.754013, -0.562928, -0.338492,
		0.630353, 0.475199, 0.613875,
		30.208546, 40.662491, 59.014545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046549, 39.771839, 58.965714>,  <29.767298, 40.329853, 58.584835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046549, 39.771839, 58.965714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.137976, 40.102062, 59.172096>,  <30.192831, 40.300198, 59.295925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.137976, 40.102062, 59.172096>,  <30.046549, 39.771839, 58.965714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137976, 40.102062, 59.172096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161306, -0.490548, 0.856355,
		0.960072, -0.278961, 0.021044,
		0.228566, 0.825557, 0.515959,
		30.206545, 40.349728, 59.326885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574266, 39.608807, 59.464050>,  <30.046549, 39.771839, 58.965714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574266, 39.608807, 59.464050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.398169, 39.936329, 59.611423>,  <30.292509, 40.132843, 59.699848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.398169, 39.936329, 59.611423>,  <30.574266, 39.608807, 59.464050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398169, 39.936329, 59.611423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157716, -0.474481, 0.866022,
		0.883917, 0.323153, 0.338026,
		-0.440245, 0.818804, 0.368435,
		30.266094, 40.181969, 59.721954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882948, 39.672375, 60.049858>,  <30.574266, 39.608807, 59.464050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882948, 39.672375, 60.049858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.560110, 39.902412, 60.103325>,  <30.366407, 40.040436, 60.135403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.560110, 39.902412, 60.103325>,  <30.882948, 39.672375, 60.049858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560110, 39.902412, 60.103325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225781, -0.509809, 0.830131,
		0.545544, 0.639817, 0.541310,
		-0.807096, 0.575091, 0.133665,
		30.317982, 40.074940, 60.143425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844650, 39.854565, 60.755333>,  <30.882948, 39.672375, 60.049858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844650, 39.854565, 60.755333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.469368, 39.915691, 60.631130>,  <30.244198, 39.952366, 60.556606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.469368, 39.915691, 60.631130>,  <30.844650, 39.854565, 60.755333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469368, 39.915691, 60.631130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345998, -0.433390, 0.832141,
		-0.007406, 0.888155, 0.459484,
		-0.938206, 0.152818, -0.310510,
		30.187906, 39.961536, 60.537975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444841, 40.272842, 61.349648>,  <30.844650, 39.854565, 60.755333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444841, 40.272842, 61.349648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.157167, 40.105381, 61.127834>,  <29.984564, 40.004902, 60.994747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.157167, 40.105381, 61.127834>,  <30.444841, 40.272842, 61.349648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157167, 40.105381, 61.127834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326445, -0.500928, 0.801564,
		-0.613358, 0.757495, 0.223591,
		-0.719184, -0.418656, -0.554528,
		29.941412, 39.979786, 60.961475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864389, 40.354488, 61.746506>,  <30.444841, 40.272842, 61.349648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864389, 40.354488, 61.746506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.742704, 40.063831, 61.500107>,  <29.669693, 39.889439, 61.352268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.742704, 40.063831, 61.500107>,  <29.864389, 40.354488, 61.746506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742704, 40.063831, 61.500107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542614, -0.399308, 0.739002,
		-0.782959, 0.559062, -0.272810,
		-0.304213, -0.726638, -0.615996,
		29.651442, 39.845840, 61.315308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163473, 40.331173, 61.881035>,  <29.864389, 40.354488, 61.746506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163473, 40.331173, 61.881035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.237278, 39.976986, 61.710438>,  <29.281561, 39.764473, 61.608078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.237278, 39.976986, 61.710438>,  <29.163473, 40.331173, 61.881035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237278, 39.976986, 61.710438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617701, -0.442006, 0.650444,
		-0.764462, 0.143431, -0.628511,
		0.184512, -0.885471, -0.426494,
		29.292631, 39.711346, 61.582489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592190, 40.032337, 62.060482>,  <29.163473, 40.331173, 61.881035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592190, 40.032337, 62.060482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.832914, 39.723942, 61.977154>,  <28.977348, 39.538906, 61.927155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.832914, 39.723942, 61.977154>,  <28.592190, 40.032337, 62.060482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832914, 39.723942, 61.977154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484649, -0.559889, 0.672041,
		-0.634776, -0.303477, -0.710607,
		0.601810, -0.770990, -0.208325,
		29.013458, 39.492645, 61.914658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125957, 39.423714, 61.769104>,  <28.592190, 40.032337, 62.060482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125957, 39.423714, 61.769104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.468845, 39.293770, 61.928921>,  <28.674578, 39.215801, 62.024811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.468845, 39.293770, 61.928921>,  <28.125957, 39.423714, 61.769104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468845, 39.293770, 61.928921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511463, -0.627252, 0.587333,
		0.059812, -0.707826, -0.703850,
		0.857221, -0.324864, 0.399544,
		28.726011, 39.196312, 62.048782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203182, 38.658215, 61.811863>,  <28.125957, 39.423714, 61.769104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203182, 38.658215, 61.811863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.473200, 38.761158, 62.088436>,  <28.635210, 38.822922, 62.254379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.473200, 38.761158, 62.088436>,  <28.203182, 38.658215, 61.811863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473200, 38.761158, 62.088436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337056, -0.726089, 0.599323,
		0.656283, -0.637622, -0.403399,
		0.675045, 0.257357, 0.691434,
		28.675713, 38.838364, 62.295868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614840, 38.621422, 62.177284>,  <28.203182, 38.658215, 61.811863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614840, 38.621422, 62.177284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.262535, 38.432030, 62.173809>,  <27.051153, 38.318394, 62.171722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.262535, 38.432030, 62.173809>,  <27.614840, 38.621422, 62.177284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262535, 38.432030, 62.173809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260242, -0.468608, -0.844204,
		0.395644, -0.745803, 0.535951,
		-0.880761, -0.473482, -0.008688,
		26.998306, 38.289986, 62.171204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861742, 37.945904, 61.974724>,  <27.614840, 38.621422, 62.177284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861742, 37.945904, 61.974724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.477520, 38.002644, 61.879047>,  <27.246986, 38.036690, 61.821640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.477520, 38.002644, 61.879047>,  <27.861742, 37.945904, 61.974724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477520, 38.002644, 61.879047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152634, -0.450052, -0.879862,
		-0.232456, -0.881664, 0.410649,
		-0.960556, 0.141851, -0.239189,
		27.189354, 38.045200, 61.807289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618174, 37.308323, 61.603355>,  <27.861742, 37.945904, 61.974724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618174, 37.308323, 61.603355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.383905, 37.618000, 61.507336>,  <27.243345, 37.803806, 61.449726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.383905, 37.618000, 61.507336>,  <27.618174, 37.308323, 61.603355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383905, 37.618000, 61.507336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104155, -0.221813, -0.969511,
		-0.803830, -0.592815, 0.049273,
		-0.585670, 0.774190, -0.240045,
		27.208204, 37.850258, 61.435322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012636, 37.060646, 61.163849>,  <27.618174, 37.308323, 61.603355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012636, 37.060646, 61.163849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.088140, 37.447853, 61.097748>,  <27.133444, 37.680176, 61.058086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.088140, 37.447853, 61.097748>,  <27.012636, 37.060646, 61.163849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088140, 37.447853, 61.097748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094729, -0.185443, -0.978078,
		-0.977443, 0.168970, -0.126704,
		0.188762, 0.968019, -0.165254,
		27.144770, 37.738258, 61.048172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846630, 37.115105, 60.535149>,  <27.012636, 37.060646, 61.163849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846630, 37.115105, 60.535149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.997519, 37.483265, 60.576286>,  <27.088051, 37.704159, 60.600967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.997519, 37.483265, 60.576286>,  <26.846630, 37.115105, 60.535149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.997519, 37.483265, 60.576286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287499, -0.010819, -0.957720,
		-0.880369, 0.390837, -0.268694,
		0.377220, 0.920396, 0.102841,
		27.110685, 37.759384, 60.607140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510714, 37.572895, 60.001392>,  <26.846630, 37.115105, 60.535149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510714, 37.572895, 60.001392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.863171, 37.737667, 60.094257>,  <27.074644, 37.836529, 60.149975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.863171, 37.737667, 60.094257>,  <26.510714, 37.572895, 60.001392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863171, 37.737667, 60.094257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177895, 0.166120, -0.969927,
		-0.438110, 0.895945, 0.073095,
		0.881143, 0.411932, 0.232163,
		27.127514, 37.861248, 60.163906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515766, 38.291672, 59.656776>,  <26.510714, 37.572895, 60.001392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515766, 38.291672, 59.656776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.889732, 38.168880, 59.727989>,  <27.114113, 38.095203, 59.770718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.889732, 38.168880, 59.727989>,  <26.515766, 38.291672, 59.656776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889732, 38.168880, 59.727989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203792, 0.053737, -0.977538,
		0.290518, 0.950198, 0.112800,
		0.934916, -0.306980, 0.178031,
		27.170208, 38.076786, 59.781399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825157, 38.702255, 59.267776>,  <26.515766, 38.291672, 59.656776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825157, 38.702255, 59.267776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.135162, 38.468670, 59.364395>,  <27.321165, 38.328518, 59.422367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.135162, 38.468670, 59.364395>,  <26.825157, 38.702255, 59.267776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135162, 38.468670, 59.364395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437459, 0.219923, -0.871931,
		0.456056, 0.781422, 0.425903,
		0.775012, -0.583964, 0.241542,
		27.367666, 38.293480, 59.436859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535076, 39.105419, 59.268692>,  <26.825157, 38.702255, 59.267776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535076, 39.105419, 59.268692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.587393, 38.711594, 59.222157>,  <27.618784, 38.475300, 59.194237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.587393, 38.711594, 59.222157>,  <27.535076, 39.105419, 59.268692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587393, 38.711594, 59.222157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420656, 0.161370, -0.892753,
		0.897742, 0.067828, 0.435268,
		0.130793, -0.984560, -0.116337,
		27.626631, 38.416225, 59.187256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176207, 39.085865, 59.147594>,  <27.535076, 39.105419, 59.268692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176207, 39.085865, 59.147594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.067232, 38.731659, 58.997055>,  <28.001848, 38.519135, 58.906731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.067232, 38.731659, 58.997055>,  <28.176207, 39.085865, 59.147594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067232, 38.731659, 58.997055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622543, 0.136012, -0.770676,
		0.733634, -0.444253, 0.514218,
		-0.272436, -0.885517, -0.376349,
		27.985502, 38.466003, 58.884151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777664, 38.857773, 58.835598>,  <28.176207, 39.085865, 59.147594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777664, 38.857773, 58.835598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.484350, 38.646767, 58.664009>,  <28.308361, 38.520161, 58.561054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.484350, 38.646767, 58.664009>,  <28.777664, 38.857773, 58.835598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484350, 38.646767, 58.664009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488987, 0.029216, -0.871802,
		0.472426, -0.849040, 0.236527,
		-0.733284, -0.527520, -0.428972,
		28.264364, 38.488510, 58.535316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160927, 38.267216, 58.572506>,  <28.777664, 38.857773, 58.835598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160927, 38.267216, 58.572506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.814850, 38.342686, 58.386669>,  <28.607204, 38.387966, 58.275166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.814850, 38.342686, 58.386669>,  <29.160927, 38.267216, 58.572506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814850, 38.342686, 58.386669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496023, 0.186212, -0.848108,
		-0.073502, -0.964224, -0.254694,
		-0.865193, 0.188671, -0.464590,
		28.555292, 38.399288, 58.247292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458403, 38.041134, 57.872265>,  <29.160927, 38.267216, 58.572506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458403, 38.041134, 57.872265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.106628, 38.229996, 57.848061>,  <28.895563, 38.343311, 57.833538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.106628, 38.229996, 57.848061>,  <29.458403, 38.041134, 57.872265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106628, 38.229996, 57.848061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248107, 0.346171, -0.904770,
		-0.406243, -0.810701, -0.421580,
		-0.879437, 0.472153, -0.060511,
		28.842796, 38.371643, 57.829906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196623, 37.799236, 57.272202>,  <29.458403, 38.041134, 57.872265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196623, 37.799236, 57.272202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.998901, 38.136349, 57.357414>,  <28.880268, 38.338615, 57.408543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.998901, 38.136349, 57.357414>,  <29.196623, 37.799236, 57.272202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998901, 38.136349, 57.357414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194611, 0.346134, -0.917779,
		-0.847224, -0.412205, -0.335111,
		-0.494306, 0.842780, 0.213033,
		28.850609, 38.389183, 57.421326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750269, 37.794495, 56.685123>,  <29.196623, 37.799236, 57.272202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750269, 37.794495, 56.685123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.785864, 38.158886, 56.846218>,  <28.807220, 38.377522, 56.942875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.785864, 38.158886, 56.846218>,  <28.750269, 37.794495, 56.685123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785864, 38.158886, 56.846218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189191, 0.381518, -0.904793,
		-0.977900, 0.156709, -0.138399,
		0.088988, 0.910981, 0.402734,
		28.812561, 38.432178, 56.967037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249306, 38.065865, 56.354202>,  <28.750269, 37.794495, 56.685123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249306, 38.065865, 56.354202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.502146, 38.340851, 56.497223>,  <28.653851, 38.505840, 56.583035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.502146, 38.340851, 56.497223>,  <28.249306, 38.065865, 56.354202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502146, 38.340851, 56.497223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141970, 0.350867, -0.925601,
		-0.761769, 0.635835, 0.124184,
		0.632101, 0.687464, 0.357549,
		28.691776, 38.547089, 56.604488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.159269, 38.690327, 55.913406>,  <28.249306, 38.065865, 56.354202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.159269, 38.690327, 55.913406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.517508, 38.783272, 56.065155>,  <28.732450, 38.839039, 56.156204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.517508, 38.783272, 56.065155>,  <28.159269, 38.690327, 55.913406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517508, 38.783272, 56.065155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306142, 0.296824, -0.904529,
		-0.322780, 0.926232, 0.194700,
		0.895595, 0.232358, 0.379367,
		28.786186, 38.852978, 56.178967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298012, 39.263386, 55.692722>,  <28.159269, 38.690327, 55.913406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298012, 39.263386, 55.692722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.668367, 39.151230, 55.793999>,  <28.890581, 39.083935, 55.854767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.668367, 39.151230, 55.793999>,  <28.298012, 39.263386, 55.692722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668367, 39.151230, 55.793999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313754, 0.197378, -0.928763,
		0.210445, 0.939373, 0.270725,
		0.925890, -0.280394, 0.253195,
		28.946135, 39.067112, 55.869957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717777, 39.679184, 55.345795>,  <28.298012, 39.263386, 55.692722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717777, 39.679184, 55.345795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.960775, 39.368332, 55.411533>,  <29.106575, 39.181820, 55.450977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.960775, 39.368332, 55.411533>,  <28.717777, 39.679184, 55.345795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960775, 39.368332, 55.411533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277510, 0.013786, -0.960624,
		0.744268, 0.629184, 0.224037,
		0.607498, -0.777134, 0.164345,
		29.143024, 39.135193, 55.460838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388292, 39.889248, 55.228115>,  <28.717777, 39.679184, 55.345795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388292, 39.889248, 55.228115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.401211, 39.493134, 55.174015>,  <29.408962, 39.255466, 55.141556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.401211, 39.493134, 55.174015>,  <29.388292, 39.889248, 55.228115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401211, 39.493134, 55.174015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445386, 0.135400, -0.885041,
		0.894756, -0.031653, 0.445432,
		0.032298, -0.990285, -0.135248,
		29.410900, 39.196049, 55.133442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113085, 39.665985, 55.027042>,  <29.388292, 39.889248, 55.228115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113085, 39.665985, 55.027042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.852533, 39.391552, 54.897430>,  <29.696203, 39.226891, 54.819664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.852533, 39.391552, 54.897430>,  <30.113085, 39.665985, 55.027042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852533, 39.391552, 54.897430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351621, 0.105475, -0.930182,
		0.672363, -0.719833, 0.172539,
		-0.651376, -0.686088, -0.324026,
		29.657120, 39.185726, 54.800224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513929, 39.182274, 54.655235>,  <30.113085, 39.665985, 55.027042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513929, 39.182274, 54.655235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.137808, 39.127041, 54.530807>,  <29.912136, 39.093903, 54.456150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.137808, 39.127041, 54.530807>,  <30.513929, 39.182274, 54.655235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137808, 39.127041, 54.530807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293772, 0.132194, -0.946690,
		0.171848, -0.981558, -0.083736,
		-0.940301, -0.138087, -0.311072,
		29.855717, 39.085617, 54.437485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664530, 38.773174, 54.126026>,  <30.513929, 39.182274, 54.655235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664530, 38.773174, 54.126026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.280989, 38.844257, 54.037460>,  <30.050865, 38.886909, 53.984322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.280989, 38.844257, 54.037460>,  <30.664530, 38.773174, 54.126026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280989, 38.844257, 54.037460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184411, -0.203124, -0.961631,
		-0.215880, -0.962889, 0.161990,
		-0.958847, 0.177724, -0.221418,
		29.993334, 38.897572, 53.971035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474903, 38.225555, 53.546268>,  <30.664530, 38.773174, 54.126026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474903, 38.225555, 53.546268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.233889, 38.544792, 53.545170>,  <30.089279, 38.736332, 53.544510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.233889, 38.544792, 53.545170>,  <30.474903, 38.225555, 53.546268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233889, 38.544792, 53.545170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004632, 0.000055, -0.999989,
		-0.798079, -0.602542, -0.003730,
		-0.602535, 0.798087, -0.002747,
		30.053127, 38.784218, 53.544346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105354, 38.078022, 52.935673>,  <30.474903, 38.225555, 53.546268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105354, 38.078022, 52.935673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.046165, 38.469147, 52.994976>,  <30.010653, 38.703823, 53.030556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.046165, 38.469147, 52.994976>,  <30.105354, 38.078022, 52.935673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046165, 38.469147, 52.994976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041598, 0.143620, -0.988758,
		-0.988116, -0.152478, 0.019423,
		-0.147974, 0.977816, 0.148256,
		30.001774, 38.762493, 53.039452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458975, 38.215088, 52.525093>,  <30.105354, 38.078022, 52.935673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458975, 38.215088, 52.525093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.697271, 38.531822, 52.578903>,  <29.840248, 38.721863, 52.611187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.697271, 38.531822, 52.578903>,  <29.458975, 38.215088, 52.525093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697271, 38.531822, 52.578903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035988, 0.193636, -0.980413,
		-0.802371, 0.579230, 0.143853,
		0.595740, 0.791832, 0.134523,
		29.875994, 38.769371, 52.619259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187355, 38.764729, 52.123245>,  <29.458975, 38.215088, 52.525093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187355, 38.764729, 52.123245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.562984, 38.891171, 52.177235>,  <29.788363, 38.967037, 52.209629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.562984, 38.891171, 52.177235>,  <29.187355, 38.764729, 52.123245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562984, 38.891171, 52.177235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081195, 0.177562, -0.980754,
		-0.333986, 0.931960, 0.141077,
		0.939074, 0.316103, 0.134974,
		29.844707, 38.986000, 52.217728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297396, 39.171459, 51.582172>,  <29.187355, 38.764729, 52.123245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297396, 39.171459, 51.582172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.670820, 39.125519, 51.717979>,  <29.894875, 39.097954, 51.799465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.670820, 39.125519, 51.717979>,  <29.297396, 39.171459, 51.582172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670820, 39.125519, 51.717979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352098, 0.116733, -0.928655,
		0.067024, 0.986500, 0.149416,
		0.933560, -0.114851, 0.339520,
		29.950888, 39.091064, 51.819836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759672, 39.725334, 51.254700>,  <29.297396, 39.171459, 51.582172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759672, 39.725334, 51.254700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.971262, 39.403728, 51.363327>,  <30.098215, 39.210766, 51.428505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.971262, 39.403728, 51.363327>,  <29.759672, 39.725334, 51.254700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971262, 39.403728, 51.363327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273785, -0.141216, -0.951367,
		0.803262, 0.577600, 0.145427,
		0.528973, -0.804013, 0.271572,
		30.129953, 39.162525, 51.444798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397556, 39.671391, 50.741909>,  <29.759672, 39.725334, 51.254700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397556, 39.671391, 50.741909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.353539, 39.310879, 50.909519>,  <30.327127, 39.094570, 51.010086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.353539, 39.310879, 50.909519>,  <30.397556, 39.671391, 50.741909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353539, 39.310879, 50.909519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352366, -0.429578, -0.831445,
		0.929370, 0.056155, 0.364853,
		-0.110043, -0.901282, 0.419024,
		30.320526, 39.040493, 51.035225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963840, 39.371582, 50.463898>,  <30.397556, 39.671391, 50.741909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963840, 39.371582, 50.463898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.719631, 39.074024, 50.572624>,  <30.573107, 38.895489, 50.637859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.719631, 39.074024, 50.572624>,  <30.963840, 39.371582, 50.463898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719631, 39.074024, 50.572624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273386, -0.520051, -0.809201,
		0.743319, -0.419723, 0.520873,
		-0.610521, -0.743895, 0.271817,
		30.536474, 38.850857, 50.654171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306665, 38.700787, 50.280262>,  <30.963840, 39.371582, 50.463898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306665, 38.700787, 50.280262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.932474, 38.577297, 50.349049>,  <30.707960, 38.503204, 50.390320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.932474, 38.577297, 50.349049>,  <31.306665, 38.700787, 50.280262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932474, 38.577297, 50.349049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097715, -0.693625, -0.713678,
		0.339606, -0.650826, 0.679038,
		-0.935478, -0.308721, 0.171964,
		30.651831, 38.484680, 50.400639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324242, 38.000572, 50.521263>,  <31.306665, 38.700787, 50.280262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324242, 38.000572, 50.521263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.977110, 38.083172, 50.340496>,  <30.768831, 38.132732, 50.232037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.977110, 38.083172, 50.340496>,  <31.324242, 38.000572, 50.521263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977110, 38.083172, 50.340496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193530, -0.697221, -0.690238,
		-0.457622, -0.686468, 0.565105,
		-0.867830, 0.206503, -0.451916,
		30.716761, 38.145123, 50.204922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112499, 37.360226, 50.330402>,  <31.324242, 38.000572, 50.521263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112499, 37.360226, 50.330402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.872824, 37.602219, 50.120651>,  <30.729017, 37.747414, 49.994801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.872824, 37.602219, 50.120651>,  <31.112499, 37.360226, 50.330402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872824, 37.602219, 50.120651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027921, -0.670364, -0.741507,
		-0.800121, -0.429662, 0.418567,
		-0.599189, 0.604982, -0.524375,
		30.693068, 37.783714, 49.963337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495920, 36.953663, 50.209064>,  <31.112499, 37.360226, 50.330402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495920, 36.953663, 50.209064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.519106, 37.241650, 49.932430>,  <30.533018, 37.414440, 49.766449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.519106, 37.241650, 49.932430>,  <30.495920, 36.953663, 50.209064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519106, 37.241650, 49.932430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053372, -0.689523, -0.722295,
		-0.996891, 0.078780, -0.001543,
		0.057967, 0.719967, -0.691583,
		30.536495, 37.457642, 49.724957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957771, 36.821434, 49.793034>,  <30.495920, 36.953663, 50.209064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957771, 36.821434, 49.793034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.193027, 37.048492, 49.562599>,  <30.334181, 37.184727, 49.424339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.193027, 37.048492, 49.562599>,  <29.957771, 36.821434, 49.793034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193027, 37.048492, 49.562599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128188, -0.637874, -0.759398,
		-0.798536, 0.520479, -0.302393,
		0.588139, 0.567644, -0.576084,
		30.369469, 37.218784, 49.389774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753130, 36.751934, 49.094021>,  <29.957771, 36.821434, 49.793034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753130, 36.751934, 49.094021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.115520, 36.897358, 49.007275>,  <30.332954, 36.984612, 48.955227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.115520, 36.897358, 49.007275>,  <29.753130, 36.751934, 49.094021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115520, 36.897358, 49.007275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048213, -0.597578, -0.800360,
		-0.420572, 0.714652, -0.558919,
		0.905977, 0.363556, -0.216869,
		30.387314, 37.006424, 48.942215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775297, 36.795986, 48.402237>,  <29.753130, 36.751934, 49.094021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775297, 36.795986, 48.402237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.164520, 36.806778, 48.493828>,  <30.398054, 36.813251, 48.548782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.164520, 36.806778, 48.493828>,  <29.775297, 36.795986, 48.402237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164520, 36.806778, 48.493828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198640, -0.602295, -0.773164,
		0.117054, 0.797818, -0.591426,
		0.973057, 0.026979, 0.228979,
		30.456438, 36.814873, 48.562523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059538, 36.889023, 47.744785>,  <29.775297, 36.795986, 48.402237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059538, 36.889023, 47.744785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.333759, 36.738514, 47.994083>,  <30.498291, 36.648209, 48.143661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.333759, 36.738514, 47.994083>,  <30.059538, 36.889023, 47.744785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333759, 36.738514, 47.994083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343103, -0.588064, -0.732435,
		0.642105, 0.715960, -0.274048,
		0.685552, -0.376273, 0.623247,
		30.539425, 36.625633, 48.181057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662109, 36.923744, 47.382793>,  <30.059538, 36.889023, 47.744785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662109, 36.923744, 47.382793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.700251, 36.622356, 47.643005>,  <30.723135, 36.441525, 47.799133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.700251, 36.622356, 47.643005>,  <30.662109, 36.923744, 47.382793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700251, 36.622356, 47.643005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430495, -0.558022, -0.709427,
		0.897542, 0.347696, 0.271156,
		0.095354, -0.753471, 0.650529,
		30.728857, 36.396317, 47.838165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340376, 36.674122, 47.479481>,  <30.662109, 36.923744, 47.382793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340376, 36.674122, 47.479481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.096594, 36.365429, 47.552128>,  <30.950325, 36.180214, 47.595718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.096594, 36.365429, 47.552128>,  <31.340376, 36.674122, 47.479481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096594, 36.365429, 47.552128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523509, -0.563769, -0.638830,
		0.595400, -0.294260, 0.747603,
		-0.609457, -0.771736, 0.181620,
		30.913757, 36.133907, 47.606613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813461, 36.083504, 47.540325>,  <31.340376, 36.674122, 47.479481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813461, 36.083504, 47.540325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.450676, 35.933380, 47.463844>,  <31.233004, 35.843307, 47.417953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.450676, 35.933380, 47.463844>,  <31.813461, 36.083504, 47.540325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450676, 35.933380, 47.463844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388124, -0.568319, -0.725516,
		0.163626, -0.732229, 0.661111,
		-0.906965, -0.375307, -0.191204,
		31.178587, 35.820789, 47.406483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800350, 35.343063, 47.672173>,  <31.813461, 36.083504, 47.540325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800350, 35.343063, 47.672173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.562883, 35.470604, 47.376633>,  <31.420404, 35.547127, 47.199310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.562883, 35.470604, 47.376633>,  <31.800350, 35.343063, 47.672173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562883, 35.470604, 47.376633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464891, -0.613539, -0.638315,
		-0.656841, -0.722428, 0.216003,
		-0.593663, 0.318854, -0.738848,
		31.384783, 35.566257, 47.154980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405109, 35.189823, 47.131542>,  <31.800350, 35.343063, 47.672173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405109, 35.189823, 47.131542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.468021, 34.806149, 47.225548>,  <32.505768, 34.575943, 47.281952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.468021, 34.806149, 47.225548>,  <32.405109, 35.189823, 47.131542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468021, 34.806149, 47.225548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954484, 0.208718, 0.213067,
		-0.253421, 0.190805, 0.948352,
		0.157284, -0.959182, 0.235014,
		32.515205, 34.518394, 47.296051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556000, 35.028172, 47.984737>,  <32.405109, 35.189823, 47.131542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556000, 35.028172, 47.984737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.734459, 34.786098, 47.721008>,  <32.841534, 34.640854, 47.562771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.734459, 34.786098, 47.721008>,  <32.556000, 35.028172, 47.984737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734459, 34.786098, 47.721008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886749, 0.199365, 0.417049,
		-0.120946, -0.770717, 0.625594,
		0.446148, -0.605185, -0.659320,
		32.868301, 34.604542, 47.523212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008083, 34.428421, 48.269798>,  <32.556000, 35.028172, 47.984737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008083, 34.428421, 48.269798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144100, 34.564461, 47.919094>,  <33.225712, 34.646084, 47.708672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144100, 34.564461, 47.919094>,  <33.008083, 34.428421, 48.269798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144100, 34.564461, 47.919094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823391, 0.342728, 0.452288,
		0.454311, -0.875712, -0.163490,
		0.340041, 0.340096, -0.876759,
		33.246113, 34.666489, 47.656067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687687, 34.049156, 47.899113>,  <33.008083, 34.428421, 48.269798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687687, 34.049156, 47.899113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.634132, 34.439812, 47.831886>,  <33.602001, 34.674206, 47.791550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.634132, 34.439812, 47.831886>,  <33.687687, 34.049156, 47.899113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634132, 34.439812, 47.831886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938539, 0.179410, 0.294885,
		0.318150, -0.118257, -0.940636,
		-0.133887, 0.976641, -0.168068,
		33.593967, 34.732803, 47.781467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175488, 34.321060, 47.307217>,  <33.687687, 34.049156, 47.899113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175488, 34.321060, 47.307217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087952, 34.606178, 47.573757>,  <34.035431, 34.777248, 47.733681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087952, 34.606178, 47.573757>,  <34.175488, 34.321060, 47.307217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087952, 34.606178, 47.573757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973437, 0.112373, 0.199482,
		0.067310, 0.692308, -0.718456,
		-0.218838, 0.712798, 0.666355,
		34.022301, 34.820019, 47.773663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674919, 34.880733, 47.164536>,  <34.175488, 34.321060, 47.307217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674919, 34.880733, 47.164536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.553238, 34.894299, 47.545338>,  <34.480228, 34.902439, 47.773819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.553238, 34.894299, 47.545338>,  <34.674919, 34.880733, 47.164536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553238, 34.894299, 47.545338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950078, 0.083567, 0.300613,
		-0.069360, 0.995925, -0.057645,
		-0.304205, 0.033917, 0.952003,
		34.461975, 34.904472, 47.830940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959156, 35.470146, 47.394634>,  <34.674919, 34.880733, 47.164536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959156, 35.470146, 47.394634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.906288, 35.254665, 47.727459>,  <34.874569, 35.125378, 47.927155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.906288, 35.254665, 47.727459>,  <34.959156, 35.470146, 47.394634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906288, 35.254665, 47.727459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916446, 0.253450, 0.309662,
		-0.377703, 0.803469, 0.460194,
		-0.132167, -0.538703, 0.832064,
		34.866638, 35.093056, 47.977077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299755, 35.821175, 47.908447>,  <34.959156, 35.470146, 47.394634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299755, 35.821175, 47.908447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.255074, 35.446854, 48.042191>,  <35.228264, 35.222260, 48.122437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.255074, 35.446854, 48.042191>,  <35.299755, 35.821175, 47.908447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255074, 35.446854, 48.042191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928625, 0.021497, 0.370396,
		-0.353805, 0.351871, 0.866608,
		-0.111702, -0.935801, 0.334362,
		35.221561, 35.166115, 48.142498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644810, 35.846382, 48.512421>,  <35.299755, 35.821175, 47.908447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644810, 35.846382, 48.512421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596329, 35.457504, 48.432270>,  <35.567242, 35.224178, 48.384182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596329, 35.457504, 48.432270>,  <35.644810, 35.846382, 48.512421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596329, 35.457504, 48.432270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899854, -0.192822, 0.391256,
		-0.419013, -0.132888, 0.898203,
		-0.121200, -0.972194, -0.200375,
		35.559967, 35.165848, 48.372158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810207, 35.462090, 49.098434>,  <35.644810, 35.846382, 48.512421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810207, 35.462090, 49.098434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848736, 35.192616, 48.805351>,  <35.871853, 35.030930, 48.629501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848736, 35.192616, 48.805351>,  <35.810207, 35.462090, 49.098434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848736, 35.192616, 48.805351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811164, -0.373482, 0.450026,
		-0.576832, -0.637696, 0.510498,
		0.096317, -0.673688, -0.732713,
		35.877632, 34.990509, 48.585537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113403, 34.959587, 49.529919>,  <35.810207, 35.462090, 49.098434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113403, 34.959587, 49.529919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.164452, 34.835682, 49.153034>,  <36.195080, 34.761341, 48.926903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.164452, 34.835682, 49.153034>,  <36.113403, 34.959587, 49.529919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164452, 34.835682, 49.153034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834774, -0.479456, 0.270691,
		-0.535598, -0.821079, 0.197393,
		0.127617, -0.309760, -0.942212,
		36.202736, 34.742752, 48.870369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134697, 34.171108, 49.598228>,  <36.113403, 34.959587, 49.529919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134697, 34.171108, 49.598228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.323128, 34.325653, 49.281036>,  <36.436188, 34.418381, 49.090721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.323128, 34.325653, 49.281036>,  <36.134697, 34.171108, 49.598228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323128, 34.325653, 49.281036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837763, -0.477362, 0.265100,
		-0.276113, -0.789210, -0.548552,
		0.471078, 0.386360, -0.792977,
		36.464451, 34.441563, 49.043144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624752, 33.645962, 49.237179>,  <36.134697, 34.171108, 49.598228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624752, 33.645962, 49.237179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.764271, 33.989498, 49.087124>,  <36.847984, 34.195621, 48.997089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.764271, 33.989498, 49.087124>,  <36.624752, 33.645962, 49.237179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764271, 33.989498, 49.087124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936311, -0.301938, 0.179318,
		0.040736, -0.413794, -0.909458,
		0.348801, 0.858841, -0.375141,
		36.868912, 34.247150, 48.974583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170483, 33.467613, 48.714386>,  <36.624752, 33.645962, 49.237179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170483, 33.467613, 48.714386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.226357, 33.847801, 48.825447>,  <37.259880, 34.075916, 48.892082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.226357, 33.847801, 48.825447>,  <37.170483, 33.467613, 48.714386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226357, 33.847801, 48.825447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955659, -0.202817, 0.213499,
		0.259237, 0.235515, -0.936658,
		0.139688, 0.950472, 0.277650,
		37.268265, 34.132942, 48.908741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843819, 33.500221, 48.584347>,  <37.170483, 33.467613, 48.714386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843819, 33.500221, 48.584347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746380, 33.804497, 48.825020>,  <37.687916, 33.987061, 48.969421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746380, 33.804497, 48.825020>,  <37.843819, 33.500221, 48.584347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746380, 33.804497, 48.825020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829603, -0.157937, 0.535550,
		0.502412, 0.629615, -0.592593,
		-0.243598, 0.760684, 0.601680,
		37.673302, 34.032703, 49.005524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521221, 33.180908, 48.638115>,  <37.843819, 33.500221, 48.584347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521221, 33.180908, 48.638115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.754383, 32.915146, 48.451015>,  <38.894279, 32.755688, 48.338757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.754383, 32.915146, 48.451015>,  <38.521221, 33.180908, 48.638115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754383, 32.915146, 48.451015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452096, -0.743523, 0.492729,
		-0.675156, -0.075744, -0.733776,
		0.582901, -0.664406, -0.467751,
		38.929253, 32.715824, 48.310692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342335, 32.472191, 48.407276>,  <38.521221, 33.180908, 48.638115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342335, 32.472191, 48.407276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.403259, 32.316502, 48.043888>,  <38.439812, 32.223087, 47.825855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.403259, 32.316502, 48.043888>,  <38.342335, 32.472191, 48.407276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403259, 32.316502, 48.043888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068076, -0.912876, 0.402521,
		-0.985986, -0.123152, -0.112542,
		0.152308, -0.389219, -0.908466,
		38.448952, 32.199738, 47.771347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691151, 32.167343, 48.654480>,  <38.342335, 32.472191, 48.407276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691151, 32.167343, 48.654480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462265, 31.922562, 48.436089>,  <37.324936, 31.775692, 48.305054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462265, 31.922562, 48.436089>,  <37.691151, 32.167343, 48.654480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462265, 31.922562, 48.436089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652904, 0.062938, -0.754821,
		0.496278, -0.788385, 0.363534,
		-0.572210, -0.611954, -0.545975,
		37.290604, 31.738976, 48.272297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085464, 31.611189, 48.256779>,  <37.691151, 32.167343, 48.654480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085464, 31.611189, 48.256779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.770527, 31.724106, 48.037540>,  <37.581566, 31.791855, 47.905998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.770527, 31.724106, 48.037540>,  <38.085464, 31.611189, 48.256779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770527, 31.724106, 48.037540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610744, 0.235768, -0.755913,
		-0.084165, -0.929906, -0.358037,
		-0.787342, 0.282291, -0.548092,
		37.534325, 31.808792, 47.873112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129677, 31.347807, 47.569759>,  <38.085464, 31.611189, 48.256779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129677, 31.347807, 47.569759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.851658, 31.628994, 47.509434>,  <37.684845, 31.797707, 47.473240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.851658, 31.628994, 47.509434>,  <38.129677, 31.347807, 47.569759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851658, 31.628994, 47.509434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462182, 0.276193, -0.842678,
		-0.550720, -0.655406, -0.516866,
		-0.695051, 0.702966, -0.150812,
		37.643143, 31.839884, 47.464191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961433, 31.339031, 46.808060>,  <38.129677, 31.347807, 47.569759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961433, 31.339031, 46.808060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872993, 31.692213, 46.973713>,  <37.819931, 31.904121, 47.073105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872993, 31.692213, 46.973713>,  <37.961433, 31.339031, 46.808060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872993, 31.692213, 46.973713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282121, 0.464394, -0.839491,
		-0.933554, -0.068775, -0.351777,
		-0.221099, 0.882954, 0.414134,
		37.806664, 31.957100, 47.097954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564156, 31.826191, 46.403721>,  <37.961433, 31.339031, 46.808060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564156, 31.826191, 46.403721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.820183, 32.030334, 46.633450>,  <37.973801, 32.152821, 46.771286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.820183, 32.030334, 46.633450>,  <37.564156, 31.826191, 46.403721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820183, 32.030334, 46.633450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364538, 0.456284, -0.811737,
		-0.676331, 0.728929, 0.106007,
		0.640069, 0.510360, 0.574321,
		38.012203, 32.183441, 46.805744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541943, 32.558960, 46.202461>,  <37.564156, 31.826191, 46.403721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541943, 32.558960, 46.202461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.909710, 32.437309, 46.302197>,  <38.130371, 32.364319, 46.362038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.909710, 32.437309, 46.302197>,  <37.541943, 32.558960, 46.202461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909710, 32.437309, 46.302197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379477, 0.519604, -0.765512,
		0.103254, 0.798448, 0.593144,
		0.919421, -0.304126, 0.249342,
		38.185535, 32.346073, 46.376999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948257, 33.166004, 46.346348>,  <37.541943, 32.558960, 46.202461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948257, 33.166004, 46.346348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.196079, 32.868156, 46.247002>,  <38.344772, 32.689445, 46.187393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.196079, 32.868156, 46.247002>,  <37.948257, 33.166004, 46.346348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196079, 32.868156, 46.247002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438911, 0.590953, -0.676855,
		0.650773, 0.310341, 0.692953,
		0.619558, -0.744623, -0.248364,
		38.381947, 32.644768, 46.172493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716724, 33.475231, 46.307472>,  <37.948257, 33.166004, 46.346348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716724, 33.475231, 46.307472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.679153, 33.135689, 46.099384>,  <38.656609, 32.931965, 45.974533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.679153, 33.135689, 46.099384>,  <38.716724, 33.475231, 46.307472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679153, 33.135689, 46.099384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318152, 0.469537, -0.823598,
		0.943375, -0.242869, 0.225961,
		-0.093930, -0.848852, -0.520218,
		38.650974, 32.881035, 45.943317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371304, 33.358284, 46.083553>,  <38.716724, 33.475231, 46.307472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371304, 33.358284, 46.083553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.113941, 33.176102, 45.837437>,  <38.959526, 33.066792, 45.689766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.113941, 33.176102, 45.837437>,  <39.371304, 33.358284, 46.083553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113941, 33.176102, 45.837437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498243, 0.361069, -0.788278,
		0.581193, -0.813748, -0.005383,
		-0.643404, -0.455460, -0.615295,
		38.920921, 33.039463, 45.652847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602142, 32.738094, 45.638092>,  <39.371304, 33.358284, 46.083553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602142, 32.738094, 45.638092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300186, 32.935055, 45.464802>,  <39.119015, 33.053230, 45.360828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300186, 32.935055, 45.464802>,  <39.602142, 32.738094, 45.638092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300186, 32.935055, 45.464802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652317, 0.495176, -0.573832,
		-0.068036, -0.715777, -0.695006,
		-0.754887, 0.492406, -0.433224,
		39.073719, 33.082775, 45.334835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527569, 32.712624, 44.873528>,  <39.602142, 32.738094, 45.638092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527569, 32.712624, 44.873528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398510, 33.062881, 45.017273>,  <39.321075, 33.273037, 45.103519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398510, 33.062881, 45.017273>,  <39.527569, 32.712624, 44.873528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398510, 33.062881, 45.017273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608472, 0.482701, -0.629890,
		-0.725026, 0.015431, -0.688548,
		-0.322643, 0.875649, 0.359361,
		39.301716, 33.325577, 45.125080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389645, 33.256931, 44.418705>,  <39.527569, 32.712624, 44.873528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389645, 33.256931, 44.418705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.469505, 33.498783, 44.727139>,  <39.517422, 33.643894, 44.912197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.469505, 33.498783, 44.727139>,  <39.389645, 33.256931, 44.418705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469505, 33.498783, 44.727139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526584, 0.597427, -0.604806,
		-0.826347, 0.526788, -0.199110,
		0.199651, 0.604628, 0.771080,
		39.529400, 33.680172, 44.958462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157291, 33.975903, 44.310818>,  <39.389645, 33.256931, 44.418705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157291, 33.975903, 44.310818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.485935, 33.959381, 44.538239>,  <39.683121, 33.949471, 44.674690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.485935, 33.959381, 44.538239>,  <39.157291, 33.975903, 44.310818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485935, 33.959381, 44.538239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510802, 0.496089, -0.702123,
		-0.253055, 0.867289, 0.428688,
		0.821611, -0.041299, 0.568551,
		39.732418, 33.946991, 44.708805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447990, 34.612129, 44.217842>,  <39.157291, 33.975903, 44.310818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447990, 34.612129, 44.217842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.745087, 34.361301, 44.311752>,  <39.923344, 34.210804, 44.368099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.745087, 34.361301, 44.311752>,  <39.447990, 34.612129, 44.217842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745087, 34.361301, 44.311752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625055, 0.523615, -0.578908,
		0.240081, 0.576728, 0.780862,
		0.742743, -0.627067, 0.234777,
		39.967911, 34.173180, 44.382187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491425, 35.252441, 44.061768>,  <39.447990, 34.612129, 44.217842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491425, 35.252441, 44.061768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.408295, 35.306351, 43.674232>,  <39.358418, 35.338696, 43.441711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.408295, 35.306351, 43.674232>,  <39.491425, 35.252441, 44.061768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408295, 35.306351, 43.674232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537674, 0.843151, 0.001952,
		0.817139, -0.520513, -0.247689,
		-0.207823, 0.134771, -0.968838,
		39.345947, 35.346783, 43.383583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146976, 35.342236, 43.660439>,  <39.491425, 35.252441, 44.061768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146976, 35.342236, 43.660439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.818916, 35.530190, 43.529869>,  <39.622078, 35.642963, 43.451527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.818916, 35.530190, 43.529869>,  <40.146976, 35.342236, 43.660439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818916, 35.530190, 43.529869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386267, 0.875627, 0.289957,
		0.422074, 0.111721, -0.899651,
		-0.820153, 0.469889, -0.326425,
		39.572872, 35.671158, 43.431942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179836, 35.867447, 43.090343>,  <40.146976, 35.342236, 43.660439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179836, 35.867447, 43.090343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.911861, 35.944183, 43.377224>,  <39.751076, 35.990227, 43.549355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.911861, 35.944183, 43.377224>,  <40.179836, 35.867447, 43.090343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911861, 35.944183, 43.377224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489433, 0.840517, 0.232350,
		-0.558247, 0.506683, -0.656987,
		-0.669936, 0.191843, 0.717204,
		39.710880, 36.001736, 43.592384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822208, 35.531338, 42.714050>,  <40.179836, 35.867447, 43.090343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822208, 35.531338, 42.714050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.902088, 35.921204, 42.754356>,  <40.950016, 36.155121, 42.778542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.902088, 35.921204, 42.754356>,  <40.822208, 35.531338, 42.714050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902088, 35.921204, 42.754356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517327, 0.017536, 0.855608,
		0.832162, -0.222991, 0.507721,
		0.199696, 0.974663, 0.100767,
		40.961998, 36.213604, 42.784588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826298, 35.660213, 41.920742>,  <40.822208, 35.531338, 42.714050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826298, 35.660213, 41.920742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.191505, 35.816944, 41.875374>,  <41.410629, 35.910984, 41.848152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.191505, 35.816944, 41.875374>,  <40.826298, 35.660213, 41.920742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191505, 35.816944, 41.875374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397213, -0.790739, 0.465784,
		0.092824, -0.470321, -0.877600,
		0.913020, 0.391830, -0.113417,
		41.465412, 35.934494, 41.841347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378994, 35.193459, 41.612530>,  <40.826298, 35.660213, 41.920742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378994, 35.193459, 41.612530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.599525, 35.445190, 41.831612>,  <41.731846, 35.596230, 41.963058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.599525, 35.445190, 41.831612>,  <41.378994, 35.193459, 41.612530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599525, 35.445190, 41.831612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349891, -0.770387, 0.532992,
		0.757369, -0.102220, -0.644936,
		0.551333, 0.629329, 0.547701,
		41.764927, 35.633987, 41.995922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098965, 35.017117, 41.567177>,  <41.378994, 35.193459, 41.612530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098965, 35.017117, 41.567177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.048534, 35.195114, 41.921822>,  <42.018276, 35.301910, 42.134609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.048534, 35.195114, 41.921822>,  <42.098965, 35.017117, 41.567177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048534, 35.195114, 41.921822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466196, -0.762329, 0.448904,
		0.875652, 0.469933, -0.111341,
		-0.126076, 0.444991, 0.886616,
		42.010712, 35.328613, 42.187805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748432, 35.083549, 41.929916>,  <42.098965, 35.017117, 41.567177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748432, 35.083549, 41.929916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.442230, 35.072975, 42.187073>,  <42.258511, 35.066631, 42.341366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.442230, 35.072975, 42.187073>,  <42.748432, 35.083549, 41.929916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442230, 35.072975, 42.187073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481397, -0.686475, 0.544986,
		0.426919, 0.726673, 0.538225,
		-0.765505, -0.026435, 0.642887,
		42.212578, 35.065044, 42.379940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042545, 35.331650, 41.252209>,  <42.748432, 35.083549, 41.929916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042545, 35.331650, 41.252209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.106037, 35.720459, 41.321461>,  <43.144135, 35.953743, 41.363010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.106037, 35.720459, 41.321461>,  <43.042545, 35.331650, 41.252209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106037, 35.720459, 41.321461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910574, -0.211909, 0.354893,
		0.381652, 0.101315, -0.918737,
		0.158732, 0.972023, 0.173131,
		43.153656, 36.012066, 41.373402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616772, 35.870667, 40.823692>,  <43.042545, 35.331650, 41.252209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616772, 35.870667, 40.823692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.545460, 35.888016, 41.216904>,  <43.502674, 35.898426, 41.452831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.545460, 35.888016, 41.216904>,  <43.616772, 35.870667, 40.823692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545460, 35.888016, 41.216904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845536, -0.504219, 0.175591,
		0.503275, 0.862486, 0.053221,
		-0.178279, 0.043370, 0.983024,
		43.491978, 35.901028, 41.511810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971558, 35.353088, 41.183395>,  <43.616772, 35.870667, 40.823692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971558, 35.353088, 41.183395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.920059, 34.956783, 41.166382>,  <43.889160, 34.718998, 41.156174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.920059, 34.956783, 41.166382>,  <43.971558, 35.353088, 41.183395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920059, 34.956783, 41.166382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184083, 0.018266, -0.982741,
		0.974443, -0.134353, 0.180031,
		-0.128746, -0.990765, -0.042531,
		43.881435, 34.659554, 41.153622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546730, 35.038013, 40.878025>,  <43.971558, 35.353088, 41.183395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546730, 35.038013, 40.878025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.197506, 34.867481, 40.783367>,  <43.987972, 34.765160, 40.726574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.197506, 34.867481, 40.783367>,  <44.546730, 35.038013, 40.878025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197506, 34.867481, 40.783367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165114, 0.198160, -0.966163,
		0.458803, -0.882593, -0.102612,
		-0.873062, -0.426336, -0.236645,
		43.935589, 34.739582, 40.712376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621700, 34.556686, 40.222584>,  <44.546730, 35.038013, 40.878025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621700, 34.556686, 40.222584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.228832, 34.627560, 40.247692>,  <43.993111, 34.670082, 40.262756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.228832, 34.627560, 40.247692>,  <44.621700, 34.556686, 40.222584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228832, 34.627560, 40.247692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073377, -0.053965, -0.995843,
		-0.173059, -0.982697, 0.066004,
		-0.982174, 0.177183, 0.062769,
		43.934181, 34.680714, 40.266521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278858, 34.169727, 39.659248>,  <44.621700, 34.556686, 40.222584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278858, 34.169727, 39.659248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.082520, 34.501953, 39.764500>,  <43.964718, 34.701290, 39.827652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.082520, 34.501953, 39.764500>,  <44.278858, 34.169727, 39.659248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082520, 34.501953, 39.764500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056247, 0.271174, -0.960885,
		-0.869430, -0.486444, -0.086387,
		-0.490843, 0.830564, 0.263128,
		43.935268, 34.751122, 39.843437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134495, 34.746971, 39.134609>,  <44.278858, 34.169727, 39.659248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134495, 34.746971, 39.134609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.245163, 34.434517, 38.910725>,  <44.311565, 34.247044, 38.776394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.245163, 34.434517, 38.910725>,  <44.134495, 34.746971, 39.134609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245163, 34.434517, 38.910725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069874, 0.564549, -0.822437,
		0.958420, 0.266656, 0.101614,
		0.276674, -0.781140, -0.559708,
		44.328167, 34.200176, 38.742813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707172, 34.915329, 38.689987>,  <44.134495, 34.746971, 39.134609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707172, 34.915329, 38.689987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.502029, 34.614220, 38.524914>,  <44.378944, 34.433552, 38.425869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.502029, 34.614220, 38.524914>,  <44.707172, 34.915329, 38.689987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502029, 34.614220, 38.524914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096172, 0.528072, -0.843737,
		0.853073, -0.393024, -0.343219,
		-0.512853, -0.752777, -0.412685,
		44.348175, 34.388386, 38.401108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866035, 34.768829, 37.993340>,  <44.707172, 34.915329, 38.689987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866035, 34.768829, 37.993340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.478039, 34.695827, 38.057606>,  <44.245243, 34.652027, 38.096165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.478039, 34.695827, 38.057606>,  <44.866035, 34.768829, 37.993340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478039, 34.695827, 38.057606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225112, 0.424314, -0.877087,
		0.091903, -0.886932, -0.452665,
		-0.969989, -0.182507, 0.160663,
		44.187042, 34.641075, 38.105804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.973518, 34.063587, 37.938389>,  <44.866035, 34.768829, 37.993340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.973518, 34.063587, 37.938389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.338398, 33.903824, 37.974987>,  <45.557323, 33.807964, 37.996944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.338398, 33.903824, 37.974987>,  <44.973518, 34.063587, 37.938389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.338398, 33.903824, 37.974987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251226, -0.721553, -0.645172,
		0.323706, 0.565537, -0.758540,
		0.912195, -0.399411, 0.091493,
		45.612057, 33.784000, 38.002434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.435833, 34.009235, 37.294250>,  <44.973518, 34.063587, 37.938389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.435833, 34.009235, 37.294250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.502876, 33.709614, 37.550632>,  <45.543102, 33.529842, 37.704464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.502876, 33.709614, 37.550632>,  <45.435833, 34.009235, 37.294250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502876, 33.709614, 37.550632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086085, -0.658792, -0.747384,
		0.982088, 0.070091, -0.174902,
		0.167609, -0.749053, 0.640958,
		45.553158, 33.484898, 37.742920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.140678, 34.744072, 37.190041>,  <45.435833, 34.009235, 37.294250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.140678, 34.744072, 37.190041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.528744, 34.647324, 37.183247>,  <45.761581, 34.589275, 37.179169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.528744, 34.647324, 37.183247>,  <45.140678, 34.744072, 37.190041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.528744, 34.647324, 37.183247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134392, 0.594708, -0.792629,
		0.201818, 0.766694, 0.609467,
		0.970159, -0.241874, -0.016985,
		45.819790, 34.574760, 37.178150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.779770, 35.230907, 37.224510>,  <45.140678, 34.744072, 37.190041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.779770, 35.230907, 37.224510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.863495, 34.903351, 37.010742>,  <45.913731, 34.706818, 36.882481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.863495, 34.903351, 37.010742>,  <45.779770, 35.230907, 37.224510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.863495, 34.903351, 37.010742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062761, 0.534153, -0.843055,
		0.975833, 0.210002, 0.060410,
		0.209311, -0.818889, -0.534424,
		45.926289, 34.657684, 36.850414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.241638, 35.481110, 36.749321>,  <45.779770, 35.230907, 37.224510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.241638, 35.481110, 36.749321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.024773, 35.176479, 36.607300>,  <45.894653, 34.993702, 36.522087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.024773, 35.176479, 36.607300>,  <46.241638, 35.481110, 36.749321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.024773, 35.176479, 36.607300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012881, 0.430025, -0.902725,
		0.840176, -0.484848, -0.242953,
		-0.542160, -0.761578, -0.355052,
		45.862125, 34.948006, 36.500786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.625259, 35.408524, 36.182129>,  <46.241638, 35.481110, 36.749321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.625259, 35.408524, 36.182129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.271381, 35.225136, 36.148396>,  <46.059055, 35.115105, 36.128155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.271381, 35.225136, 36.148396>,  <46.625259, 35.408524, 36.182129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.271381, 35.225136, 36.148396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022885, 0.137987, -0.990170,
		0.465600, -0.877933, -0.111585,
		-0.884699, -0.458469, -0.084338,
		46.005970, 35.087597, 36.123093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.738773, 34.814480, 35.715004>,  <46.625259, 35.408524, 36.182129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.738773, 34.814480, 35.715004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.367996, 34.963131, 35.694344>,  <46.145531, 35.052322, 35.681946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.367996, 34.963131, 35.694344>,  <46.738773, 34.814480, 35.715004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.367996, 34.963131, 35.694344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065516, 0.024762, -0.997544,
		-0.369435, -0.928052, -0.047300,
		-0.926944, 0.371627, -0.051655,
		46.089912, 35.074619, 35.678848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.980106, 34.943714, 34.963123>,  <46.738773, 34.814480, 35.715004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.980106, 34.943714, 34.963123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.286808, 34.726612, 34.826008>,  <47.470829, 34.596352, 34.743736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.286808, 34.726612, 34.826008>,  <46.980106, 34.943714, 34.963123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.286808, 34.726612, 34.826008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623944, 0.755669, 0.199144,
		0.150950, -0.366577, 0.918061,
		0.766752, -0.542757, -0.342791,
		47.516834, 34.563786, 34.723171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.484501, 35.101067, 35.384052>,  <46.980106, 34.943714, 34.963123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.484501, 35.101067, 35.384052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.644478, 34.981754, 35.037395>,  <47.740463, 34.910168, 34.829399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.644478, 34.981754, 35.037395>,  <47.484501, 35.101067, 35.384052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.644478, 34.981754, 35.037395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443747, 0.890367, -0.101661,
		0.801956, -0.343913, 0.488456,
		0.399943, -0.298278, -0.866646,
		47.764462, 34.892269, 34.777401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<32.402065, 32.998428, 56.982681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.709629, 32.959923, 57.235508>,  <32.894169, 32.936817, 57.387203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.709629, 32.959923, 57.235508>,  <32.402065, 32.998428, 56.982681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709629, 32.959923, 57.235508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630281, -0.051828, -0.774635,
		0.107330, 0.994005, 0.020823,
		0.768912, -0.096266, 0.632065,
		32.940304, 32.931042, 57.425129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946499, 33.467892, 56.721832>,  <32.402065, 32.998428, 56.982681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946499, 33.467892, 56.721832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.132683, 33.186054, 56.936085>,  <33.244392, 33.016953, 57.064636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.132683, 33.186054, 56.936085>,  <32.946499, 33.467892, 56.721832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132683, 33.186054, 56.936085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699457, -0.077985, -0.710407,
		0.542317, 0.705316, 0.456532,
		0.465459, -0.704590, 0.535631,
		33.272320, 32.974678, 57.096775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679760, 33.698677, 56.609734>,  <32.946499, 33.467892, 56.721832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679760, 33.698677, 56.609734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.691292, 33.314251, 56.719658>,  <33.698212, 33.083595, 56.785614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.691292, 33.314251, 56.719658>,  <33.679760, 33.698677, 56.609734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691292, 33.314251, 56.719658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577388, -0.208407, -0.789424,
		0.815961, 0.181434, 0.548899,
		0.028834, -0.961066, 0.274810,
		33.699944, 33.025932, 56.802101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422806, 33.443783, 56.630413>,  <33.679760, 33.698677, 56.609734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422806, 33.443783, 56.630413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.197937, 33.114964, 56.594204>,  <34.063015, 32.917671, 56.572479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.197937, 33.114964, 56.594204>,  <34.422806, 33.443783, 56.630413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197937, 33.114964, 56.594204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623812, -0.349627, -0.699013,
		0.542974, -0.449438, 0.709355,
		-0.562173, -0.822050, -0.090527,
		34.029285, 32.868347, 56.567047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902676, 32.932457, 56.583187>,  <34.422806, 33.443783, 56.630413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902676, 32.932457, 56.583187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.556282, 32.797802, 56.435272>,  <34.348446, 32.717007, 56.346523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.556282, 32.797802, 56.435272>,  <34.902676, 32.932457, 56.583187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556282, 32.797802, 56.435272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485751, -0.390579, -0.781981,
		0.118815, -0.856808, 0.501760,
		-0.865984, -0.336642, -0.369789,
		34.296486, 32.696808, 56.324337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996376, 32.168953, 56.497200>,  <34.902676, 32.932457, 56.583187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996376, 32.168953, 56.497200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.706074, 32.273010, 56.242451>,  <34.531895, 32.335445, 56.089600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.706074, 32.273010, 56.242451>,  <34.996376, 32.168953, 56.497200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706074, 32.273010, 56.242451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509887, -0.418079, -0.751814,
		-0.461844, -0.870365, 0.170778,
		-0.725752, 0.260144, -0.636875,
		34.488350, 32.351055, 56.051388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095287, 31.630098, 56.052021>,  <34.996376, 32.168953, 56.497200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095287, 31.630098, 56.052021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.869053, 31.890966, 55.850117>,  <34.733311, 32.047485, 55.728973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.869053, 31.890966, 55.850117>,  <35.095287, 31.630098, 56.052021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869053, 31.890966, 55.850117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283743, -0.420811, -0.861631,
		-0.774341, -0.630549, 0.052956,
		-0.565585, 0.652170, -0.504765,
		34.699379, 32.086617, 55.698689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106071, 31.384916, 55.377579>,  <35.095287, 31.630098, 56.052021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106071, 31.384916, 55.377579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.936047, 31.738022, 55.297531>,  <34.834030, 31.949884, 55.249504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.936047, 31.738022, 55.297531>,  <35.106071, 31.384916, 55.377579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936047, 31.738022, 55.297531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130486, -0.159018, -0.978615,
		-0.895709, -0.442087, -0.047595,
		-0.425065, 0.882764, -0.200120,
		34.808529, 32.002850, 55.237495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575687, 31.294231, 54.965637>,  <35.106071, 31.384916, 55.377579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575687, 31.294231, 54.965637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.681602, 31.673887, 54.897491>,  <34.745152, 31.901680, 54.856606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.681602, 31.673887, 54.897491>,  <34.575687, 31.294231, 54.965637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681602, 31.673887, 54.897491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079832, -0.154483, -0.984765,
		-0.960997, 0.274352, 0.034867,
		0.264786, 0.949139, -0.170360,
		34.761040, 31.958630, 54.846382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639515, 31.349268, 54.335709>,  <34.575687, 31.294231, 54.965637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639515, 31.349268, 54.335709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.685154, 31.738251, 54.417004>,  <34.712536, 31.971642, 54.465782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.685154, 31.738251, 54.417004>,  <34.639515, 31.349268, 54.335709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685154, 31.738251, 54.417004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063647, 0.196998, -0.978335,
		-0.991429, 0.124559, -0.039418,
		0.114095, 0.972459, 0.203238,
		34.719383, 32.029987, 54.477974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017025, 31.730560, 54.202724>,  <34.639515, 31.349268, 54.335709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017025, 31.730560, 54.202724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.343716, 31.957598, 54.161175>,  <34.539730, 32.093819, 54.136246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.343716, 31.957598, 54.161175>,  <34.017025, 31.730560, 54.202724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343716, 31.957598, 54.161175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211011, 0.126238, -0.969298,
		-0.537055, 0.813572, 0.222871,
		0.816729, 0.567595, -0.103876,
		34.588734, 32.127876, 54.130013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832253, 32.281181, 53.784409>,  <34.017025, 31.730560, 54.202724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832253, 32.281181, 53.784409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.228210, 32.255154, 53.734016>,  <34.465786, 32.239536, 53.703781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.228210, 32.255154, 53.734016>,  <33.832253, 32.281181, 53.784409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228210, 32.255154, 53.734016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119733, 0.092343, -0.988502,
		0.075959, 0.993598, 0.083619,
		0.989896, -0.065074, -0.125981,
		34.525181, 32.235630, 53.696220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885914, 32.791241, 53.278057>,  <33.832253, 32.281181, 53.784409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885914, 32.791241, 53.278057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.227489, 32.584282, 53.255802>,  <34.432434, 32.460106, 53.242447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.227489, 32.584282, 53.255802>,  <33.885914, 32.791241, 53.278057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227489, 32.584282, 53.255802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055119, 0.196254, -0.979003,
		0.517451, 0.832938, 0.196107,
		0.853936, -0.517395, -0.055641,
		34.483669, 32.429062, 53.239109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334476, 33.249912, 53.020432>,  <33.885914, 32.791241, 53.278057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334476, 33.249912, 53.020432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.463566, 32.877193, 52.953983>,  <34.541019, 32.653561, 52.914112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.463566, 32.877193, 52.953983>,  <34.334476, 33.249912, 53.020432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463566, 32.877193, 52.953983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102579, 0.208915, -0.972539,
		0.940918, 0.296821, 0.163005,
		0.322724, -0.931800, -0.166124,
		34.560383, 32.597652, 52.904144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948036, 33.407497, 52.550289>,  <34.334476, 33.249912, 53.020432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948036, 33.407497, 52.550289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.847019, 33.024109, 52.497292>,  <34.786407, 32.794075, 52.465492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.847019, 33.024109, 52.497292>,  <34.948036, 33.407497, 52.550289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847019, 33.024109, 52.497292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028475, 0.144237, -0.989133,
		0.967167, -0.246025, -0.063719,
		-0.252542, -0.958471, -0.132495,
		34.771255, 32.736568, 52.457542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307701, 33.303223, 51.904716>,  <34.948036, 33.407497, 52.550289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307701, 33.303223, 51.904716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.057373, 32.991974, 51.926147>,  <34.907177, 32.805222, 51.939007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.057373, 32.991974, 51.926147>,  <35.307701, 33.303223, 51.904716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057373, 32.991974, 51.926147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011683, -0.078036, -0.996882,
		0.779882, -0.623240, 0.057927,
		-0.625818, -0.778127, 0.053578,
		34.869629, 32.758537, 51.942223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525787, 32.883163, 51.387012>,  <35.307701, 33.303223, 51.904716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525787, 32.883163, 51.387012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.153992, 32.761406, 51.470337>,  <34.930916, 32.688351, 51.520332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.153992, 32.761406, 51.470337>,  <35.525787, 32.883163, 51.387012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153992, 32.761406, 51.470337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225763, 0.022878, -0.973913,
		0.291685, -0.952272, -0.089986,
		-0.929489, -0.304391, 0.208315,
		34.875145, 32.670090, 51.532833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406410, 32.287704, 50.921722>,  <35.525787, 32.883163, 51.387012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406410, 32.287704, 50.921722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.062996, 32.458473, 51.035320>,  <34.856949, 32.560936, 51.103481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.062996, 32.458473, 51.035320>,  <35.406410, 32.287704, 50.921722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062996, 32.458473, 51.035320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275868, 0.082292, -0.957666,
		-0.432219, -0.900537, 0.047123,
		-0.858536, 0.426921, 0.283998,
		34.805435, 32.586548, 51.120518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917641, 32.172997, 50.319981>,  <35.406410, 32.287704, 50.921722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917641, 32.172997, 50.319981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.699928, 32.427887, 50.538227>,  <34.569302, 32.580822, 50.669174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.699928, 32.427887, 50.538227>,  <34.917641, 32.172997, 50.319981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699928, 32.427887, 50.538227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511750, 0.263159, -0.817838,
		-0.664731, -0.724356, 0.182867,
		-0.544283, 0.637225, 0.545619,
		34.536644, 32.619053, 50.701912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302692, 32.143013, 49.989925>,  <34.917641, 32.172997, 50.319981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302692, 32.143013, 49.989925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.325569, 32.492813, 50.182587>,  <34.339294, 32.702694, 50.298183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.325569, 32.492813, 50.182587>,  <34.302692, 32.143013, 49.989925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325569, 32.492813, 50.182587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563178, 0.426610, -0.707696,
		-0.824354, -0.230783, 0.516894,
		0.057188, 0.874496, 0.481650,
		34.342724, 32.755161, 50.327080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695011, 32.454277, 49.701633>,  <34.302692, 32.143013, 49.989925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695011, 32.454277, 49.701633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.872154, 32.766933, 49.877323>,  <33.978439, 32.954529, 49.982735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.872154, 32.766933, 49.877323>,  <33.695011, 32.454277, 49.701633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872154, 32.766933, 49.877323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524844, 0.623175, -0.579820,
		-0.726923, 0.026255, 0.686217,
		0.442857, 0.781642, 0.439220,
		34.005013, 33.001427, 50.009090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135281, 33.002640, 49.936428>,  <33.695011, 32.454277, 49.701633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135281, 33.002640, 49.936428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.491371, 33.178513, 49.888802>,  <33.705025, 33.284039, 49.860226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.491371, 33.178513, 49.888802>,  <33.135281, 33.002640, 49.936428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491371, 33.178513, 49.888802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415000, 0.675066, -0.609968,
		-0.187813, 0.592422, 0.783430,
		0.890225, 0.439684, -0.119069,
		33.758438, 33.310417, 49.853081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169800, 33.582798, 49.430176>,  <33.135281, 33.002640, 49.936428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169800, 33.582798, 49.430176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.811905, 33.605843, 49.253033>,  <32.597168, 33.619667, 49.146748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.811905, 33.605843, 49.253033>,  <33.169800, 33.582798, 49.430176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811905, 33.605843, 49.253033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427052, 0.179695, 0.886192,
		0.130630, 0.982034, -0.136179,
		-0.894741, 0.057608, -0.442853,
		32.543484, 33.623123, 49.120178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857662, 34.204693, 49.683628>,  <33.169800, 33.582798, 49.430176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857662, 34.204693, 49.683628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.580795, 33.948334, 49.550873>,  <32.414673, 33.794518, 49.471222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.580795, 33.948334, 49.550873>,  <32.857662, 34.204693, 49.683628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580795, 33.948334, 49.550873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566418, 0.197388, 0.800131,
		-0.447294, 0.741811, -0.499643,
		-0.692170, -0.640901, -0.331885,
		32.373146, 33.756065, 49.451309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205257, 34.561981, 49.786961>,  <32.857662, 34.204693, 49.683628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205257, 34.561981, 49.786961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.104584, 34.177666, 49.740406>,  <32.044178, 33.947079, 49.712475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.104584, 34.177666, 49.740406>,  <32.205257, 34.561981, 49.786961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104584, 34.177666, 49.740406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700392, 0.097827, 0.707022,
		-0.667911, 0.259463, -0.697548,
		-0.251685, -0.960786, -0.116386,
		32.029079, 33.889431, 49.705490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529819, 34.525513, 49.866039>,  <32.205257, 34.561981, 49.786961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529819, 34.525513, 49.866039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.652445, 34.151386, 49.936707>,  <31.726021, 33.926910, 49.979107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.652445, 34.151386, 49.936707>,  <31.529819, 34.525513, 49.866039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652445, 34.151386, 49.936707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565540, -0.029688, 0.824186,
		-0.765626, -0.352576, -0.538058,
		0.306563, -0.935312, 0.176666,
		31.744413, 33.870792, 49.989708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949888, 34.202614, 49.973587>,  <31.529819, 34.525513, 49.866039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949888, 34.202614, 49.973587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.197041, 33.913826, 50.098152>,  <31.345333, 33.740551, 50.172890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.197041, 33.913826, 50.098152>,  <30.949888, 34.202614, 49.973587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197041, 33.913826, 50.098152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605223, -0.183883, 0.774527,
		-0.501923, -0.667041, -0.550572,
		0.617882, -0.721972, 0.311414,
		31.382404, 33.697235, 50.191578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510202, 33.545986, 50.075405>,  <30.949888, 34.202614, 49.973587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510202, 33.545986, 50.075405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.851290, 33.512020, 50.281574>,  <31.055943, 33.491642, 50.405277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.851290, 33.512020, 50.281574>,  <30.510202, 33.545986, 50.075405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851290, 33.512020, 50.281574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518238, -0.261403, 0.814308,
		0.065588, -0.961487, -0.266908,
		0.852718, -0.084913, 0.515424,
		31.107105, 33.486546, 50.436203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471916, 32.804298, 50.272823>,  <30.510202, 33.545986, 50.075405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471916, 32.804298, 50.272823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.699551, 33.004993, 50.533405>,  <30.836132, 33.125412, 50.689754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.699551, 33.004993, 50.533405>,  <30.471916, 32.804298, 50.272823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699551, 33.004993, 50.533405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491047, -0.428108, 0.758681,
		0.659555, -0.751651, 0.002748,
		0.569087, 0.501741, 0.651457,
		30.870277, 33.155514, 50.728844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657303, 32.332294, 50.742115>,  <30.471916, 32.804298, 50.272823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657303, 32.332294, 50.742115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.714531, 32.685307, 50.921299>,  <30.748867, 32.897114, 51.028809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.714531, 32.685307, 50.921299>,  <30.657303, 32.332294, 50.742115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714531, 32.685307, 50.921299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413051, -0.358070, 0.837362,
		0.899400, -0.304829, 0.313302,
		0.143068, 0.882534, 0.447958,
		30.757452, 32.950066, 51.055687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001389, 32.166851, 51.390633>,  <30.657303, 32.332294, 50.742115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001389, 32.166851, 51.390633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.858433, 32.533554, 51.461990>,  <30.772659, 32.753574, 51.504807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.858433, 32.533554, 51.461990>,  <31.001389, 32.166851, 51.390633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858433, 32.533554, 51.461990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265227, -0.282772, 0.921789,
		0.895504, 0.282123, 0.344210,
		-0.357390, 0.916759, 0.178397,
		30.751215, 32.808582, 51.515511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353361, 32.395313, 51.957779>,  <31.001389, 32.166851, 51.390633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353361, 32.395313, 51.957779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.022928, 32.620697, 51.953613>,  <30.824669, 32.755928, 51.951115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.022928, 32.620697, 51.953613>,  <31.353361, 32.395313, 51.957779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022928, 32.620697, 51.953613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109384, -0.142191, 0.983777,
		0.552835, 0.813818, 0.179095,
		-0.826080, 0.563456, -0.010410,
		30.775105, 32.789734, 51.950489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459551, 32.880875, 52.488857>,  <31.353361, 32.395313, 51.957779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459551, 32.880875, 52.488857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.064882, 32.871426, 52.424461>,  <30.828081, 32.865757, 52.385822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.064882, 32.871426, 52.424461>,  <31.459551, 32.880875, 52.488857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064882, 32.871426, 52.424461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155864, -0.146870, 0.976799,
		-0.046718, 0.988874, 0.141231,
		-0.986673, -0.023622, -0.160991,
		30.768881, 32.864338, 52.376163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321360, 33.577126, 52.873123>,  <31.459551, 32.880875, 52.488857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321360, 33.577126, 52.873123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.087778, 33.252499, 52.865562>,  <30.947630, 33.057724, 52.861027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.087778, 33.252499, 52.865562>,  <31.321360, 33.577126, 52.873123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087778, 33.252499, 52.865562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092506, -0.089661, 0.991667,
		-0.806500, 0.577337, 0.127432,
		-0.583952, -0.811568, -0.018904,
		30.912592, 33.009029, 52.859890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833639, 33.730469, 53.312412>,  <31.321360, 33.577126, 52.873123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833639, 33.730469, 53.312412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.926186, 33.341347, 53.307945>,  <30.981714, 33.107876, 53.305267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.926186, 33.341347, 53.307945>,  <30.833639, 33.730469, 53.312412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926186, 33.341347, 53.307945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046301, -0.022472, 0.998675,
		-0.971764, -0.230543, -0.050242,
		0.231367, -0.972803, -0.011163,
		30.995596, 33.049507, 53.304596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253212, 33.491821, 53.599529>,  <30.833639, 33.730469, 53.312412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253212, 33.491821, 53.599529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.548620, 33.222755, 53.617905>,  <30.725864, 33.061317, 53.628929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.548620, 33.222755, 53.617905>,  <30.253212, 33.491821, 53.599529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548620, 33.222755, 53.617905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048047, 0.015456, 0.998725,
		-0.672518, -0.739785, -0.020905,
		0.738519, -0.672665, 0.045939,
		30.770176, 33.020954, 53.631687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991817, 32.997906, 54.169598>,  <30.253212, 33.491821, 53.599529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991817, 32.997906, 54.169598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.387117, 32.949703, 54.131985>,  <30.624298, 32.920784, 54.109417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.387117, 32.949703, 54.131985>,  <29.991817, 32.997906, 54.169598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387117, 32.949703, 54.131985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083390, -0.090487, 0.992400,
		-0.128105, -0.988579, -0.079374,
		0.988249, -0.120512, -0.094029,
		30.683592, 32.913551, 54.103775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159956, 32.357662, 54.331947>,  <29.991817, 32.997906, 54.169598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159956, 32.357662, 54.331947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.513514, 32.536003, 54.388451>,  <30.725647, 32.643005, 54.422352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.513514, 32.536003, 54.388451>,  <30.159956, 32.357662, 54.331947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513514, 32.536003, 54.388451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159517, 0.003480, 0.987189,
		0.439646, -0.895101, 0.074196,
		0.883893, 0.445849, 0.141254,
		30.778681, 32.669758, 54.430828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647867, 31.933022, 54.900742>,  <30.159956, 32.357662, 54.331947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647867, 31.933022, 54.900742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.741558, 32.321705, 54.888584>,  <30.797771, 32.554916, 54.881290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.741558, 32.321705, 54.888584>,  <30.647867, 31.933022, 54.900742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741558, 32.321705, 54.888584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084877, 0.051580, 0.995055,
		0.968470, -0.230488, 0.094557,
		0.234225, 0.971707, -0.030391,
		30.811827, 32.613216, 54.879467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034784, 31.906233, 55.528656>,  <30.647867, 31.933022, 54.900742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034784, 31.906233, 55.528656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.985365, 32.292358, 55.436649>,  <30.955713, 32.524033, 55.381447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.985365, 32.292358, 55.436649>,  <31.034784, 31.906233, 55.528656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985365, 32.292358, 55.436649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094714, 0.219261, 0.971058,
		0.987808, 0.141760, 0.064339,
		-0.123551, 0.965313, -0.230015,
		30.948299, 32.581951, 55.367645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<31.442675, 32.322292, 55.984943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186016, 32.597233, 55.848797>,  <31.032021, 32.762196, 55.767109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186016, 32.597233, 55.848797>,  <31.442675, 32.322292, 55.984943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186016, 32.597233, 55.848797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050211, 0.405162, 0.912865,
		0.765357, 0.602825, -0.225457,
		-0.641645, 0.687347, -0.340362,
		30.993523, 32.803436, 55.746689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692869, 33.052345, 56.112076>,  <31.442675, 32.322292, 55.984943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692869, 33.052345, 56.112076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293989, 33.036995, 56.086411>,  <31.054661, 33.027786, 56.071011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293989, 33.036995, 56.086411>,  <31.692869, 33.052345, 56.112076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293989, 33.036995, 56.086411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074112, 0.394418, 0.915938,
		-0.009842, 0.918130, -0.396158,
		-0.997201, -0.038375, -0.064162,
		30.994829, 33.025482, 56.067162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578016, 33.536663, 56.542240>,  <31.692869, 33.052345, 56.112076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578016, 33.536663, 56.542240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221045, 33.366531, 56.482018>,  <31.006861, 33.264454, 56.445885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221045, 33.366531, 56.482018>,  <31.578016, 33.536663, 56.542240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221045, 33.366531, 56.482018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328948, 0.384960, 0.862322,
		-0.308809, 0.819087, -0.483459,
		-0.892429, -0.425326, -0.150558,
		30.953316, 33.238934, 56.436852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066534, 34.189003, 56.632610>,  <31.578016, 33.536663, 56.542240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066534, 34.189003, 56.632610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882942, 33.839115, 56.694839>,  <30.772787, 33.629181, 56.732178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882942, 33.839115, 56.694839>,  <31.066534, 34.189003, 56.632610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882942, 33.839115, 56.694839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346450, 0.337460, 0.875268,
		-0.818114, 0.347830, -0.457933,
		-0.458979, -0.874720, 0.155575,
		30.745249, 33.576698, 56.741512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435856, 34.415188, 56.968597>,  <31.066534, 34.189003, 56.632610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435856, 34.415188, 56.968597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458332, 34.024406, 57.050968>,  <30.471817, 33.789936, 57.100391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458332, 34.024406, 57.050968>,  <30.435856, 34.415188, 56.968597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458332, 34.024406, 57.050968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374564, 0.170560, 0.911379,
		-0.925497, -0.128342, -0.356348,
		0.056189, -0.976953, 0.205925,
		30.475189, 33.731319, 57.112747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770325, 34.223042, 57.169922>,  <30.435856, 34.415188, 56.968597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770325, 34.223042, 57.169922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022575, 33.942612, 57.303074>,  <30.173925, 33.774353, 57.382965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022575, 33.942612, 57.303074>,  <29.770325, 34.223042, 57.169922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022575, 33.942612, 57.303074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268502, 0.205340, 0.941139,
		-0.728161, -0.682883, -0.058747,
		0.630625, -0.701074, 0.332876,
		30.211763, 33.732288, 57.402935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405514, 33.722767, 57.603687>,  <29.770325, 34.223042, 57.169922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405514, 33.722767, 57.603687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783638, 33.665638, 57.720985>,  <30.010513, 33.631363, 57.791363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783638, 33.665638, 57.720985>,  <29.405514, 33.722767, 57.603687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783638, 33.665638, 57.720985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280523, 0.102718, 0.954336,
		-0.166418, -0.984404, 0.057036,
		0.945311, -0.142819, 0.293242,
		30.067232, 33.622791, 57.808956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366421, 33.301228, 58.146511>,  <29.405514, 33.722767, 57.603687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366421, 33.301228, 58.146511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729532, 33.457909, 58.206520>,  <29.947399, 33.551918, 58.242527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729532, 33.457909, 58.206520>,  <29.366421, 33.301228, 58.146511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729532, 33.457909, 58.206520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176165, 0.031437, 0.983859,
		0.380664, -0.919555, 0.097542,
		0.907778, 0.391703, 0.150026,
		30.001865, 33.575420, 58.251530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740196, 32.820923, 58.533386>,  <29.366421, 33.301228, 58.146511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740196, 32.820923, 58.533386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910307, 33.179153, 58.585674>,  <30.012373, 33.394093, 58.617046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910307, 33.179153, 58.585674>,  <29.740196, 32.820923, 58.533386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910307, 33.179153, 58.585674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220743, -0.037436, 0.974614,
		0.877731, -0.443338, 0.181770,
		0.425278, 0.895572, 0.130723,
		30.037891, 33.447826, 58.624889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881950, 32.824577, 59.254997>,  <29.740196, 32.820923, 58.533386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881950, 32.824577, 59.254997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901810, 33.218971, 59.191288>,  <29.913725, 33.455608, 59.153065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901810, 33.218971, 59.191288>,  <29.881950, 32.824577, 59.254997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901810, 33.218971, 59.191288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332584, 0.166685, 0.928226,
		0.941766, 0.006886, 0.336198,
		0.049647, 0.985986, -0.159269,
		29.916704, 33.514767, 59.143509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952507, 33.191906, 59.925365>,  <29.881950, 32.824577, 59.254997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952507, 33.191906, 59.925365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855816, 33.495560, 59.683613>,  <29.797800, 33.677753, 59.538559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855816, 33.495560, 59.683613>,  <29.952507, 33.191906, 59.925365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855816, 33.495560, 59.683613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505321, 0.433249, 0.746288,
		0.828382, 0.485809, 0.278877,
		-0.241730, 0.759134, -0.604385,
		29.783297, 33.723301, 59.502296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933208, 33.634613, 60.404488>,  <29.952507, 33.191906, 59.925365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933208, 33.634613, 60.404488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749851, 33.822380, 60.102619>,  <29.639837, 33.935040, 59.921497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749851, 33.822380, 60.102619>,  <29.933208, 33.634613, 60.404488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749851, 33.822380, 60.102619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536543, 0.530771, 0.656051,
		0.708517, 0.705642, 0.008559,
		-0.458394, 0.469416, -0.754668,
		29.612333, 33.963203, 59.876221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945799, 34.353691, 60.549282>,  <29.933208, 33.634613, 60.404488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945799, 34.353691, 60.549282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617891, 34.316776, 60.323196>,  <29.421146, 34.294628, 60.187546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617891, 34.316776, 60.323196>,  <29.945799, 34.353691, 60.549282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617891, 34.316776, 60.323196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546021, 0.423649, 0.722760,
		0.172747, 0.901112, -0.397687,
		-0.819768, -0.092291, -0.565210,
		29.371962, 34.289089, 60.153633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575430, 34.895554, 60.684273>,  <29.945799, 34.353691, 60.549282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575430, 34.895554, 60.684273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277590, 34.661182, 60.556358>,  <29.098886, 34.520561, 60.479610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277590, 34.661182, 60.556358>,  <29.575430, 34.895554, 60.684273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277590, 34.661182, 60.556358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616842, 0.420893, 0.665098,
		-0.255106, 0.692486, -0.674822,
		-0.744598, -0.585929, -0.319782,
		29.054211, 34.485405, 60.460423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938210, 35.279274, 60.570568>,  <29.575430, 34.895554, 60.684273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938210, 35.279274, 60.570568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818062, 34.898766, 60.598438>,  <28.745974, 34.670460, 60.615162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818062, 34.898766, 60.598438>,  <28.938210, 35.279274, 60.570568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818062, 34.898766, 60.598438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800377, 0.291109, 0.524072,
		-0.518821, 0.101644, -0.848819,
		-0.300368, -0.951275, 0.069680,
		28.727951, 34.613384, 60.619343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131283, 35.342087, 60.645226>,  <28.938210, 35.279274, 60.570568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131283, 35.342087, 60.645226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205416, 34.960270, 60.738605>,  <28.249895, 34.731178, 60.794636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205416, 34.960270, 60.738605>,  <28.131283, 35.342087, 60.645226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205416, 34.960270, 60.738605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468270, 0.123075, 0.874972,
		-0.863930, -0.271481, -0.424173,
		0.185334, -0.954542, 0.233454,
		28.261015, 34.673908, 60.808643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507986, 35.122635, 60.777836>,  <28.131283, 35.342087, 60.645226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507986, 35.122635, 60.777836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764400, 34.885963, 60.973385>,  <27.918249, 34.743961, 61.090714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764400, 34.885963, 60.973385>,  <27.507986, 35.122635, 60.777836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764400, 34.885963, 60.973385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557120, 0.079403, 0.826627,
		-0.527914, -0.802255, -0.278735,
		0.641034, -0.591677, 0.488870,
		27.956711, 34.708462, 61.120045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111752, 34.685383, 61.186523>,  <27.507986, 35.122635, 60.777836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111752, 34.685383, 61.186523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460962, 34.658829, 61.379776>,  <27.670488, 34.642895, 61.495728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460962, 34.658829, 61.379776>,  <27.111752, 34.685383, 61.186523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460962, 34.658829, 61.379776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473348, 0.122968, 0.872250,
		-0.117315, -0.990188, 0.075930,
		0.873029, -0.066387, 0.483129,
		27.722872, 34.638912, 61.524715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048695, 34.231171, 61.667816>,  <27.111752, 34.685383, 61.186523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048695, 34.231171, 61.667816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360117, 34.450256, 61.790363>,  <27.546970, 34.581707, 61.863892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360117, 34.450256, 61.790363>,  <27.048695, 34.231171, 61.667816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360117, 34.450256, 61.790363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275618, -0.140169, 0.950993,
		0.563816, -0.824841, 0.041831,
		0.778554, 0.547714, 0.306370,
		27.593683, 34.614571, 61.882275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404585, 33.823486, 62.241146>,  <27.048695, 34.231171, 61.667816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404585, 33.823486, 62.241146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515715, 34.205265, 62.284676>,  <27.582394, 34.434334, 62.310795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515715, 34.205265, 62.284676>,  <27.404585, 33.823486, 62.241146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515715, 34.205265, 62.284676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181691, -0.059030, 0.981582,
		0.943293, -0.292481, 0.157014,
		0.277826, 0.954448, 0.108824,
		27.599062, 34.491600, 62.317322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674248, 33.800678, 63.007656>,  <27.404585, 33.823486, 62.241146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674248, 33.800678, 63.007656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645140, 34.182549, 62.892216>,  <27.627676, 34.411671, 62.822952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645140, 34.182549, 62.892216>,  <27.674248, 33.800678, 63.007656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645140, 34.182549, 62.892216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220900, 0.266757, 0.938107,
		0.972578, 0.132017, 0.191477,
		-0.072769, 0.954679, -0.288604,
		27.623308, 34.468952, 62.805634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291180, 34.162609, 63.262238>,  <27.674248, 33.800678, 63.007656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291180, 34.162609, 63.262238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980658, 34.414215, 63.245770>,  <27.794344, 34.565178, 63.235889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980658, 34.414215, 63.245770>,  <28.291180, 34.162609, 63.262238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980658, 34.414215, 63.245770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162350, 0.262624, 0.951142,
		0.609092, 0.731692, -0.305996,
		-0.776305, 0.629012, -0.041172,
		27.747766, 34.602917, 63.233418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168886, 34.531979, 64.006729>,  <28.291180, 34.162609, 63.262238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168886, 34.531979, 64.006729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297647, 34.908104, 64.050873>,  <28.374905, 35.133781, 64.077362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297647, 34.908104, 64.050873>,  <28.168886, 34.531979, 64.006729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297647, 34.908104, 64.050873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946384, -0.316241, -0.065944,
		-0.027107, 0.125674, -0.991701,
		0.321904, 0.940318, 0.110364,
		28.394218, 35.190201, 64.083984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596689, 34.864700, 63.435028>,  <28.168886, 34.531979, 64.006729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596689, 34.864700, 63.435028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726789, 35.003616, 63.786846>,  <28.804850, 35.086967, 63.997936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726789, 35.003616, 63.786846>,  <28.596689, 34.864700, 63.435028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726789, 35.003616, 63.786846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934223, -0.262030, -0.242005,
		0.146421, 0.900404, -0.409675,
		0.325250, 0.347293, 0.879545,
		28.824364, 35.107803, 64.050713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977575, 35.474178, 63.331902>,  <28.596689, 34.864700, 63.435028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977575, 35.474178, 63.331902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107929, 35.249344, 63.635971>,  <29.186142, 35.114445, 63.818413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107929, 35.249344, 63.635971>,  <28.977575, 35.474178, 63.331902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107929, 35.249344, 63.635971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898788, -0.065187, -0.433511,
		0.293222, 0.824509, 0.483949,
		0.325886, -0.562082, 0.760172,
		29.205694, 35.080719, 63.864021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715635, 35.678616, 63.439373>,  <28.977575, 35.474178, 63.331902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715635, 35.678616, 63.439373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697998, 35.322060, 63.619812>,  <29.687416, 35.108128, 63.728077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697998, 35.322060, 63.619812>,  <29.715635, 35.678616, 63.439373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697998, 35.322060, 63.619812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855904, -0.266585, -0.443125,
		0.515251, 0.366557, 0.774695,
		-0.044091, -0.891385, 0.451097,
		29.684771, 35.054646, 63.755142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364058, 35.545078, 63.776073>,  <29.715635, 35.678616, 63.439373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364058, 35.545078, 63.776073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186148, 35.197662, 63.688614>,  <30.079401, 34.989212, 63.636139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186148, 35.197662, 63.688614>,  <30.364058, 35.545078, 63.776073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186148, 35.197662, 63.688614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768813, -0.245009, -0.590675,
		0.459457, -0.430816, 0.776722,
		-0.444776, -0.868544, -0.218646,
		30.052715, 34.937099, 63.623020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822803, 35.126556, 63.897594>,  <30.364058, 35.545078, 63.776073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822803, 35.126556, 63.897594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574327, 34.923328, 63.658936>,  <30.425241, 34.801392, 63.515739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574327, 34.923328, 63.658936>,  <30.822803, 35.126556, 63.897594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574327, 34.923328, 63.658936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777635, -0.305414, -0.549551,
		0.096984, -0.805351, 0.584810,
		-0.621191, -0.508066, -0.596649,
		30.387970, 34.770908, 63.479942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280752, 34.657990, 63.654236>,  <30.822803, 35.126556, 63.897594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280752, 34.657990, 63.654236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968349, 34.669323, 63.404686>,  <30.780907, 34.676125, 63.254955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968349, 34.669323, 63.404686>,  <31.280752, 34.657990, 63.654236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968349, 34.669323, 63.404686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599921, -0.243566, -0.762083,
		-0.173548, -0.969471, 0.173229,
		-0.781009, 0.028334, -0.623876,
		30.734047, 34.677822, 63.217522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441236, 34.138107, 63.139530>,  <31.280752, 34.657990, 63.654236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441236, 34.138107, 63.139530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158003, 34.368217, 62.975739>,  <30.988062, 34.506283, 62.877464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158003, 34.368217, 62.975739>,  <31.441236, 34.138107, 63.139530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158003, 34.368217, 62.975739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296317, -0.284294, -0.911796,
		-0.640946, -0.766966, 0.030841,
		-0.708084, 0.575274, -0.409483,
		30.945578, 34.540798, 62.852894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195599, 33.723789, 62.667282>,  <31.441236, 34.138107, 63.139530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195599, 33.723789, 62.667282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085892, 34.090466, 62.551033>,  <31.020067, 34.310471, 62.481285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085892, 34.090466, 62.551033>,  <31.195599, 33.723789, 62.667282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085892, 34.090466, 62.551033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319370, -0.198233, -0.926664,
		-0.907073, -0.346970, -0.238394,
		-0.274267, 0.916687, -0.290624,
		31.003613, 34.365471, 62.463844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649050, 33.642628, 62.103603>,  <31.195599, 33.723789, 62.667282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649050, 33.642628, 62.103603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875690, 33.971962, 62.090473>,  <31.011675, 34.169563, 62.082596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875690, 33.971962, 62.090473>,  <30.649050, 33.642628, 62.103603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875690, 33.971962, 62.090473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356101, -0.280597, -0.891323,
		-0.743072, 0.493334, -0.452178,
		0.566600, 0.823339, -0.032827,
		31.045670, 34.218964, 62.080624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752520, 33.668060, 61.438076>,  <30.649050, 33.642628, 62.103603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752520, 33.668060, 61.438076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987629, 33.974674, 61.541576>,  <31.128695, 34.158642, 61.603676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987629, 33.974674, 61.541576>,  <30.752520, 33.668060, 61.438076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987629, 33.974674, 61.541576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400901, 0.001832, -0.916119,
		-0.702711, 0.642200, -0.306228,
		0.587771, 0.766534, 0.258747,
		31.163960, 34.204636, 61.619202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777699, 33.994068, 60.837700>,  <30.752520, 33.668060, 61.438076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777699, 33.994068, 60.837700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081352, 34.122364, 61.064270>,  <31.263544, 34.199341, 61.200214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081352, 34.122364, 61.064270>,  <30.777699, 33.994068, 60.837700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081352, 34.122364, 61.064270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599703, -0.006230, -0.800198,
		-0.253125, 0.947147, -0.197077,
		0.759134, 0.320738, 0.566430,
		31.309092, 34.218586, 61.234200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093714, 34.476681, 60.444607>,  <30.777699, 33.994068, 60.837700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093714, 34.476681, 60.444607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368048, 34.350117, 60.706757>,  <31.532648, 34.274178, 60.864048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368048, 34.350117, 60.706757>,  <31.093714, 34.476681, 60.444607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368048, 34.350117, 60.706757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669701, -0.078064, -0.738517,
		0.284838, 0.945404, 0.158364,
		0.685834, -0.316414, 0.655373,
		31.573797, 34.255192, 60.903370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782036, 35.012688, 60.444977>,  <31.093714, 34.476681, 60.444607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782036, 35.012688, 60.444977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860458, 34.637299, 60.558701>,  <31.907513, 34.412064, 60.626934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860458, 34.637299, 60.558701>,  <31.782036, 35.012688, 60.444977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860458, 34.637299, 60.558701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568883, -0.127301, -0.812506,
		0.798707, 0.321037, 0.508922,
		0.196059, -0.938472, 0.284309,
		31.919275, 34.355759, 60.643993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505039, 34.897911, 60.212151>,  <31.782036, 35.012688, 60.444977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505039, 34.897911, 60.212151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359768, 34.534832, 60.296238>,  <32.272606, 34.316986, 60.346691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359768, 34.534832, 60.296238>,  <32.505039, 34.897911, 60.212151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359768, 34.534832, 60.296238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492518, -0.378553, -0.783660,
		0.790903, -0.181073, 0.584538,
		-0.363179, -0.907695, 0.210217,
		32.250813, 34.262524, 60.359303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797501, 34.617413, 59.707150>,  <32.505039, 34.897911, 60.212151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797501, 34.617413, 59.707150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637428, 34.294033, 59.879780>,  <32.541386, 34.100006, 59.983356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637428, 34.294033, 59.879780>,  <32.797501, 34.617413, 59.707150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637428, 34.294033, 59.879780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383071, -0.575380, -0.722630,
		0.832532, -0.123861, 0.539953,
		-0.400184, -0.808453, 0.431575,
		32.517372, 34.051498, 60.009251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361397, 34.090717, 59.733154>,  <32.797501, 34.617413, 59.707150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361397, 34.090717, 59.733154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987465, 33.965687, 59.665756>,  <32.763107, 33.890667, 59.625317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987465, 33.965687, 59.665756>,  <33.361397, 34.090717, 59.733154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987465, 33.965687, 59.665756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320354, -0.537653, -0.779938,
		0.153198, -0.783087, 0.602748,
		-0.934828, -0.312578, -0.168498,
		32.707016, 33.871914, 59.615208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375839, 33.299637, 59.486362>,  <33.361397, 34.090717, 59.733154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375839, 33.299637, 59.486362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034088, 33.459263, 59.353230>,  <32.829037, 33.555038, 59.273350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034088, 33.459263, 59.353230>,  <33.375839, 33.299637, 59.486362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034088, 33.459263, 59.353230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113053, -0.482408, -0.868621,
		-0.507205, -0.779758, 0.367042,
		-0.854378, 0.399074, -0.332834,
		32.777775, 33.578983, 59.253380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955929, 32.740356, 59.322552>,  <33.375839, 33.299637, 59.486362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955929, 32.740356, 59.322552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803612, 33.053329, 59.125454>,  <32.712223, 33.241116, 59.007195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803612, 33.053329, 59.125454>,  <32.955929, 32.740356, 59.322552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803612, 33.053329, 59.125454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070031, -0.506953, -0.859124,
		-0.922005, -0.361654, 0.138249,
		-0.380792, 0.782435, -0.492740,
		32.689373, 33.288059, 58.977631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426411, 32.490219, 58.961811>,  <32.955929, 32.740356, 59.322552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426411, 32.490219, 58.961811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507324, 32.833622, 58.773327>,  <32.555874, 33.039665, 58.660236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507324, 32.833622, 58.773327>,  <32.426411, 32.490219, 58.961811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507324, 32.833622, 58.773327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310245, -0.512552, -0.800649,
		-0.928886, 0.015770, -0.370031,
		0.202286, 0.858511, -0.471210,
		32.568008, 33.091175, 58.631966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153362, 32.415894, 58.310795>,  <32.426411, 32.490219, 58.961811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153362, 32.415894, 58.310795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403748, 32.721909, 58.250278>,  <32.553978, 32.905518, 58.213966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403748, 32.721909, 58.250278>,  <32.153362, 32.415894, 58.310795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403748, 32.721909, 58.250278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176884, -0.328227, -0.927890,
		-0.759529, 0.554062, -0.340780,
		0.625962, 0.765037, -0.151293,
		32.591537, 32.951420, 58.204891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064152, 32.790436, 57.583122>,  <32.153362, 32.415894, 58.310795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064152, 32.790436, 57.583122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439320, 32.867855, 57.698254>,  <32.664421, 32.914307, 57.767334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439320, 32.867855, 57.698254>,  <32.064152, 32.790436, 57.583122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439320, 32.867855, 57.698254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341953, -0.376956, -0.860797,
		-0.058108, 0.905783, -0.419739,
		0.937919, 0.193550, 0.287831,
		32.720695, 32.925919, 57.784603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.907970, 36.626377, 51.318295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.861496, 36.248627, 51.441357>,  <47.833611, 36.021976, 51.515194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.861496, 36.248627, 51.441357>,  <47.907970, 36.626377, 51.318295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.861496, 36.248627, 51.441357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982768, 0.064470, -0.173236,
		0.143766, -0.322476, -0.935596,
		-0.116182, -0.944380, 0.307650,
		47.826641, 35.965313, 51.533653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.465130, 36.443008, 50.887978>,  <47.907970, 36.626377, 51.318295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.465130, 36.443008, 50.887978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.420242, 36.161625, 51.168705>,  <47.393311, 35.992794, 51.337143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.420242, 36.161625, 51.168705>,  <47.465130, 36.443008, 50.887978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.420242, 36.161625, 51.168705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927617, -0.179067, -0.327812,
		0.356276, -0.687809, -0.632445,
		-0.112222, -0.703459, 0.701820,
		47.386578, 35.950588, 51.379250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.104401, 35.885708, 50.563816>,  <47.465130, 36.443008, 50.887978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.104401, 35.885708, 50.563816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.048260, 35.843903, 50.957645>,  <47.014576, 35.818821, 51.193943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.048260, 35.843903, 50.957645>,  <47.104401, 35.885708, 50.563816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.048260, 35.843903, 50.957645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953928, -0.252068, -0.162736,
		0.265186, -0.962050, -0.064317,
		-0.140348, -0.104509, 0.984571,
		47.006157, 35.812550, 51.253017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.711056, 35.250408, 50.624302>,  <47.104401, 35.885708, 50.563816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.711056, 35.250408, 50.624302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.669487, 35.474907, 50.952744>,  <46.644547, 35.609604, 51.149807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.669487, 35.474907, 50.952744>,  <46.711056, 35.250408, 50.624302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.669487, 35.474907, 50.952744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994574, -0.062659, -0.083049,
		0.004839, -0.825275, 0.564710,
		-0.103922, 0.561244, 0.821100,
		46.638309, 35.643280, 51.199074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346230, 34.803509, 51.158585>,  <46.711056, 35.250408, 50.624302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346230, 34.803509, 51.158585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.320496, 35.190556, 51.256226>,  <46.305054, 35.422783, 51.314812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.320496, 35.190556, 51.256226>,  <46.346230, 34.803509, 51.158585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320496, 35.190556, 51.256226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992387, -0.087777, 0.086384,
		0.105013, -0.236686, 0.965894,
		-0.064337, 0.967613, 0.244102,
		46.301193, 35.480839, 51.329456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.723755, 34.882778, 51.649006>,  <46.346230, 34.803509, 51.158585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.723755, 34.882778, 51.649006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.734795, 35.261536, 51.520866>,  <45.741421, 35.488792, 51.443981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.734795, 35.261536, 51.520866>,  <45.723755, 34.882778, 51.649006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.734795, 35.261536, 51.520866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996769, 0.001890, -0.080294,
		-0.075425, 0.321534, 0.943889,
		0.027602, 0.946896, -0.320353,
		45.743076, 35.545605, 51.424759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242310, 35.192551, 52.064701>,  <45.723755, 34.882778, 51.649006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242310, 35.192551, 52.064701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.309830, 35.434380, 51.753315>,  <45.350342, 35.579475, 51.566483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.309830, 35.434380, 51.753315>,  <45.242310, 35.192551, 52.064701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.309830, 35.434380, 51.753315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973241, 0.227165, -0.034614,
		0.155913, 0.763475, 0.626736,
		0.168799, 0.604568, -0.778463,
		45.360470, 35.615749, 51.519775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979065, 35.780018, 52.227947>,  <45.242310, 35.192551, 52.064701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.979065, 35.780018, 52.227947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.003529, 35.822849, 51.831001>,  <45.018208, 35.848549, 51.592834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.003529, 35.822849, 51.831001>,  <44.979065, 35.780018, 52.227947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003529, 35.822849, 51.831001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974920, 0.219560, -0.036390,
		0.213988, 0.969705, 0.117818,
		0.061156, 0.107076, -0.992368,
		45.021873, 35.854973, 51.533291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664883, 36.417156, 51.996361>,  <44.979065, 35.780018, 52.227947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664883, 36.417156, 51.996361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.643169, 36.208355, 51.655872>,  <44.630142, 36.083076, 51.451580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.643169, 36.208355, 51.655872>,  <44.664883, 36.417156, 51.996361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643169, 36.208355, 51.655872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982550, 0.179801, -0.047602,
		0.177898, 0.833778, -0.522653,
		-0.054285, -0.522001, -0.851216,
		44.626884, 36.051754, 51.400509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190304, 36.780266, 51.524849>,  <44.664883, 36.417156, 51.996361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190304, 36.780266, 51.524849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.231911, 36.423141, 51.349545>,  <44.256874, 36.208866, 51.244362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.231911, 36.423141, 51.349545>,  <44.190304, 36.780266, 51.524849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231911, 36.423141, 51.349545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958971, 0.026821, -0.282232,
		0.263734, 0.449637, -0.853388,
		0.104013, -0.892809, -0.438262,
		44.263115, 36.155300, 51.218067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946693, 36.782997, 50.824734>,  <44.190304, 36.780266, 51.524849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946693, 36.782997, 50.824734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.925903, 36.402649, 50.946804>,  <43.913429, 36.174438, 51.020046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.925903, 36.402649, 50.946804>,  <43.946693, 36.782997, 50.824734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925903, 36.402649, 50.946804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935584, -0.060508, -0.347882,
		0.349258, -0.303604, -0.886478,
		-0.051980, -0.950875, 0.305180,
		43.910309, 36.117386, 51.038357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.642296, 36.393188, 50.284203>,  <43.946693, 36.782997, 50.824734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.642296, 36.393188, 50.284203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.586018, 36.156986, 50.602070>,  <43.552250, 36.015263, 50.792789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.586018, 36.156986, 50.602070>,  <43.642296, 36.393188, 50.284203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586018, 36.156986, 50.602070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960923, -0.111821, -0.253226,
		0.238393, -0.799248, -0.551699,
		-0.140699, -0.590508, 0.794673,
		43.543808, 35.979836, 50.840473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488026, 35.733017, 50.086483>,  <43.642296, 36.393188, 50.284203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488026, 35.733017, 50.086483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.335293, 35.771969, 50.454117>,  <43.243652, 35.795341, 50.674698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.335293, 35.771969, 50.454117>,  <43.488026, 35.733017, 50.086483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335293, 35.771969, 50.454117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910926, -0.207794, -0.356421,
		0.156272, -0.973313, 0.168048,
		-0.381828, 0.097381, 0.919089,
		43.220745, 35.801182, 50.729843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884956, 35.443985, 50.049004>,  <43.488026, 35.733017, 50.086483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884956, 35.443985, 50.049004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.836090, 35.583038, 50.420856>,  <42.806770, 35.666470, 50.643970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.836090, 35.583038, 50.420856>,  <42.884956, 35.443985, 50.049004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836090, 35.583038, 50.420856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987632, -0.135324, -0.079185,
		0.098274, -0.927813, 0.359868,
		-0.122168, 0.347635, 0.929637,
		42.799438, 35.687328, 50.699749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156990, 35.115475, 50.169266>,  <42.884956, 35.443985, 50.049004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156990, 35.115475, 50.169266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.204041, 35.395088, 50.451405>,  <42.232269, 35.562859, 50.620689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.204041, 35.395088, 50.451405>,  <42.156990, 35.115475, 50.169266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204041, 35.395088, 50.451405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982327, 0.186041, -0.020563,
		-0.145597, -0.690462, 0.708564,
		0.117624, 0.699036, 0.705347,
		42.239326, 35.604797, 50.663010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672367, 35.006374, 50.718521>,  <42.156990, 35.115475, 50.169266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672367, 35.006374, 50.718521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.760494, 35.396519, 50.713955>,  <41.813370, 35.630604, 50.711216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.760494, 35.396519, 50.713955>,  <41.672367, 35.006374, 50.718521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760494, 35.396519, 50.713955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972725, 0.218817, -0.076977,
		-0.072583, 0.028060, 0.996968,
		0.220314, 0.975362, -0.011412,
		41.826588, 35.689129, 50.710533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222630, 35.253006, 51.205524>,  <41.672367, 35.006374, 50.718521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222630, 35.253006, 51.205524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.338757, 35.565140, 50.983967>,  <41.408432, 35.752419, 50.851032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.338757, 35.565140, 50.983967>,  <41.222630, 35.253006, 51.205524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338757, 35.565140, 50.983967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956349, 0.216406, -0.196380,
		-0.033376, 0.586727, 0.809097,
		0.290315, 0.780333, -0.553893,
		41.425850, 35.799240, 50.817799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585510, 35.477467, 51.047070>,  <41.222630, 35.253006, 51.205524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585510, 35.477467, 51.047070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.795067, 35.760941, 50.858051>,  <40.920803, 35.931026, 50.744640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.795067, 35.760941, 50.858051>,  <40.585510, 35.477467, 51.047070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795067, 35.760941, 50.858051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849538, 0.394480, -0.350245,
		-0.061806, 0.584934, 0.808723,
		0.523895, 0.708688, -0.472542,
		40.952236, 35.973545, 50.716290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441582, 36.063023, 51.305576>,  <40.585510, 35.477467, 51.047070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441582, 36.063023, 51.305576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.545132, 36.111980, 50.922325>,  <40.607262, 36.141354, 50.692375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.545132, 36.111980, 50.922325>,  <40.441582, 36.063023, 51.305576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545132, 36.111980, 50.922325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938423, 0.266826, -0.219469,
		0.228792, 0.955941, 0.183930,
		0.258877, 0.122391, -0.958125,
		40.622795, 36.148697, 50.634888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986305, 36.547249, 51.074661>,  <40.441582, 36.063023, 51.305576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986305, 36.547249, 51.074661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.067150, 36.402859, 50.710495>,  <40.115658, 36.316227, 50.491997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.067150, 36.402859, 50.710495>,  <39.986305, 36.547249, 51.074661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067150, 36.402859, 50.710495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965325, 0.083398, -0.247369,
		0.165219, 0.928841, -0.331598,
		0.202112, -0.360971, -0.910412,
		40.127785, 36.294567, 50.437370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498718, 36.833931, 50.666718>,  <39.986305, 36.547249, 51.074661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498718, 36.833931, 50.666718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.627098, 36.537304, 50.431068>,  <39.704128, 36.359325, 50.289680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.627098, 36.537304, 50.431068>,  <39.498718, 36.833931, 50.666718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627098, 36.537304, 50.431068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905446, -0.057820, -0.420505,
		0.277771, 0.668379, -0.690009,
		0.320953, -0.741570, -0.589121,
		39.723385, 36.314835, 50.254333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410778, 37.041397, 49.874935>,  <39.498718, 36.833931, 50.666718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410778, 37.041397, 49.874935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.361538, 36.656628, 49.972549>,  <39.331993, 36.425766, 50.031120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.361538, 36.656628, 49.972549>,  <39.410778, 37.041397, 49.874935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361538, 36.656628, 49.972549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941319, 0.035309, -0.335665,
		0.314266, -0.271040, -0.909821,
		-0.123103, -0.961920, 0.244039,
		39.324608, 36.368053, 50.045761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085136, 36.769463, 49.323891>,  <39.410778, 37.041397, 49.874935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085136, 36.769463, 49.323891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.983730, 36.518379, 49.618294>,  <38.922886, 36.367729, 49.794937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.983730, 36.518379, 49.618294>,  <39.085136, 36.769463, 49.323891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983730, 36.518379, 49.618294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949722, 0.016994, -0.312633,
		0.183735, -0.778265, -0.600455,
		-0.253515, -0.627707, 0.736012,
		38.907677, 36.330067, 49.839096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691204, 36.157581, 49.017273>,  <39.085136, 36.769463, 49.323891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691204, 36.157581, 49.017273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.614803, 36.196228, 49.408001>,  <38.568962, 36.219418, 49.642437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.614803, 36.196228, 49.408001>,  <38.691204, 36.157581, 49.017273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614803, 36.196228, 49.408001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975237, 0.094361, -0.200022,
		-0.111500, -0.990838, 0.076205,
		-0.190998, 0.096620, 0.976824,
		38.557503, 36.225212, 49.701050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143776, 35.628170, 49.252766>,  <38.691204, 36.157581, 49.017273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143776, 35.628170, 49.252766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.130630, 35.960026, 49.475697>,  <38.122746, 36.159142, 49.609455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.130630, 35.960026, 49.475697>,  <38.143776, 35.628170, 49.252766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130630, 35.960026, 49.475697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890665, 0.228697, -0.392954,
		-0.453471, -0.509303, 0.731420,
		-0.032859, 0.829643, 0.557326,
		38.120773, 36.208920, 49.642895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491318, 35.356049, 49.332600>,  <38.143776, 35.628170, 49.252766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491318, 35.356049, 49.332600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.433578, 34.984093, 49.197266>,  <37.398933, 34.760921, 49.116066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.433578, 34.984093, 49.197266>,  <37.491318, 35.356049, 49.332600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433578, 34.984093, 49.197266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819382, 0.304022, -0.485987,
		0.554775, 0.207074, -0.805819,
		-0.144351, -0.929888, -0.338337,
		37.390274, 34.705128, 49.095764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246010, 35.434319, 48.603626>,  <37.491318, 35.356049, 49.332600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246010, 35.434319, 48.603626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.140236, 35.062607, 48.706795>,  <37.076771, 34.839581, 48.768696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.140236, 35.062607, 48.706795>,  <37.246010, 35.434319, 48.603626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140236, 35.062607, 48.706795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828761, 0.082201, -0.553533,
		0.493184, -0.360124, -0.791884,
		-0.264434, -0.929276, 0.257917,
		37.060905, 34.783825, 48.784168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067524, 35.050682, 47.975803>,  <37.246010, 35.434319, 48.603626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067524, 35.050682, 47.975803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.895432, 34.865314, 48.285679>,  <36.792175, 34.754093, 48.471603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.895432, 34.865314, 48.285679>,  <37.067524, 35.050682, 47.975803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895432, 34.865314, 48.285679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868481, -0.021629, -0.495251,
		0.246264, -0.885876, -0.393165,
		-0.430227, -0.463418, 0.774693,
		36.766365, 34.726288, 48.518085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693691, 34.278877, 47.847282>,  <37.067524, 35.050682, 47.975803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693691, 34.278877, 47.847282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.521999, 34.461529, 48.158989>,  <36.418983, 34.571117, 48.346012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.521999, 34.461529, 48.158989>,  <36.693691, 34.278877, 47.847282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521999, 34.461529, 48.158989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885153, -0.041078, -0.463484,
		-0.179629, -0.888709, 0.421817,
		-0.429230, 0.456627, 0.779265,
		36.393230, 34.598515, 48.392769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023869, 34.040958, 47.739872>,  <36.693691, 34.278877, 47.847282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023869, 34.040958, 47.739872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.986183, 34.356873, 47.982315>,  <35.963573, 34.546421, 48.127781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.986183, 34.356873, 47.982315>,  <36.023869, 34.040958, 47.739872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986183, 34.356873, 47.982315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988239, -0.000531, -0.152915,
		-0.120448, -0.613381, 0.780549,
		-0.094209, 0.789787, 0.606103,
		35.957920, 34.593807, 48.164146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441803, 33.867222, 48.175529>,  <36.023869, 34.040958, 47.739872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441803, 33.867222, 48.175529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487766, 34.260239, 48.234051>,  <35.515343, 34.496048, 48.269161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487766, 34.260239, 48.234051>,  <35.441803, 33.867222, 48.175529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487766, 34.260239, 48.234051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993180, 0.110705, 0.036593,
		0.019758, -0.149506, 0.988563,
		0.114910, 0.982544, 0.146299,
		35.522240, 34.555000, 48.277939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035267, 34.003143, 48.679512>,  <35.441803, 33.867222, 48.175529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035267, 34.003143, 48.679512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.093502, 34.367756, 48.525669>,  <35.128445, 34.586521, 48.433365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.093502, 34.367756, 48.525669>,  <35.035267, 34.003143, 48.679512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093502, 34.367756, 48.525669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987915, 0.154836, -0.007000,
		0.053170, 0.380977, 0.923054,
		0.145589, 0.911527, -0.384606,
		35.137180, 34.641212, 48.410286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599716, 34.416595, 49.024033>,  <35.035267, 34.003143, 48.679512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599716, 34.416595, 49.024033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.677391, 34.633041, 48.696743>,  <34.723995, 34.762909, 48.500370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.677391, 34.633041, 48.696743>,  <34.599716, 34.416595, 49.024033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677391, 34.633041, 48.696743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978157, 0.169873, -0.119801,
		0.074167, 0.823611, 0.562284,
		0.194187, 0.541117, -0.818220,
		34.735645, 34.795376, 48.451279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184914, 34.948864, 49.095013>,  <34.599716, 34.416595, 49.024033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184914, 34.948864, 49.095013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.269493, 34.959785, 48.704208>,  <34.320240, 34.966339, 48.469727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.269493, 34.959785, 48.704208>,  <34.184914, 34.948864, 49.095013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269493, 34.959785, 48.704208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970914, 0.120751, -0.206750,
		0.112329, 0.992307, 0.052046,
		0.211445, 0.027308, -0.977008,
		34.332928, 34.967979, 48.411106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891037, 35.526417, 48.818466>,  <34.184914, 34.948864, 49.095013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891037, 35.526417, 48.818466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.910423, 35.251148, 48.528893>,  <33.922054, 35.085987, 48.355148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.910423, 35.251148, 48.528893>,  <33.891037, 35.526417, 48.818466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910423, 35.251148, 48.528893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982604, 0.097239, -0.158220,
		0.179276, 0.719005, -0.671484,
		0.048467, -0.688169, -0.723930,
		33.924965, 35.044697, 48.311714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.791643, 32.138229, 52.373451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.019644, 32.424683, 52.534576>,  <30.156445, 32.596554, 52.631252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.019644, 32.424683, 52.534576>,  <29.791643, 32.138229, 52.373451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019644, 32.424683, 52.534576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070936, 0.531310, -0.844203,
		-0.818577, 0.452622, 0.353646,
		0.570000, 0.716131, 0.402811,
		30.190643, 32.639523, 52.655418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498560, 32.790894, 52.099640>,  <29.791643, 32.138229, 52.373451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498560, 32.790894, 52.099640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.885118, 32.824921, 52.196667>,  <30.117054, 32.845337, 52.254883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.885118, 32.824921, 52.196667>,  <29.498560, 32.790894, 52.099640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885118, 32.824921, 52.196667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208147, 0.294773, -0.932622,
		-0.150838, 0.951773, 0.267161,
		0.966397, 0.085066, 0.242571,
		30.175037, 32.850441, 52.269440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710651, 33.448132, 51.809128>,  <29.498560, 32.790894, 52.099640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710651, 33.448132, 51.809128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.053610, 33.254089, 51.877880>,  <30.259384, 33.137665, 51.919132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.053610, 33.254089, 51.877880>,  <29.710651, 33.448132, 51.809128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053610, 33.254089, 51.877880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349372, 0.303388, -0.886507,
		0.377906, 0.820137, 0.429606,
		0.857395, -0.485109, 0.171881,
		30.310829, 33.108555, 51.929443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174570, 33.914631, 51.651791>,  <29.710651, 33.448132, 51.809128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174570, 33.914631, 51.651791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.368248, 33.567478, 51.607357>,  <30.484455, 33.359188, 51.580696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.368248, 33.567478, 51.607357>,  <30.174570, 33.914631, 51.651791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368248, 33.567478, 51.607357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521988, 0.388421, -0.759380,
		0.702198, 0.309703, 0.641094,
		0.484197, -0.867878, -0.111087,
		30.513508, 33.307114, 51.574032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880409, 34.067814, 51.695423>,  <30.174570, 33.914631, 51.651791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880409, 34.067814, 51.695423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.905741, 33.700352, 51.539444>,  <30.920940, 33.479874, 51.445858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.905741, 33.700352, 51.539444>,  <30.880409, 34.067814, 51.695423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905741, 33.700352, 51.539444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614451, 0.343782, -0.710115,
		0.786409, -0.194631, 0.586242,
		0.063329, -0.918658, -0.389945,
		30.924740, 33.424755, 51.422459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615076, 33.847778, 51.561314>,  <30.880409, 34.067814, 51.695423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615076, 33.847778, 51.561314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.412907, 33.618587, 51.303246>,  <31.291605, 33.481075, 51.148403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.412907, 33.618587, 51.303246>,  <31.615076, 33.847778, 51.561314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412907, 33.618587, 51.303246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683797, 0.190071, -0.704482,
		0.526279, -0.797228, 0.295732,
		-0.505423, -0.572974, -0.645173,
		31.261280, 33.446693, 51.109695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063778, 33.373867, 51.256405>,  <31.615076, 33.847778, 51.561314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063778, 33.373867, 51.256405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.766516, 33.365845, 50.988880>,  <31.588158, 33.361031, 50.828365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.766516, 33.365845, 50.988880>,  <32.063778, 33.373867, 51.256405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766516, 33.365845, 50.988880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667599, 0.045000, -0.743160,
		0.045000, -0.998786, -0.020054,
		0.743160, 0.020054, 0.668813,
		31.543568, 33.359829, 50.788235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257339, 32.889313, 50.658352>,  <32.063778, 33.373867, 51.256405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257339, 32.889313, 50.658352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.974287, 33.137863, 50.523800>,  <31.804455, 33.286991, 50.443069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.974287, 33.137863, 50.523800>,  <32.257339, 32.889313, 50.658352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974287, 33.137863, 50.523800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454541, 0.035839, -0.890004,
		-0.540970, -0.782694, -0.307801,
		-0.707632, 0.621374, -0.336379,
		31.761997, 33.324276, 50.422886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043945, 32.567379, 50.042690>,  <32.257339, 32.889313, 50.658352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043945, 32.567379, 50.042690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.972961, 32.960972, 50.049500>,  <31.930370, 33.197128, 50.053585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.972961, 32.960972, 50.049500>,  <32.043945, 32.567379, 50.042690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972961, 32.960972, 50.049500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374293, 0.083484, -0.923545,
		-0.910172, -0.157521, -0.383112,
		-0.177461, 0.983981, 0.017026,
		31.919724, 33.256165, 50.054607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726103, 32.637646, 49.441521>,  <32.043945, 32.567379, 50.042690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726103, 32.637646, 49.441521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.842176, 33.005424, 49.547657>,  <31.911819, 33.226093, 49.611340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.842176, 33.005424, 49.547657>,  <31.726103, 32.637646, 49.441521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842176, 33.005424, 49.547657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166242, 0.224623, -0.960161,
		-0.942421, 0.322732, -0.087669,
		0.290182, 0.919450, 0.265341,
		31.929232, 33.281261, 49.627258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452417, 32.981426, 48.970894>,  <31.726103, 32.637646, 49.441521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452417, 32.981426, 48.970894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.724382, 33.228603, 49.128815>,  <31.887562, 33.376907, 49.223568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.724382, 33.228603, 49.128815>,  <31.452417, 32.981426, 48.970894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724382, 33.228603, 49.128815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277000, 0.282074, -0.918535,
		-0.678962, 0.733884, 0.020617,
		0.679914, 0.617939, 0.394803,
		31.928356, 33.413986, 49.247257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387495, 33.583164, 48.546524>,  <31.452417, 32.981426, 48.970894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387495, 33.583164, 48.546524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.736660, 33.593094, 48.741421>,  <31.946159, 33.599052, 48.858360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.736660, 33.593094, 48.741421>,  <31.387495, 33.583164, 48.546524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736660, 33.593094, 48.741421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466150, 0.252247, -0.847983,
		-0.143958, 0.967344, 0.208617,
		0.872915, 0.024827, 0.487241,
		31.998535, 33.600540, 48.887592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666603, 34.270863, 48.497810>,  <31.387495, 33.583164, 48.546524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666603, 34.270863, 48.497810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.965647, 34.007252, 48.530712>,  <32.145073, 33.849087, 48.550453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.965647, 34.007252, 48.530712>,  <31.666603, 34.270863, 48.497810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965647, 34.007252, 48.530712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259643, 0.176036, -0.949525,
		0.611282, 0.731230, 0.302717,
		0.747610, -0.659025, 0.082251,
		32.189930, 33.809544, 48.555386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216133, 34.881508, 48.383598>,  <31.666603, 34.270863, 48.497810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216133, 34.881508, 48.383598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.843170, 34.737148, 48.391273>,  <30.619392, 34.650532, 48.395878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.843170, 34.737148, 48.391273>,  <31.216133, 34.881508, 48.383598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843170, 34.737148, 48.391273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049056, -0.073775, 0.996067,
		-0.358061, 0.929683, 0.086493,
		-0.932409, -0.360896, 0.019190,
		30.563448, 34.628880, 48.397030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111187, 35.573353, 48.726871>,  <31.216133, 34.881508, 48.383598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111187, 35.573353, 48.726871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.013653, 35.846127, 48.451042>,  <30.955132, 36.009792, 48.285545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.013653, 35.846127, 48.451042>,  <31.111187, 35.573353, 48.726871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013653, 35.846127, 48.451042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040487, 0.717571, 0.695307,
		0.968971, 0.141622, -0.202579,
		-0.243836, 0.681934, -0.689572,
		30.940502, 36.050705, 48.244171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506395, 36.103989, 48.873947>,  <31.111187, 35.573353, 48.726871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506395, 36.103989, 48.873947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.203115, 36.257019, 48.662754>,  <31.021147, 36.348839, 48.536037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.203115, 36.257019, 48.662754>,  <31.506395, 36.103989, 48.873947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203115, 36.257019, 48.662754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034862, 0.784818, 0.618745,
		0.651089, 0.487540, -0.581711,
		-0.758200, 0.382579, -0.527983,
		30.975655, 36.371792, 48.504360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719831, 36.754967, 48.798420>,  <31.506395, 36.103989, 48.873947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719831, 36.754967, 48.798420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.331673, 36.796890, 48.711384>,  <31.098778, 36.822044, 48.659161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.331673, 36.796890, 48.711384>,  <31.719831, 36.754967, 48.798420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331673, 36.796890, 48.711384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017676, 0.867705, 0.496765,
		0.240871, 0.485905, -0.840165,
		-0.970396, 0.104806, -0.217594,
		31.040554, 36.828331, 48.646107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573227, 37.432491, 48.661304>,  <31.719831, 36.754967, 48.798420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573227, 37.432491, 48.661304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.203533, 37.303047, 48.742367>,  <30.981718, 37.225380, 48.791004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.203533, 37.303047, 48.742367>,  <31.573227, 37.432491, 48.661304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203533, 37.303047, 48.742367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091639, 0.703227, 0.705034,
		-0.370668, 0.633046, -0.679602,
		-0.924233, -0.323612, 0.202653,
		30.926264, 37.205963, 48.803162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108728, 37.967541, 48.692921>,  <31.573227, 37.432491, 48.661304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108728, 37.967541, 48.692921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.880930, 37.712749, 48.900742>,  <30.744251, 37.559875, 49.025433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.880930, 37.712749, 48.900742>,  <31.108728, 37.967541, 48.692921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880930, 37.712749, 48.900742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095194, 0.678919, 0.728016,
		-0.816463, 0.365144, -0.447278,
		-0.569497, -0.636976, 0.519553,
		30.710081, 37.521656, 49.056606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507490, 38.373219, 48.836582>,  <31.108728, 37.967541, 48.692921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507490, 38.373219, 48.836582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.514429, 38.070488, 49.097935>,  <30.518593, 37.888851, 49.254745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.514429, 38.070488, 49.097935>,  <30.507490, 38.373219, 48.836582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514429, 38.070488, 49.097935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306944, 0.617898, 0.723870,
		-0.951569, -0.213110, -0.221584,
		0.017348, -0.756826, 0.653386,
		30.519634, 37.843441, 49.293949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993015, 38.630035, 49.294102>,  <30.507490, 38.373219, 48.836582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993015, 38.630035, 49.294102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.189281, 38.344044, 49.493324>,  <30.307041, 38.172451, 49.612858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.189281, 38.344044, 49.493324>,  <29.993015, 38.630035, 49.294102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189281, 38.344044, 49.493324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321667, 0.382586, 0.866116,
		-0.809801, -0.585181, -0.042263,
		0.490666, -0.714976, 0.498052,
		30.336481, 38.129551, 49.642738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515173, 38.297550, 49.757492>,  <29.993015, 38.630035, 49.294102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515173, 38.297550, 49.757492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.886795, 38.254887, 49.899185>,  <30.109768, 38.229290, 49.984203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.886795, 38.254887, 49.899185>,  <29.515173, 38.297550, 49.757492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886795, 38.254887, 49.899185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303642, 0.327148, 0.894861,
		-0.211331, -0.938935, 0.271553,
		0.929054, -0.106657, 0.354236,
		30.165512, 38.222889, 50.005455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351206, 38.377098, 50.454643>,  <29.515173, 38.297550, 49.757492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351206, 38.377098, 50.454643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.749552, 38.387737, 50.419888>,  <29.988560, 38.394119, 50.399033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.749552, 38.387737, 50.419888>,  <29.351206, 38.377098, 50.454643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749552, 38.387737, 50.419888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082183, 0.144338, 0.986110,
		0.038764, -0.989171, 0.141555,
		0.995863, 0.026592, -0.086888,
		30.048311, 38.395714, 50.393822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662443, 37.941658, 50.894321>,  <29.351206, 38.377098, 50.454643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662443, 37.941658, 50.894321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.934801, 38.230518, 50.845535>,  <30.098215, 38.403835, 50.816265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.934801, 38.230518, 50.845535>,  <29.662443, 37.941658, 50.894321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934801, 38.230518, 50.845535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061231, 0.109819, 0.992064,
		0.729817, -0.682959, 0.030557,
		0.680895, 0.722154, -0.121966,
		30.139071, 38.447166, 50.808945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166866, 37.896843, 51.577633>,  <29.662443, 37.941658, 50.894321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166866, 37.896843, 51.577633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.243761, 38.249115, 51.404449>,  <30.289898, 38.460476, 51.300541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.243761, 38.249115, 51.404449>,  <30.166866, 37.896843, 51.577633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243761, 38.249115, 51.404449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089606, 0.423589, 0.901412,
		0.977249, -0.212080, 0.002515,
		0.192237, 0.880679, -0.432956,
		30.301432, 38.513317, 51.274563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838568, 38.168266, 51.838055>,  <30.166866, 37.896843, 51.577633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838568, 38.168266, 51.838055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.632435, 38.483624, 51.703671>,  <30.508755, 38.672836, 51.623039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.632435, 38.483624, 51.703671>,  <30.838568, 38.168266, 51.838055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632435, 38.483624, 51.703671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011635, 0.385549, 0.922614,
		0.856911, 0.479362, -0.189513,
		-0.515332, 0.788394, -0.335959,
		30.477835, 38.720142, 51.602882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100790, 38.647598, 52.138515>,  <30.838568, 38.168266, 51.838055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100790, 38.647598, 52.138515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.748390, 38.811611, 52.044102>,  <30.536949, 38.910019, 51.987453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.748390, 38.811611, 52.044102>,  <31.100790, 38.647598, 52.138515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748390, 38.811611, 52.044102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130761, 0.268433, 0.954382,
		0.454686, 0.871676, -0.182874,
		-0.881001, 0.410031, -0.236034,
		30.484091, 38.934620, 51.973293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112724, 39.357159, 52.496857>,  <31.100790, 38.647598, 52.138515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112724, 39.357159, 52.496857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.745155, 39.213661, 52.431278>,  <30.524614, 39.127563, 52.391933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.745155, 39.213661, 52.431278>,  <31.112724, 39.357159, 52.496857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745155, 39.213661, 52.431278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255295, 0.224123, 0.940528,
		-0.300669, 0.906128, -0.297539,
		-0.918925, -0.358748, -0.163943,
		30.469479, 39.106037, 52.382095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428335, 40.023972, 52.699715>,  <31.112724, 39.357159, 52.496857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428335, 40.023972, 52.699715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.775623, 40.055561, 52.895657>,  <31.983995, 40.074512, 53.013222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.775623, 40.055561, 52.895657>,  <31.428335, 40.023972, 52.699715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775623, 40.055561, 52.895657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493875, -0.232627, -0.837838,
		0.047791, 0.969355, -0.240972,
		0.868219, 0.078969, 0.489858,
		32.036087, 40.079250, 53.042614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964916, 40.375214, 52.251701>,  <31.428335, 40.023972, 52.699715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964916, 40.375214, 52.251701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.213497, 40.235752, 52.532337>,  <32.362648, 40.152073, 52.700718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.213497, 40.235752, 52.532337>,  <31.964916, 40.375214, 52.251701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213497, 40.235752, 52.532337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667808, -0.232526, -0.707082,
		0.409668, 0.907948, 0.088332,
		0.621454, -0.348657, 0.701593,
		32.399933, 40.131153, 52.742817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651299, 40.759537, 52.252140>,  <31.964916, 40.375214, 52.251701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651299, 40.759537, 52.252140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.699844, 40.396172, 52.412167>,  <32.728970, 40.178154, 52.508183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.699844, 40.396172, 52.412167>,  <32.651299, 40.759537, 52.252140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699844, 40.396172, 52.412167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777430, -0.163603, -0.607319,
		0.617150, 0.384732, 0.686372,
		0.121363, -0.908413, 0.400070,
		32.736252, 40.123646, 52.532188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289028, 40.712757, 52.412151>,  <32.651299, 40.759537, 52.252140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289028, 40.712757, 52.412151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.178036, 40.330212, 52.375561>,  <33.111439, 40.100685, 52.353607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.178036, 40.330212, 52.375561>,  <33.289028, 40.712757, 52.412151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178036, 40.330212, 52.375561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884452, -0.217109, -0.413048,
		0.375163, -0.195523, 0.906103,
		-0.277483, -0.956365, -0.091480,
		33.094791, 40.043301, 52.348118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908714, 40.313549, 52.604298>,  <33.289028, 40.712757, 52.412151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908714, 40.313549, 52.604298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.671463, 40.043823, 52.428341>,  <33.529110, 39.881989, 52.322769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.671463, 40.043823, 52.428341>,  <33.908714, 40.313549, 52.604298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671463, 40.043823, 52.428341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794201, -0.400420, -0.457064,
		0.132063, -0.620458, 0.773040,
		-0.593130, -0.674311, -0.439888,
		33.493523, 39.841530, 52.296375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307785, 39.743382, 52.527092>,  <33.908714, 40.313549, 52.604298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307785, 39.743382, 52.527092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.024822, 39.671940, 52.253544>,  <33.855045, 39.629074, 52.089417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.024822, 39.671940, 52.253544>,  <34.307785, 39.743382, 52.527092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024822, 39.671940, 52.253544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700149, -0.309580, -0.643390,
		-0.096798, -0.933948, 0.344050,
		-0.707404, -0.178608, -0.683870,
		33.812599, 39.618359, 52.048382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386223, 39.027267, 52.317989>,  <34.307785, 39.743382, 52.527092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386223, 39.027267, 52.317989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.193081, 39.215145, 52.022358>,  <34.077194, 39.327873, 51.844978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.193081, 39.215145, 52.022358>,  <34.386223, 39.027267, 52.317989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193081, 39.215145, 52.022358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607390, -0.428334, -0.669035,
		-0.630813, -0.771957, -0.078462,
		-0.482859, 0.469693, -0.739078,
		34.048222, 39.356052, 51.800636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119862, 38.471874, 51.858334>,  <34.386223, 39.027267, 52.317989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119862, 38.471874, 51.858334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.152596, 38.806870, 51.642216>,  <34.172237, 39.007866, 51.512547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.152596, 38.806870, 51.642216>,  <34.119862, 38.471874, 51.858334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152596, 38.806870, 51.642216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617235, -0.468223, -0.632289,
		-0.782512, -0.281744, -0.555244,
		0.081835, 0.837489, -0.540292,
		34.177147, 39.058117, 51.480129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142399, 38.147915, 51.267723>,  <34.119862, 38.471874, 51.858334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142399, 38.147915, 51.267723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.257774, 38.516712, 51.164394>,  <34.327000, 38.737991, 51.102398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.257774, 38.516712, 51.164394>,  <34.142399, 38.147915, 51.267723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257774, 38.516712, 51.164394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478545, -0.372494, -0.795138,
		-0.829335, 0.105732, -0.548657,
		0.288443, 0.921992, -0.258325,
		34.344307, 38.793308, 51.086899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081711, 38.121452, 50.602787>,  <34.142399, 38.147915, 51.267723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081711, 38.121452, 50.602787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.291893, 38.455940, 50.665562>,  <34.418003, 38.656635, 50.703228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.291893, 38.455940, 50.665562>,  <34.081711, 38.121452, 50.602787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291893, 38.455940, 50.665562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481104, -0.139886, -0.865431,
		-0.701740, 0.530247, -0.475814,
		0.525452, 0.836224, 0.156940,
		34.449528, 38.706806, 50.712643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038509, 38.456802, 49.979748>,  <34.081711, 38.121452, 50.602787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038509, 38.456802, 49.979748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.380634, 38.562336, 50.158108>,  <34.585911, 38.625656, 50.265121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.380634, 38.562336, 50.158108>,  <34.038509, 38.456802, 49.979748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380634, 38.562336, 50.158108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477561, -0.067718, -0.875985,
		-0.200921, 0.962188, -0.183918,
		0.855317, 0.263836, 0.445897,
		34.637230, 38.641487, 50.291878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417145, 38.987640, 49.539501>,  <34.038509, 38.456802, 49.979748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417145, 38.987640, 49.539501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.675785, 38.819656, 49.794228>,  <34.830971, 38.718868, 49.947063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.675785, 38.819656, 49.794228>,  <34.417145, 38.987640, 49.539501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675785, 38.819656, 49.794228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615697, -0.205543, -0.760703,
		0.450355, 0.883962, 0.125660,
		0.646605, -0.419955, 0.636820,
		34.869766, 38.693668, 49.985275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.526516, 40.546909, 58.356125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.174362, 40.715816, 58.442482>,  <30.963070, 40.817162, 58.494297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.174362, 40.715816, 58.442482>,  <31.526516, 40.546909, 58.356125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174362, 40.715816, 58.442482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181237, 0.121109, -0.975954,
		-0.438264, -0.898343, -0.030092,
		-0.880386, 0.422271, 0.215890,
		30.910246, 40.842499, 58.507248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954149, 40.161060, 58.103889>,  <31.526516, 40.546909, 58.356125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954149, 40.161060, 58.103889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.848936, 40.546856, 58.113483>,  <30.785809, 40.778332, 58.119240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.848936, 40.546856, 58.113483>,  <30.954149, 40.161060, 58.103889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848936, 40.546856, 58.113483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022695, 0.018664, -0.999568,
		-0.964520, -0.263463, 0.016980,
		-0.263032, 0.964489, 0.023981,
		30.770027, 40.836205, 58.120678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576073, 40.169781, 57.493591>,  <30.954149, 40.161060, 58.103889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576073, 40.169781, 57.493591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.619375, 40.553364, 57.598415>,  <30.645357, 40.783516, 57.661308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.619375, 40.553364, 57.598415>,  <30.576073, 40.169781, 57.493591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619375, 40.553364, 57.598415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050921, 0.268611, -0.961902,
		-0.992818, 0.090788, 0.077910,
		0.108257, 0.958961, 0.262059,
		30.651852, 40.841053, 57.677032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057487, 40.527290, 57.165264>,  <30.576073, 40.169781, 57.493591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057487, 40.527290, 57.165264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.344364, 40.799698, 57.224392>,  <30.516489, 40.963142, 57.259869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.344364, 40.799698, 57.224392>,  <30.057487, 40.527290, 57.165264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344364, 40.799698, 57.224392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042928, 0.168536, -0.984760,
		-0.695555, 0.712605, 0.091637,
		0.717189, 0.681021, 0.147817,
		30.559521, 41.004005, 57.268738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921719, 41.202412, 56.859859>,  <30.057487, 40.527290, 57.165264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921719, 41.202412, 56.859859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.318359, 41.153965, 56.878010>,  <30.556343, 41.124897, 56.888901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.318359, 41.153965, 56.878010>,  <29.921719, 41.202412, 56.859859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318359, 41.153965, 56.878010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055375, 0.080536, -0.995212,
		0.116884, 0.989365, 0.086566,
		0.991600, -0.121118, 0.045372,
		30.615839, 41.117630, 56.891621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213682, 41.713432, 56.346149>,  <29.921719, 41.202412, 56.859859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213682, 41.713432, 56.346149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.485447, 41.423515, 56.391884>,  <30.648506, 41.249565, 56.419323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.485447, 41.423515, 56.391884>,  <30.213682, 41.713432, 56.346149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485447, 41.423515, 56.391884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263013, 0.095097, -0.960094,
		0.684997, 0.682372, 0.255240,
		0.679414, -0.724793, 0.114332,
		30.689272, 41.206078, 56.426182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723270, 41.904213, 55.904480>,  <30.213682, 41.713432, 56.346149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723270, 41.904213, 55.904480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.823404, 41.521729, 55.965134>,  <30.883484, 41.292236, 56.001526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.823404, 41.521729, 55.965134>,  <30.723270, 41.904213, 55.904480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823404, 41.521729, 55.965134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326760, -0.063986, -0.942939,
		0.911351, 0.285598, 0.296434,
		0.250333, -0.956211, 0.151635,
		30.898504, 41.234863, 56.010624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426413, 41.890396, 55.685806>,  <30.723270, 41.904213, 55.904480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426413, 41.890396, 55.685806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.291773, 41.513844, 55.694824>,  <31.210989, 41.287914, 55.700233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.291773, 41.513844, 55.694824>,  <31.426413, 41.890396, 55.685806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291773, 41.513844, 55.694824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464392, -0.186780, -0.865709,
		0.819171, -0.280926, 0.500039,
		-0.336597, -0.941379, 0.022545,
		31.190794, 41.231430, 55.701588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007774, 41.435806, 55.583298>,  <31.426413, 41.890396, 55.685806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007774, 41.435806, 55.583298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.683901, 41.241737, 55.451218>,  <31.489578, 41.125298, 55.371971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.683901, 41.241737, 55.451218>,  <32.007774, 41.435806, 55.583298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683901, 41.241737, 55.451218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508335, -0.298612, -0.807729,
		0.293284, -0.821853, 0.488408,
		-0.809679, -0.485169, -0.330198,
		31.440996, 41.096188, 55.352158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346405, 40.775894, 55.370441>,  <32.007774, 41.435806, 55.583298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346405, 40.775894, 55.370441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.978956, 40.770111, 55.212494>,  <31.758488, 40.766640, 55.117725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.978956, 40.770111, 55.212494>,  <32.346405, 40.775894, 55.370441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978956, 40.770111, 55.212494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362327, -0.429527, -0.827179,
		-0.157645, -0.902938, 0.399814,
		-0.918622, -0.014463, -0.394872,
		31.703369, 40.765774, 55.094032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248409, 40.121380, 55.140999>,  <32.346405, 40.775894, 55.370441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248409, 40.121380, 55.140999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.981686, 40.326225, 54.924446>,  <31.821650, 40.449135, 54.794514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.981686, 40.326225, 54.924446>,  <32.248409, 40.121380, 55.140999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981686, 40.326225, 54.924446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359119, -0.415737, -0.835581,
		-0.652988, -0.751598, 0.093309,
		-0.666813, 0.512116, -0.541384,
		31.781641, 40.479858, 54.762032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965057, 39.592770, 54.702602>,  <32.248409, 40.121380, 55.140999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965057, 39.592770, 54.702602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.889027, 39.926712, 54.495960>,  <31.843409, 40.127079, 54.371975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.889027, 39.926712, 54.495960>,  <31.965057, 39.592770, 54.702602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889027, 39.926712, 54.495960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375948, -0.424196, -0.823845,
		-0.906937, -0.350809, -0.233235,
		-0.190075, 0.834860, -0.516605,
		31.832005, 40.177170, 54.340981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679426, 39.249107, 53.973801>,  <31.965057, 39.592770, 54.702602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679426, 39.249107, 53.973801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.746454, 39.641140, 53.931183>,  <31.786671, 39.876362, 53.905613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.746454, 39.641140, 53.931183>,  <31.679426, 39.249107, 53.973801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746454, 39.641140, 53.931183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186134, -0.137581, -0.972844,
		-0.968129, 0.143190, -0.205482,
		0.167572, 0.980086, -0.106543,
		31.796726, 39.935165, 53.899220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372681, 39.458836, 53.283401>,  <31.679426, 39.249107, 53.973801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372681, 39.458836, 53.283401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.660328, 39.707973, 53.406651>,  <31.832916, 39.857456, 53.480598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.660328, 39.707973, 53.406651>,  <31.372681, 39.458836, 53.283401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660328, 39.707973, 53.406651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515295, -0.180488, -0.837792,
		-0.466199, 0.761245, -0.450739,
		0.719118, 0.622841, 0.308122,
		31.876062, 39.894825, 53.499088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667198, 39.779377, 53.028484>,  <31.372681, 39.458836, 53.283401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667198, 39.779377, 53.028484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.430567, 39.491535, 52.883045>,  <30.288588, 39.318829, 52.795780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.430567, 39.491535, 52.883045>,  <30.667198, 39.779377, 53.028484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430567, 39.491535, 52.883045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313022, -0.210607, 0.926100,
		-0.743003, 0.661675, -0.100662,
		-0.591577, -0.719605, -0.363600,
		30.253094, 39.275654, 52.773964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960215, 39.993500, 53.334934>,  <30.667198, 39.779377, 53.028484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960215, 39.993500, 53.334934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.937609, 39.612099, 53.216518>,  <29.924046, 39.383259, 53.145470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.937609, 39.612099, 53.216518>,  <29.960215, 39.993500, 53.334934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937609, 39.612099, 53.216518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374833, -0.254563, 0.891458,
		-0.925368, 0.161347, -0.343018,
		-0.056514, -0.953502, -0.296043,
		29.920654, 39.326050, 53.127705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289583, 39.787586, 53.307175>,  <29.960215, 39.993500, 53.334934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289583, 39.787586, 53.307175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.513680, 39.463432, 53.375774>,  <29.648138, 39.268940, 53.416935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.513680, 39.463432, 53.375774>,  <29.289583, 39.787586, 53.307175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513680, 39.463432, 53.375774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414310, -0.094868, 0.905178,
		-0.717271, -0.578170, -0.388899,
		0.560241, -0.810382, 0.171495,
		29.681751, 39.220318, 53.427223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793308, 39.392288, 53.593357>,  <29.289583, 39.787586, 53.307175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793308, 39.392288, 53.593357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.152628, 39.271446, 53.720978>,  <29.368219, 39.198940, 53.797550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.152628, 39.271446, 53.720978>,  <28.793308, 39.392288, 53.593357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152628, 39.271446, 53.720978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411918, -0.326325, 0.850785,
		-0.152911, -0.895682, -0.417579,
		0.898300, -0.302102, 0.319049,
		29.422117, 39.180817, 53.816692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601023, 38.967388, 54.147423>,  <28.793308, 39.392288, 53.593357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601023, 38.967388, 54.147423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.995035, 38.974236, 54.216030>,  <29.231443, 38.978344, 54.257195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.995035, 38.974236, 54.216030>,  <28.601023, 38.967388, 54.147423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995035, 38.974236, 54.216030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159856, -0.281507, 0.946150,
		0.064478, -0.959406, -0.274557,
		0.985032, 0.017117, 0.171518,
		29.290545, 38.979370, 54.267487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795517, 38.228382, 54.537025>,  <28.601023, 38.967388, 54.147423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795517, 38.228382, 54.537025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.059330, 38.517956, 54.617966>,  <29.217617, 38.691700, 54.666531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.059330, 38.517956, 54.617966>,  <28.795517, 38.228382, 54.537025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059330, 38.517956, 54.617966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077939, -0.201882, 0.976304,
		0.747626, -0.659673, -0.076725,
		0.659531, 0.723930, 0.202347,
		29.257189, 38.735134, 54.678669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291546, 37.923584, 55.086517>,  <28.795517, 38.228382, 54.537025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291546, 37.923584, 55.086517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.344410, 38.319965, 55.095825>,  <29.376127, 38.557796, 55.101410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.344410, 38.319965, 55.095825>,  <29.291546, 37.923584, 55.086517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344410, 38.319965, 55.095825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063723, -0.014937, 0.997856,
		0.989178, -0.133358, 0.061173,
		0.132158, 0.990955, 0.023273,
		29.384058, 38.617252, 55.102806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737095, 37.975018, 55.680725>,  <29.291546, 37.923584, 55.086517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737095, 37.975018, 55.680725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.596172, 38.344982, 55.623573>,  <29.511618, 38.566963, 55.589283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.596172, 38.344982, 55.623573>,  <29.737095, 37.975018, 55.680725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596172, 38.344982, 55.623573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015392, 0.158374, 0.987259,
		0.935758, 0.345620, -0.070033,
		-0.352308, 0.924913, -0.142880,
		29.490480, 38.622456, 55.580708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159166, 38.503902, 55.987415>,  <29.737095, 37.975018, 55.680725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159166, 38.503902, 55.987415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.795544, 38.670185, 55.976101>,  <29.577370, 38.769955, 55.969311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.795544, 38.670185, 55.976101>,  <30.159166, 38.503902, 55.987415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795544, 38.670185, 55.976101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104337, 0.292835, 0.950453,
		0.403393, 0.861067, -0.309577,
		-0.909059, 0.415707, -0.028286,
		29.522825, 38.794899, 55.967613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018848, 39.061440, 56.560123>,  <30.159166, 38.503902, 55.987415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018848, 39.061440, 56.560123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.640392, 38.979832, 56.459568>,  <29.413319, 38.930866, 56.399235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.640392, 38.979832, 56.459568>,  <30.018848, 39.061440, 56.560123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640392, 38.979832, 56.459568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283871, 0.149368, 0.947157,
		-0.155686, 0.967505, -0.199237,
		-0.946139, -0.204017, -0.251392,
		29.356550, 38.918625, 56.384151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613455, 39.386364, 56.996635>,  <30.018848, 39.061440, 56.560123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613455, 39.386364, 56.996635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.336386, 39.127075, 56.870140>,  <29.170145, 38.971500, 56.794243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.336386, 39.127075, 56.870140>,  <29.613455, 39.386364, 56.996635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336386, 39.127075, 56.870140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380161, -0.044478, 0.923850,
		-0.612929, 0.760148, -0.215621,
		-0.692673, -0.648226, -0.316240,
		29.128584, 38.932606, 56.775269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921127, 39.669834, 57.339039>,  <29.613455, 39.386364, 56.996635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921127, 39.669834, 57.339039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.890526, 39.283634, 57.239471>,  <28.872166, 39.051914, 57.179729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.890526, 39.283634, 57.239471>,  <28.921127, 39.669834, 57.339039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890526, 39.283634, 57.239471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334499, -0.210333, 0.918624,
		-0.939286, 0.153543, -0.306867,
		-0.076504, -0.965497, -0.248923,
		28.867575, 38.993984, 57.164795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278013, 39.606125, 57.526127>,  <28.921127, 39.669834, 57.339039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278013, 39.606125, 57.526127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.447124, 39.246334, 57.481956>,  <28.548592, 39.030460, 57.455452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.447124, 39.246334, 57.481956>,  <28.278013, 39.606125, 57.526127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447124, 39.246334, 57.481956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592423, -0.366530, 0.717419,
		-0.685781, -0.237886, -0.687833,
		0.422776, -0.899481, -0.110430,
		28.573957, 38.976490, 57.448826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758532, 39.174030, 57.572716>,  <28.278013, 39.606125, 57.526127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758532, 39.174030, 57.572716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.064535, 38.927856, 57.648617>,  <28.248137, 38.780151, 57.694157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.064535, 38.927856, 57.648617>,  <27.758532, 39.174030, 57.572716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064535, 38.927856, 57.648617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460108, -0.316121, 0.829680,
		-0.450624, -0.722021, -0.524999,
		0.765009, -0.615430, 0.189756,
		28.294037, 38.743229, 57.705544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.268379, 35.317783, 60.146721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.984737, 35.396984, 59.876030>,  <34.814552, 35.444504, 59.713615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.984737, 35.396984, 59.876030>,  <35.268379, 35.317783, 60.146721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984737, 35.396984, 59.876030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598511, -0.338375, -0.726146,
		-0.372768, -0.919944, 0.121436,
		-0.709104, 0.198003, -0.676732,
		34.772007, 35.456387, 59.673012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238091, 34.745766, 59.779507>,  <35.268379, 35.317783, 60.146721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238091, 34.745766, 59.779507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.071907, 35.014416, 59.534130>,  <34.972198, 35.175606, 59.386906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.071907, 35.014416, 59.534130>,  <35.238091, 34.745766, 59.779507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071907, 35.014416, 59.534130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580194, -0.323730, -0.747378,
		-0.700550, -0.666418, -0.255179,
		-0.415458, 0.671629, -0.613441,
		34.947269, 35.215904, 59.350098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034000, 34.292225, 59.072609>,  <35.238091, 34.745766, 59.779507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034000, 34.292225, 59.072609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.019394, 34.681244, 58.980679>,  <35.010628, 34.914654, 58.925522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.019394, 34.681244, 58.980679>,  <35.034000, 34.292225, 59.072609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019394, 34.681244, 58.980679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292549, -0.209497, -0.933020,
		-0.955553, -0.101309, -0.276867,
		-0.036520, 0.972547, -0.229823,
		35.008438, 34.973007, 58.911732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684700, 34.342598, 58.501244>,  <35.034000, 34.292225, 59.072609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684700, 34.342598, 58.501244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.903664, 34.677330, 58.498142>,  <35.035042, 34.878170, 58.496281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.903664, 34.677330, 58.498142>,  <34.684700, 34.342598, 58.501244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903664, 34.677330, 58.498142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344853, -0.234000, -0.909022,
		-0.762512, 0.494931, -0.416677,
		0.547405, 0.836832, -0.007749,
		35.067886, 34.928379, 58.495819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557838, 34.749123, 57.812939>,  <34.684700, 34.342598, 58.501244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557838, 34.749123, 57.812939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892544, 34.875317, 57.991955>,  <35.093369, 34.951035, 58.099365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892544, 34.875317, 57.991955>,  <34.557838, 34.749123, 57.812939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892544, 34.875317, 57.991955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499545, -0.105143, -0.859883,
		-0.224228, 0.943086, -0.245581,
		0.836765, 0.315489, 0.447538,
		35.143574, 34.969963, 58.126217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741196, 35.222908, 57.357513>,  <34.557838, 34.749123, 57.812939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741196, 35.222908, 57.357513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.075130, 35.136360, 57.559994>,  <35.275490, 35.084431, 57.681480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.075130, 35.136360, 57.559994>,  <34.741196, 35.222908, 57.357513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075130, 35.136360, 57.559994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508156, -0.050779, -0.859767,
		0.211729, 0.974991, 0.067556,
		0.834834, -0.216366, 0.506199,
		35.325581, 35.071449, 57.711853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231281, 35.640896, 57.061363>,  <34.741196, 35.222908, 57.357513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231281, 35.640896, 57.061363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415779, 35.336781, 57.244324>,  <35.526478, 35.154312, 57.354099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415779, 35.336781, 57.244324>,  <35.231281, 35.640896, 57.061363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415779, 35.336781, 57.244324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582940, -0.128972, -0.802214,
		0.668907, 0.636651, 0.383716,
		0.461242, -0.760290, 0.457400,
		35.554153, 35.108692, 57.381542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914749, 35.636406, 56.960011>,  <35.231281, 35.640896, 57.061363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914749, 35.636406, 56.960011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.925907, 35.252918, 57.073200>,  <35.932602, 35.022827, 57.141113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.925907, 35.252918, 57.073200>,  <35.914749, 35.636406, 56.960011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925907, 35.252918, 57.073200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485158, -0.234523, -0.842390,
		0.873981, 0.160791, 0.458588,
		0.027899, -0.958721, 0.282978,
		35.934277, 34.965302, 57.158092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512848, 35.357700, 56.623173>,  <35.914749, 35.636406, 56.960011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512848, 35.357700, 56.623173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.298286, 35.035740, 56.724686>,  <36.169548, 34.842564, 56.785591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.298286, 35.035740, 56.724686>,  <36.512848, 35.357700, 56.623173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298286, 35.035740, 56.724686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270317, -0.448715, -0.851812,
		0.799499, -0.388315, 0.458271,
		-0.536404, -0.804901, 0.253779,
		36.137363, 34.794270, 56.800819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996147, 34.781734, 56.736294>,  <36.512848, 35.357700, 56.623173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996147, 34.781734, 56.736294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.650860, 34.617973, 56.618141>,  <36.443687, 34.519714, 56.547249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.650860, 34.617973, 56.618141>,  <36.996147, 34.781734, 56.736294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650860, 34.617973, 56.618141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444404, -0.338646, -0.829352,
		0.239512, -0.847176, 0.474265,
		-0.863214, -0.409405, -0.295379,
		36.391895, 34.495152, 56.529526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195637, 34.130642, 56.359806>,  <36.996147, 34.781734, 56.736294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195637, 34.130642, 56.359806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815052, 34.209408, 56.265198>,  <36.586700, 34.256668, 56.208431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815052, 34.209408, 56.265198>,  <37.195637, 34.130642, 56.359806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815052, 34.209408, 56.265198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161058, -0.336294, -0.927883,
		-0.262255, -0.920940, 0.288257,
		-0.951464, 0.196916, -0.236520,
		36.529613, 34.268482, 56.194241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960407, 33.530663, 56.043312>,  <37.195637, 34.130642, 56.359806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960407, 33.530663, 56.043312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722492, 33.819656, 55.902321>,  <36.579742, 33.993053, 55.817726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722492, 33.819656, 55.902321>,  <36.960407, 33.530663, 56.043312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722492, 33.819656, 55.902321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104389, -0.365346, -0.925000,
		-0.797073, -0.586977, 0.141885,
		-0.594791, 0.722481, -0.352482,
		36.544056, 34.036400, 55.796577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887245, 33.278423, 55.303875>,  <36.960407, 33.530663, 56.043312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887245, 33.278423, 55.303875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.684536, 33.622799, 55.321575>,  <36.562912, 33.829426, 55.332195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.684536, 33.622799, 55.321575>,  <36.887245, 33.278423, 55.303875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684536, 33.622799, 55.321575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020746, 0.063491, -0.997767,
		-0.861830, -0.504723, -0.050037,
		-0.506773, 0.860943, 0.044247,
		36.532505, 33.881081, 55.334850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280361, 33.180946, 54.881401>,  <36.887245, 33.278423, 55.303875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280361, 33.180946, 54.881401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.358025, 33.573273, 54.874393>,  <36.404621, 33.808666, 54.870190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.358025, 33.573273, 54.874393>,  <36.280361, 33.180946, 54.881401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358025, 33.573273, 54.874393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013302, -0.020489, -0.999702,
		-0.980880, 0.193867, -0.017025,
		0.194158, 0.980814, -0.017518,
		36.416271, 33.867516, 54.869137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665760, 32.770489, 54.636341>,  <36.280361, 33.180946, 54.881401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665760, 32.770489, 54.636341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.335014, 32.576008, 54.523273>,  <35.136566, 32.459320, 54.455433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.335014, 32.576008, 54.523273>,  <35.665760, 32.770489, 54.636341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335014, 32.576008, 54.523273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339434, 0.030688, 0.940129,
		-0.448416, 0.873309, -0.190408,
		-0.826866, -0.486200, -0.282670,
		35.086956, 32.430149, 54.438473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150230, 33.182335, 54.845459>,  <35.665760, 32.770489, 54.636341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150230, 33.182335, 54.845459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018620, 32.805965, 54.813438>,  <34.939655, 32.580143, 54.794224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018620, 32.805965, 54.813438>,  <35.150230, 33.182335, 54.845459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018620, 32.805965, 54.813438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435142, 0.075831, 0.897163,
		-0.838089, 0.330024, -0.434385,
		-0.329025, -0.940922, -0.080054,
		34.919910, 32.523689, 54.789421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448608, 33.183876, 55.024948>,  <35.150230, 33.182335, 54.845459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448608, 33.183876, 55.024948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.537361, 32.800823, 55.098389>,  <34.590611, 32.570992, 55.142452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.537361, 32.800823, 55.098389>,  <34.448608, 33.183876, 55.024948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537361, 32.800823, 55.098389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455638, 0.064644, 0.887815,
		-0.862070, -0.280640, -0.421991,
		0.221877, -0.957634, 0.183598,
		34.603924, 32.513535, 55.153469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774525, 32.879593, 55.076866>,  <34.448608, 33.183876, 55.024948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774525, 32.879593, 55.076866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.053516, 32.669815, 55.272205>,  <34.220913, 32.543949, 55.389408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.053516, 32.669815, 55.272205>,  <33.774525, 32.879593, 55.076866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053516, 32.669815, 55.272205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516846, 0.103885, 0.849752,
		-0.496378, -0.845084, -0.198599,
		0.697480, -0.524444, 0.488344,
		34.262760, 32.512482, 55.418709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375687, 32.647987, 55.507637>,  <33.774525, 32.879593, 55.076866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375687, 32.647987, 55.507637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.726425, 32.523567, 55.654274>,  <33.936867, 32.448914, 55.742256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.726425, 32.523567, 55.654274>,  <33.375687, 32.647987, 55.507637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726425, 32.523567, 55.654274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403597, -0.061876, 0.912842,
		-0.261256, -0.948377, -0.179794,
		0.876844, -0.311050, 0.366596,
		33.989479, 32.430252, 55.764252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229004, 32.014446, 55.824646>,  <33.375687, 32.647987, 55.507637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229004, 32.014446, 55.824646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.541325, 32.208698, 55.981880>,  <33.728714, 32.325249, 56.076221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.541325, 32.208698, 55.981880>,  <33.229004, 32.014446, 55.824646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541325, 32.208698, 55.981880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513097, 0.139421, 0.846932,
		0.356494, -0.862973, 0.358036,
		0.780797, 0.485633, 0.393086,
		33.775562, 32.354389, 56.099808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278126, 31.813347, 56.515190>,  <33.229004, 32.014446, 55.824646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278126, 31.813347, 56.515190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507721, 32.140442, 56.532372>,  <33.645477, 32.336700, 56.542683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507721, 32.140442, 56.532372>,  <33.278126, 31.813347, 56.515190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507721, 32.140442, 56.532372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391084, 0.227663, 0.891753,
		0.719441, -0.528652, 0.450480,
		0.573985, 0.817739, 0.042957,
		33.679916, 32.385765, 56.545258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570515, 31.764618, 57.199749>,  <33.278126, 31.813347, 56.515190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570515, 31.764618, 57.199749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.605759, 32.146465, 57.085949>,  <33.626904, 32.375572, 57.017670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.605759, 32.146465, 57.085949>,  <33.570515, 31.764618, 57.199749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605759, 32.146465, 57.085949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346164, 0.297158, 0.889869,
		0.934027, 0.020078, 0.356637,
		0.088111, 0.954617, -0.284504,
		33.632191, 32.432850, 57.000599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878384, 32.013962, 57.707844>,  <33.570515, 31.764618, 57.199749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878384, 32.013962, 57.707844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.692650, 32.315388, 57.521713>,  <33.581211, 32.496243, 57.410034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.692650, 32.315388, 57.521713>,  <33.878384, 32.013962, 57.707844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692650, 32.315388, 57.521713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426823, 0.269966, 0.863099,
		0.776027, 0.599378, 0.196286,
		-0.464332, 0.753567, -0.465330,
		33.553349, 32.541458, 57.382114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062939, 32.729069, 58.060406>,  <33.878384, 32.013962, 57.707844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062939, 32.729069, 58.060406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.717094, 32.800789, 57.872665>,  <33.509586, 32.843822, 57.760021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.717094, 32.800789, 57.872665>,  <34.062939, 32.729069, 58.060406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717094, 32.800789, 57.872665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317397, 0.529240, 0.786870,
		0.389488, 0.829311, -0.400679,
		-0.864614, 0.179302, -0.469353,
		33.457710, 32.854580, 57.731861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878735, 33.366638, 58.214031>,  <34.062939, 32.729069, 58.060406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878735, 33.366638, 58.214031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.530048, 33.214588, 58.090347>,  <33.320835, 33.123356, 58.016136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.530048, 33.214588, 58.090347>,  <33.878735, 33.366638, 58.214031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530048, 33.214588, 58.090347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479093, 0.528718, 0.700662,
		-0.102855, 0.758921, -0.643009,
		-0.871717, -0.380127, -0.309212,
		33.268532, 33.100552, 57.997585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330807, 34.001305, 58.099255>,  <33.878735, 33.366638, 58.214031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330807, 34.001305, 58.099255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.103729, 33.673382, 58.129272>,  <32.967484, 33.476627, 58.147282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.103729, 33.673382, 58.129272>,  <33.330807, 34.001305, 58.099255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103729, 33.673382, 58.129272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545227, 0.442719, 0.711848,
		-0.616804, 0.363198, -0.698312,
		-0.567698, -0.819810, 0.075046,
		32.933418, 33.427441, 58.151787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676968, 34.235657, 58.003338>,  <33.330807, 34.001305, 58.099255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676968, 34.235657, 58.003338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.673897, 33.891582, 58.207306>,  <32.672054, 33.685139, 58.329689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.673897, 33.891582, 58.207306>,  <32.676968, 34.235657, 58.003338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673897, 33.891582, 58.207306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565766, 0.424209, 0.707075,
		-0.824530, -0.283068, -0.489921,
		-0.007678, -0.860186, 0.509923,
		32.671593, 33.633526, 58.360283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952684, 34.159626, 58.173149>,  <32.676968, 34.235657, 58.003338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952684, 34.159626, 58.173149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.190292, 33.952419, 58.419334>,  <32.332859, 33.828094, 58.567047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.190292, 33.952419, 58.419334>,  <31.952684, 34.159626, 58.173149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190292, 33.952419, 58.419334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515389, 0.342370, 0.785593,
		-0.617669, -0.783862, -0.063606,
		0.594020, -0.518018, 0.615465,
		32.368500, 33.797012, 58.603973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210012, 34.118954, 58.348949>,  <31.952684, 34.159626, 58.173149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210012, 34.118954, 58.348949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.844868, 33.956913, 58.328640>,  <30.625780, 33.859688, 58.316452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.844868, 33.956913, 58.328640>,  <31.210012, 34.118954, 58.348949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844868, 33.956913, 58.328640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237949, -0.426839, -0.872461,
		0.331759, -0.808519, 0.486038,
		-0.912862, -0.405099, -0.050778,
		30.571009, 33.835384, 58.313408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325031, 33.475414, 58.227993>,  <31.210012, 34.118954, 58.348949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325031, 33.475414, 58.227993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.951271, 33.529598, 58.096207>,  <30.727015, 33.562111, 58.017136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.951271, 33.529598, 58.096207>,  <31.325031, 33.475414, 58.227993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951271, 33.529598, 58.096207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237907, -0.451071, -0.860195,
		-0.265136, -0.882148, 0.389253,
		-0.934400, 0.135462, -0.329465,
		30.670952, 33.570236, 57.997368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107605, 32.890656, 57.852741>,  <31.325031, 33.475414, 58.227993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107605, 32.890656, 57.852741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.840599, 33.156914, 57.719269>,  <30.680395, 33.316669, 57.639183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.840599, 33.156914, 57.719269>,  <31.107605, 32.890656, 57.852741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840599, 33.156914, 57.719269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085643, -0.376530, -0.922437,
		-0.739656, -0.644317, 0.194331,
		-0.667514, 0.665643, -0.333684,
		30.640345, 33.356606, 57.619164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547590, 32.479191, 57.485744>,  <31.107605, 32.890656, 57.852741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547590, 32.479191, 57.485744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.552637, 32.861603, 57.368546>,  <30.555666, 33.091049, 57.298225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.552637, 32.861603, 57.368546>,  <30.547590, 32.479191, 57.485744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552637, 32.861603, 57.368546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075995, -0.293091, -0.953060,
		-0.997028, -0.010240, -0.076352,
		0.012618, 0.956030, -0.292998,
		30.556423, 33.148411, 57.280647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070095, 32.429428, 56.930058>,  <30.547590, 32.479191, 57.485744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070095, 32.429428, 56.930058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.292028, 32.756542, 56.868877>,  <30.425188, 32.952808, 56.832169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.292028, 32.756542, 56.868877>,  <30.070095, 32.429428, 56.930058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292028, 32.756542, 56.868877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123570, -0.262813, -0.956901,
		-0.822734, 0.512019, -0.246871,
		0.554832, 0.817781, -0.152955,
		30.458479, 33.001877, 56.822990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791044, 32.727657, 56.353779>,  <30.070095, 32.429428, 56.930058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791044, 32.727657, 56.353779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.161085, 32.874546, 56.392422>,  <30.383110, 32.962681, 56.415607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.161085, 32.874546, 56.392422>,  <29.791044, 32.727657, 56.353779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161085, 32.874546, 56.392422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113766, -0.025323, -0.993185,
		-0.362273, 0.929789, -0.065203,
		0.925103, 0.367221, 0.096604,
		30.438616, 32.984711, 56.421402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745544, 33.195168, 55.763664>,  <29.791044, 32.727657, 56.353779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745544, 33.195168, 55.763664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.125256, 33.150826, 55.881367>,  <30.353083, 33.124218, 55.951988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.125256, 33.150826, 55.881367>,  <29.745544, 33.195168, 55.763664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125256, 33.150826, 55.881367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310769, 0.188161, -0.931675,
		0.047917, 0.975862, 0.213068,
		0.949277, -0.110858, 0.294252,
		30.410038, 33.117569, 55.969643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076326, 33.635056, 55.462364>,  <29.745544, 33.195168, 55.763664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076326, 33.635056, 55.462364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.381573, 33.387871, 55.538025>,  <30.564720, 33.239559, 55.583424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.381573, 33.387871, 55.538025>,  <30.076326, 33.635056, 55.462364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381573, 33.387871, 55.538025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240177, -0.000542, -0.970729,
		0.599977, 0.786207, 0.148007,
		0.763114, -0.617963, 0.189154,
		30.610506, 33.202480, 55.594772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555435, 33.893360, 55.000149>,  <30.076326, 33.635056, 55.462364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555435, 33.893360, 55.000149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.670246, 33.526886, 55.112022>,  <30.739132, 33.307003, 55.179146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.670246, 33.526886, 55.112022>,  <30.555435, 33.893360, 55.000149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670246, 33.526886, 55.112022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338245, -0.176228, -0.924410,
		0.896217, 0.359933, 0.259313,
		0.287028, -0.916183, 0.279684,
		30.756355, 33.252029, 55.195927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257526, 33.804359, 54.794548>,  <30.555435, 33.893360, 55.000149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257526, 33.804359, 54.794548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.128603, 33.427662, 54.832970>,  <31.051249, 33.201641, 54.856022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.128603, 33.427662, 54.832970>,  <31.257526, 33.804359, 54.794548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128603, 33.427662, 54.832970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252455, -0.183305, -0.950087,
		0.912350, -0.281973, 0.296830,
		-0.322309, -0.941749, 0.096053,
		31.031910, 33.145138, 54.861786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817490, 33.411694, 54.523685>,  <31.257526, 33.804359, 54.794548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817490, 33.411694, 54.523685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.483065, 33.194557, 54.491886>,  <31.282410, 33.064274, 54.472809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.483065, 33.194557, 54.491886>,  <31.817490, 33.411694, 54.523685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483065, 33.194557, 54.491886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218200, -0.196060, -0.956007,
		0.503376, -0.816628, 0.282367,
		-0.836064, -0.542843, -0.079497,
		31.232246, 33.031704, 54.468037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957193, 32.830460, 54.141266>,  <31.817490, 33.411694, 54.523685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957193, 32.830460, 54.141266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.558060, 32.844894, 54.119274>,  <31.318579, 32.853558, 54.106079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.558060, 32.844894, 54.119274>,  <31.957193, 32.830460, 54.141266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558060, 32.844894, 54.119274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040125, -0.328266, -0.943733,
		-0.052107, -0.943896, 0.326107,
		-0.997835, 0.036090, -0.054979,
		31.258709, 32.855721, 54.102779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708698, 32.179836, 53.830570>,  <31.957193, 32.830460, 54.141266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708698, 32.179836, 53.830570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.433580, 32.464447, 53.773067>,  <31.268511, 32.635216, 53.738567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.433580, 32.464447, 53.773067>,  <31.708698, 32.179836, 53.830570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433580, 32.464447, 53.773067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024163, -0.220368, -0.975118,
		-0.725505, -0.667206, 0.168760,
		-0.687793, 0.711530, -0.143756,
		31.227242, 32.677906, 53.729942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188807, 31.814734, 53.471550>,  <31.708698, 32.179836, 53.830570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188807, 31.814734, 53.471550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.156216, 32.208107, 53.406776>,  <31.136662, 32.444130, 53.367912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.156216, 32.208107, 53.406776>,  <31.188807, 31.814734, 53.471550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156216, 32.208107, 53.406776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044213, -0.158748, -0.986328,
		-0.995694, -0.087522, -0.030546,
		-0.081476, 0.983432, -0.161934,
		31.131773, 32.503136, 53.358196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.506504, 38.353294, 57.578499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.845781, 38.402782, 57.784512>,  <28.049349, 38.432476, 57.908119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.845781, 38.402782, 57.784512>,  <27.506504, 38.353294, 57.578499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845781, 38.402782, 57.784512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447848, -0.351700, 0.822033,
		0.282839, -0.927901, -0.242903,
		0.848195, 0.123719, 0.515033,
		28.100241, 38.439899, 57.939022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214569, 37.944572, 58.143578>,  <27.506504, 38.353294, 57.578499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214569, 37.944572, 58.143578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.578438, 38.064762, 58.258270>,  <27.796759, 38.136875, 58.327084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.578438, 38.064762, 58.258270>,  <27.214569, 37.944572, 58.143578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578438, 38.064762, 58.258270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173858, -0.351484, 0.919909,
		0.377189, -0.886665, -0.267496,
		0.909671, 0.300473, 0.286730,
		27.851339, 38.154903, 58.344288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538078, 37.396076, 58.388626>,  <27.214569, 37.944572, 58.143578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.538078, 37.396076, 58.388626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.687822, 37.723133, 58.563587>,  <27.777668, 37.919365, 58.668564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.687822, 37.723133, 58.563587>,  <27.538078, 37.396076, 58.388626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687822, 37.723133, 58.563587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197809, -0.390432, 0.899130,
		0.905940, -0.423120, 0.015574,
		0.374359, 0.817638, 0.437405,
		27.800131, 37.968426, 58.694809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922686, 37.123924, 59.039448>,  <27.538078, 37.396076, 58.388626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922686, 37.123924, 59.039448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.836637, 37.514221, 59.055664>,  <27.785009, 37.748402, 59.065395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.836637, 37.514221, 59.055664>,  <27.922686, 37.123924, 59.039448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836637, 37.514221, 59.055664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128523, -0.069442, 0.989272,
		0.968094, 0.207602, 0.140344,
		-0.215121, 0.975746, 0.040545,
		27.772100, 37.806946, 59.067829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354601, 37.414589, 59.605152>,  <27.922686, 37.123924, 59.039448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354601, 37.414589, 59.605152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.050352, 37.668976, 59.552986>,  <27.867804, 37.821606, 59.521687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.050352, 37.668976, 59.552986>,  <28.354601, 37.414589, 59.605152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050352, 37.668976, 59.552986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078703, 0.109069, 0.990914,
		0.644409, 0.763972, -0.032908,
		-0.760620, 0.635964, -0.130412,
		27.822166, 37.859764, 59.513863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464045, 37.903450, 60.055489>,  <28.354601, 37.414589, 59.605152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464045, 37.903450, 60.055489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.074186, 37.943760, 59.975578>,  <27.840271, 37.967945, 59.927631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.074186, 37.943760, 59.975578>,  <28.464045, 37.903450, 60.055489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074186, 37.943760, 59.975578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190317, 0.096160, 0.977002,
		0.117668, 0.990251, -0.074543,
		-0.974645, 0.100775, -0.199777,
		27.781794, 37.973991, 59.915646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217203, 38.465290, 60.450100>,  <28.464045, 37.903450, 60.055489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217203, 38.465290, 60.450100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.892845, 38.246502, 60.366894>,  <27.698231, 38.115227, 60.316971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.892845, 38.246502, 60.366894>,  <28.217203, 38.465290, 60.450100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892845, 38.246502, 60.366894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250679, 0.003485, 0.968064,
		-0.528782, 0.837142, -0.139941,
		-0.810895, -0.546975, -0.208011,
		27.649576, 38.082409, 60.304489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650949, 38.871185, 60.832787>,  <28.217203, 38.465290, 60.450100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650949, 38.871185, 60.832787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.457218, 38.537621, 60.726948>,  <27.340981, 38.337479, 60.663445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.457218, 38.537621, 60.726948>,  <27.650949, 38.871185, 60.832787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457218, 38.537621, 60.726948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564758, 0.067019, 0.822531,
		-0.668189, 0.547806, -0.503420,
		-0.484326, -0.833917, -0.264596,
		27.311920, 38.287445, 60.647568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006393, 39.029377, 61.012337>,  <27.650949, 38.871185, 60.832787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006393, 39.029377, 61.012337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.035444, 38.630436, 61.011539>,  <27.052874, 38.391071, 61.011063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.035444, 38.630436, 61.011539>,  <27.006393, 39.029377, 61.012337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035444, 38.630436, 61.011539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434610, -0.033444, 0.899998,
		-0.897686, -0.064498, -0.435890,
		0.072625, -0.997357, -0.001991,
		27.057232, 38.331230, 61.010941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355185, 38.740269, 61.084557>,  <27.006393, 39.029377, 61.012337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355185, 38.740269, 61.084557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.611355, 38.458569, 61.207123>,  <26.765057, 38.289551, 61.280663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.611355, 38.458569, 61.207123>,  <26.355185, 38.740269, 61.084557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611355, 38.458569, 61.207123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493553, -0.071708, 0.866754,
		-0.588436, -0.706325, -0.393507,
		0.640427, -0.704246, 0.306413,
		26.803484, 38.247295, 61.299046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957529, 38.256458, 61.469627>,  <26.355185, 38.740269, 61.084557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.957529, 38.256458, 61.469627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.338663, 38.207535, 61.580727>,  <26.567343, 38.178181, 61.647388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.338663, 38.207535, 61.580727>,  <25.957529, 38.256458, 61.469627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338663, 38.207535, 61.580727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282786, -0.025578, 0.958842,
		-0.110172, -0.992162, -0.058959,
		0.952835, -0.122310, 0.277752,
		26.624514, 38.170841, 61.664051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836691, 37.721016, 61.979389>,  <25.957529, 38.256458, 61.469627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836691, 37.721016, 61.979389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.191971, 37.893669, 62.042366>,  <26.405140, 37.997261, 62.080154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.191971, 37.893669, 62.042366>,  <25.836691, 37.721016, 61.979389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191971, 37.893669, 62.042366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147200, -0.057281, 0.987447,
		0.435237, -0.900227, 0.012660,
		0.888201, 0.431637, 0.157444,
		26.458431, 38.023159, 62.089600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156767, 37.257954, 62.383381>,  <25.836691, 37.721016, 61.979389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.156767, 37.257954, 62.383381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.315910, 37.621861, 62.430767>,  <26.411396, 37.840206, 62.459198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.315910, 37.621861, 62.430767>,  <26.156767, 37.257954, 62.383381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315910, 37.621861, 62.430767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083422, -0.092712, 0.992192,
		0.913647, -0.404633, 0.039009,
		0.397857, 0.909767, 0.118461,
		26.435268, 37.894791, 62.466305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516808, 36.630268, 62.126766>,  <26.156767, 37.257954, 62.383381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516808, 36.630268, 62.126766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.224216, 36.644306, 61.854382>,  <26.048662, 36.652729, 61.690952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.224216, 36.644306, 61.854382>,  <26.516808, 36.630268, 62.126766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224216, 36.644306, 61.854382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233417, 0.925447, 0.298435,
		0.640668, 0.377247, -0.668752,
		-0.731479, 0.035100, -0.680960,
		26.004772, 36.654835, 61.650093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220255, 36.433414, 62.381359>,  <26.516808, 36.630268, 62.126766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220255, 36.433414, 62.381359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.173882, 36.770294, 62.591980>,  <27.146057, 36.972424, 62.718353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.173882, 36.770294, 62.591980>,  <27.220255, 36.433414, 62.381359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173882, 36.770294, 62.591980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985666, -0.032138, -0.165620,
		-0.122564, -0.538202, 0.833857,
		-0.115935, 0.842203, 0.526548,
		27.139101, 37.022957, 62.749943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445740, 35.702850, 62.385292>,  <27.220255, 36.433414, 62.381359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445740, 35.702850, 62.385292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.518152, 35.336277, 62.528049>,  <27.561600, 35.116333, 62.613705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.518152, 35.336277, 62.528049>,  <27.445740, 35.702850, 62.385292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518152, 35.336277, 62.528049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411404, -0.259050, -0.873865,
		0.893294, 0.305025, 0.330129,
		0.181030, -0.916435, 0.356897,
		27.572462, 35.061348, 62.635120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153934, 35.639027, 62.445679>,  <27.445740, 35.702850, 62.385292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153934, 35.639027, 62.445679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.979561, 35.281540, 62.403297>,  <27.874937, 35.067047, 62.377869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.979561, 35.281540, 62.403297>,  <28.153934, 35.639027, 62.445679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979561, 35.281540, 62.403297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464707, -0.122712, -0.876920,
		0.770720, -0.431515, 0.468813,
		-0.435933, -0.893721, -0.105952,
		27.848782, 35.013424, 62.371513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694769, 35.194656, 62.248871>,  <28.153934, 35.639027, 62.445679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694769, 35.194656, 62.248871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.349733, 35.035076, 62.124432>,  <28.142712, 34.939327, 62.049770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.349733, 35.035076, 62.124432>,  <28.694769, 35.194656, 62.248871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349733, 35.035076, 62.124432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472313, -0.414711, -0.777776,
		0.181278, -0.817835, 0.546154,
		-0.862588, -0.398949, -0.311096,
		28.090958, 34.915390, 62.031101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929018, 34.698059, 61.816917>,  <28.694769, 35.194656, 62.248871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929018, 34.698059, 61.816917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.535990, 34.668236, 61.748798>,  <28.300173, 34.650341, 61.707928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.535990, 34.668236, 61.748798>,  <28.929018, 34.698059, 61.816917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535990, 34.668236, 61.748798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175186, -0.677879, -0.713996,
		-0.062204, -0.731383, 0.679124,
		-0.982568, -0.074560, -0.170295,
		28.241219, 34.645866, 61.697708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670938, 33.953514, 61.900269>,  <28.929018, 34.698059, 61.816917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670938, 33.953514, 61.900269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.486794, 34.190929, 61.636215>,  <28.376307, 34.333378, 61.477783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.486794, 34.190929, 61.636215>,  <28.670938, 33.953514, 61.900269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486794, 34.190929, 61.636215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300088, -0.595800, -0.744963,
		-0.835472, -0.541053, 0.096172,
		-0.460363, 0.593535, -0.660138,
		28.348684, 34.368988, 61.438175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598541, 33.536453, 61.375687>,  <28.670938, 33.953514, 61.900269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598541, 33.536453, 61.375687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.494904, 33.870682, 61.181904>,  <28.432722, 34.071217, 61.065636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.494904, 33.870682, 61.181904>,  <28.598541, 33.536453, 61.375687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494904, 33.870682, 61.181904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401092, -0.363209, -0.840954,
		-0.878633, -0.412198, -0.241034,
		-0.259093, 0.835567, -0.484457,
		28.417175, 34.121353, 61.036568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305059, 33.416172, 60.681221>,  <28.598541, 33.536453, 61.375687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305059, 33.416172, 60.681221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.457100, 33.785557, 60.660305>,  <28.548325, 34.007187, 60.647755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.457100, 33.785557, 60.660305>,  <28.305059, 33.416172, 60.681221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457100, 33.785557, 60.660305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443689, -0.231641, -0.865727,
		-0.811580, 0.305867, -0.497778,
		0.380103, 0.923465, -0.052285,
		28.571131, 34.062595, 60.644619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262157, 33.590801, 59.962200>,  <28.305059, 33.416172, 60.681221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262157, 33.590801, 59.962200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.487299, 33.887444, 60.108196>,  <28.622383, 34.065430, 60.195793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.487299, 33.887444, 60.108196>,  <28.262157, 33.590801, 59.962200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487299, 33.887444, 60.108196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572773, -0.031580, -0.819106,
		-0.595926, 0.670093, -0.442546,
		0.562852, 0.741605, 0.364991,
		28.656155, 34.109924, 60.217693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377655, 34.007359, 59.343967>,  <28.262157, 33.590801, 59.962200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377655, 34.007359, 59.343967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.669550, 34.091408, 59.604225>,  <28.844687, 34.141838, 59.760380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.669550, 34.091408, 59.604225>,  <28.377655, 34.007359, 59.343967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669550, 34.091408, 59.604225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681817, -0.152493, -0.715452,
		-0.051116, 0.965709, -0.254547,
		0.729735, 0.210125, 0.650641,
		28.888470, 34.154446, 59.799419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807930, 34.404934, 59.009422>,  <28.377655, 34.007359, 59.343967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807930, 34.404934, 59.009422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.064926, 34.265030, 59.282150>,  <29.219124, 34.181087, 59.445786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.064926, 34.265030, 59.282150>,  <28.807930, 34.404934, 59.009422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064926, 34.265030, 59.282150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656161, -0.208469, -0.725254,
		0.395802, 0.913350, 0.095559,
		0.642490, -0.349759, 0.681817,
		29.257673, 34.160103, 59.486694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447760, 34.756504, 58.824242>,  <28.807930, 34.404934, 59.009422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447760, 34.756504, 58.824242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.526014, 34.431870, 59.044441>,  <29.572968, 34.237087, 59.176559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.526014, 34.431870, 59.044441>,  <29.447760, 34.756504, 58.824242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526014, 34.431870, 59.044441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741068, -0.245309, -0.625013,
		0.642296, 0.530231, 0.553453,
		0.195635, -0.811590, 0.550498,
		29.584705, 34.188393, 59.209591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111069, 34.771004, 58.825817>,  <29.447760, 34.756504, 58.824242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111069, 34.771004, 58.825817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.037958, 34.390030, 58.923351>,  <29.994091, 34.161446, 58.981873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.037958, 34.390030, 58.923351>,  <30.111069, 34.771004, 58.825817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037958, 34.390030, 58.923351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732557, -0.297343, -0.612329,
		0.655708, 0.066703, 0.752062,
		-0.182776, -0.952438, 0.243834,
		29.983126, 34.104298, 58.996502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795910, 34.379910, 58.965164>,  <30.111069, 34.771004, 58.825817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795910, 34.379910, 58.965164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.505926, 34.146320, 58.819065>,  <30.331936, 34.006168, 58.731407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.505926, 34.146320, 58.819065>,  <30.795910, 34.379910, 58.965164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505926, 34.146320, 58.819065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588940, -0.250556, -0.768357,
		0.357186, -0.772137, 0.525569,
		-0.724961, -0.583974, -0.365247,
		30.288437, 33.971127, 58.709492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621384, 34.123795, 58.978252>,  <30.795910, 34.379910, 58.965164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621384, 34.123795, 58.978252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.979490, 33.961014, 59.050789>,  <32.194355, 33.863346, 59.094311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.979490, 33.961014, 59.050789>,  <31.621384, 34.123795, 58.978252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979490, 33.961014, 59.050789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123625, 0.164127, 0.978662,
		-0.428036, -0.898581, 0.096627,
		0.895266, -0.406957, 0.181339,
		32.248070, 33.838928, 59.105190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489464, 33.443439, 59.481758>,  <31.621384, 34.123795, 58.978252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489464, 33.443439, 59.481758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.859968, 33.586075, 59.530560>,  <32.082272, 33.671654, 59.559841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.859968, 33.586075, 59.530560>,  <31.489464, 33.443439, 59.481758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859968, 33.586075, 59.530560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165546, 0.094131, 0.981700,
		0.338574, -0.929509, 0.146221,
		0.926263, 0.356584, 0.122006,
		32.137848, 33.693050, 59.567162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713346, 33.097061, 60.075283>,  <31.489464, 33.443439, 59.481758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713346, 33.097061, 60.075283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.940075, 33.426495, 60.067101>,  <32.076111, 33.624157, 60.062191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.940075, 33.426495, 60.067101>,  <31.713346, 33.097061, 60.075283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940075, 33.426495, 60.067101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178703, 0.147150, 0.972837,
		0.804225, -0.547770, 0.230585,
		0.566822, 0.823587, -0.020454,
		32.110123, 33.673569, 60.060963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996243, 33.040062, 60.647297>,  <31.713346, 33.097061, 60.075283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996243, 33.040062, 60.647297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.052761, 33.426079, 60.558994>,  <32.086674, 33.657688, 60.506012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.052761, 33.426079, 60.558994>,  <31.996243, 33.040062, 60.647297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052761, 33.426079, 60.558994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235165, 0.249332, 0.939431,
		0.961630, -0.080826, 0.262174,
		0.141298, 0.965039, -0.220758,
		32.095150, 33.715591, 60.492767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159313, 33.254539, 61.245037>,  <31.996243, 33.040062, 60.647297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159313, 33.254539, 61.245037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.103836, 33.602837, 61.056332>,  <32.070549, 33.811817, 60.943108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.103836, 33.602837, 61.056332>,  <32.159313, 33.254539, 61.245037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103836, 33.602837, 61.056332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207449, 0.440256, 0.873578,
		0.968364, 0.219030, 0.119573,
		-0.138697, 0.870747, -0.471766,
		32.062225, 33.864059, 60.914803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492477, 33.765430, 61.699932>,  <32.159313, 33.254539, 61.245037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492477, 33.765430, 61.699932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.207573, 33.914955, 61.462296>,  <32.036629, 34.004669, 61.319714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.207573, 33.914955, 61.462296>,  <32.492477, 33.765430, 61.699932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207573, 33.914955, 61.462296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470294, 0.374163, 0.799266,
		0.521066, 0.848684, -0.090698,
		-0.712260, 0.373815, -0.594094,
		31.993895, 34.027100, 61.284069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429302, 34.428898, 61.885303>,  <32.492477, 33.765430, 61.699932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429302, 34.428898, 61.885303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.082161, 34.358582, 61.699429>,  <31.873877, 34.316391, 61.587902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.082161, 34.358582, 61.699429>,  <32.429302, 34.428898, 61.885303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082161, 34.358582, 61.699429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493730, 0.200857, 0.846101,
		-0.055403, 0.963719, -0.261107,
		-0.867849, -0.175793, -0.464689,
		31.821806, 34.305843, 61.560020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537617, 35.041691, 61.443398>,  <32.429302, 34.428898, 61.885303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537617, 35.041691, 61.443398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.747810, 35.376846, 61.502464>,  <32.873928, 35.577938, 61.537903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.747810, 35.376846, 61.502464>,  <32.537617, 35.041691, 61.443398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747810, 35.376846, 61.502464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112329, 0.103716, -0.988243,
		-0.843355, 0.535895, -0.039618,
		0.525485, 0.837890, 0.147666,
		32.905457, 35.628212, 61.546764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429916, 35.400642, 60.818550>,  <32.537617, 35.041691, 61.443398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429916, 35.400642, 60.818550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.725800, 35.583096, 61.016449>,  <32.903332, 35.692566, 61.135189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.725800, 35.583096, 61.016449>,  <32.429916, 35.400642, 60.818550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725800, 35.583096, 61.016449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508955, 0.101744, -0.854759,
		-0.440217, 0.884078, -0.156888,
		0.739712, 0.456129, 0.494746,
		32.947712, 35.719933, 61.164871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597466, 36.014118, 60.401459>,  <32.429916, 35.400642, 60.818550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597466, 36.014118, 60.401459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.920292, 35.948967, 60.628479>,  <33.113987, 35.909878, 60.764690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.920292, 35.948967, 60.628479>,  <32.597466, 36.014118, 60.401459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920292, 35.948967, 60.628479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585697, 0.099012, -0.804460,
		0.074833, 0.981666, 0.175305,
		0.807068, -0.162876, 0.567549,
		33.162411, 35.900105, 60.798744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105530, 36.431458, 60.121006>,  <32.597466, 36.014118, 60.401459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105530, 36.431458, 60.121006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.329903, 36.170269, 60.324570>,  <33.464527, 36.013557, 60.446709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.329903, 36.170269, 60.324570>,  <33.105530, 36.431458, 60.121006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329903, 36.170269, 60.324570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691359, 0.031332, -0.721832,
		0.455389, 0.756735, 0.469011,
		0.560931, -0.652970, 0.508908,
		33.498180, 35.974377, 60.477242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829899, 36.633320, 60.223309>,  <33.105530, 36.431458, 60.121006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829899, 36.633320, 60.223309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.864281, 36.237324, 60.268089>,  <33.884911, 35.999725, 60.294956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.864281, 36.237324, 60.268089>,  <33.829899, 36.633320, 60.223309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864281, 36.237324, 60.268089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797806, 0.001085, -0.602914,
		0.596757, 0.141138, 0.789913,
		0.085951, -0.989989, 0.111953,
		33.890064, 35.940327, 60.301674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553112, 36.484505, 60.249039>,  <33.829899, 36.633320, 60.223309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553112, 36.484505, 60.249039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.389713, 36.124119, 60.190544>,  <34.291672, 35.907887, 60.155449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.389713, 36.124119, 60.190544>,  <34.553112, 36.484505, 60.249039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389713, 36.124119, 60.190544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712148, -0.214385, -0.668494,
		0.570941, -0.377222, 0.729199,
		-0.408500, -0.900968, -0.146237,
		34.267162, 35.853828, 60.146671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060444, 36.033581, 60.240105>,  <34.553112, 36.484505, 60.249039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060444, 36.033581, 60.240105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.781479, 35.800766, 60.072845>,  <34.614101, 35.661076, 59.972488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.781479, 35.800766, 60.072845>,  <35.060444, 36.033581, 60.240105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781479, 35.800766, 60.072845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666299, -0.311708, -0.677410,
		0.263937, -0.751046, 0.605200,
		-0.697412, -0.582038, -0.418150,
		34.572254, 35.626156, 59.947399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.708509, 39.045593, 62.949776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371534, 38.996979, 62.739811>,  <29.169350, 38.967812, 62.613834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371534, 38.996979, 62.739811>,  <29.708509, 39.045593, 62.949776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371534, 38.996979, 62.739811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367472, 0.582875, -0.724721,
		0.394038, -0.803421, -0.446373,
		-0.842436, -0.121538, -0.524909,
		29.118803, 38.960518, 62.582336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974716, 38.763943, 62.297546>,  <29.708509, 39.045593, 62.949776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974716, 38.763943, 62.297546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596891, 38.840889, 62.191116>,  <29.370197, 38.887058, 62.127258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596891, 38.840889, 62.191116>,  <29.974716, 38.763943, 62.297546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596891, 38.840889, 62.191116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327436, 0.491975, -0.806688,
		-0.024277, -0.849091, -0.527689,
		-0.944561, 0.192368, -0.266079,
		29.313522, 38.898598, 62.111294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862839, 38.509876, 61.601704>,  <29.974716, 38.763943, 62.297546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862839, 38.509876, 61.601704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585230, 38.791870, 61.660118>,  <29.418665, 38.961067, 61.695168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585230, 38.791870, 61.660118>,  <29.862839, 38.509876, 61.601704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585230, 38.791870, 61.660118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271265, 0.443946, -0.854007,
		-0.666895, -0.553086, -0.499347,
		-0.694022, 0.704988, 0.146032,
		29.377024, 39.003365, 61.703926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533861, 38.532433, 61.042294>,  <29.862839, 38.509876, 61.601704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533861, 38.532433, 61.042294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464323, 38.887943, 61.211929>,  <29.422600, 39.101250, 61.313709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464323, 38.887943, 61.211929>,  <29.533861, 38.532433, 61.042294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464323, 38.887943, 61.211929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223257, 0.455005, -0.862048,
		-0.959132, -0.055182, -0.277526,
		-0.173845, 0.888777, 0.424090,
		29.412170, 39.154575, 61.339157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257116, 38.943001, 60.452263>,  <29.533861, 38.532433, 61.042294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257116, 38.943001, 60.452263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360477, 39.225716, 60.715679>,  <29.422495, 39.395344, 60.873730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360477, 39.225716, 60.715679>,  <29.257116, 38.943001, 60.452263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360477, 39.225716, 60.715679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210830, 0.624001, -0.752445,
		-0.942751, 0.333274, 0.012231,
		0.258402, 0.706790, 0.658541,
		29.437998, 39.437752, 60.913242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984585, 39.530304, 60.149944>,  <29.257116, 38.943001, 60.452263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984585, 39.530304, 60.149944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241468, 39.656750, 60.429268>,  <29.395599, 39.732616, 60.596863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241468, 39.656750, 60.429268>,  <28.984585, 39.530304, 60.149944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241468, 39.656750, 60.429268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262467, 0.765250, -0.587796,
		-0.720192, 0.560772, 0.408482,
		0.642211, 0.316113, 0.698311,
		29.434132, 39.751583, 60.638760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926779, 40.196896, 60.240627>,  <28.984585, 39.530304, 60.149944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926779, 40.196896, 60.240627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309114, 40.105656, 60.314754>,  <29.538515, 40.050911, 60.359230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309114, 40.105656, 60.314754>,  <28.926779, 40.196896, 60.240627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309114, 40.105656, 60.314754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293548, 0.710510, -0.639536,
		0.014210, 0.665692, 0.746091,
		0.955839, -0.228101, 0.185316,
		29.595865, 40.037224, 60.370350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273554, 40.813042, 60.396584>,  <28.926779, 40.196896, 60.240627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273554, 40.813042, 60.396584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580971, 40.575878, 60.300419>,  <29.765421, 40.433578, 60.242722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580971, 40.575878, 60.300419>,  <29.273554, 40.813042, 60.396584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580971, 40.575878, 60.300419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318655, 0.680568, -0.659763,
		0.554797, 0.430447, 0.711980,
		0.768543, -0.592910, -0.240413,
		29.811533, 40.398006, 60.228294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785759, 41.272938, 60.185463>,  <29.273554, 40.813042, 60.396584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785759, 41.272938, 60.185463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937428, 40.926403, 60.055424>,  <30.028429, 40.718483, 59.977398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937428, 40.926403, 60.055424>,  <29.785759, 41.272938, 60.185463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937428, 40.926403, 60.055424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350298, 0.459578, -0.816137,
		0.856459, 0.195572, 0.477734,
		0.379170, -0.866337, -0.325101,
		30.051178, 40.666500, 59.957893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453266, 41.370499, 60.136139>,  <29.785759, 41.272938, 60.185463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453266, 41.370499, 60.136139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367207, 41.077271, 59.878048>,  <30.315571, 40.901333, 59.723194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367207, 41.077271, 59.878048>,  <30.453266, 41.370499, 60.136139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367207, 41.077271, 59.878048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528242, 0.468348, -0.708245,
		0.821384, -0.493217, 0.286472,
		-0.215149, -0.733067, -0.645231,
		30.302662, 40.857349, 59.684479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107491, 41.310696, 59.727856>,  <30.453266, 41.370499, 60.136139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107491, 41.310696, 59.727856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817213, 41.117470, 59.531891>,  <30.643047, 41.001534, 59.414310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817213, 41.117470, 59.531891>,  <31.107491, 41.310696, 59.727856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817213, 41.117470, 59.531891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335214, 0.373591, -0.864905,
		0.600832, -0.791883, -0.109184,
		-0.725694, -0.483063, -0.489916,
		30.599504, 40.972549, 59.384914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487062, 41.023216, 59.230213>,  <31.107491, 41.310696, 59.727856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487062, 41.023216, 59.230213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106794, 41.016289, 59.106323>,  <30.878633, 41.012135, 59.031990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106794, 41.016289, 59.106323>,  <31.487062, 41.023216, 59.230213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106794, 41.016289, 59.106323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267001, 0.462610, -0.845400,
		0.157918, -0.886392, -0.435167,
		-0.950669, -0.017314, -0.309723,
		30.821594, 41.011093, 59.013405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903860, 41.181007, 59.806973>,  <31.487062, 41.023216, 59.230213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903860, 41.181007, 59.806973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280334, 41.060638, 59.868435>,  <32.506218, 40.988415, 59.905312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280334, 41.060638, 59.868435>,  <31.903860, 41.181007, 59.806973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280334, 41.060638, 59.868435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267685, -0.386586, 0.882551,
		-0.206181, -0.871777, -0.444403,
		0.941188, -0.300925, 0.153655,
		32.562691, 40.970360, 59.914532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809801, 40.536747, 60.015320>,  <31.903860, 41.181007, 59.806973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809801, 40.536747, 60.015320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185726, 40.608429, 60.131691>,  <32.411282, 40.651436, 60.201515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185726, 40.608429, 60.131691>,  <31.809801, 40.536747, 60.015320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185726, 40.608429, 60.131691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178227, -0.469343, 0.864842,
		0.291525, -0.864641, -0.409156,
		0.939813, 0.179201, 0.290928,
		32.467670, 40.662189, 60.218967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184288, 39.899693, 60.173603>,  <31.809801, 40.536747, 60.015320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184288, 39.899693, 60.173603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361351, 40.193455, 60.379398>,  <32.467590, 40.369713, 60.502876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361351, 40.193455, 60.379398>,  <32.184288, 39.899693, 60.173603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361351, 40.193455, 60.379398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256162, -0.446287, 0.857444,
		0.859322, -0.511347, -0.009426,
		0.442658, 0.734406, 0.514492,
		32.494148, 40.413776, 60.533745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500000, 39.488419, 60.661625>,  <32.184288, 39.899693, 60.173603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500000, 39.488419, 60.661625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517811, 39.857925, 60.813766>,  <32.528496, 40.079628, 60.905052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.517811, 39.857925, 60.813766>,  <32.500000, 39.488419, 60.661625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517811, 39.857925, 60.813766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030638, -0.379289, 0.924771,
		0.998538, -0.052832, 0.011414,
		0.044528, 0.923769, 0.380354,
		32.531170, 40.135056, 60.927872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805870, 39.397385, 61.166950>,  <32.500000, 39.488419, 60.661625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805870, 39.397385, 61.166950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665073, 39.755432, 61.276394>,  <32.580593, 39.970261, 61.342060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665073, 39.755432, 61.276394>,  <32.805870, 39.397385, 61.166950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665073, 39.755432, 61.276394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121956, -0.333689, 0.934761,
		0.928023, 0.295664, 0.226622,
		-0.351996, 0.895117, 0.273613,
		32.559475, 40.023968, 61.358479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176689, 39.525314, 61.834709>,  <32.805870, 39.397385, 61.166950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176689, 39.525314, 61.834709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838387, 39.738022, 61.817177>,  <32.635406, 39.865646, 61.806656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838387, 39.738022, 61.817177>,  <33.176689, 39.525314, 61.834709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838387, 39.738022, 61.817177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294582, -0.396869, 0.869320,
		0.444880, 0.748144, 0.492303,
		-0.845756, 0.531767, -0.043830,
		32.584660, 39.897552, 61.804028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143578, 39.805256, 62.439934>,  <33.176689, 39.525314, 61.834709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143578, 39.805256, 62.439934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766380, 39.812855, 62.307030>,  <32.540062, 39.817413, 62.227287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766380, 39.812855, 62.307030>,  <33.143578, 39.805256, 62.439934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766380, 39.812855, 62.307030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306549, -0.438246, 0.844966,
		-0.129555, 0.898654, 0.419090,
		-0.942997, 0.019002, -0.332259,
		32.483482, 39.818554, 62.207352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798485, 40.231533, 62.938972>,  <33.143578, 39.805256, 62.439934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798485, 40.231533, 62.938972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522755, 40.022732, 62.738037>,  <32.357319, 39.897449, 62.617477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522755, 40.022732, 62.738037>,  <32.798485, 40.231533, 62.938972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522755, 40.022732, 62.738037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250822, -0.478550, 0.841474,
		-0.679649, 0.706044, 0.198944,
		-0.689323, -0.522008, -0.502337,
		32.315956, 39.866131, 62.587337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216255, 40.287788, 63.325665>,  <32.798485, 40.231533, 62.938972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216255, 40.287788, 63.325665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117439, 39.976475, 63.094757>,  <32.058151, 39.789684, 62.956211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117439, 39.976475, 63.094757>,  <32.216255, 40.287788, 63.325665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117439, 39.976475, 63.094757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495369, -0.410575, 0.765531,
		-0.832816, 0.475078, -0.284111,
		-0.247038, -0.778286, -0.577272,
		32.043327, 39.742989, 62.921574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537010, 40.140614, 63.567532>,  <32.216255, 40.287788, 63.325665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537010, 40.140614, 63.567532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632505, 39.815323, 63.355244>,  <31.689802, 39.620148, 63.227871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632505, 39.815323, 63.355244>,  <31.537010, 40.140614, 63.567532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632505, 39.815323, 63.355244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568893, -0.560045, 0.602255,
		-0.786998, 0.158143, -0.596343,
		0.238736, -0.813229, -0.530721,
		31.704126, 39.571354, 63.196026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868361, 39.814240, 63.409775>,  <31.537010, 40.140614, 63.567532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868361, 39.814240, 63.409775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145742, 39.527317, 63.382648>,  <31.312172, 39.355164, 63.366371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145742, 39.527317, 63.382648>,  <30.868361, 39.814240, 63.409775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145742, 39.527317, 63.382648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579746, -0.611390, 0.538607,
		-0.427807, -0.334182, -0.839823,
		0.693452, -0.717304, -0.067817,
		31.353779, 39.312126, 63.362305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580069, 39.219257, 63.154491>,  <30.868361, 39.814240, 63.409775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580069, 39.219257, 63.154491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902758, 39.096924, 63.356747>,  <31.096371, 39.023525, 63.478100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902758, 39.096924, 63.356747>,  <30.580069, 39.219257, 63.154491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902758, 39.096924, 63.356747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576614, -0.594609, 0.560318,
		0.129292, -0.743577, -0.656031,
		0.806722, -0.305832, 0.505635,
		31.144773, 39.005173, 63.508438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683710, 38.541412, 63.035587>,  <30.580069, 39.219257, 63.154491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683710, 38.541412, 63.035587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832695, 38.626419, 63.396942>,  <30.922085, 38.677422, 63.613754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832695, 38.626419, 63.396942>,  <30.683710, 38.541412, 63.035587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832695, 38.626419, 63.396942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610753, -0.676790, 0.411019,
		0.698752, -0.704835, -0.122282,
		0.372460, 0.212516, 0.903388,
		30.944433, 38.690174, 63.667957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748238, 37.816181, 63.391857>,  <30.683710, 38.541412, 63.035587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748238, 37.816181, 63.391857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760923, 38.104355, 63.668976>,  <30.768536, 38.277260, 63.835247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760923, 38.104355, 63.668976>,  <30.748238, 37.816181, 63.391857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760923, 38.104355, 63.668976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627828, -0.524977, 0.574658,
		0.777706, -0.453183, 0.435659,
		0.031715, 0.720433, 0.692799,
		30.770437, 38.320484, 63.876816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228216, 37.235142, 63.517918>,  <30.748238, 37.816181, 63.391857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228216, 37.235142, 63.517918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371920, 36.913177, 63.706833>,  <31.458141, 36.720001, 63.820183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371920, 36.913177, 63.706833>,  <31.228216, 37.235142, 63.517918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371920, 36.913177, 63.706833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751785, -0.050245, -0.657491,
		0.552949, 0.591271, 0.587065,
		0.359259, -0.804906, 0.472292,
		31.479696, 36.671707, 63.848522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900579, 37.206306, 63.205036>,  <31.228216, 37.235142, 63.517918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900579, 37.206306, 63.205036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889231, 36.876709, 63.431393>,  <31.882421, 36.678951, 63.567207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889231, 36.876709, 63.431393>,  <31.900579, 37.206306, 63.205036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889231, 36.876709, 63.431393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750115, -0.391738, -0.532794,
		0.660699, 0.409367, 0.629203,
		-0.028374, -0.823990, 0.565893,
		31.880718, 36.629513, 63.601162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595825, 37.058788, 63.510239>,  <31.900579, 37.206306, 63.205036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595825, 37.058788, 63.510239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374046, 36.728657, 63.467495>,  <32.240978, 36.530579, 63.441849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374046, 36.728657, 63.467495>,  <32.595825, 37.058788, 63.510239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374046, 36.728657, 63.467495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544516, -0.262664, -0.796561,
		0.629355, -0.499841, 0.595039,
		-0.554450, -0.825328, -0.106863,
		32.207710, 36.481060, 63.435436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046249, 36.507847, 63.579010>,  <32.595825, 37.058788, 63.510239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046249, 36.507847, 63.579010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724003, 36.372425, 63.384544>,  <32.530655, 36.291172, 63.267864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724003, 36.372425, 63.384544>,  <33.046249, 36.507847, 63.579010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724003, 36.372425, 63.384544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583593, -0.312274, -0.749603,
		0.101963, -0.887619, 0.449151,
		-0.805619, -0.338553, -0.486168,
		32.482315, 36.270859, 63.238693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310165, 35.888752, 63.275379>,  <33.046249, 36.507847, 63.579010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310165, 35.888752, 63.275379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980106, 35.991222, 63.073978>,  <32.782070, 36.052704, 62.953136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980106, 35.991222, 63.073978>,  <33.310165, 35.888752, 63.275379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980106, 35.991222, 63.073978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433797, -0.283613, -0.855210,
		-0.361885, -0.924087, 0.122892,
		-0.825142, 0.256177, -0.503501,
		32.732563, 36.068073, 62.922928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199722, 35.345867, 62.812511>,  <33.310165, 35.888752, 63.275379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199722, 35.345867, 62.812511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936459, 35.582661, 62.626442>,  <32.778500, 35.724735, 62.514801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936459, 35.582661, 62.626442>,  <33.199722, 35.345867, 62.812511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936459, 35.582661, 62.626442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392540, -0.257413, -0.882978,
		-0.642449, -0.763738, -0.062959,
		-0.658157, 0.591982, -0.465172,
		32.739010, 35.760254, 62.486889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769672, 35.043663, 62.277206>,  <33.199722, 35.345867, 62.812511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769672, 35.043663, 62.277206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836384, 35.426258, 62.181438>,  <32.876411, 35.655815, 62.123978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836384, 35.426258, 62.181438>,  <32.769672, 35.043663, 62.277206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836384, 35.426258, 62.181438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413106, -0.288266, -0.863855,
		-0.895282, 0.045162, -0.443205,
		0.166775, 0.956485, -0.239423,
		32.886417, 35.713203, 62.109612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080765, 35.089222, 62.067039>,  <32.769672, 35.043663, 62.277206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080765, 35.089222, 62.067039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796415, 34.831398, 61.954464>,  <31.625807, 34.676704, 61.886917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796415, 34.831398, 61.954464>,  <32.080765, 35.089222, 62.067039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796415, 34.831398, 61.954464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547543, 0.256028, 0.796647,
		-0.441430, 0.720412, -0.534926,
		-0.710871, -0.644559, -0.281438,
		31.583155, 34.638031, 61.870033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411165, 35.426563, 61.995705>,  <32.080765, 35.089222, 62.067039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411165, 35.426563, 61.995705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300493, 35.045422, 62.045532>,  <31.234091, 34.816738, 62.075428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300493, 35.045422, 62.045532>,  <31.411165, 35.426563, 61.995705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300493, 35.045422, 62.045532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653681, 0.281635, 0.702413,
		-0.704379, 0.112917, -0.700785,
		-0.276680, -0.952855, 0.124566,
		31.217489, 34.759563, 62.082901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809923, 35.584751, 62.214195>,  <31.411165, 35.426563, 61.995705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809923, 35.584751, 62.214195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837032, 35.192539, 62.287907>,  <30.853298, 34.957211, 62.332134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837032, 35.192539, 62.287907>,  <30.809923, 35.584751, 62.214195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837032, 35.192539, 62.287907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605622, 0.106351, 0.788613,
		-0.792861, -0.165051, -0.586626,
		0.067773, -0.980534, 0.184280,
		30.857365, 34.898380, 62.343189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041508, 35.355095, 62.411274>,  <30.809923, 35.584751, 62.214195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041508, 35.355095, 62.411274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315441, 35.091549, 62.535793>,  <30.479801, 34.933422, 62.610504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315441, 35.091549, 62.535793>,  <30.041508, 35.355095, 62.411274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315441, 35.091549, 62.535793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557021, -0.197890, 0.806577,
		-0.469821, -0.725769, -0.502522,
		0.684833, -0.658862, 0.311295,
		30.520891, 34.893890, 62.629181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679979, 34.669132, 62.438614>,  <30.041508, 35.355095, 62.411274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679979, 34.669132, 62.438614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000486, 34.669647, 62.677937>,  <30.192791, 34.669956, 62.821529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000486, 34.669647, 62.677937>,  <29.679979, 34.669132, 62.438614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000486, 34.669647, 62.677937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590082, -0.163565, 0.790601,
		0.098878, -0.986532, -0.130301,
		0.801265, 0.001285, 0.598308,
		30.240866, 34.670033, 62.857430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571592, 34.060223, 62.773224>,  <29.679979, 34.669132, 62.438614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571592, 34.060223, 62.773224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825912, 34.290726, 62.978626>,  <29.978504, 34.429028, 63.101868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825912, 34.290726, 62.978626>,  <29.571592, 34.060223, 62.773224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825912, 34.290726, 62.978626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627982, -0.000611, 0.778228,
		0.448776, -0.817266, 0.361493,
		0.635798, 0.576261, 0.513502,
		30.016651, 34.463604, 63.132675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576269, 33.766907, 63.406837>,  <29.571592, 34.060223, 62.773224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576269, 33.766907, 63.406837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710943, 34.134125, 63.490585>,  <29.791748, 34.354454, 63.540833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710943, 34.134125, 63.490585>,  <29.576269, 33.766907, 63.406837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710943, 34.134125, 63.490585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653053, 0.067477, 0.754300,
		0.678354, -0.390692, 0.622251,
		0.336687, 0.918045, 0.209370,
		29.811949, 34.409538, 63.553394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584585, 33.869091, 64.217506>,  <29.576269, 33.766907, 63.406837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584585, 33.869091, 64.217506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586208, 34.234550, 64.054916>,  <29.587183, 34.453827, 63.957363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586208, 34.234550, 64.054916>,  <29.584585, 33.869091, 64.217506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586208, 34.234550, 64.054916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659842, 0.307874, 0.685436,
		0.751394, 0.265427, 0.604116,
		0.004059, 0.913653, -0.406474,
		29.587425, 34.508648, 63.932976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637888, 34.330002, 64.809258>,  <29.584585, 33.869091, 64.217506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637888, 34.330002, 64.809258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488066, 34.542603, 64.505356>,  <29.398172, 34.670162, 64.323013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488066, 34.542603, 64.505356>,  <29.637888, 34.330002, 64.809258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488066, 34.542603, 64.505356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676857, 0.403279, 0.615818,
		0.633697, 0.744898, 0.208699,
		-0.374558, 0.531501, -0.759746,
		29.375698, 34.702053, 64.277435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.819241, 36.298569, 48.373764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825977, 36.618759, 48.613415>,  <36.830021, 36.810875, 48.757206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825977, 36.618759, 48.613415>,  <36.819241, 36.298569, 48.373764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825977, 36.618759, 48.613415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812087, -0.338613, 0.475243,
		0.583293, -0.494549, 0.644353,
		0.016845, 0.800476, 0.599128,
		36.831032, 36.858902, 48.793152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661121, 36.041615, 49.086063>,  <36.819241, 36.298569, 48.373764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661121, 36.041615, 49.086063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.565014, 36.429893, 49.087257>,  <36.507347, 36.662861, 49.087975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.565014, 36.429893, 49.087257>,  <36.661121, 36.041615, 49.086063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565014, 36.429893, 49.087257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850451, -0.211986, 0.481451,
		0.467977, 0.113142, 0.876468,
		-0.240271, 0.970701, 0.002983,
		36.492931, 36.721104, 49.088154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422962, 36.154793, 49.698181>,  <36.661121, 36.041615, 49.086063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422962, 36.154793, 49.698181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282104, 36.481686, 49.515701>,  <36.197590, 36.677822, 49.406212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282104, 36.481686, 49.515701>,  <36.422962, 36.154793, 49.698181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282104, 36.481686, 49.515701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889191, -0.139996, 0.435592,
		0.292116, 0.559041, 0.775978,
		-0.352148, 0.817236, -0.456199,
		36.176460, 36.726856, 49.378841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178242, 36.582493, 50.208534>,  <36.422962, 36.154793, 49.698181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178242, 36.582493, 50.208534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.993649, 36.682274, 49.867992>,  <35.882893, 36.742142, 49.663666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.993649, 36.682274, 49.867992>,  <36.178242, 36.582493, 50.208534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993649, 36.682274, 49.867992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887145, -0.133144, 0.441868,
		-0.003127, 0.959190, 0.282745,
		-0.461481, 0.249454, -0.851357,
		35.855206, 36.757111, 49.612587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727383, 37.017471, 50.431255>,  <36.178242, 36.582493, 50.208534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727383, 37.017471, 50.431255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.589649, 36.908104, 50.071995>,  <35.507008, 36.842484, 49.856438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.589649, 36.908104, 50.071995>,  <35.727383, 37.017471, 50.431255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589649, 36.908104, 50.071995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909129, -0.141680, 0.391677,
		-0.234342, 0.951404, -0.199788,
		-0.344337, -0.273419, -0.898151,
		35.486347, 36.826077, 49.802551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056011, 37.234879, 50.443497>,  <35.727383, 37.017471, 50.431255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056011, 37.234879, 50.443497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.017757, 36.965492, 50.150295>,  <34.994804, 36.803860, 49.974373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.017757, 36.965492, 50.150295>,  <35.056011, 37.234879, 50.443497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017757, 36.965492, 50.150295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945632, -0.168503, 0.278186,
		-0.310863, 0.719758, -0.620736,
		-0.095631, -0.673465, -0.733007,
		34.989067, 36.763454, 49.930393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480793, 37.480267, 49.966946>,  <35.056011, 37.234879, 50.443497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480793, 37.480267, 49.966946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.523575, 37.095032, 49.868126>,  <34.549244, 36.863892, 49.808834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.523575, 37.095032, 49.868126>,  <34.480793, 37.480267, 49.966946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523575, 37.095032, 49.868126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983795, -0.138472, 0.113896,
		-0.143901, 0.230865, -0.962286,
		0.106955, -0.963082, -0.247050,
		34.555660, 36.806107, 49.794010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801472, 37.323856, 49.647171>,  <34.480793, 37.480267, 49.966946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801472, 37.323856, 49.647171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.990707, 37.000473, 49.787216>,  <34.104248, 36.806442, 49.871243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.990707, 37.000473, 49.787216>,  <33.801472, 37.323856, 49.647171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990707, 37.000473, 49.787216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880983, -0.437563, 0.180019,
		0.007660, -0.393612, -0.919245,
		0.473085, -0.808460, 0.350118,
		34.132633, 36.757935, 49.892250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415424, 36.754745, 49.411461>,  <33.801472, 37.323856, 49.647171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415424, 36.754745, 49.411461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.622932, 36.632744, 49.730923>,  <33.747437, 36.559544, 49.922600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.622932, 36.632744, 49.730923>,  <33.415424, 36.754745, 49.411461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622932, 36.632744, 49.730923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798450, -0.506734, 0.325113,
		0.305545, -0.806345, -0.506408,
		0.518767, -0.305005, 0.798656,
		33.778564, 36.541241, 49.970520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139896, 36.125671, 49.452141>,  <33.415424, 36.754745, 49.411461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139896, 36.125671, 49.452141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.317928, 36.204086, 49.801651>,  <33.424747, 36.251133, 50.011356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.317928, 36.204086, 49.801651>,  <33.139896, 36.125671, 49.452141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317928, 36.204086, 49.801651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795684, -0.361090, 0.486313,
		0.410845, -0.911693, -0.004731,
		0.445077, 0.196035, 0.873772,
		33.451450, 36.262897, 50.063782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907627, 35.629894, 49.720177>,  <33.139896, 36.125671, 49.452141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907627, 35.629894, 49.720177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.016075, 35.863724, 50.026058>,  <33.081142, 36.004021, 50.209587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.016075, 35.863724, 50.026058>,  <32.907627, 35.629894, 49.720177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016075, 35.863724, 50.026058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801015, -0.303502, 0.516006,
		0.533732, -0.752437, 0.385966,
		0.271120, 0.584573, 0.764702,
		33.097412, 36.039097, 50.255470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927517, 35.278770, 50.424580>,  <32.907627, 35.629894, 49.720177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927517, 35.278770, 50.424580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.878975, 35.668114, 50.502407>,  <32.849850, 35.901718, 50.549103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.878975, 35.668114, 50.502407>,  <32.927517, 35.278770, 50.424580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878975, 35.668114, 50.502407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603510, -0.227975, 0.764070,
		0.788066, -0.024701, 0.615095,
		-0.121353, 0.973354, 0.194567,
		32.842567, 35.960121, 50.560776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002163, 35.340511, 51.146358>,  <32.927517, 35.278770, 50.424580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002163, 35.340511, 51.146358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794102, 35.658199, 51.020718>,  <32.669266, 35.848812, 50.945332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794102, 35.658199, 51.020718>,  <33.002163, 35.340511, 51.146358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794102, 35.658199, 51.020718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627518, -0.105915, 0.771364,
		0.579363, 0.598333, 0.553477,
		-0.520154, 0.794217, -0.314101,
		32.638054, 35.896465, 50.926487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706589, 35.666153, 51.789124>,  <33.002163, 35.340511, 51.146358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706589, 35.666153, 51.789124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.474091, 35.830101, 51.507938>,  <32.334591, 35.928471, 51.339226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.474091, 35.830101, 51.507938>,  <32.706589, 35.666153, 51.789124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474091, 35.830101, 51.507938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812242, -0.240004, 0.531660,
		0.049196, 0.880003, 0.472414,
		-0.581243, 0.409870, -0.702967,
		32.299717, 35.953060, 51.297047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186180, 36.147263, 52.208225>,  <32.706589, 35.666153, 51.789124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186180, 36.147263, 52.208225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.059174, 36.079754, 51.834980>,  <31.982969, 36.039249, 51.611034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.059174, 36.079754, 51.834980>,  <32.186180, 36.147263, 52.208225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059174, 36.079754, 51.834980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902162, -0.249289, 0.352077,
		-0.292037, 0.953609, -0.073108,
		-0.317518, -0.168775, -0.933112,
		31.963919, 36.029121, 51.555046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559452, 36.518314, 52.090637>,  <32.186180, 36.147263, 52.208225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559452, 36.518314, 52.090637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.538807, 36.231377, 51.812717>,  <31.526421, 36.059212, 51.645966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.538807, 36.231377, 51.812717>,  <31.559452, 36.518314, 52.090637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538807, 36.231377, 51.812717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881103, -0.294791, 0.369806,
		-0.470100, 0.631277, -0.616843,
		-0.051611, -0.717348, -0.694801,
		31.523323, 36.016171, 51.604279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842215, 36.548599, 51.863407>,  <31.559452, 36.518314, 52.090637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842215, 36.548599, 51.863407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.989262, 36.193592, 51.752289>,  <31.077490, 35.980587, 51.685616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.989262, 36.193592, 51.752289>,  <30.842215, 36.548599, 51.863407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989262, 36.193592, 51.752289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857444, -0.439127, 0.268248,
		-0.360063, 0.139582, -0.922427,
		0.367620, -0.887516, -0.277797,
		31.099548, 35.927338, 51.668949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366375, 36.371319, 51.424877>,  <30.842215, 36.548599, 51.863407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366375, 36.371319, 51.424877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.550152, 36.043140, 51.560986>,  <30.660418, 35.846233, 51.642651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.550152, 36.043140, 51.560986>,  <30.366375, 36.371319, 51.424877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550152, 36.043140, 51.560986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882463, -0.378148, 0.279755,
		-0.100851, -0.428807, -0.897749,
		0.459443, -0.820444, 0.340269,
		30.687984, 35.797009, 51.663067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907679, 35.841667, 51.220783>,  <30.366375, 36.371319, 51.424877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907679, 35.841667, 51.220783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.133356, 35.689831, 51.514065>,  <30.268763, 35.598728, 51.690033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.133356, 35.689831, 51.514065>,  <29.907679, 35.841667, 51.220783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133356, 35.689831, 51.514065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808266, -0.435164, 0.396659,
		0.168496, -0.816420, -0.552330,
		0.564194, -0.379594, 0.733208,
		30.302614, 35.575951, 51.734028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708969, 35.104321, 51.273640>,  <29.907679, 35.841667, 51.220783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708969, 35.104321, 51.273640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.896601, 35.173409, 51.620079>,  <30.009180, 35.214859, 51.827942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.896601, 35.173409, 51.620079>,  <29.708969, 35.104321, 51.273640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896601, 35.173409, 51.620079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757357, -0.425785, 0.495093,
		0.454285, -0.888187, -0.068918,
		0.469079, 0.172717, 0.866102,
		30.037325, 35.225224, 51.879910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717537, 34.467506, 51.657791>,  <29.708969, 35.104321, 51.273640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717537, 34.467506, 51.657791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.767176, 34.768936, 51.916008>,  <29.796959, 34.949795, 52.070938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.767176, 34.768936, 51.916008>,  <29.717537, 34.467506, 51.657791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767176, 34.768936, 51.916008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805252, -0.303658, 0.509274,
		0.579801, -0.583022, 0.569137,
		0.124095, 0.753576, 0.645541,
		29.804403, 34.995010, 52.109669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480591, 34.169731, 52.383968>,  <29.717537, 34.467506, 51.657791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480591, 34.169731, 52.383968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.517487, 34.567909, 52.393673>,  <29.539623, 34.806816, 52.399494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.517487, 34.567909, 52.393673>,  <29.480591, 34.169731, 52.383968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517487, 34.567909, 52.393673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800748, 0.059672, 0.596022,
		0.591857, -0.074402, 0.802602,
		0.092238, 0.995442, 0.024260,
		29.545158, 34.866543, 52.400951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628418, 34.365662, 52.993977>,  <29.480591, 34.169731, 52.383968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628418, 34.365662, 52.993977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.431049, 34.663132, 52.813541>,  <29.312628, 34.841614, 52.705280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.431049, 34.663132, 52.813541>,  <29.628418, 34.365662, 52.993977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431049, 34.663132, 52.813541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797693, -0.180169, 0.575521,
		0.346728, 0.643807, 0.682124,
		-0.493421, 0.743675, -0.451091,
		29.283024, 34.886234, 52.678215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021198, 34.434361, 53.486546>,  <29.628418, 34.365662, 52.993977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021198, 34.434361, 53.486546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.961594, 34.654594, 53.157997>,  <28.925831, 34.786736, 52.960869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.961594, 34.654594, 53.157997>,  <29.021198, 34.434361, 53.486546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961594, 34.654594, 53.157997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948096, 0.156420, 0.276851,
		0.280909, 0.819995, 0.498697,
		-0.149010, 0.550583, -0.821374,
		28.916891, 34.819771, 52.911587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633032, 34.947990, 53.648296>,  <29.021198, 34.434361, 53.486546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633032, 34.947990, 53.648296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.537563, 34.935112, 53.260071>,  <28.480282, 34.927383, 53.027134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.537563, 34.935112, 53.260071>,  <28.633032, 34.947990, 53.648296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537563, 34.935112, 53.260071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950211, 0.213930, 0.226568,
		0.200338, 0.976318, -0.081656,
		-0.238672, -0.032200, -0.970566,
		28.465961, 34.925453, 52.968903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105036, 35.470200, 53.506069>,  <28.633032, 34.947990, 53.648296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105036, 35.470200, 53.506069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.077780, 35.244640, 53.176861>,  <28.061426, 35.109303, 52.979336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.077780, 35.244640, 53.176861>,  <28.105036, 35.470200, 53.506069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077780, 35.244640, 53.176861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989989, 0.140424, -0.014248,
		0.123607, 0.813815, -0.567826,
		-0.068141, -0.563903, -0.823025,
		28.057337, 35.075470, 52.929955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744564, 35.787476, 52.897881>,  <28.105036, 35.470200, 53.506069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744564, 35.787476, 52.897881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.662281, 35.400414, 52.839455>,  <27.612911, 35.168179, 52.804398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.662281, 35.400414, 52.839455>,  <27.744564, 35.787476, 52.897881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662281, 35.400414, 52.839455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978608, 0.203896, 0.027446,
		0.003223, 0.148585, -0.988894,
		-0.205709, -0.967651, -0.146064,
		27.600569, 35.110119, 52.795635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302475, 35.765602, 52.320976>,  <27.744564, 35.787476, 52.897881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302475, 35.765602, 52.320976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.234041, 35.418320, 52.507286>,  <27.192980, 35.209949, 52.619072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.234041, 35.418320, 52.507286>,  <27.302475, 35.765602, 52.320976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234041, 35.418320, 52.507286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981870, 0.111085, -0.153594,
		0.081611, -0.483608, -0.871472,
		-0.171087, -0.868207, 0.465775,
		27.182714, 35.157856, 52.647018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598284, 35.535694, 52.000412>,  <27.302475, 35.765602, 52.320976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598284, 35.535694, 52.000412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.661301, 35.264282, 52.287403>,  <26.699110, 35.101437, 52.459599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.661301, 35.264282, 52.287403>,  <26.598284, 35.535694, 52.000412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661301, 35.264282, 52.287403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977559, -0.210053, 0.015998,
		0.139855, -0.703901, -0.696393,
		0.157540, -0.678528, 0.717482,
		26.708563, 35.060722, 52.502647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370029, 34.908463, 51.738686>,  <26.598284, 35.535694, 52.000412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370029, 34.908463, 51.738686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.333517, 34.920277, 52.136841>,  <26.311609, 34.927364, 52.375732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.333517, 34.920277, 52.136841>,  <26.370029, 34.908463, 51.738686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333517, 34.920277, 52.136841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980964, -0.174710, -0.084776,
		0.171401, -0.984177, 0.044908,
		-0.091280, 0.029523, 0.995388,
		26.306133, 34.929138, 52.435455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871071, 34.438671, 51.905495>,  <26.370029, 34.908463, 51.738686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871071, 34.438671, 51.905495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.910048, 34.614410, 52.262699>,  <25.933434, 34.719856, 52.477024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.910048, 34.614410, 52.262699>,  <25.871071, 34.438671, 51.905495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910048, 34.614410, 52.262699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975013, -0.137844, 0.174205,
		0.199635, -0.887676, 0.414942,
		0.097441, 0.439351, 0.893015,
		25.939280, 34.746216, 52.530605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786728, 33.911839, 52.442085>,  <25.871071, 34.438671, 51.905495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786728, 33.911839, 52.442085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.699162, 34.282814, 52.563370>,  <25.646622, 34.505398, 52.636139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.699162, 34.282814, 52.563370>,  <25.786728, 33.911839, 52.442085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.699162, 34.282814, 52.563370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960986, -0.258772, 0.097684,
		0.169059, -0.269997, 0.947903,
		-0.218916, 0.927436, 0.303211,
		25.633486, 34.561047, 52.654331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.055403, 33.854847, 52.701935>,  <25.786728, 33.911839, 52.442085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.055403, 33.854847, 52.701935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.114635, 34.250080, 52.718742>,  <25.150175, 34.487221, 52.728828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.114635, 34.250080, 52.718742>,  <25.055403, 33.854847, 52.701935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.114635, 34.250080, 52.718742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986615, 0.144660, 0.075269,
		0.068293, -0.052602, 0.996278,
		0.148081, 0.988082, 0.042019,
		25.159060, 34.546505, 52.731346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.573608, 34.071987, 53.284451>,  <25.055403, 33.854847, 52.701935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.573608, 34.071987, 53.284451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.652550, 34.395741, 53.063202>,  <24.699915, 34.589993, 52.930454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.652550, 34.395741, 53.063202>,  <24.573608, 34.071987, 53.284451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.652550, 34.395741, 53.063202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979933, 0.178958, -0.087771,
		0.027945, 0.559344, 0.828465,
		0.197355, 0.809387, -0.553121,
		24.711756, 34.638557, 52.897266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.218515, 34.666134, 53.590237>,  <24.573608, 34.071987, 53.284451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.218515, 34.666134, 53.590237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.275047, 34.699799, 53.195686>,  <24.308966, 34.719997, 52.958954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.275047, 34.699799, 53.195686>,  <24.218515, 34.666134, 53.590237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.275047, 34.699799, 53.195686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987338, 0.084485, -0.134259,
		0.072034, 0.992864, 0.095039,
		0.141330, 0.084164, -0.986378,
		24.317446, 34.725048, 52.899773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<34.923191, 33.858528, 49.733574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.558815, 33.697723, 49.770603>,  <34.340187, 33.601242, 49.792820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.558815, 33.697723, 49.770603>,  <34.923191, 33.858528, 49.733574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558815, 33.697723, 49.770603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254019, -0.369804, 0.893711,
		-0.325047, 0.837636, 0.438989,
		-0.910944, -0.402010, 0.092572,
		34.285530, 33.577122, 49.798374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777267, 33.971016, 50.389072>,  <34.923191, 33.858528, 49.733574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777267, 33.971016, 50.389072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.527218, 33.676083, 50.286652>,  <34.377190, 33.499123, 50.225201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.527218, 33.676083, 50.286652>,  <34.777267, 33.971016, 50.389072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527218, 33.676083, 50.286652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161284, -0.442993, 0.881898,
		-0.763683, 0.509996, 0.395844,
		-0.625121, -0.737334, -0.256052,
		34.339684, 33.454884, 50.209835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416233, 33.902439, 50.946507>,  <34.777267, 33.971016, 50.389072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416233, 33.902439, 50.946507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405388, 33.553104, 50.751961>,  <34.398880, 33.343502, 50.635235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405388, 33.553104, 50.751961>,  <34.416233, 33.902439, 50.946507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405388, 33.553104, 50.751961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298518, -0.471416, 0.829852,
		-0.954019, -0.122688, 0.273488,
		-0.027113, -0.873335, -0.486364,
		34.397255, 33.291103, 50.606052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816113, 33.488537, 51.247616>,  <34.416233, 33.902439, 50.946507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816113, 33.488537, 51.247616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.026546, 33.188995, 51.086399>,  <34.152809, 33.009270, 50.989670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.026546, 33.188995, 51.086399>,  <33.816113, 33.488537, 51.247616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026546, 33.188995, 51.086399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104107, -0.413651, 0.904464,
		-0.844033, -0.517788, -0.139656,
		0.526090, -0.748858, -0.403041,
		34.184372, 32.964336, 50.965488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620327, 32.884033, 51.530350>,  <33.816113, 33.488537, 51.247616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620327, 32.884033, 51.530350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.993896, 32.815552, 51.404827>,  <34.218037, 32.774464, 51.329514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.993896, 32.815552, 51.404827>,  <33.620327, 32.884033, 51.530350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993896, 32.815552, 51.404827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211104, -0.444286, 0.870657,
		-0.288479, -0.879374, -0.378788,
		0.933924, -0.171202, -0.313807,
		34.274075, 32.764191, 51.310684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625813, 32.331821, 51.756531>,  <33.620327, 32.884033, 51.530350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625813, 32.331821, 51.756531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.011448, 32.417656, 51.693947>,  <34.242828, 32.469158, 51.656399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.011448, 32.417656, 51.693947>,  <33.625813, 32.331821, 51.756531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011448, 32.417656, 51.693947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219902, -0.314748, 0.923351,
		0.148895, -0.924600, -0.350634,
		0.964092, 0.214588, -0.156457,
		34.300674, 32.482033, 51.647011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005260, 31.765753, 52.012566>,  <33.625813, 32.331821, 51.756531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005260, 31.765753, 52.012566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275341, 32.060802, 52.014118>,  <34.437389, 32.237831, 52.015049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275341, 32.060802, 52.014118>,  <34.005260, 31.765753, 52.012566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275341, 32.060802, 52.014118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227851, -0.213573, 0.949984,
		0.701561, -0.640545, -0.312273,
		0.675201, 0.737624, 0.003886,
		34.477901, 32.282089, 52.015285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535103, 31.497335, 52.329845>,  <34.005260, 31.765753, 52.012566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535103, 31.497335, 52.329845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.620239, 31.885334, 52.376842>,  <34.671322, 32.118134, 52.405041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.620239, 31.885334, 52.376842>,  <34.535103, 31.497335, 52.329845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620239, 31.885334, 52.376842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127666, -0.146826, 0.980889,
		0.968711, -0.193771, -0.155086,
		0.212838, 0.969997, 0.117494,
		34.684090, 32.176334, 52.412090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100231, 31.444763, 52.690044>,  <34.535103, 31.497335, 52.329845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100231, 31.444763, 52.690044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948994, 31.811165, 52.743675>,  <34.858250, 32.031006, 52.775856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948994, 31.811165, 52.743675>,  <35.100231, 31.444763, 52.690044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948994, 31.811165, 52.743675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107366, -0.100468, 0.989130,
		0.919520, 0.388380, -0.060361,
		-0.378094, 0.916006, 0.134081,
		34.835567, 32.085968, 52.783901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548412, 31.714031, 53.081699>,  <35.100231, 31.444763, 52.690044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548412, 31.714031, 53.081699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233860, 31.956545, 53.129078>,  <35.045128, 32.102055, 53.157505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233860, 31.956545, 53.129078>,  <35.548412, 31.714031, 53.081699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233860, 31.956545, 53.129078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149624, 0.000905, 0.988743,
		0.599351, 0.795248, -0.091426,
		-0.786378, 0.606284, 0.118446,
		34.997948, 32.138432, 53.164612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820965, 32.243320, 53.553177>,  <35.548412, 31.714031, 53.081699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820965, 32.243320, 53.553177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423054, 32.262131, 53.589420>,  <35.184307, 32.273415, 53.611164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.423054, 32.262131, 53.589420>,  <35.820965, 32.243320, 53.553177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423054, 32.262131, 53.589420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098270, 0.200840, 0.974683,
		0.027635, 0.978495, -0.204412,
		-0.994776, 0.047023, 0.090606,
		35.124622, 32.276237, 53.616604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642345, 32.869442, 53.904953>,  <35.820965, 32.243320, 53.553177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642345, 32.869442, 53.904953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320183, 32.646358, 53.985233>,  <35.126884, 32.512508, 54.033401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320183, 32.646358, 53.985233>,  <35.642345, 32.869442, 53.904953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320183, 32.646358, 53.985233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223667, 0.027608, 0.974275,
		-0.548904, 0.829577, 0.102506,
		-0.805405, -0.557710, 0.200703,
		35.078560, 32.479046, 54.045444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785637, 33.625530, 53.990528>,  <35.642345, 32.869442, 53.904953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785637, 33.625530, 53.990528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049198, 33.892021, 54.130234>,  <36.207333, 34.051918, 54.214058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049198, 33.892021, 54.130234>,  <35.785637, 33.625530, 53.990528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049198, 33.892021, 54.130234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388026, 0.096744, -0.916557,
		-0.644428, 0.739444, -0.194770,
		0.658900, 0.666231, 0.349268,
		36.246868, 34.091892, 54.235016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714626, 34.327255, 53.655964>,  <35.785637, 33.625530, 53.990528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714626, 34.327255, 53.655964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.085232, 34.299984, 53.803982>,  <36.307594, 34.283623, 53.892792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.085232, 34.299984, 53.803982>,  <35.714626, 34.327255, 53.655964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085232, 34.299984, 53.803982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375705, 0.221504, -0.899879,
		-0.020617, 0.972773, 0.230839,
		0.926510, -0.068174, 0.370043,
		36.363186, 34.279533, 53.914993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070526, 34.846714, 53.440971>,  <35.714626, 34.327255, 53.655964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070526, 34.846714, 53.440971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.355007, 34.578941, 53.526810>,  <36.525696, 34.418278, 53.578312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.355007, 34.578941, 53.526810>,  <36.070526, 34.846714, 53.440971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355007, 34.578941, 53.526810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507079, 0.277099, -0.816141,
		0.486885, 0.689261, 0.536528,
		0.711206, -0.669429, 0.214595,
		36.568367, 34.378113, 53.591187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626640, 35.183060, 53.105873>,  <36.070526, 34.846714, 53.440971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626640, 35.183060, 53.105873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.725136, 34.801525, 53.174641>,  <36.784233, 34.572605, 53.215900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.725136, 34.801525, 53.174641>,  <36.626640, 35.183060, 53.105873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725136, 34.801525, 53.174641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580207, 0.002988, -0.814464,
		0.776353, 0.300304, 0.554160,
		0.246243, -0.953839, 0.171919,
		36.799007, 34.515373, 53.226215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398121, 35.168812, 53.041794>,  <36.626640, 35.183060, 53.105873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398121, 35.168812, 53.041794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.227505, 34.811264, 52.986568>,  <37.125137, 34.596737, 52.953434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.227505, 34.811264, 52.986568>,  <37.398121, 35.168812, 53.041794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227505, 34.811264, 52.986568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484367, -0.096828, -0.869490,
		0.763842, -0.437746, 0.474261,
		-0.426538, -0.893870, -0.138068,
		37.099545, 34.543102, 52.945148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014236, 34.745689, 52.957001>,  <37.398121, 35.168812, 53.041794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014236, 34.745689, 52.957001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.697929, 34.553139, 52.805763>,  <37.508144, 34.437607, 52.715019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.697929, 34.553139, 52.805763>,  <38.014236, 34.745689, 52.957001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697929, 34.553139, 52.805763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466894, -0.074892, -0.881136,
		0.395846, -0.873306, 0.283976,
		-0.790769, -0.481380, -0.378096,
		37.460697, 34.408726, 52.692333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308781, 34.190300, 52.536983>,  <38.014236, 34.745689, 52.957001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308781, 34.190300, 52.536983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.941822, 34.272259, 52.400513>,  <37.721649, 34.321434, 52.318630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.941822, 34.272259, 52.400513>,  <38.308781, 34.190300, 52.536983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941822, 34.272259, 52.400513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367708, 0.108448, -0.923596,
		-0.152245, -0.972756, -0.174833,
		-0.917394, 0.204901, -0.341180,
		37.666603, 34.333729, 52.298161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311390, 34.010738, 51.821194>,  <38.308781, 34.190300, 52.536983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311390, 34.010738, 51.821194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.971210, 34.220604, 51.836533>,  <37.767101, 34.346523, 51.845737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.971210, 34.220604, 51.836533>,  <38.311390, 34.010738, 51.821194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971210, 34.220604, 51.836533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093858, 0.223057, -0.970276,
		-0.517619, -0.821570, -0.238942,
		-0.850448, 0.524660, 0.038348,
		37.716076, 34.378002, 51.848038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857079, 33.811775, 51.192333>,  <38.311390, 34.010738, 51.821194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857079, 33.811775, 51.192333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709408, 34.171360, 51.286625>,  <37.620804, 34.387112, 51.343201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709408, 34.171360, 51.286625>,  <37.857079, 33.811775, 51.192333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709408, 34.171360, 51.286625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060042, 0.276189, -0.959226,
		-0.927417, -0.339971, -0.155939,
		-0.369178, 0.898966, 0.235730,
		37.598656, 34.441051, 51.357346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348766, 33.881115, 50.709194>,  <37.857079, 33.811775, 51.192333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348766, 33.881115, 50.709194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474792, 34.238255, 50.837910>,  <37.550407, 34.452538, 50.915138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474792, 34.238255, 50.837910>,  <37.348766, 33.881115, 50.709194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474792, 34.238255, 50.837910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045915, 0.353005, -0.934494,
		-0.947958, 0.279654, 0.152216,
		0.315068, 0.892850, 0.321793,
		37.569313, 34.506111, 50.934448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990963, 34.337727, 50.256489>,  <37.348766, 33.881115, 50.709194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990963, 34.337727, 50.256489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280170, 34.561295, 50.418896>,  <37.453693, 34.695435, 50.516338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280170, 34.561295, 50.418896>,  <36.990963, 34.337727, 50.256489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280170, 34.561295, 50.418896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137777, 0.459253, -0.877556,
		-0.676952, 0.690427, 0.255041,
		0.723017, 0.558924, 0.406017,
		37.497074, 34.728973, 50.540699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869968, 34.998371, 49.893711>,  <36.990963, 34.337727, 50.256489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869968, 34.998371, 49.893711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.239983, 34.990528, 50.045460>,  <37.461990, 34.985825, 50.136509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.239983, 34.990528, 50.045460>,  <36.869968, 34.998371, 49.893711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239983, 34.990528, 50.045460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358711, 0.373789, -0.855341,
		-0.125036, 0.927306, 0.352802,
		0.925037, -0.019606, 0.379372,
		37.517494, 34.984646, 50.159271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104870, 35.649208, 49.902134>,  <36.869968, 34.998371, 49.893711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104870, 35.649208, 49.902134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.410110, 35.393307, 49.865479>,  <37.593254, 35.239765, 49.843483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.410110, 35.393307, 49.865479>,  <37.104870, 35.649208, 49.902134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410110, 35.393307, 49.865479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261363, 0.435173, -0.861577,
		0.591074, 0.633517, 0.499287,
		0.763100, -0.639751, -0.091642,
		37.639042, 35.201382, 49.837986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013233, 36.352955, 50.088341>,  <37.104870, 35.649208, 49.902134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013233, 36.352955, 50.088341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.327019, 36.416828, 50.328049>,  <37.515289, 36.455151, 50.471874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.327019, 36.416828, 50.328049>,  <37.013233, 36.352955, 50.088341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327019, 36.416828, 50.328049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559095, 0.600263, 0.571925,
		-0.268396, -0.783701, 0.560157,
		0.784459, 0.159679, 0.599272,
		37.562355, 36.464733, 50.507832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888023, 36.193687, 50.838749>,  <37.013233, 36.352955, 50.088341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888023, 36.193687, 50.838749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.155018, 36.490643, 50.815701>,  <37.315212, 36.668816, 50.801872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.155018, 36.490643, 50.815701>,  <36.888023, 36.193687, 50.838749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155018, 36.490643, 50.815701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540120, 0.535985, 0.648839,
		0.512576, -0.401967, 0.758741,
		0.667485, 0.742390, -0.057622,
		37.355263, 36.713360, 50.798412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946877, 36.366081, 51.534798>,  <36.888023, 36.193687, 50.838749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946877, 36.366081, 51.534798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.037701, 36.702305, 51.338062>,  <37.092194, 36.904041, 51.220020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.037701, 36.702305, 51.338062>,  <36.946877, 36.366081, 51.534798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037701, 36.702305, 51.338062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354940, 0.541713, 0.761948,
		0.906898, 0.001567, 0.421348,
		0.227056, 0.840562, -0.491834,
		37.105816, 36.954475, 51.190514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369221, 36.846092, 51.999130>,  <36.946877, 36.366081, 51.534798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369221, 36.846092, 51.999130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104301, 36.998528, 51.741096>,  <36.945351, 37.089989, 51.586277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104301, 36.998528, 51.741096>,  <37.369221, 36.846092, 51.999130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104301, 36.998528, 51.741096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387498, 0.562666, 0.730241,
		0.641252, 0.733607, -0.224983,
		-0.662300, 0.381088, -0.645082,
		36.905613, 37.112854, 51.547573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433590, 37.500515, 52.151535>,  <37.369221, 36.846092, 51.999130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433590, 37.500515, 52.151535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.085430, 37.433979, 51.966175>,  <36.876534, 37.394058, 51.854958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.085430, 37.433979, 51.966175>,  <37.433590, 37.500515, 52.151535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085430, 37.433979, 51.966175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462954, 0.596857, 0.655314,
		0.167577, 0.784916, -0.596511,
		-0.870398, -0.166341, -0.463399,
		36.824310, 37.384075, 51.827156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074055, 38.192497, 52.182854>,  <37.433590, 37.500515, 52.151535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074055, 38.192497, 52.182854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.806515, 37.899761, 52.130619>,  <36.645992, 37.724121, 52.099277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.806515, 37.899761, 52.130619>,  <37.074055, 38.192497, 52.182854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806515, 37.899761, 52.130619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631851, 0.467099, 0.618533,
		-0.391669, 0.496217, -0.774832,
		-0.668850, -0.731838, -0.130587,
		36.605862, 37.680210, 52.091442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504730, 38.608578, 52.003815>,  <37.074055, 38.192497, 52.182854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504730, 38.608578, 52.003815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.362877, 38.259991, 52.139332>,  <36.277763, 38.050838, 52.220642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.362877, 38.259991, 52.139332>,  <36.504730, 38.608578, 52.003815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362877, 38.259991, 52.139332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529283, 0.485805, 0.695596,
		-0.770775, 0.067367, -0.633536,
		-0.354635, -0.871467, 0.338790,
		36.256485, 37.998550, 52.240971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792542, 38.712997, 52.155945>,  <36.504730, 38.608578, 52.003815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792542, 38.712997, 52.155945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884674, 38.397293, 52.383636>,  <35.939953, 38.207870, 52.520252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884674, 38.397293, 52.383636>,  <35.792542, 38.712997, 52.155945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884674, 38.397293, 52.383636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569348, 0.365085, 0.736584,
		-0.789171, -0.493746, -0.365273,
		0.230329, -0.789258, 0.569228,
		35.953773, 38.160515, 52.554405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181973, 38.586727, 52.336990>,  <35.792542, 38.712997, 52.155945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181973, 38.586727, 52.336990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418274, 38.405457, 52.604015>,  <35.560055, 38.296692, 52.764229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418274, 38.405457, 52.604015>,  <35.181973, 38.586727, 52.336990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418274, 38.405457, 52.604015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532587, 0.402494, 0.744546,
		-0.606102, -0.795379, -0.003583,
		0.590754, -0.453180, 0.667561,
		35.595501, 38.269505, 52.804283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708893, 38.189774, 52.754742>,  <35.181973, 38.586727, 52.336990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708893, 38.189774, 52.754742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033916, 38.229782, 52.984432>,  <35.228931, 38.253788, 53.122246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033916, 38.229782, 52.984432>,  <34.708893, 38.189774, 52.754742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033916, 38.229782, 52.984432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558053, 0.417925, 0.716879,
		-0.168283, -0.902959, 0.395406,
		0.812562, 0.100019, 0.574229,
		35.277687, 38.259789, 53.156700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516369, 37.906055, 53.400543>,  <34.708893, 38.189774, 52.754742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516369, 37.906055, 53.400543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.831642, 38.139362, 53.479095>,  <35.020805, 38.279346, 53.526226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.831642, 38.139362, 53.479095>,  <34.516369, 37.906055, 53.400543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831642, 38.139362, 53.479095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480739, 0.384261, 0.788184,
		0.384261, -0.715642, 0.583267,
		-0.788184, -0.583267, -0.196380,
		35.068096, 38.314342, 53.538010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541691, 37.963562, 54.081993>,  <34.516369, 37.906055, 53.400543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541691, 37.963562, 54.081993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.752224, 38.270370, 53.935207>,  <34.878544, 38.454456, 53.847137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.752224, 38.270370, 53.935207>,  <34.541691, 37.963562, 54.081993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752224, 38.270370, 53.935207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438108, 0.614515, 0.656074,
		0.728723, -0.184542, 0.659474,
		0.526330, 0.767018, -0.366962,
		34.910122, 38.500477, 53.825119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735527, 38.349449, 54.643936>,  <34.541691, 37.963562, 54.081993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735527, 38.349449, 54.643936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.802673, 38.626038, 54.362885>,  <34.842960, 38.791992, 54.194256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.802673, 38.626038, 54.362885>,  <34.735527, 38.349449, 54.643936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802673, 38.626038, 54.362885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302991, 0.714430, 0.630703,
		0.938093, 0.107018, 0.329438,
		0.167864, 0.691474, -0.702627,
		34.853031, 38.833481, 54.152096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274487, 38.800251, 54.942623>,  <34.735527, 38.349449, 54.643936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274487, 38.800251, 54.942623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.099701, 38.998676, 54.642494>,  <34.994831, 39.117729, 54.462418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.099701, 38.998676, 54.642494>,  <35.274487, 38.800251, 54.942623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099701, 38.998676, 54.642494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225130, 0.747311, 0.625174,
		0.870852, 0.442097, -0.214867,
		-0.436960, 0.496061, -0.750326,
		34.968613, 39.147495, 54.417397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510296, 39.497555, 54.998684>,  <35.274487, 38.800251, 54.942623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510296, 39.497555, 54.998684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165249, 39.524803, 54.798183>,  <34.958221, 39.541153, 54.677883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165249, 39.524803, 54.798183>,  <35.510296, 39.497555, 54.998684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165249, 39.524803, 54.798183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271142, 0.774263, 0.571838,
		0.427052, 0.629187, -0.649423,
		-0.862617, 0.068119, -0.501249,
		34.906464, 39.545238, 54.647808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442627, 40.186493, 54.891323>,  <35.510296, 39.497555, 54.998684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442627, 40.186493, 54.891323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.091396, 39.997478, 54.861134>,  <34.880657, 39.884071, 54.843018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.091396, 39.997478, 54.861134>,  <35.442627, 40.186493, 54.891323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091396, 39.997478, 54.861134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396800, 0.630840, 0.666776,
		-0.267461, 0.615428, -0.741426,
		-0.878074, -0.472534, -0.075477,
		34.827972, 39.855717, 54.838490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000610, 40.741703, 54.903744>,  <35.442627, 40.186493, 54.891323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000610, 40.741703, 54.903744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.768124, 40.420044, 54.953590>,  <34.628632, 40.227047, 54.983498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.768124, 40.420044, 54.953590>,  <35.000610, 40.741703, 54.903744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768124, 40.420044, 54.953590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565359, 0.509182, 0.648924,
		-0.585285, 0.306713, -0.750579,
		-0.581215, -0.804152, 0.124613,
		34.593758, 40.178799, 54.990974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390739, 40.961655, 54.913349>,  <35.000610, 40.741703, 54.903744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390739, 40.961655, 54.913349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.380402, 40.634441, 55.143188>,  <34.374199, 40.438114, 55.281090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.380402, 40.634441, 55.143188>,  <34.390739, 40.961655, 54.913349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380402, 40.634441, 55.143188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524178, 0.500522, 0.688996,
		-0.851217, -0.283385, -0.441727,
		-0.025843, -0.818029, 0.574597,
		34.372650, 40.389034, 55.315567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738976, 41.079292, 55.243187>,  <34.390739, 40.961655, 54.913349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738976, 41.079292, 55.243187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.913265, 40.780766, 55.444447>,  <34.017841, 40.601650, 55.565201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.913265, 40.780766, 55.444447>,  <33.738976, 41.079292, 55.243187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913265, 40.780766, 55.444447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403038, 0.338053, 0.850459,
		-0.804800, -0.573355, -0.153495,
		0.435726, -0.746314, 0.503149,
		34.043983, 40.556870, 55.595390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275341, 40.976128, 55.715248>,  <33.738976, 41.079292, 55.243187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275341, 40.976128, 55.715248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.600040, 40.804211, 55.873409>,  <33.794861, 40.701061, 55.968307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.600040, 40.804211, 55.873409>,  <33.275341, 40.976128, 55.715248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600040, 40.804211, 55.873409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236450, 0.377210, 0.895435,
		-0.534000, -0.820362, 0.204576,
		0.811748, -0.429790, 0.395405,
		33.843567, 40.675274, 55.992031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032478, 40.676380, 56.350964>,  <33.275341, 40.976128, 55.715248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032478, 40.676380, 56.350964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.426929, 40.645390, 56.409691>,  <33.663601, 40.626797, 56.444927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.426929, 40.645390, 56.409691>,  <33.032478, 40.676380, 56.350964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426929, 40.645390, 56.409691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122439, 0.257824, 0.958403,
		-0.112108, -0.963081, 0.244760,
		0.986124, -0.077476, 0.146822,
		33.722767, 40.622147, 56.453739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156860, 40.112221, 56.870766>,  <33.032478, 40.676380, 56.350964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156860, 40.112221, 56.870766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461708, 40.371006, 56.860870>,  <33.644615, 40.526279, 56.854931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461708, 40.371006, 56.860870>,  <33.156860, 40.112221, 56.870766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461708, 40.371006, 56.860870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045213, 0.091303, 0.994796,
		0.645860, -0.757031, 0.098835,
		0.762116, 0.646968, -0.024742,
		33.690342, 40.565098, 56.853447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588264, 39.915321, 57.381893>,  <33.156860, 40.112221, 56.870766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588264, 39.915321, 57.381893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.690228, 40.297752, 57.324024>,  <33.751404, 40.527210, 57.289303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.690228, 40.297752, 57.324024>,  <33.588264, 39.915321, 57.381893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690228, 40.297752, 57.324024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132210, 0.182672, 0.974244,
		0.957884, -0.229216, 0.172968,
		0.254908, 0.956081, -0.144674,
		33.766701, 40.584576, 57.280621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095734, 40.035999, 57.864475>,  <33.588264, 39.915321, 57.381893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095734, 40.035999, 57.864475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949051, 40.393974, 57.762806>,  <33.861042, 40.608761, 57.701805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949051, 40.393974, 57.762806>,  <34.095734, 40.035999, 57.864475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949051, 40.393974, 57.762806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054758, 0.251975, 0.966184,
		0.928722, 0.368228, -0.043397,
		-0.366710, 0.894940, -0.254178,
		33.839039, 40.662457, 57.686554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356239, 40.461376, 58.386696>,  <34.095734, 40.035999, 57.864475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356239, 40.461376, 58.386696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.055351, 40.677223, 58.235447>,  <33.874817, 40.806732, 58.144699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.055351, 40.677223, 58.235447>,  <34.356239, 40.461376, 58.386696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055351, 40.677223, 58.235447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220903, 0.334114, 0.916280,
		0.620776, 0.772774, -0.132125,
		-0.752223, 0.539618, -0.378118,
		33.829685, 40.839108, 58.122013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396114, 41.072330, 58.749939>,  <34.356239, 40.461376, 58.386696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396114, 41.072330, 58.749939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016171, 41.029247, 58.632526>,  <33.788204, 41.003399, 58.562077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016171, 41.029247, 58.632526>,  <34.396114, 41.072330, 58.749939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016171, 41.029247, 58.632526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312671, 0.326101, 0.892130,
		-0.000367, 0.939179, -0.343427,
		-0.949862, -0.107707, -0.293534,
		33.731213, 40.996937, 58.544468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983173, 41.712646, 59.052521>,  <34.396114, 41.072330, 58.749939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983173, 41.712646, 59.052521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.697792, 41.454891, 58.942425>,  <33.526566, 41.300240, 58.876366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.697792, 41.454891, 58.942425>,  <33.983173, 41.712646, 59.052521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697792, 41.454891, 58.942425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450861, 0.121465, 0.884291,
		-0.536390, 0.754994, -0.377187,
		-0.713449, -0.644384, -0.275244,
		33.483757, 41.261578, 58.859852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394657, 41.920601, 59.470516>,  <33.983173, 41.712646, 59.052521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394657, 41.920601, 59.470516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.274117, 41.561939, 59.340778>,  <33.201794, 41.346741, 59.262936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.274117, 41.561939, 59.340778>,  <33.394657, 41.920601, 59.470516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274117, 41.561939, 59.340778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530242, -0.125122, 0.838563,
		-0.792484, 0.424683, -0.437737,
		-0.301353, -0.896654, -0.324342,
		33.183712, 41.292942, 59.243477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595726, 41.866554, 59.496822>,  <33.394657, 41.920601, 59.470516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595726, 41.866554, 59.496822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.775055, 41.509804, 59.520718>,  <32.882652, 41.295753, 59.535053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.775055, 41.509804, 59.520718>,  <32.595726, 41.866554, 59.496822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775055, 41.509804, 59.520718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529487, -0.211125, 0.821626,
		-0.720174, -0.399984, -0.566888,
		0.448321, -0.891874, 0.059739,
		32.909550, 41.242241, 59.538639>
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
